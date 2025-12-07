unint64_t sub_23B4F0038()
{
  result = qword_27E135890;
  if (!qword_27E135890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135890);
  }

  return result;
}

_BYTE *sub_23B4F009C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4F01CC()
{
  result = qword_27E135898;
  if (!qword_27E135898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135898);
  }

  return result;
}

unint64_t sub_23B4F0224()
{
  result = qword_27E1358A0;
  if (!qword_27E1358A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358A0);
  }

  return result;
}

unint64_t sub_23B4F027C()
{
  result = qword_27E1358A8;
  if (!qword_27E1358A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358A8);
  }

  return result;
}

unint64_t sub_23B4F02D4()
{
  result = qword_27E1358B0;
  if (!qword_27E1358B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358B0);
  }

  return result;
}

unint64_t sub_23B4F032C()
{
  result = qword_27E1358B8;
  if (!qword_27E1358B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358B8);
  }

  return result;
}

unint64_t sub_23B4F0384()
{
  result = qword_27E1358C0;
  if (!qword_27E1358C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358C0);
  }

  return result;
}

unint64_t sub_23B4F03DC()
{
  result = qword_27E1358C8;
  if (!qword_27E1358C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358C8);
  }

  return result;
}

unint64_t sub_23B4F0434()
{
  result = qword_27E1358D0;
  if (!qword_27E1358D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358D0);
  }

  return result;
}

unint64_t sub_23B4F048C()
{
  result = qword_27E1358D8;
  if (!qword_27E1358D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358D8);
  }

  return result;
}

unint64_t sub_23B4F04E4()
{
  result = qword_27E1358E0;
  if (!qword_27E1358E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358E0);
  }

  return result;
}

unint64_t sub_23B4F053C()
{
  result = qword_27E1358E8;
  if (!qword_27E1358E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358E8);
  }

  return result;
}

unint64_t sub_23B4F0594()
{
  result = qword_27E1358F0;
  if (!qword_27E1358F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358F0);
  }

  return result;
}

unint64_t sub_23B4F05EC()
{
  result = qword_27E1358F8;
  if (!qword_27E1358F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1358F8);
  }

  return result;
}

uint64_t MoonPhase.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_4_43();
      break;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_7_44();
      break;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_3_54();
      break;
    case 4:
      if (qword_280B43260 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    case 5:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_3_54();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_10_29(0x51207473614CLL);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_8_30();
      OUTLINED_FUNCTION_4_43();
      break;
    default:
      if (qword_280B43260 != -1)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_3:
      OUTLINED_FUNCTION_4_3();
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

uint64_t MoonPhase.accessibilityDescription.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_4_43();
      break;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_7_44();
      break;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_11_26();
      OUTLINED_FUNCTION_3_54();
      break;
    case 4:
      if (qword_280B43260 != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    case 5:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_9_36();
      OUTLINED_FUNCTION_3_54();
      break;
    case 6:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_10_29(0x71207473616CLL);
      break;
    case 7:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_9_36();
      OUTLINED_FUNCTION_4_43();
      break;
    default:
      if (qword_280B43260 != -1)
      {
LABEL_25:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_3:
      OUTLINED_FUNCTION_1_45();
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

unint64_t MoonPhase.symbolName.getter(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
    case 5:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::MoonPhase_optional __swiftcall MoonPhase.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23B50D664();

  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t MoonPhase.rawValue.getter(char a1)
{
  result = 7824750;
  switch(a1)
  {
    case 1:
      result = 0x7243676E69786177;
      break;
    case 2:
      result = 0x6175517473726966;
      break;
    case 3:
      result = 0x6947676E69786177;
      break;
    case 4:
      result = 1819047270;
      break;
    case 5:
      result = 0x6947676E696E6177;
      break;
    case 6:
      result = 0x726175517473616CLL;
      break;
    case 7:
      result = 0x7243676E696E6177;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B4F0D98()
{
  result = qword_27E135900;
  if (!qword_27E135900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135900);
  }

  return result;
}

WeatherKit::MoonPhase_optional sub_23B4F0E04@<W0>(Swift::String *a1@<X0>, WeatherKit::MoonPhase_optional *a2@<X8>)
{
  result.value = MoonPhase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_23B4F0E34@<X0>(uint64_t *a1@<X8>)
{
  result = MoonPhase.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23B4F0E6C()
{
  result = qword_27E135908;
  if (!qword_27E135908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E135910, &qword_23B526380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MoonPhase(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MoonPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4F1100()
{
  result = qword_280B41A78;
  if (!qword_280B41A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A78);
  }

  return result;
}

uint64_t sub_23B4F1154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23B50C7D4();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v6);
  return sub_23B50D474();
}

uint64_t static HourlyWeatherStatisticsQuery.temperature.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7B090];
  v3 = sub_23B50C7D4();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v5 = (a1 + *(result + 52));
  *v5 = sub_23B4F12CC;
  v5[1] = 0;
  return result;
}

uint64_t sub_23B4F1394()
{
  OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_7_45();
  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B4F13EC(char a1)
{
  OUTLINED_FUNCTION_11_27();
  if (a1)
  {
    v2 = 999;
  }

  else
  {
    v2 = 43;
  }

  MEMORY[0x23EE9DB40](v2);
  return sub_23B50D914();
}

uint64_t sub_23B4F1438(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_11_27();
  MEMORY[0x23EE9DB40](a1 + 1);
  return sub_23B50D914();
}

uint64_t sub_23B4F14B0(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_11_27();
  MEMORY[0x23EE9DB40](a1);
  return sub_23B50D914();
}

uint64_t sub_23B4F158C(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_11_27();
  a2(v5, a1);
  return sub_23B50D914();
}

uint64_t sub_23B4F15EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_11_27();
  v4 = a2(a1);
  OUTLINED_FUNCTION_5_31(v4, v5, v6);

  return sub_23B50D914();
}

uint64_t sub_23B4F1648()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 7827308;
    }

    else
    {
      v3 = 0x6C616D726F6ELL;
    }
  }

  else
  {
    v3 = 1751607656;
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F16F4(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a2 + 1);
  return sub_23B50D914();
}

uint64_t sub_23B4F173C()
{
  OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    v1 = 999;
  }

  else
  {
    v1 = 43;
  }

  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t sub_23B4F179C(uint64_t a1)
{
  sub_23B50D8C4();
  OUTLINED_FUNCTION_7_45();
  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B4F17E0()
{
  OUTLINED_FUNCTION_6_29();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F183C(uint64_t a1, unsigned __int8 a2)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a2);
  return sub_23B50D914();
}

uint64_t sub_23B4F18B0(uint64_t a1)
{
  OUTLINED_FUNCTION_12_26(a1);
  v1(v4, v2);
  return sub_23B50D914();
}

uint64_t sub_23B4F18F0()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x676E696C6C6166;
    }

    else
    {
      v3 = 0x796461657473;
    }
  }

  else
  {
    v3 = 0x676E69736972;
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F1978(uint64_t a1, char a2)
{
  sub_23B50D8C4();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1A28()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x68746E6F6DLL;
    }

    else
    {
      v3 = 0x6B6165727473;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_45();
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F1AA4()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    v3 = 0x7469706963657270;
  }

  else
  {
    v3 = 0x74617265706D6574;
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F1B28(uint64_t a1, char a2)
{
  sub_23B50D8C4();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1B88()
{
  OUTLINED_FUNCTION_6_29();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1BE4()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    v3 = 0x72746E65636E6F63;
  }

  else
  {
    v3 = 0x7073694474696E75;
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F1C84(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_26(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_5_31(v3, v4, v5);

  return sub_23B50D914();
}

uint64_t sub_23B4F1CD0()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6D756964656DLL;
    }

    else
    {
      v3 = 0x7976616568;
    }
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F1D84()
{
  v1 = OUTLINED_FUNCTION_6_29();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x617461646174656DLL;
    }

    else
    {
      v3 = 0x6F4C656E6972616DLL;
    }
  }

  else
  {
    v3 = 0x7473616365726F66;
  }

  OUTLINED_FUNCTION_10_30(v1, v3, v2);

  return sub_23B50D914();
}

uint64_t sub_23B4F1E20()
{
  OUTLINED_FUNCTION_6_29();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B4F1EA4(uint64_t a1)
{
  OUTLINED_FUNCTION_12_26(a1);
  v3 = v1(v2);
  OUTLINED_FUNCTION_5_31(v3, v4, v5);

  return sub_23B50D914();
}

BOOL static AirQualityData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = type metadata accessor for AirQualityData(0);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135998, &qword_23B526490);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  sub_23B4F211C(a1, &v25 - v16);
  sub_23B4F211C(a2, &v17[v19]);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 2, v4);
  if (!EnumTagSinglePayload)
  {
    sub_23B4F211C(v17, v13);
    if (!OUTLINED_FUNCTION_13_26())
    {
      OUTLINED_FUNCTION_0_58();
      sub_23B4F25C0(&v17[v19], v8, v24);
      v22 = static AirQuality.== infix(_:_:)(v13, v8);
      sub_23B4F21E8(v8, type metadata accessor for AirQuality);
      sub_23B4F21E8(v13, type metadata accessor for AirQuality);
      OUTLINED_FUNCTION_4_44();
      return v22;
    }

    OUTLINED_FUNCTION_3_55();
    sub_23B4F21E8(v13, v21);
    goto LABEL_9;
  }

  if (EnumTagSinglePayload == 1)
  {
    if (OUTLINED_FUNCTION_13_26() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (OUTLINED_FUNCTION_13_26() != 2)
  {
LABEL_9:
    sub_23B4F2180(v17);
    return 0;
  }

  OUTLINED_FUNCTION_4_44();
  return 1;
}

uint64_t type metadata accessor for AirQualityData(uint64_t a1)
{
  result = qword_280B45DF8;
  if (!qword_280B45DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B4F211C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4F2180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135998, &qword_23B526490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4F21E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t AirQualityData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359A0, &qword_23B526498);
  OUTLINED_FUNCTION_9_37();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for AirQualityData(0);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4F2518();
  sub_23B50D964();
  if (!v2)
  {
    sub_23B4F256C();
    sub_23B50D734();
    if (v23)
    {
      v15 = OUTLINED_FUNCTION_8_31();
      v16(v15);
      if (v23 == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      sub_23B4F292C(&qword_27E133198, &protocol conformance descriptor for AirQuality);
      sub_23B50D734();
      v18 = OUTLINED_FUNCTION_8_31();
      v19(v18);
      OUTLINED_FUNCTION_0_58();
      sub_23B4F25C0(v8, v14, v20);
      v17 = 0;
    }

    __swift_storeEnumTagSinglePayload(v14, v17, 2, v4);
    sub_23B4F25C0(v14, a2, type metadata accessor for AirQualityData);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B4F2518()
{
  result = qword_280B45D78;
  if (!qword_280B45D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45D78);
  }

  return result;
}

unint64_t sub_23B4F256C()
{
  result = qword_27E1359A8;
  if (!qword_27E1359A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1359A8);
  }

  return result;
}

uint64_t sub_23B4F25C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t AirQualityData.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v25[0] = v8 - v7;
  v9 = type metadata accessor for AirQualityData(0);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359B0, &qword_23B5264A0);
  OUTLINED_FUNCTION_9_37();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4F2518();
  sub_23B50D974();
  sub_23B4F211C(v3, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 2, v5);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v29 = 1;
      v28 = 0;
    }

    else
    {
      v31 = 2;
      v30 = 0;
    }

    sub_23B4F28D8();
    sub_23B50D7F4();
  }

  else
  {
    OUTLINED_FUNCTION_0_58();
    v20 = v25[0];
    sub_23B4F25C0(v13, v25[0], v21);
    v27 = 0;
    sub_23B4F28D8();
    v22 = v25[1];
    sub_23B50D7F4();
    if (!v22)
    {
      v26 = 1;
      sub_23B4F292C(&qword_280B42658, &protocol conformance descriptor for AirQuality);
      sub_23B50D7F4();
    }

    OUTLINED_FUNCTION_3_55();
    sub_23B4F21E8(v20, v23);
  }

  return (*(v15 + 8))(v18, v1);
}

unint64_t sub_23B4F28D8()
{
  result = qword_280B45D80[0];
  if (!qword_280B45D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B45D80);
  }

  return result;
}

uint64_t sub_23B4F292C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AirQuality(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4F2970(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B50D664();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23B4F29C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B50D664();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B4F2A10(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x726F707075736E75;
}

uint64_t sub_23B4F2A9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B4F2970(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23B4F2ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4F2970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4F2AF4(uint64_t a1)
{
  v2 = sub_23B4F2518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4F2B30(uint64_t a1)
{
  v2 = sub_23B4F2518();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B4F2B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B4F29C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23B4F2BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B4F2A10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B4F2CF4(uint64_t a1)
{
  v1 = type metadata accessor for AirQuality(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for AirQualityData.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AirQualityData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4F2F08()
{
  result = qword_27E1359B8;
  if (!qword_27E1359B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1359B8);
  }

  return result;
}

unint64_t sub_23B4F2F60()
{
  result = qword_27E1359C0;
  if (!qword_27E1359C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1359C0);
  }

  return result;
}

unint64_t sub_23B4F2FB8()
{
  result = qword_280B45E08;
  if (!qword_280B45E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45E08);
  }

  return result;
}

unint64_t sub_23B4F3010()
{
  result = qword_280B45E10;
  if (!qword_280B45E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45E10);
  }

  return result;
}

unint64_t sub_23B4F3064()
{
  result = qword_280B45E18;
  if (!qword_280B45E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45E18);
  }

  return result;
}

uint64_t sub_23B4F30D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23B4F30F8, 0, 0);
}

uint64_t sub_23B4F30F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_opt_self() sharedService];
  v14[5] = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [v15 defaultTraits];
    v14[6] = v17;
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = v17;
      v20 = [v18 sharedConfiguration];
      if (!v20)
      {
        __break(1u);
        return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
      }

      v28 = sub_23B391C9C(v20);
      if (!v29)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      sub_23B4F44F4(v28, v29, v19);
    }

    v30 = v14[3];
    [v30 coordinate];
    v32 = v31;
    [v30 coordinate];
    v34 = [v16 ticketForReverseGeocodeCoordinate:objc_msgSend(v30 shiftLocationsIfNeeded:sel_shiftedReferenceFrame) ^ 1 preserveOriginalLocation:1 traits:{v17, v32, v33}];
    v14[7] = v34;
    if (v34)
    {
      v35 = v34;
      v36 = v14[4];
      v37 = swift_task_alloc();
      v14[8] = v37;
      *(v37 + 16) = v35;
      *(v37 + 24) = v36;
      v38 = swift_task_alloc();
      v14[9] = v38;
      v27 = type metadata accessor for ReverseGeocodeResult(0);
      *v38 = v14;
      v38[1] = sub_23B4F33A4;
      v20 = v14[2];
      v25 = sub_23B4F44EC;
      v24 = 0x800000023B539290;
      v21 = 0;
      v22 = 0;
      v23 = 0xD000000000000019;
      v26 = v37;

      return MEMORY[0x2822008A0](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
    }

    sub_23B4F4498();
    v41 = swift_allocError();
    OUTLINED_FUNCTION_1_46(v41, v42);
  }

  else
  {
    sub_23B4F4498();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_1_46(v39, v40);
  }

  v43 = v14[1];

  return v43();
}

uint64_t sub_23B4F33A4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23B4F3530;
  }

  else
  {

    v2 = sub_23B4F34C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B4F34C0()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B4F3530()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t GeocodeService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_23B4F35E0(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodeResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E135A00, &qword_23B526838);
  MEMORY[0x28223BE20](v5);
  v7 = (v9 - v6);
  sub_23B4F4720(a1, v9 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    return sub_23B50D344();
  }

  else
  {
    sub_23B437AC8(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    return sub_23B50D354();
  }
}

void sub_23B4F3728(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E135A00, &qword_23B526838);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v54 = type metadata accessor for ReverseGeocodeResult(0);
  MEMORY[0x28223BE20](v54);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23B50AEF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v49 - v15;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v16 = sub_23B50CDF4();
  __swift_project_value_buffer(v16, qword_280B4E9F0);
  v17 = sub_23B50CDD4();
  v18 = sub_23B50D4C4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v52 = a2;
    v20 = v8;
    v21 = a3;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_23B38D000, v17, v18, "Handling geo map service response", v19, 2u);
    v23 = v22;
    a3 = v21;
    v8 = v20;
    a2 = v52;
    MEMORY[0x23EE9E260](v23, -1, -1);
  }

  if (a2)
  {
    sub_23B4F4498();
    v24 = swift_allocError();
    *v25 = a2;
    v56 = v24;
    v26 = a2;
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    sub_23B50D344();
    return;
  }

  if (!a1 || !sub_23B407FE0(a1))
  {
    sub_23B4F4498();
    v43 = swift_allocError();
    *v44 = 1;
    v56 = v43;
    goto LABEL_22;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x23EE9D840](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v27 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v28 = [objc_opt_self() placemarkWithGEOMapItem_];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 timeZone];
    if (v30)
    {
      v31 = v30;
      v32 = v55;
      sub_23B50AED4();

      swift_getObjectType();
      v50 = sub_23B50D484();
      v51 = a3;
      v34 = v33;
      v35 = *(v12 + 16);
      v52 = v27;
      v36 = v53;
      v35(v53, v32, v11);
      v37 = sub_23B4F45FC(v29);
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      v49 = v39;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      *v10 = v50;
      v10[1] = v34;
      v41 = v54;
      (*(v12 + 32))(v10 + *(v54 + 20), v36, v11);
      v42 = (v10 + *(v41 + 24));
      *v42 = v49;
      v42[1] = v40;
      sub_23B3FE9CC(v10, v8);
      swift_storeEnumTagMultiPayload();
      sub_23B4F35E0(v8);
      swift_unknownObjectRelease();

      sub_23B4D7720(v8, &unk_27E135A00, &qword_23B526838);
      sub_23B437A6C(v10);
      (*(v12 + 8))(v32, v11);
    }

    else
    {
      sub_23B4F4498();
      v47 = swift_allocError();
      *v48 = 0;
      v56 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
      sub_23B50D344();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_23B4F4498();
    v45 = swift_allocError();
    *v46 = 2;
    v56 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
    sub_23B50D344();
    swift_unknownObjectRelease();
  }
}

void sub_23B4F3C88(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - v6;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v8 = sub_23B50CDF4();
  __swift_project_value_buffer(v8, qword_280B4E9F0);
  v9 = sub_23B50CDD4();
  v10 = sub_23B50D4C4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B38D000, v9, v10, "Submitting reverse geocode ticket", v11, 2u);
    MEMORY[0x23EE9E260](v11, -1, -1);
  }

  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  v21 = sub_23B4F4558;
  v22 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B4F3F78;
  v20 = &block_descriptor;
  v14 = _Block_copy(&aBlock);

  v15 = sub_23B4F4018();
  v21 = GEOLocationCoordinate2DMake;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B4F4060;
  v20 = &block_descriptor_8;
  v16 = _Block_copy(&aBlock);
  [a2 submitWithHandler:v14 auditToken:v15 timeout:30 networkActivity:v16];
  _Block_release(v16);

  _Block_release(v14);
}

uint64_t sub_23B4F3F78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359F8, &qword_23B526830);
    v4 = sub_23B50D2B4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_23B4F4018()
{
  os_unfair_lock_lock((v0 + 16));
  sub_23B4F40B4((v0 + 24), &v2);
  os_unfair_lock_unlock((v0 + 16));
  return v2;
}

uint64_t sub_23B4F4060(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_23B4F40B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  if (*a1 == 1)
  {
    v6 = [objc_opt_self() currentConnection];
    if (v6)
    {
      v7 = sub_23B4F46B4(v6, &selRef_wd_bundleIdentifier);
      if (v8)
      {
        v9 = v7;
        v10 = v8;
        sub_23B4F4670();
        v11 = v9;
        v12 = v10;
LABEL_23:
        v4 = sub_23B4F42CC(v11, v12);
        v23 = v4;
        goto LABEL_24;
      }
    }

    v13 = objc_opt_self();
    v14 = sub_23B4F46B4([v13 mainBundle], &selRef_bundleIdentifier);
    if (!v15)
    {
      goto LABEL_11;
    }

    if (v14 == 0xD000000000000012 && v15 == 0x800000023B539320)
    {
    }

    else
    {
      v17 = sub_23B50D834();

      if ((v17 & 1) == 0)
      {
LABEL_11:
        v18 = sub_23B4F46B4([v13 mainBundle], &selRef_bundleIdentifier);
        v4 = v19;
        if (!v19)
        {
LABEL_24:
          *a1 = v4;
          goto LABEL_25;
        }

        if (v18 == 0xD000000000000016 && v19 == 0x800000023B5392E0)
        {
        }

        else
        {
          v21 = sub_23B50D834();

          if ((v21 & 1) == 0)
          {
            v4 = 0;
            goto LABEL_24;
          }
        }

        sub_23B4F4670();
        v22 = "com.apple.nanoweatherd";
        v11 = 0xD00000000000001ALL;
LABEL_22:
        v12 = v22 | 0x8000000000000000;
        goto LABEL_23;
      }
    }

    sub_23B4F4670();
    v22 = "tURL";
    v11 = 0xD000000000000011;
    goto LABEL_22;
  }

LABEL_25:
  *a2 = v4;
  return sub_23B4F4660(v3);
}

id sub_23B4F42CC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23B50D144();

  v4 = [v2 initWithProxiedApplicationBundleId_];

  return v4;
}

uint64_t GeocodeService.__deallocating_deinit()
{
  sub_23B4D7720(v0 + 24, &qword_27E1359D0, &qword_23B5267A8);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23B4F43E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_23B4F4438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23B4F4498()
{
  result = qword_280B42560;
  if (!qword_280B42560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42560);
  }

  return result;
}

void sub_23B4F44F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23B50D144();

  [a3 setDisplayRegion_];
}

void sub_23B4F4558(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1359E8, &unk_23B526820) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_23B4F3728(a1, a2, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B4F45FC(void *a1)
{
  v1 = [a1 ISOcountryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23B50D164();

  return v3;
}

id sub_23B4F4660(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_23B4F4670()
{
  result = qword_27E1359F0;
  if (!qword_27E1359F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1359F0);
  }

  return result;
}

uint64_t sub_23B4F46B4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_23B50D164();

  return v4;
}

uint64_t sub_23B4F4720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E135A00, &qword_23B526838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10WeatherKit14GeocodeServiceC6Errors33_9FB5EE724A02B93EC96D60F9BC4CC6BALLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B4F47A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4F47FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_23B4F4858(void *result, int a2)
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

void sub_23B4F4C90(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C78, &qword_23B51AA68);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(*v1 + 16);
  if (v8 == v9)
  {

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v9)
    {
      __break(1u);
    }

    else
    {
      v10 = sub_23B50AD24();
      v11 = *(v10 - 8);
      v12 = *(v11 + 16);
      v13 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v6 = v15;
      v12(&v6[v14], v13, v10);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_23B3E3DA8(v6, a1, &qword_27E133C78, &qword_23B51AA68);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_23B4F4E04(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - v7;
  v9 = type metadata accessor for CLLocationCoordinate2D.SolarEvents(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B50AEF4();
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 0x1A)
  {
    __break(1u);
  }

  else
  {
    v17 = byte_284E0CF00[a2 + 32];
    v57 = v13;
    v55 = v14;
    type metadata accessor for WeatherConditionSymbolMapper();
    swift_initStaticObject();
    v53 = v8;
    sub_23B50AEE4();
    v62 = v17;
    v59 = v17;
    v18 = sub_23B50A4F4(&v62, a1, v16, 37.323, -122.0);
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0x2E78616D2E6E7573;
    }

    v21 = 0xEC0000006C6C6966;
    if (v19)
    {
      v21 = v19;
    }

    v60 = v21;
    v61 = v20;
    v22 = sub_23B3CAE4C(v17, 22);
    CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(a1, v16, v11);
    v23 = v11[*(v9 + 24)];
    v56 = v23;
    sub_23B4F5D20(v11);
    v24 = 5;
    if (!v23)
    {
      v24 = 0;
    }

    v58 = v24;
    if (v22)
    {
      v25 = 0.3;
    }

    else
    {
      v25 = 0.0;
    }

    if (v22)
    {
      v26 = 3;
    }

    else
    {
      v26 = 0;
    }

    v54 = v26;
    v27 = sub_23B50AD24();
    (*(*(v27 - 8) + 16))(a3, a1, v27);
    v28 = objc_opt_self();
    v29 = [v28 fahrenheit];
    v30 = type metadata accessor for HourWeather(0);
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    sub_23B50A9B4();
    v31 = objc_opt_self();
    v32 = [v31 inches];
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    v33 = [v31 inches];
    sub_23B50A9B4();
    v34 = [objc_opt_self() inchesOfMercury];
    sub_23B3924C0(0, &qword_280B43398, 0x277CCAE38);
    sub_23B50A9B4();
    v35 = [v28 fahrenheit];
    sub_23B50A9B4();
    v36 = [v28 fahrenheit];
    sub_23B50A9B4();
    v37 = [v31 miles];
    sub_23B50A9B4();
    v38 = [objc_opt_self() degrees];
    v39 = (a3 + v30[26]);
    v40 = type metadata accessor for Wind(0);
    sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
    sub_23B50A9B4();
    v41 = objc_opt_self();
    v42 = [v41 kilometersPerHour];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    v43 = [v41 kilometersPerHour];
    v44 = v53;
    sub_23B50A9B4();
    (*(v55 + 8))(v16, v57);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    v46 = v44;
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
    v47 = *(v40 + 28);
    __swift_storeEnumTagSinglePayload(&v39[v47], 1, 1, v45);
    *v39 = 4;
    sub_23B4983E4(v46, &v39[v47]);
    *(a3 + v30[5]) = 0x3FC999999999999ALL;
    *(a3 + v30[6]) = 0x3FC999999999999ALL;
    *(a3 + v30[7]) = 0x3FC999999999999ALL;
    *(a3 + v30[8]) = 0x3FC999999999999ALL;
    v48 = (a3 + v30[9]);
    *v48 = vdupq_n_s64(0x3FC999999999999AuLL);
    v48[1].i64[0] = 0x3FC999999999999ALL;
    *(a3 + v30[10]) = v59;
    v49 = (a3 + v30[11]);
    v50 = v60;
    *v49 = v61;
    v49[1] = v50;
    *(a3 + v30[13]) = 0x3FE199999999999ALL;
    LOBYTE(v50) = v56;
    *(a3 + v30[14]) = v56;
    *(a3 + v30[15]) = v54;
    *(a3 + v30[16]) = v25;
    *(a3 + v30[21]) = 0;
    v51 = a3 + v30[19];
    *v51 = 0x3FC999999999999ALL;
    *(v51 + 8) = 0;
    v52 = a3 + v30[24];
    *v52 = v58;
    *(v52 + 8) = v50;
  }
}

uint64_t static HourWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133830, &qword_23B518D08);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  static Forecast<>.mock()((&v14 - v6));
  v8 = *v7;
  v9 = *(*v7 + 16);
  v10 = type metadata accessor for HourWeather(0);
  v11 = v10;
  if (v9)
  {
    sub_23B4F56D0(v8 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v4);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v12, 1, v11);
  sub_23B4F5734(v7);
  result = __swift_getEnumTagSinglePayload(v4, 1, v11);
  if (result != 1)
  {
    return sub_23B4F566C(v4, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B4F566C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourWeather(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4F56D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4F5734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B4F57DC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D00, &unk_23B514F10);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

char *sub_23B4F5A14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_59(a3, result);
  }

  return result;
}

char *sub_23B4F5A34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_59(a3, result);
  }

  return result;
}

char *sub_23B4F5A5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_59(a3, result);
  }

  return result;
}

void sub_23B4F5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_5_32();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_6(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_1_47();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_1_47();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_23B4F5D20(uint64_t a1)
{
  v2 = type metadata accessor for CLLocationCoordinate2D.SolarEvents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:cacheReadPolicy:updateCacheAsynchronously:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_7_46();
  v18 = *v17;
  v19 = OUTLINED_FUNCTION_2_49();
  v20 = v19[5];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  *(v11 + v19[14]) = MEMORY[0x277D84F90];
  *v11 = v16;
  v11[1] = v15;
  v33 = sub_23B39A558(v14, v11 + v20, &qword_27E131F68, &unk_23B50F2A0);
  *v13 = v18;
  OUTLINED_FUNCTION_4_45(v33, v34, v35, v36, v37, v38, v39, v40, *v42, *&v42[4], v44, v46);
  sub_23B39A558(v54, v11 + v12, &qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_0_60(v19[10], v43, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  *(v11 + v41) = a11;
}

void WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:cacheReadPolicy:)()
{
  OUTLINED_FUNCTION_7_46();
  v7 = *v6;
  v8 = OUTLINED_FUNCTION_2_49();
  v9 = v8[5];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *(v0 + v8[14]) = MEMORY[0x277D84F90];
  *v0 = v5;
  v0[1] = v4;
  v22 = sub_23B39A558(v3, v0 + v9, &qword_27E131F68, &unk_23B50F2A0);
  *v2 = v7;
  OUTLINED_FUNCTION_4_45(v22, v23, v24, v25, v26, v27, v28, v29, *v31, *&v31[4], v33, v35);
  sub_23B39A558(v43, v0 + v1, &qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_0_60(v8[10], v32, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  *(v0 + v30) = 0;
}

uint64_t WeatherServiceFetchOptions.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WeatherServiceFetchOptions.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WeatherServiceFetchOptions.locationOptions.getter()
{
  result = OUTLINED_FUNCTION_9_38();
  v3 = (v1 + *(result + 24));
  v4 = *v3;
  LOWORD(v3) = *(v3 + 4);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t WeatherServiceFetchOptions.locationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for WeatherServiceFetchOptions(0);
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t WeatherServiceFetchOptions.cachingOptions.getter()
{
  result = OUTLINED_FUNCTION_9_38();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t WeatherServiceFetchOptions.cachingOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for WeatherServiceFetchOptions(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

double WeatherServiceFetchOptions.treatmentIdentifiers.getter()
{
  type metadata accessor for WeatherServiceFetchOptions(0);

  return result;
}

uint64_t WeatherServiceFetchOptions.treatmentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_33() + 32);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherServiceFetchOptions.needsMarineData.setter(char a1)
{
  result = type metadata accessor for WeatherServiceFetchOptions(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t WeatherServiceFetchOptions.needsTwilightData.setter(char a1)
{
  result = type metadata accessor for WeatherServiceFetchOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

__n128 WeatherServiceFetchOptions.cacheReadPolicy.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_38() + 52));
  v3 = v2[1].n128_u64[0];
  result = *v2;
  v6 = v2[1].n128_u32[2];
  v2 = (v2 + 24);
  v5 = v6;
  LOWORD(v6) = v2->n128_u16[2];
  *v0 = result;
  v0[1].n128_u64[0] = v3;
  v0[1].n128_u32[2] = v5;
  v0[1].n128_u16[6] = v6;
  v0[1].n128_u8[14] = v2->n128_u8[6];
  return result;
}

__n128 WeatherServiceFetchOptions.cacheReadPolicy.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v5 = *(v3 + 2);
  v6 = v3[6];
  v7 = (v1 + *(type metadata accessor for WeatherServiceFetchOptions(0) + 52));
  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v2;
  v7[1].n128_u8[14] = v6;
  v7[1].n128_u16[6] = v5;
  v7[1].n128_u32[2] = v4;
  return result;
}

double WeatherServiceFetchOptions.requestDenyList.getter()
{
  type metadata accessor for WeatherServiceFetchOptions(0);

  return result;
}

uint64_t WeatherServiceFetchOptions.requestDenyList.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_33() + 56);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherServiceFetchOptions.updateCacheAsynchronously.setter(char a1)
{
  result = type metadata accessor for WeatherServiceFetchOptions(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

double WeatherServiceFetchOptions.with(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:needsMarineData:needsTwilightData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v66 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v17 = OUTLINED_FUNCTION_3(v16);
  MEMORY[0x28223BE20](v17);
  v69 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v60 - v24;
  v67 = *a4;
  v70 = *(a4 + 4);
  v25 = *a5;
  v65 = a2;
  v26 = *(a5 + 8);
  if (!a2)
  {
    v27 = *v8;
    v65 = v8[1];
    v66 = v27;
  }

  sub_23B39A44C(a3, v22, &qword_27E131F68, &unk_23B50F2A0);
  v28 = sub_23B50AEF4();
  if (__swift_getEnumTagSinglePayload(v22, 1, v28) == 1)
  {
    Options = type metadata accessor for WeatherServiceFetchOptions(0);
    sub_23B39A44C(v8 + *(Options + 20), v68, &qword_27E131F68, &unk_23B50F2A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v28);

    if (EnumTagSinglePayload != 1)
    {
      sub_23B398890(v22, &qword_27E131F68, &unk_23B50F2A0);
    }
  }

  else
  {
    v31 = v68;
    (*(*(v28 - 8) + 32))(v68, v22, v28);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v28);
  }

  if ((v70 & 0xFF00) != 0x300)
  {
    if (!v26)
    {
      goto LABEL_9;
    }

LABEL_12:
    v25 = *(v8 + *(type metadata accessor for WeatherServiceFetchOptions(0) + 28));
    if (a6)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v32 = v8 + *(type metadata accessor for WeatherServiceFetchOptions(0) + 24);
  v67 = *v32;
  v70 = *(v32 + 4);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (a6)
  {
LABEL_10:
    v62 = a6;
    goto LABEL_14;
  }

LABEL_13:
  v62 = *(v8 + *(type metadata accessor for WeatherServiceFetchOptions(0) + 32));

LABEL_14:
  v33 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  if (a7 == 2)
  {
    a7 = *(v8 + *(type metadata accessor for WeatherServiceFetchOptions(0) + 40));
  }

  v63 = v25;
  v64 = a7;
  v37 = type metadata accessor for WeatherServiceFetchOptions(0);
  v61 = *(v8 + v37[15]);
  v38 = qword_280B42708;

  if (v38 != -1)
  {
    swift_once();
  }

  v60 = xmmword_280B42710;
  v39 = qword_280B42720;
  v40 = dword_280B42728;
  v41 = word_280B4272C;
  v42 = v37[5];
  v43 = byte_280B4272E;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
  v47 = a8 + v37[6];
  *v47 = 0;
  *(v47 + 4) = 768;
  v48 = v37[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v33);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  *(a8 + v37[14]) = MEMORY[0x277D84F90];
  v56 = v65;
  *a8 = v66;
  a8[1] = v56;
  sub_23B39A558(v68, a8 + v42, &qword_27E131F68, &unk_23B50F2A0);
  *v47 = v67;
  *(v47 + 4) = v70;
  v57 = v62;
  *(a8 + v37[7]) = v63;
  *(a8 + v37[8]) = v57;
  sub_23B39A558(v69, a8 + v48, &qword_27E1338B0, &unk_23B519390);
  *(a8 + v37[10]) = v64 & 1;
  *(a8 + v37[11]) = 0;
  v58 = a8 + v37[13];
  result = *&v60;
  *v58 = v60;
  *(v58 + 2) = v39;
  v58[30] = v43;
  *(v58 + 14) = v41;
  *(v58 + 6) = v40;
  *(a8 + v37[15]) = v61;
  return result;
}

uint64_t CurrentWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:rainfallAmount:snowfallAmount:pastHourPrecipitationAmountByType:pastSixHoursPrecipitationAmountByType:pastTwentyFourHoursPrecipitationAmountByType:nextHourPrecipitationAmountByType:nextSixHoursPrecipitationAmountByType:nextTwentyFourHoursPrecipitationAmountByType:apparentPrecipitationIntensity:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31)
{
  v67 = *a2;
  v41 = *(a2 + 2);
  v42 = *a3;
  v43 = *a15;
  v44 = *a24;
  v71 = *(a24 + 8);
  v73 = *a30;
  v72 = *(a30 + 8);
  v45 = type metadata accessor for CurrentWeather(0);
  v70 = v45[29];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  v50 = v45[30];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v46);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  (*(v54 + 32))(a9, a1);
  *(a9 + v45[5]) = a10;
  *(a9 + v45[6]) = a11;
  *(a9 + v45[7]) = a12;
  *(a9 + v45[8]) = a13;
  v55 = a9 + v45[9];
  *v55 = v67;
  *(v55 + 16) = v41;
  *(a9 + v45[10]) = v42;
  v56 = (a9 + v45[11]);
  *v56 = a4;
  v56[1] = a5;
  v57 = *(*(v46 - 8) + 32);
  v57(a9 + v45[12], a6, v46);
  *(a9 + v45[13]) = a14;
  v58 = v45[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  (*(v59 + 32))(a9 + v58, a7);
  v60 = v45[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2();
  (*(v61 + 32))(a9 + v60, a8);
  *(a9 + v45[16]) = v43;
  sub_23B3B0660();
  sub_23B3B0660();
  sub_23B3B0660();
  sub_23B3B0660();
  sub_23B3B0660();
  sub_23B3B0660();
  sub_23B3B0660();
  sub_23B3B0660();
  v62 = a9 + v45[25];
  *v62 = v44;
  *(v62 + 8) = v71;
  *(a9 + v45[26]) = a25;
  v57(a9 + v45[27], a26, v46);
  v57(a9 + v45[28], a27, v46);
  sub_23B4F70E4(a28, a9 + v70);
  sub_23B4F70E4(a29, a9 + v50);
  v63 = a9 + v45[31];
  *v63 = v73;
  *(v63 + 8) = v72;
  v64 = v45[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  (*(v65 + 32))(a9 + v64, a31);
  OUTLINED_FUNCTION_21_16();
  sub_23B3B0660();
  OUTLINED_FUNCTION_20_21();
  return sub_23B3B0660();
}

uint64_t sub_23B4F70E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeather.isExpired.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  sub_23B50B9D4();
  sub_23B50B994();
  type metadata accessor for CurrentWeather(0);
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v7, v8, MEMORY[0x277CC9590]);
  v9 = sub_23B50D114();
  (*(v2 + 8))(v6, v0);
  return v9 & 1;
}

uint64_t CurrentWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t CurrentWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCover.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.cloudCoverLow.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverLow.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.cloudCoverMid.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverMid.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.cloudCoverHigh.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverHigh.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

double CurrentWeather.cloudCoverByAltitude.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for CurrentWeather(v2) + 36);
  result = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = result;
  return result;
}

__n128 CurrentWeather.cloudCoverByAltitude.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for CurrentWeather(0) + 36));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t CurrentWeather.cloudCoverByAltitude.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t CurrentWeather.condition.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.symbolName.getter()
{
  type metadata accessor for CurrentWeather(0);

  return OUTLINED_FUNCTION_65();
}

uint64_t CurrentWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CurrentWeather(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CurrentWeather.symbolName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.dewPoint.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t CurrentWeather.dewPoint.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t CurrentWeather.dewPoint.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t CurrentWeather.humidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.precipitationIntensity.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t CurrentWeather.precipitationIntensity.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t CurrentWeather.precipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pressure.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t CurrentWeather.pressure.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t CurrentWeather.pressureTrend.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4F7A94()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t CurrentWeather.rainfallAmount.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_12_27();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.rainfallAmount.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.snowfallAmount.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t CurrentWeather.snowfallAmount.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_12_27();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.snowfallAmount.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pastHourPrecipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.pastHourPrecipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pastSixHoursPrecipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.pastSixHoursPrecipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pastTwentyFourHoursPrecipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.pastTwentyFourHoursPrecipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.nextHourPrecipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_7_47();
}

uint64_t CurrentWeather.nextHourPrecipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.nextHourPrecipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.nextSixHoursPrecipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_7_47();
}

uint64_t CurrentWeather.nextSixHoursPrecipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.nextSixHoursPrecipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.nextTwentyFourHoursPrecipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.nextTwentyFourHoursPrecipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

double CurrentWeather.apparentPrecipitationIntensity.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for CurrentWeather(v2) + 100);
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

uint64_t CurrentWeather.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for CurrentWeather(0);
  v5 = v1 + *(result + 100);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t CurrentWeather.apparentPrecipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.isDaylight.setter(char a1)
{
  result = type metadata accessor for CurrentWeather(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t CurrentWeather.isDaylight.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.temperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t CurrentWeather.temperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.apparentTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t CurrentWeather.apparentTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.highTemperature.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for CurrentWeather(v2) + 116);

  return sub_23B4F81DC(v3, v0);
}

uint64_t sub_23B4F81DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeather.highTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B4F70E4(v1, v2);
}

uint64_t CurrentWeather.highTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.lowTemperature.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for CurrentWeather(v2) + 120);

  return sub_23B4F81DC(v3, v0);
}

uint64_t CurrentWeather.lowTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B4F70E4(v1, v2);
}

uint64_t CurrentWeather.lowTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.uvIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for CurrentWeather(0);
  v5 = v1 + *(result + 124);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t CurrentWeather.uvIndex.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.visibility.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t CurrentWeather.visibility.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.wind.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_21_16();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.wind.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t sub_23B4F8564()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t CurrentWeather.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for CurrentWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4F85F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xED0000776F4C7265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F4364756F6C63 && a2 == 0xED000064694D7265;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x766F4364756F6C63 && a2 == 0xEE00686769487265;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023B529F40 == a2;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x746E696F50776564 && a2 == 0xE800000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C6C61666E696172 && a2 == 0xEE00746E756F6D41;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000021 && 0x800000023B539340 == a2;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000025 && 0x800000023B539370 == a2;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000002CLL && 0x800000023B5393A0 == a2;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000021 && 0x800000023B5393D0 == a2;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000025 && 0x800000023B539400 == a2;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD00000000000002CLL && 0x800000023B539430 == a2;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2;
                                            if (v26 || (sub_23B50D834() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                                              if (v27 || (sub_23B50D834() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                                                if (v28 || (sub_23B50D834() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000013 && 0x800000023B529F60 == a2;
                                                  if (v29 || (sub_23B50D834() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
                                                    if (v30 || (sub_23B50D834() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
                                                      if (v31 || (sub_23B50D834() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                                        if (v32 || (sub_23B50D834() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                                          if (v33 || (sub_23B50D834() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                                            if (v34 || (sub_23B50D834() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v36 = sub_23B50D834();

                                                              if (v36)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
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

uint64_t sub_23B4F8F20(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x766F4364756F6C63;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x766F4364756F6C63;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x614E6C6F626D7973;
      break;
    case 8:
      result = 0x746E696F50776564;
      break;
    case 9:
      result = 0x79746964696D7568;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
    case 12:
      result = 0x6572757373657270;
      break;
    case 13:
      v3 = 1852399986;
      goto LABEL_16;
    case 14:
      v3 = 2003791475;
LABEL_16:
      result = v3 | 0x6C6C616600000000;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
    case 19:
      result = 0xD000000000000025;
      break;
    case 17:
    case 20:
      result = 0xD00000000000002CLL;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD00000000000001ELL;
      break;
    case 22:
      result = 0x67696C7961447369;
      break;
    case 23:
      result = 0x74617265706D6574;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x706D655468676968;
      break;
    case 26:
      result = 0x65706D6554776F6CLL;
      break;
    case 27:
      result = 0x7865646E497675;
      break;
    case 28:
      result = 0x696C696269736976;
      break;
    case 29:
      result = 1684957559;
      break;
    case 30:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4F9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4F85F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4F9298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4F8F18();
  *a1 = result;
  return result;
}

uint64_t sub_23B4F92C0(uint64_t a1)
{
  v2 = sub_23B4FA250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4F92FC(uint64_t a1)
{
  v2 = sub_23B4FA250();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CurrentWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v95[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_12_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v95[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A18, &qword_23B526960);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v95[-v23];
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v100 = v6;
  v25 = type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_13_0(*(v25 + 20));
  if (!v33)
  {
    return 0;
  }

  v27 = v26;
  OUTLINED_FUNCTION_13_0(v26[6]);
  if (!v33)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v27[7]);
  if (!v33)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v27[8]);
  if (!v33)
  {
    return 0;
  }

  v28 = v27[9];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = *(a1 + v28 + 16);
  v32 = (a2 + v28);
  v33 = v29 == *v32 && v30 == v32[1];
  v34 = v33 && v31 == v32[2];
  if (!v34 || (sub_23B3CAE4C(*(a1 + v27[10]), *(a2 + v27[10])) & 1) == 0)
  {
    return 0;
  }

  v35 = v27[11];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = v36 == *v38 && v37 == v38[1];
  if (!v39 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v99 = v27;
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v40, v41, v42, v43);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_58_2();
  v98 = v44;
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v99[13]);
  if (!v33)
  {
    return 0;
  }

  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v45, &qword_27E131E10, &unk_23B5100F0, v46);
  OUTLINED_FUNCTION_64_3();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v47, &qword_27E132158, &qword_23B5100E8, v48);
  OUTLINED_FUNCTION_64_3();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v49 = v99;
  if ((sub_23B3E5D18(*(a1 + v99[16]), *(a2 + v99[16])) & 1) == 0)
  {
    return 0;
  }

  v50 = OUTLINED_FUNCTION_31_2(v49[17]);
  if ((static PrecipitationAmount.== infix(_:_:)(v50, v51) & 1) == 0)
  {
    return 0;
  }

  v52 = OUTLINED_FUNCTION_31_2(v49[18]);
  if ((static PrecipitationAmount.== infix(_:_:)(v52, v53) & 1) == 0)
  {
    return 0;
  }

  v54 = OUTLINED_FUNCTION_31_2(v49[19]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v54, v55) & 1) == 0)
  {
    return 0;
  }

  v56 = OUTLINED_FUNCTION_31_2(v49[20]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v56, v57) & 1) == 0)
  {
    return 0;
  }

  v58 = OUTLINED_FUNCTION_31_2(v99[21]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v58, v59) & 1) == 0)
  {
    return 0;
  }

  v60 = OUTLINED_FUNCTION_31_2(v99[22]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v60, v61) & 1) == 0)
  {
    return 0;
  }

  v62 = OUTLINED_FUNCTION_31_2(v99[23]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v62, v63) & 1) == 0)
  {
    return 0;
  }

  v64 = OUTLINED_FUNCTION_31_2(v99[24]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v64, v65) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v99[25]) != *(a2 + v99[25]))
  {
    return 0;
  }

  if ((sub_23B3E71A0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v99[26]) != *(a2 + v99[26]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v99[27]);
  OUTLINED_FUNCTION_58_2();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v99[28]);
  OUTLINED_FUNCTION_58_2();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v97 = v99[29];
  v66 = *(v17 + 48);
  sub_23B4F81DC(a1 + v97, v24);
  v67 = a2 + v97;
  v97 = v66;
  sub_23B4F81DC(v67, &v24[v66]);
  OUTLINED_FUNCTION_1_43(v24);
  if (v33)
  {
    OUTLINED_FUNCTION_1_43(&v24[v97]);
    if (v33)
    {
      sub_23B398890(v24, &qword_27E132168, &qword_23B510108);
      goto LABEL_53;
    }

LABEL_51:
    v69 = v24;
LABEL_62:
    sub_23B398890(v69, &qword_27E135A18, &qword_23B526960);
    return 0;
  }

  sub_23B4F81DC(v24, v16);
  OUTLINED_FUNCTION_1_43(&v24[v97]);
  if (v68)
  {
    (*(v100 + 8))(v16, v4);
    goto LABEL_51;
  }

  (*(v100 + 32))(v9, &v24[v97], v4);
  OUTLINED_FUNCTION_58_2();
  v96 = sub_23B50D134();
  v97 = *(v100 + 8);
  (v97)(v9, v4);
  (v97)(v16, v4);
  sub_23B398890(v24, &qword_27E132168, &qword_23B510108);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v70 = v99[30];
  v71 = *(v17 + 48);
  sub_23B4F81DC(a1 + v70, v21);
  sub_23B4F81DC(a2 + v70, v21 + v71);
  OUTLINED_FUNCTION_1_43(v21);
  if (v33)
  {
    OUTLINED_FUNCTION_1_43(v21 + v71);
    if (v33)
    {
      sub_23B398890(v21, &qword_27E132168, &qword_23B510108);
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  sub_23B4F81DC(v21, v13);
  OUTLINED_FUNCTION_1_43(v21 + v71);
  if (v72)
  {
    (*(v100 + 8))(v13, v4);
LABEL_61:
    v69 = v21;
    goto LABEL_62;
  }

  v75 = v100;
  (*(v100 + 32))(v9, v21 + v71, v4);
  OUTLINED_FUNCTION_58_2();
  v76 = sub_23B50D134();
  v77 = *(v75 + 8);
  v77(v9, v4);
  v77(v13, v4);
  sub_23B398890(v21, &qword_27E132168, &qword_23B510108);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  v78 = v99[31];
  v79 = a1 + v78;
  v80 = *(a1 + v78);
  v81 = a2 + v78;
  if (v80 == *v81)
  {
    v82 = *(v81 + 8);
    v83 = UVIndex.ExposureCategory.rawValue.getter(*(v79 + 8));
    v85 = v84;
    if (v83 == UVIndex.ExposureCategory.rawValue.getter(v82) && v85 == v86)
    {
    }

    else
    {
      v88 = sub_23B50D834();

      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_4_1();
    sub_23B3F1C50(v89, &qword_27E131E28, &qword_23B50EFB0, v90);
    OUTLINED_FUNCTION_58_2();
    if (sub_23B50D134())
    {
      v91 = OUTLINED_FUNCTION_31_2(v99[33]);
      if (static Wind.== infix(_:_:)(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_31_2(v99[34]);
        return static WeatherMetadata.== infix(_:_:)(v93, v94);
      }
    }
  }

  return 0;
}

uint64_t CurrentWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A20, &qword_23B526968);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = v78 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FA250();
  sub_23B50D974();
  LOBYTE(v79) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for CurrentWeather(0);
    OUTLINED_FUNCTION_7_2(1);
    OUTLINED_FUNCTION_7_2(2);
    OUTLINED_FUNCTION_7_2(3);
    OUTLINED_FUNCTION_7_2(4);
    v14 = (v3 + v13[9]);
    v15 = *(v14 + 2);
    v79 = *v14;
    v80 = v15;
    v81 = 5;
    v16 = sub_23B41A4BC();
    OUTLINED_FUNCTION_6_5(v16, v17, v18, &type metadata for CloudCoverByAltitude);
    LOBYTE(v79) = *(v3 + v13[10]);
    v81 = 6;
    v19 = sub_23B3F03A8();
    OUTLINED_FUNCTION_6_5(v19, v20, v21, &type metadata for WeatherCondition);
    LOBYTE(v79) = 7;
    OUTLINED_FUNCTION_26();
    sub_23B50D7A4();
    LOBYTE(v79) = 8;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    v25 = sub_23B3F1C50(v23, &qword_27E131E30, &qword_23B511AC0, v24);
    OUTLINED_FUNCTION_21_2();
    v78[1] = v22;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v78[0] = v25;
    OUTLINED_FUNCTION_7_2(9);
    LOBYTE(v79) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v26, &qword_27E131E10, &unk_23B5100F0, v27);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v79) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v28, &qword_27E132158, &qword_23B5100E8, v29);
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v79) = *(v3 + v13[16]);
    v81 = 12;
    v30 = sub_23B41A510();
    OUTLINED_FUNCTION_6_5(v30, v31, v32, &type metadata for PressureTrend);
    v33 = v13[17];
    v34 = OUTLINED_FUNCTION_73_3(13);
    type metadata accessor for PrecipitationAmount(v34);
    OUTLINED_FUNCTION_50_5();
    sub_23B4FC170(v35, v36, &protocol conformance descriptor for PrecipitationAmount);
    OUTLINED_FUNCTION_16_19(v3 + v33);
    v37 = OUTLINED_FUNCTION_14_8(v13[18]);
    OUTLINED_FUNCTION_26_19(v37, v38, v39);
    v40 = v13[19];
    v41 = OUTLINED_FUNCTION_73_3(15);
    type metadata accessor for PrecipitationAmountByType(v41);
    OUTLINED_FUNCTION_49_6();
    sub_23B4FC170(v42, v43, &protocol conformance descriptor for PrecipitationAmountByType);
    OUTLINED_FUNCTION_16_19(v3 + v40);
    v44 = OUTLINED_FUNCTION_14_8(v13[20]);
    OUTLINED_FUNCTION_26_19(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_14_8(v13[21]);
    OUTLINED_FUNCTION_26_19(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_14_8(v13[22]);
    OUTLINED_FUNCTION_26_19(v50, v51, v52);
    v53 = OUTLINED_FUNCTION_14_8(v13[23]);
    OUTLINED_FUNCTION_26_19(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_14_8(v13[24]);
    OUTLINED_FUNCTION_26_19(v56, v57, v58);
    v59 = (v3 + v13[25]);
    v60 = *v59;
    LOBYTE(v59) = *(v59 + 8);
    *&v79 = v60;
    BYTE8(v79) = v59;
    v81 = 21;
    v61 = sub_23B3E9E24();
    OUTLINED_FUNCTION_6_5(v61, v62, v63, &type metadata for ApparentPrecipitationIntensity);
    LOBYTE(v79) = 22;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    OUTLINED_FUNCTION_14_8(v13[27]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_8(v13[28]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_8(v13[29]);
    OUTLINED_FUNCTION_26();
    sub_23B50D794();
    OUTLINED_FUNCTION_14_8(v13[30]);
    OUTLINED_FUNCTION_26();
    sub_23B50D794();
    v64 = (v3 + v13[31]);
    v65 = *v64;
    LOBYTE(v64) = *(v64 + 8);
    *&v79 = v65;
    BYTE8(v79) = v64;
    v81 = 27;
    v66 = sub_23B3F03FC();
    OUTLINED_FUNCTION_6_5(v66, v67, v68, &type metadata for UVIndex);
    LOBYTE(v79) = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v69, &qword_27E131E28, &qword_23B50EFB0, v70);
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v71 = OUTLINED_FUNCTION_73_3(29);
    type metadata accessor for Wind(v71);
    OUTLINED_FUNCTION_54_4();
    sub_23B4FC170(v72, v73, &protocol conformance descriptor for Wind);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v74 = OUTLINED_FUNCTION_73_3(30);
    type metadata accessor for WeatherMetadata(v74);
    OUTLINED_FUNCTION_53_4();
    sub_23B4FC170(v75, v76, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B4FA250()
{
  result = qword_280B42968;
  if (!qword_280B42968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42968);
  }

  return result;
}

uint64_t CurrentWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v199 = a1;
  v174 = a2;
  v173 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v5 = OUTLINED_FUNCTION_35(v4 - v3);
  v171[8] = type metadata accessor for Wind(v5);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v171[9] = v8 - v7;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v176 = v9;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v172 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_76();
  v15 = OUTLINED_FUNCTION_35(v14);
  v183 = type metadata accessor for PrecipitationAmountByType(v15);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_76();
  v23 = OUTLINED_FUNCTION_35(v22);
  v186 = type metadata accessor for PrecipitationAmount(v23);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_0();
  v184 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_76();
  v185 = v28;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_5();
  v178 = v29;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_52();
  v187 = v31;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v179 = v32;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_52();
  v189 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v198 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_0();
  v40 = (v38 - v39);
  MEMORY[0x28223BE20](v41);
  v43 = v171 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v171 - v45;
  v47 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v182 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27();
  v52 = v51 - v50;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A28, &qword_23B526970);
  OUTLINED_FUNCTION_5();
  v188 = v53;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  v56 = v171 - v55;
  v57 = type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_27();
  v61 = v60 - v59;
  v194 = *(v62 + 116);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v35);
  v195 = v61;
  v196 = v57;
  v193 = *(v57 + 120);
  OUTLINED_FUNCTION_1();
  v197 = v35;
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v35);
  __swift_project_boxed_opaque_existential_1(v199, v199[3]);
  sub_23B4FA250();
  v191 = v56;
  v69 = v192;
  sub_23B50D964();
  v175 = v47;
  if (v69)
  {
    v72 = 0;
    LODWORD(v71) = 0;
    v110 = 0;
    v112 = 0;
    LODWORD(v183) = 0;
    LODWORD(v184) = 0;
    LODWORD(v185) = 0;
    LODWORD(v186) = 0;
    LODWORD(v187) = 0;
    LODWORD(v188) = 0;
    LODWORD(v189) = 0;
    LODWORD(v190) = 0;
    LODWORD(v191) = 0;
    v75 = v195;
    v76 = v196;
    v192 = v69;
    __swift_destroy_boxed_opaque_existential_1(v199);
    v82 = 0;
    v83 = 0;
  }

  else
  {
    v70 = v46;
    v71 = v189;
    v171[0] = v43;
    v192 = v40;
    v72 = v188;
    LOBYTE(v200) = 0;
    OUTLINED_FUNCTION_6_31();
    sub_23B4FC170(v73, v74, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_30();
    sub_23B50D734();
    v89 = v195;
    (*(v182 + 32))(v195, v52, v47);
    LOBYTE(v200) = 1;
    sub_23B50D704();
    v90 = v196;
    *(v89 + v196[5]) = v91;
    OUTLINED_FUNCTION_22_18(2);
    sub_23B50D704();
    *(v89 + v90[6]) = v92;
    OUTLINED_FUNCTION_22_18(3);
    sub_23B50D704();
    *(v89 + v90[7]) = v93;
    OUTLINED_FUNCTION_22_18(4);
    sub_23B50D704();
    *(v89 + v90[8]) = v94;
    v202 = 5;
    v95 = sub_23B41A564();
    OUTLINED_FUNCTION_29_13(&type metadata for CloudCoverByAltitude, v96, v97, v98, v95);
    v99 = v201;
    v100 = v89 + v90[9];
    *v100 = v200;
    *(v100 + 16) = v99;
    v202 = 6;
    v101 = sub_23B3F0450();
    OUTLINED_FUNCTION_29_13(&type metadata for WeatherCondition, v102, v103, v104, v101);
    *(v89 + v90[10]) = v200;
    OUTLINED_FUNCTION_22_18(7);
    v105 = sub_23B50D6E4();
    v106 = (v89 + v90[11]);
    *v106 = v105;
    v106[1] = v107;
    LOBYTE(v200) = 8;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_30();
    v108 = v70;
    OUTLINED_FUNCTION_39_12();
    v110 = v109;
    sub_23B50D734();
    v111 = v90[12];
    v112 = v198 + 32;
    v113 = *(v198 + 32);
    v113(v89 + v111, v108, v197);
    OUTLINED_FUNCTION_22_18(9);
    sub_23B50D704();
    *(v195 + v196[13]) = v114;
    LOBYTE(v200) = 10;
    OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39_12();
    sub_23B50D734();
    v115 = OUTLINED_FUNCTION_62_2(v196[14]);
    v116(v115, v71, v181);
    LOBYTE(v200) = 11;
    OUTLINED_FUNCTION_3_8(&qword_27E132A28, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39_12();
    sub_23B50D734();
    v117 = OUTLINED_FUNCTION_62_2(v196[15]);
    v118(v117, v187, v180);
    v202 = 12;
    v119 = sub_23B41A5B8();
    OUTLINED_FUNCTION_29_13(&type metadata for PressureTrend, v120, v121, v122, v119);
    *(v195 + v196[16]) = v200;
    LOBYTE(v200) = 13;
    OUTLINED_FUNCTION_50_5();
    sub_23B4FC170(v123, v124, &protocol conformance descriptor for PrecipitationAmount);
    OUTLINED_FUNCTION_27_16(v186, &v200);
    OUTLINED_FUNCTION_12_27();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(14);
    OUTLINED_FUNCTION_27_16(v186, v125);
    OUTLINED_FUNCTION_12_27();
    sub_23B3B0660();
    LOBYTE(v200) = 15;
    OUTLINED_FUNCTION_49_6();
    v128 = sub_23B4FC170(v126, v127, &protocol conformance descriptor for PrecipitationAmountByType);
    OUTLINED_FUNCTION_19_21(v128, &v200);
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(16);
    OUTLINED_FUNCTION_19_21(v129, v130);
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(17);
    OUTLINED_FUNCTION_19_21(v131, v132);
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(18);
    OUTLINED_FUNCTION_19_21(v133, v134);
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(19);
    OUTLINED_FUNCTION_19_21(v135, v136);
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(20);
    OUTLINED_FUNCTION_19_21(v137, v138);
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    v202 = 21;
    v139 = sub_23B3E9ECC();
    OUTLINED_FUNCTION_29_13(&type metadata for ApparentPrecipitationIntensity, v140, v141, v142, v139);
    v143 = BYTE8(v200);
    v144 = v195 + v196[25];
    *v144 = v200;
    *(v144 + 8) = v143;
    OUTLINED_FUNCTION_22_18(22);
    *(v195 + v196[26]) = sub_23B50D6F4() & 1;
    OUTLINED_FUNCTION_29(23);
    OUTLINED_FUNCTION_39_12();
    sub_23B50D734();
    v113(v195 + v196[27], v171[0], v197);
    OUTLINED_FUNCTION_29(24);
    sub_23B50D734();
    v113(v195 + v196[28], v192, v197);
    OUTLINED_FUNCTION_29(25);
    v145 = v191;
    sub_23B50D6D4();
    sub_23B4F70E4(v171[6], v195 + v194);
    OUTLINED_FUNCTION_29(26);
    OUTLINED_FUNCTION_39_12();
    sub_23B50D6D4();
    sub_23B4F70E4(v171[7], v195 + v193);
    v202 = 27;
    v146 = sub_23B3F04A4();
    OUTLINED_FUNCTION_29_13(&type metadata for UVIndex, v147, v148, v149, v146);
    v192 = 0;
    v150 = BYTE8(v200);
    v151 = v195 + v196[31];
    *v151 = v200;
    *(v151 + 8) = v150;
    LOBYTE(v200) = 28;
    OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39_12();
    v152 = v192;
    sub_23B50D734();
    v192 = v152;
    if (v152)
    {
      v153 = OUTLINED_FUNCTION_43_11();
      v154(v153);
      v83 = 0;
      v82 = 0;
    }

    else
    {
      v157 = OUTLINED_FUNCTION_62_2(v196[32]);
      v158(v157, v172, v177);
      LOBYTE(v200) = 29;
      OUTLINED_FUNCTION_54_4();
      sub_23B4FC170(v159, v160, &protocol conformance descriptor for Wind);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_39_12();
      v161 = v192;
      sub_23B50D734();
      v192 = v161;
      if (v161)
      {
        v162 = OUTLINED_FUNCTION_43_11();
        v163(v162);
        v82 = 0;
        v83 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_21_16();
        sub_23B3B0660();
        LOBYTE(v200) = 30;
        OUTLINED_FUNCTION_53_4();
        sub_23B4FC170(v164, v165, &protocol conformance descriptor for WeatherMetadata);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_39_12();
        v166 = v192;
        sub_23B50D734();
        v192 = v166;
        if (!v166)
        {
          v169 = OUTLINED_FUNCTION_43_11();
          v170(v169);
          OUTLINED_FUNCTION_20_21();
          sub_23B3B0660();
          sub_23B396CA4();
          __swift_destroy_boxed_opaque_existential_1(v199);
          return sub_23B4FB78C();
        }

        v167 = OUTLINED_FUNCTION_43_11();
        v168(v167);
        v83 = 1;
        v82 = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v199);
    OUTLINED_FUNCTION_2_50();
    OUTLINED_FUNCTION_24_14(v155);
    LODWORD(v189) = v156;
    LODWORD(v190) = v156;
    LODWORD(v191) = v156;
    v75 = v195;
    v76 = v196;
    (*(v182 + 8))(v195, v175);
    if (v145)
    {

      if ((v72 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  if (!v72)
  {
LABEL_6:
    v77 = v197;
    if (v71)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v77 = v197;
  (*(v198 + 8))(v75 + v76[12], v197);
  if (v71)
  {
LABEL_7:
    v78 = OUTLINED_FUNCTION_65_4(v76[14]);
    v79(v78, v181);
    if ((v110 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v110)
  {
LABEL_8:
    if (v112)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v84 = OUTLINED_FUNCTION_65_4(v76[15]);
  v85(v84, v180);
  if (v112)
  {
LABEL_9:
    OUTLINED_FUNCTION_55_5();
    if ((v183 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v183)
  {
LABEL_10:
    v80 = v198;
    if (v184)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  OUTLINED_FUNCTION_55_5();
  v80 = v198;
  if (v184)
  {
LABEL_11:
    OUTLINED_FUNCTION_8_32();
    if ((v185 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v185)
  {
LABEL_12:
    if (v186)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  OUTLINED_FUNCTION_8_32();
  if (v186)
  {
LABEL_13:
    OUTLINED_FUNCTION_8_32();
    if ((v187 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v187)
  {
LABEL_14:
    if (v188)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  OUTLINED_FUNCTION_8_32();
  if (v188)
  {
LABEL_15:
    OUTLINED_FUNCTION_8_32();
    if ((v189 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v189)
  {
LABEL_16:
    if (v190)
    {
      goto LABEL_17;
    }

LABEL_31:
    if (!v191)
    {
      goto LABEL_34;
    }

    v81 = *(v80 + 8);
    goto LABEL_33;
  }

LABEL_30:
  OUTLINED_FUNCTION_8_32();
  if ((v190 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v81 = *(v80 + 8);
  v81(v75 + v76[27], v77);
  if (v191)
  {
LABEL_33:
    v81(v75 + v76[28], v77);
  }

LABEL_34:
  sub_23B398890(v75 + v194, &qword_27E132168, &qword_23B510108);
  result = sub_23B398890(v75 + v193, &qword_27E132168, &qword_23B510108);
  if (v83)
  {
    v87 = OUTLINED_FUNCTION_65_4(v76[32]);
    result = v88(v87, v177);
  }

  if (v82)
  {
    return sub_23B4FB78C();
  }

  return result;
}

uint64_t sub_23B4FB78C()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

void CurrentWeather.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v47 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_12_0();
  v46 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_76();
  v45 = v10;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v11, v12, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v13 = type metadata accessor for CurrentWeather(0);
  v14 = *(v1 + v13[5]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v14);
  v15 = OUTLINED_FUNCTION_9_9(v13[6]);
  MEMORY[0x23EE9DB70](v15);
  v16 = OUTLINED_FUNCTION_9_9(v13[7]);
  MEMORY[0x23EE9DB70](v16);
  v17 = OUTLINED_FUNCTION_9_9(v13[8]);
  MEMORY[0x23EE9DB70](v17);
  CloudCoverByAltitude.hash(into:)();
  v18 = WeatherCondition.rawValue.getter();
  OUTLINED_FUNCTION_14_0(v18, v19);

  sub_23B50D1C4();
  v20 = MEMORY[0x277CC87E0];
  sub_23B3F1C50(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0, MEMORY[0x277CC87E0]);
  OUTLINED_FUNCTION_68_3(a1);
  v21 = OUTLINED_FUNCTION_9_9(v13[13]);
  MEMORY[0x23EE9DB70](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v22 = sub_23B3F1C50(&qword_280B42BE0, &qword_27E131E10, &unk_23B5100F0, v20);
  OUTLINED_FUNCTION_76_2(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  v23 = sub_23B3F1C50(&qword_280B42BB0, &qword_27E132158, &qword_23B5100E8, v20);
  OUTLINED_FUNCTION_76_2(v23);
  sub_23B50D1C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3F1C50(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0, MEMORY[0x277CC87E0]);
  OUTLINED_FUNCTION_70_3();
  sub_23B50D0E4();
  type metadata accessor for PrecipitationAmount(0);
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  v24 = v1 + v13[18];
  OUTLINED_FUNCTION_70_3();
  sub_23B50D0E4();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_23_16();
  v25 = OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)(v25);
  v26 = OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)(v26);
  v27 = OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)(v27);
  v28 = OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)(v28);
  v29 = OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)(v29);
  v30 = OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)(v30);
  v31 = *(v1 + v13[25]);
  if (v31 == 0.0)
  {
    v31 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v31);
  sub_23B50D1C4();

  sub_23B50D8E4();
  v32 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68_3(v32);
  v33 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68_3(v33);
  sub_23B4F81DC(v1 + v13[29], v45);
  if (__swift_getEnumTagSinglePayload(v45, 1, v3) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    v34 = OUTLINED_FUNCTION_60_3();
    v35(v34);
    sub_23B50D8E4();
    v36 = OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_68_3(v36);
    (*(v47 + 8))(v24, v3);
  }

  sub_23B4F81DC(v1 + v13[30], v46);
  if (__swift_getEnumTagSinglePayload(v46, 1, v3) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    v37 = OUTLINED_FUNCTION_60_3();
    v38(v37);
    sub_23B50D8E4();
    v39 = OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_68_3(v39);
    (*(v47 + 8))(v24, v3);
  }

  v40 = v1 + v13[31];
  v41 = *(v40 + 8);
  MEMORY[0x23EE9DB40](*v40);
  v42 = UVIndex.ExposureCategory.rawValue.getter(v41);
  OUTLINED_FUNCTION_14_0(v42, v43);

  OUTLINED_FUNCTION_28();
  sub_23B50D0E4();
  v44 = OUTLINED_FUNCTION_28();
  Wind.hash(into:)(v44);
  OUTLINED_FUNCTION_28();
  WeatherMetadata.hash(into:)();
}

uint64_t CurrentWeather.hashValue.getter()
{
  sub_23B50D8C4();
  CurrentWeather.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B4FBEBC(uint64_t a1)
{
  sub_23B50D8C4();
  CurrentWeather.hash(into:)(v2);
  return sub_23B50D914();
}

uint64_t CurrentWeather.debugDescription.getter()
{
  BYTE8(v9) = 0;
  sub_23B50D5C4();
  MEMORY[0x23EE9D460](0x3D65746164, 0xE500000000000000);
  v1 = type metadata accessor for CurrentWeather(0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v2, v3, MEMORY[0x277CC95B8]);
  v4 = sub_23B50D824();
  MEMORY[0x23EE9D460](v4);

  MEMORY[0x23EE9D460](0xD000000000000011, 0x800000023B538A90);
  type metadata accessor for WeatherMetadata(0);
  v5 = sub_23B50D824();
  MEMORY[0x23EE9D460](v5);

  MEMORY[0x23EE9D460](0x7469646E6F63202CLL, 0xEC0000003D6E6F69);
  *&v9 = *(v0 + *(v1 + 40));
  v6 = WeatherCondition.description.getter();
  MEMORY[0x23EE9D460](v6);

  MEMORY[0x23EE9D460](0x7265706D6574202CLL, 0xEE003D6572757461);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0, MEMORY[0x277CC8800]);
  v7 = sub_23B50D824();
  MEMORY[0x23EE9D460](v7);

  return *(&v9 + 1);
}

uint64_t sub_23B4FC170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CurrentWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CurrentWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4FC324()
{
  result = qword_27E135A40;
  if (!qword_27E135A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A40);
  }

  return result;
}

unint64_t sub_23B4FC37C()
{
  result = qword_280B42958;
  if (!qword_280B42958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42958);
  }

  return result;
}

unint64_t sub_23B4FC3D4()
{
  result = qword_280B42960;
  if (!qword_280B42960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return type metadata accessor for CurrentWeather(0);
}

uint64_t TideEvent.init(date:eventType:height:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for TideEvent(0);
  *(a4 + *(v9 + 20)) = v7;
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 32);

  return v12(a4 + v10, a3);
}

uint64_t TideEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t TideEvent.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t TideEvent.eventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TideEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TideEvent.eventType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TideEvent(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

void (*TideEvent.eventType.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for TideEvent(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t TideEvent.height.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TideEvent(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t TideEvent.height.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for TideEvent(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*TideEvent.height.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for TideEvent(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t static TideEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TideEvent(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B4FC8B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B4FC9C4(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x707954746E657665;
  }

  return 0x746867696568;
}

uint64_t sub_23B4FCA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4FC8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4FCA44(uint64_t a1)
{
  v2 = sub_23B4FD0D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FCA80(uint64_t a1)
{
  v2 = sub_23B4FD0D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TideEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A48, &qword_23B526C80);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9 - 4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD0D8();
  sub_23B50D974();
  v16 = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_40(v3, &v16);
  if (!v2)
  {
    v11 = type metadata accessor for TideEvent(0);
    v15[2] = *(v3 + *(v11 + 20));
    v15[1] = 1;
    sub_23B4FD12C();
    sub_23B50D7F4();
    v12 = *(v11 + 24);
    v15[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_40(v3 + v12, v15);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t TideEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v33 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v39 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  v38 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A60, &qword_23B526C88);
  OUTLINED_FUNCTION_5();
  v36 = v11;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for TideEvent(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD0D8();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v13;
  v32 = v16;
  v18 = v37;
  v43 = 0;
  v19 = sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
  v20 = v38;
  OUTLINED_FUNCTION_6_32(v39, &v43, v21, v22, v19);
  (*(v18 + 32))(v32, v20, v39);
  v42[0] = 1;
  v23 = sub_23B4FD180();
  OUTLINED_FUNCTION_6_32(&type metadata for TideEvent.EventType, v42, v24, v25, v23);
  v32[*(v17 + 20)] = v42[1];
  v41 = 2;
  sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  v38 = v7;
  v26 = v35;
  sub_23B50D734();
  v27 = OUTLINED_FUNCTION_3_57();
  v28(v27);
  v29 = v32;
  (*(v33 + 32))(&v32[*(v17 + 24)], v38, v26);
  sub_23B4FD1D4(v29, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B4FD238(v29);
}

unint64_t sub_23B4FD0D8()
{
  result = qword_27E135A50;
  if (!qword_27E135A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A50);
  }

  return result;
}

unint64_t sub_23B4FD12C()
{
  result = qword_27E135A58;
  if (!qword_27E135A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A58);
  }

  return result;
}

unint64_t sub_23B4FD180()
{
  result = qword_27E135A68;
  if (!qword_27E135A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A68);
  }

  return result;
}

uint64_t sub_23B4FD1D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TideEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4FD238(uint64_t a1)
{
  v2 = type metadata accessor for TideEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4FD294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B4FD35C(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_23B4FD38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4FD294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4FD3B4(uint64_t a1)
{
  v2 = sub_23B4FD79C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FD3F0(uint64_t a1)
{
  v2 = sub_23B4FD79C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4FD42C(uint64_t a1)
{
  v2 = sub_23B4FD7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FD468(uint64_t a1)
{
  v2 = sub_23B4FD7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4FD4A4(uint64_t a1)
{
  v2 = sub_23B4FD844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FD4E0(uint64_t a1)
{
  v2 = sub_23B4FD844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TideEvent.EventType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A70, &qword_23B526C90);
  OUTLINED_FUNCTION_5();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A78, &qword_23B526C98);
  OUTLINED_FUNCTION_5();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A80, &qword_23B526CA0);
  OUTLINED_FUNCTION_5();
  v14 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD79C();
  sub_23B50D974();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_23B4FD7F0();
    v20 = v24;
    sub_23B50D764();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_23B4FD844();
    sub_23B50D764();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_23B4FD79C()
{
  result = qword_27E135A88;
  if (!qword_27E135A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A88);
  }

  return result;
}

unint64_t sub_23B4FD7F0()
{
  result = qword_27E135A90;
  if (!qword_27E135A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A90);
  }

  return result;
}

unint64_t sub_23B4FD844()
{
  result = qword_27E135A98;
  if (!qword_27E135A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A98);
  }

  return result;
}

uint64_t TideEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t TideEvent.EventType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135AA0, &qword_23B526CA8);
  OUTLINED_FUNCTION_5();
  v40 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135AA8, &qword_23B526CB0);
  OUTLINED_FUNCTION_5();
  v39 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135AB0, &qword_23B526CB8);
  OUTLINED_FUNCTION_5();
  v42 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD79C();
  v17 = v44;
  sub_23B50D964();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_23B50D744();
  result = sub_23B3D2834();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_23B50D5F4();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v34 = &type metadata for TideEvent.EventType;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_23B40D8C4();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_23B4FD7F0();
      v29 = v6;
      OUTLINED_FUNCTION_7_13(&type metadata for TideEvent.EventType.HighCodingKeys, &v47);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_23B4FD844();
      v35 = v38;
      OUTLINED_FUNCTION_7_13(&type metadata for TideEvent.EventType.LowCodingKeys, &v46);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

unint64_t sub_23B4FDDBC()
{
  result = qword_27E135AB8;
  if (!qword_27E135AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AB8);
  }

  return result;
}

_BYTE *sub_23B4FDE48(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TideEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4FE024()
{
  result = qword_27E135AC0;
  if (!qword_27E135AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AC0);
  }

  return result;
}

unint64_t sub_23B4FE07C()
{
  result = qword_27E135AC8;
  if (!qword_27E135AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AC8);
  }

  return result;
}

unint64_t sub_23B4FE0D4()
{
  result = qword_27E135AD0;
  if (!qword_27E135AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AD0);
  }

  return result;
}

unint64_t sub_23B4FE12C()
{
  result = qword_27E135AD8;
  if (!qword_27E135AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AD8);
  }

  return result;
}

unint64_t sub_23B4FE184()
{
  result = qword_27E135AE0;
  if (!qword_27E135AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AE0);
  }

  return result;
}

unint64_t sub_23B4FE1DC()
{
  result = qword_27E135AE8;
  if (!qword_27E135AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AE8);
  }

  return result;
}

unint64_t sub_23B4FE234()
{
  result = qword_27E135AF0;
  if (!qword_27E135AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AF0);
  }

  return result;
}

unint64_t sub_23B4FE28C()
{
  result = qword_27E135AF8;
  if (!qword_27E135AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AF8);
  }

  return result;
}

unint64_t sub_23B4FE2E4()
{
  result = qword_27E135B00;
  if (!qword_27E135B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B00);
  }

  return result;
}

unint64_t sub_23B4FE33C()
{
  result = qword_27E135B08;
  if (!qword_27E135B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B08);
  }

  return result;
}

uint64_t HourMarineWeather.init(date:primarySwell:waterTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for HourMarineWeather(0);
  sub_23B451400(a2, a4 + *(v9 + 20));
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 32);

  return v12(a4 + v10, a3);
}

uint64_t HourMarineWeather.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HourMarineWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t HourMarineWeather.primarySwell.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for HourMarineWeather(v2) + 20);

  return sub_23B4FE5D0(v0, v3);
}

uint64_t sub_23B4FE5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Swell(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*HourMarineWeather.primarySwell.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourMarineWeather(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t HourMarineWeather.waterTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HourMarineWeather(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HourMarineWeather.waterTemperature.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for HourMarineWeather(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*HourMarineWeather.waterTemperature.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourMarineWeather(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_23B4FE7B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x537972616D697270 && a2 == 0xEC0000006C6C6577;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000023B539460 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B4FE8D4(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x537972616D697270;
  }

  return 0xD000000000000010;
}

uint64_t sub_23B4FE938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4FE7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4FE960(uint64_t a1)
{
  v2 = sub_23B4FEBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FE99C(uint64_t a1)
{
  v2 = sub_23B4FEBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HourMarineWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B10, &qword_23B5271A8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FEBEC();
  sub_23B50D974();
  v22 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_2_51();
  sub_23B4FF118(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_40(v3, &v22);
  if (!v2)
  {
    v13 = type metadata accessor for HourMarineWeather(0);
    v14 = *(v13 + 20);
    v21 = 1;
    type metadata accessor for Swell(0);
    OUTLINED_FUNCTION_3_58();
    sub_23B4FF118(v15, v16, &protocol conformance descriptor for Swell);
    OUTLINED_FUNCTION_40(v3 + v14, &v21);
    v17 = *(v13 + 24);
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B40B418(&qword_280B42B88, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_40(v3 + v17, &v20);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B4FEBEC()
{
  result = qword_27E135B18;
  if (!qword_27E135B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B18);
  }

  return result;
}

uint64_t HourMarineWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v39 = v3;
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - v5;
  v45 = type metadata accessor for Swell(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v43 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v46 = v14 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B28, &qword_23B5271B0);
  OUTLINED_FUNCTION_5();
  v44 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for HourMarineWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FEBEC();
  v48 = v18;
  v24 = v49;
  sub_23B50D964();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v44;
  v38 = v19;
  v49 = v23;
  v26 = a1;
  v52 = 0;
  OUTLINED_FUNCTION_2_51();
  sub_23B4FF118(v27, v28, MEMORY[0x277CC95A0]);
  v29 = v46;
  sub_23B50D734();
  (*(v43 + 32))(v49, v29, v10);
  v51 = 1;
  OUTLINED_FUNCTION_3_58();
  sub_23B4FF118(v30, v31, &protocol conformance descriptor for Swell);
  v32 = v9;
  sub_23B50D734();
  v46 = v10;
  v33 = v38;
  v34 = v49;
  sub_23B451400(v32, v49 + *(v38 + 20));
  v50 = 2;
  sub_23B40B418(&qword_27E132090, MEMORY[0x277CC87F8]);
  v35 = v41;
  v36 = v42;
  sub_23B50D734();
  (*(v25 + 8))(v48, v47);
  (*(v39 + 32))(v34 + *(v33 + 24), v35, v36);
  sub_23B4FF160(v34, v40, type metadata accessor for HourMarineWeather);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_23B4FF1C0();
}

uint64_t sub_23B4FF118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B4FF160(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B4FF1C0()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t static HourMarineWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HourMarineWeather(0);
  if (!static Swell.== infix(_:_:)(a1 + *(v4 + 20), a2 + *(v4 + 20)))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B40B418(&qword_280B42B78, MEMORY[0x277CC87F0]);
  return sub_23B50D134() & 1;
}

_BYTE *storeEnumTagSinglePayload for HourMarineWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4FF404()
{
  result = qword_27E135B38;
  if (!qword_27E135B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B38);
  }

  return result;
}

unint64_t sub_23B4FF45C()
{
  result = qword_27E135B40;
  if (!qword_27E135B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B40);
  }

  return result;
}

unint64_t sub_23B4FF4B4()
{
  result = qword_27E135B48;
  if (!qword_27E135B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B48);
  }

  return result;
}

uint64_t sub_23B4FF508@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_23B50C3C4();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v45 = a1;
  v46 = a2;

  MEMORY[0x23EE9D460](45, 0xE100000000000000);
  v15 = sub_23B50B7A4();
  MEMORY[0x23EE9D460](v15);

  v16 = v45;
  v17 = v46;
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v18 = sub_23B50CDF4();
  v19 = __swift_project_value_buffer(v18, qword_280B4E9D8);

  v43 = v19;
  v20 = sub_23B50CDD4();
  v21 = sub_23B50D4C4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v14;
    v25 = v9;
    v26 = v11;
    v27 = a3;
    v28 = v24;
    v45 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_23B391F1C(v16, v17, &v45);
    _os_log_impl(&dword_23B38D000, v20, v21, "Attempting to retrieve air quality scale with cache key: %{public}s from cache", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    a3 = v27;
    v11 = v26;
    v9 = v25;
    v14 = v40;
    OUTLINED_FUNCTION_38();
    a2 = v41;
    OUTLINED_FUNCTION_38();
  }

  sub_23B3A4498(v16, v17, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

    sub_23B4FFCEC(v8);
    v29 = 1;
  }

  else
  {
    v30 = v16;
    v44 = *(v11 + 32);
    v44(v14, v8, v9);

    v31 = sub_23B50CDD4();
    v32 = sub_23B50D4C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_23B391F1C(v42, a2, &v45);
      *(v33 + 12) = 2082;
      v34 = sub_23B391F1C(v30, v17, &v45);
      v35 = v14;
      v36 = a3;
      v37 = v34;

      *(v33 + 14) = v37;
      a3 = v36;
      v14 = v35;
      _os_log_impl(&dword_23B38D000, v31, v32, "Successfully retrieved air quality scale: %{public}s with cache key:  %{public}s from cache", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    v44(a3, v14, v9);
    v29 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v29, 1, v9);
}

uint64_t sub_23B4FF998(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_23B50C3C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B47DBE8(a1, a3, a4);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v11 = sub_23B50CDF4();
  __swift_project_value_buffer(v11, qword_280B4E9D8);

  v12 = sub_23B50CDD4();
  v13 = sub_23B50D4C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = a1;
    v17 = v16;
    v22 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_23B391F1C(a3, a4, &v22);
    _os_log_impl(&dword_23B38D000, v12, v13, "Successfully fetched air quality scale with key: %{public}s and updated the scale cache", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    a1 = v21;
    MEMORY[0x23EE9E260](v17, -1, -1);
    v18 = v15;
    v7 = v20;
    MEMORY[0x23EE9E260](v18, -1, -1);
  }

  (*(v8 + 16))(v10, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B50, &unk_23B5273F0);
  swift_allocObject();
  return sub_23B50B094();
}

uint64_t sub_23B4FFBEC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23B4FFCEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4FFD90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

WeatherKit::WeatherServiceCaching::Options sub_23B4FFE8C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = WeatherServiceCaching.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B4FFECC@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherServiceCaching.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherServiceCaching.EnablementStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

WeatherKit::WeatherServiceCaching __swiftcall WeatherServiceCaching.init(weatherDataCaching:availableDataSetCaching:statisticsCaching:)(WeatherKit::WeatherServiceCaching::EnablementStatus weatherDataCaching, WeatherKit::WeatherServiceCaching::EnablementStatus availableDataSetCaching, WeatherKit::WeatherServiceCaching::EnablementStatus statisticsCaching)
{
  v4 = *weatherDataCaching;
  v5 = *statisticsCaching;
  *v3 = *availableDataSetCaching;
  v3[1] = v5;
  v3[2] = v4;
  result.availableDataSetCaching = weatherDataCaching;
  return result;
}

unint64_t sub_23B4FFFC4()
{
  result = qword_27E135B60;
  if (!qword_27E135B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B60);
  }

  return result;
}

unint64_t sub_23B50001C()
{
  result = qword_27E135B68;
  if (!qword_27E135B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B68);
  }

  return result;
}

unint64_t sub_23B500074()
{
  result = qword_27E135B70;
  if (!qword_27E135B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceCaching(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = v4 - 2;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherServiceCaching(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceCaching.EnablementStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B5002C8(unint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v2 > 0)
    {
      return OUTLINED_FUNCTION_0_62(v2 - 1);
    }

    v3 = __OFSUB__(0, v2);
    v4 = -v2;
    if (!v3)
    {
      return 8784 * (v4 / 8784) - v4 + 8784;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23B50030C(unint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v2 > 0)
    {
      return OUTLINED_FUNCTION_0_62(v2 - 1);
    }

    v3 = __OFSUB__(0, v2);
    v4 = -v2;
    if (!v3)
    {
      return 366 * (v4 / 366) - v4 + 366;
    }
  }

  __break(1u);
  return result;
}

WeatherKit::NextHourPerceivedIntensity __swiftcall NextHourPerceivedIntensity.init(value:category:)(Swift::Double value, WeatherKit::NextHourPerceivedIntensityScale category)
{
  v3 = *category;
  *v2 = value;
  *(v2 + 8) = v3;
  result.value = value;
  result.category = category;
  return result;
}

uint64_t sub_23B5003C8(uint64_t a1)
{
  v2 = sub_23B500778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B500404(uint64_t a1)
{
  v2 = sub_23B500778();

  return MEMORY[0x2821FE720](a1, v2);
}

WeatherKit::NextHourPerceivedIntensityScale_optional __swiftcall NextHourPerceivedIntensityScale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NextHourPerceivedIntensityScale.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7976616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_23B5004F8@<X0>(uint64_t *a1@<X8>)
{
  result = NextHourPerceivedIntensityScale.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static NextHourPerceivedIntensity.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_23B3E71A0();
  }

  else
  {
    return 0;
  }
}

uint64_t NextHourPerceivedIntensity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B78, &qword_23B527690);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B500778();
  sub_23B50D974();
  v12[15] = 0;
  sub_23B50D7C4();
  if (!v2)
  {
    v12[14] = v10;
    v12[13] = 1;
    sub_23B5007CC();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_23B500778()
{
  result = qword_27E135B80;
  if (!qword_27E135B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B80);
  }

  return result;
}

unint64_t sub_23B5007CC()
{
  result = qword_27E135B88;
  if (!qword_27E135B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B88);
  }

  return result;
}

uint64_t NextHourPerceivedIntensity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B90, &qword_23B527698);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B500778();
  sub_23B50D964();
  if (!v2)
  {
    v15[15] = 0;
    sub_23B50D704();
    v12 = v11;
    v15[13] = 1;
    sub_23B5009DC();
    sub_23B50D734();
    (*(v7 + 8))(v10, v5);
    v13 = v15[14];
    *a2 = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B5009DC()
{
  result = qword_27E135B98;
  if (!qword_27E135B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B98);
  }

  return result;
}

unint64_t sub_23B500A34()
{
  result = qword_27E135BA0;
  if (!qword_27E135BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextHourPerceivedIntensityScale(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NextHourPerceivedIntensity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B500C84()
{
  result = qword_27E135BA8;
  if (!qword_27E135BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BA8);
  }

  return result;
}

unint64_t sub_23B500CDC()
{
  result = qword_27E135BB0;
  if (!qword_27E135BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BB0);
  }

  return result;
}

unint64_t sub_23B500D34()
{
  result = qword_27E135BB8;
  if (!qword_27E135BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BB8);
  }

  return result;
}

unint64_t sub_23B500D88()
{
  result = qword_27E135BC0;
  if (!qword_27E135BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BC0);
  }

  return result;
}

uint64_t ReverseGeocodeResult.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReverseGeocodeResult.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReverseGeocodeResult(0) + 20);
  v4 = sub_23B50AEF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ReverseGeocodeResult(uint64_t a1)
{
  result = qword_280B431A8;
  if (!qword_280B431A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReverseGeocodeResult.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReverseGeocodeResult(0) + 24));

  return v1;
}

uint64_t sub_23B500F14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B501028(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x656E6F5A656D6974;
  }

  return 0x437972746E756F63;
}

uint64_t sub_23B501088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B500F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5010B0(uint64_t a1)
{
  v2 = sub_23B5012F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5010EC(uint64_t a1)
{
  v2 = sub_23B5012F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodeResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BC8, &qword_23B527990);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5012F4();
  sub_23B50D974();
  v10[15] = 0;
  sub_23B50D7A4();
  if (!v1)
  {
    type metadata accessor for ReverseGeocodeResult(0);
    v10[14] = 1;
    sub_23B50AEF4();
    sub_23B5016D4(&qword_280B43108, MEMORY[0x277CC9A78]);
    sub_23B50D7F4();
    v10[13] = 2;
    sub_23B50D774();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B5012F4()
{
  result = qword_280B431C8;
  if (!qword_280B431C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431C8);
  }

  return result;
}

uint64_t ReverseGeocodeResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v30 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BD0, &qword_23B527998);
  OUTLINED_FUNCTION_5();
  v31 = v8;
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for ReverseGeocodeResult(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5012F4();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v10;
  v28 = a1;
  v13 = v32;
  v36 = 0;
  v14 = v12;
  *v12 = sub_23B50D6E4();
  v12[1] = v15;
  v26[2] = v15;
  v35 = 1;
  sub_23B5016D4(&qword_280B43100, MEMORY[0x277CC9A90]);
  sub_23B50D734();
  v16 = v27;
  (*(v30 + 32))(v14 + *(v27 + 20), v7, v13);
  v34 = 2;
  v26[1] = 0;
  v17 = sub_23B50D6B4();
  v26[0] = v18;
  v19 = v28;
  v20 = v17;
  v21 = OUTLINED_FUNCTION_1_50();
  v22(v21, v33);
  v23 = (v14 + *(v16 + 24));
  v24 = v26[0];
  *v23 = v20;
  v23[1] = v24;
  sub_23B3FE9CC(v14, v29);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_23B437A6C(v14);
}

uint64_t sub_23B5016D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B50AEF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B501770(uint64_t a1)
{
  sub_23B50AEF4();
  if (v1 <= 0x3F)
  {
    sub_23B39B084();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodeResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B5018E4()
{
  result = qword_27E135BD8;
  if (!qword_27E135BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BD8);
  }

  return result;
}

unint64_t sub_23B50193C()
{
  result = qword_280B431B8;
  if (!qword_280B431B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431B8);
  }

  return result;
}

unint64_t sub_23B501994()
{
  result = qword_280B431C0;
  if (!qword_280B431C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431C0);
  }

  return result;
}

double static HistoricalComparisons.mock(comparisons:)@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for HistoricalComparisons(0);
  static WeatherMetadata.mock()(&a2[*(v4 + 20)]);
  *a2 = a1;

  return result;
}

uint64_t DayPartForecast.init(forecastStart:forecastEnd:cloudCover:cloudCoverByAltitude:condition:highTemperature:lowTemperature:precipitation:precipitationAmountByType:precipitationChance:precipitationIntensityMax:perceivedPrecipitationIntensityMax:isDaylight:maximumUVIndex:minimumUVIndex:maximumHumidity:minimumHumidity:maximumVisibility:minimumVisibility:wind:highWindSpeed:humidity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_37_14();
  v22 = v21;
  v24 = v23;
  v26 = *(v25 + 16);
  v28 = *v27;
  v30 = *v29;
  v31 = *a9;
  v32 = *(a9 + 8);
  v33 = *a10;
  v65 = *a12;
  v63 = *(a10 + 8);
  v64 = *(a12 + 8);
  v67 = *a13;
  v66 = *(a13 + 8);
  v34 = sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v36 = *(v35 + 32);
  v36(v24, v22, v34);
  v37 = type metadata accessor for DayPartForecast(0);
  v38 = v36(v24 + v37[5], a2, v34);
  OUTLINED_FUNCTION_30_13(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  *(v48 + 16) = v26;
  *(v24 + v37[8]) = v28;
  v49 = v37[9];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v52 = *(v51 + 32);
  v52(v24 + v49, a5, v50);
  v52(v24 + v37[10], a6, v50);
  *(v24 + v37[11]) = v30;
  OUTLINED_FUNCTION_0_63();
  sub_23B501D44();
  *(v24 + v37[13]) = v18;
  v53 = v24 + v37[14];
  *v53 = v31;
  *(v53 + 8) = v32;
  v54 = v24 + v37[15];
  *v54 = v33;
  *(v54 + 8) = v63;
  *(v24 + v37[16]) = a11;
  v55 = v24 + v37[17];
  *v55 = v65;
  *(v55 + 8) = v64;
  v56 = v24 + v37[18];
  *v56 = v67;
  *(v56 + 8) = v66;
  OUTLINED_FUNCTION_42_10();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v59 = *(v58 + 32);
  v59(v24 + v49, a14, v57);
  v59(v24 + v37[22], a15, v57);
  OUTLINED_FUNCTION_2_54();
  sub_23B501D44();
  v60 = v37[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  result = (*(v61 + 32))(v24 + v60, a17);
  *(v24 + v37[25]) = v17;
  return result;
}

uint64_t sub_23B501D44()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t DayPartForecast.init(cloudCover:cloudCoverByAltitude:condition:highTemperature:lowTemperature:precipitation:precipitationAmountByType:precipitationChance:maximumHumidity:minimumHumidity:maximumVisibility:minimumVisibility:wind:highWindSpeed:humidity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_37_14();
  v15 = v14;
  v17 = *(v16 + 16);
  v19 = *v18;
  v21 = *v20;
  sub_23B50B9D4();
  sub_23B50B994();
  v22 = type metadata accessor for DayPartForecast(0);
  v23 = sub_23B50B994();
  OUTLINED_FUNCTION_30_13(v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  *(v33 + 16) = v17;
  *(v15 + v22[8]) = v19;
  v34 = v22[9];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v37 = *(v36 + 32);
  v37(v15 + v34, a3, v35);
  v37(v15 + v22[10], a4, v35);
  *(v15 + v22[11]) = v21;
  OUTLINED_FUNCTION_0_63();
  sub_23B501D44();
  *(v15 + v22[13]) = v11;
  OUTLINED_FUNCTION_0_50(v22[14]);
  OUTLINED_FUNCTION_0_50(v22[15]);
  *(v15 + v22[16]) = 1;
  OUTLINED_FUNCTION_0_50(v22[17]);
  OUTLINED_FUNCTION_0_50(v22[18]);
  OUTLINED_FUNCTION_42_10();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v40 = *(v39 + 32);
  v40(v15 + v21, a7, v38);
  v40(v15 + v22[22], a8, v38);
  OUTLINED_FUNCTION_2_54();
  sub_23B501D44();
  v41 = v22[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  result = (*(v42 + 32))(v15 + v41, a10);
  *(v15 + v22[25]) = v10;
  return result;
}

uint64_t DayPartForecast.forecastStart.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t DayPartForecast.forecastStart.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t DayPartForecast.forecastEnd.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t DayPartForecast.forecastEnd.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayPartForecast.forecastEnd.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t DayPartForecast.cloudCover.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

double DayPartForecast.cloudCoverByAltitude.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for DayPartForecast(v2) + 28);
  result = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = result;
  return result;
}

__n128 DayPartForecast.cloudCoverByAltitude.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for DayPartForecast(0) + 28));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t DayPartForecast.cloudCoverByAltitude.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.condition.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayPartForecast(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t DayPartForecast.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t DayPartForecast.condition.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.highTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t DayPartForecast.highTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayPartForecast.highTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.lowTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t DayPartForecast.lowTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayPartForecast.lowTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.precipitation.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayPartForecast(v2);
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t DayPartForecast.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t DayPartForecast.precipitation.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.precipitationAmountByType.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  return sub_23B3BAC04();
}

uint64_t DayPartForecast.precipitationAmountByType.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  OUTLINED_FUNCTION_0_63();
  return sub_23B502F2C();
}

uint64_t DayPartForecast.precipitationAmountByType.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t DayPartForecast.precipitationChance.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

double DayPartForecast.precipitationIntensityMax.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_40_10(*(v1 + 56));
}

uint64_t DayPartForecast.precipitationIntensityMax.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast(0);
  v5 = v1 + *(result + 56);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.precipitationIntensityMax.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

double DayPartForecast.perceivedPrecipitationIntensityMax.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_40_10(*(v1 + 60));
}

uint64_t DayPartForecast.perceivedPrecipitationIntensityMax.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast(0);
  v5 = v1 + *(result + 60);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.perceivedPrecipitationIntensityMax.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.isDaylight.setter(char a1)
{
  result = type metadata accessor for DayPartForecast(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t DayPartForecast.isDaylight.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

void DayPartForecast.maximumUVIndex.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayPartForecast(v0);
  OUTLINED_FUNCTION_14_28(*(v1 + 68));
}

uint64_t DayPartForecast.maximumUVIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast(0);
  v5 = v1 + *(result + 68);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.maximumUVIndex.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

void DayPartForecast.minimumUVIndex.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for DayPartForecast(v0);
  OUTLINED_FUNCTION_14_28(*(v1 + 72));
}

uint64_t DayPartForecast.minimumUVIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast(0);
  v5 = v1 + *(result + 72);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.minimumUVIndex.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.maximumHumidity.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 76)) = v1;
  return result;
}

uint64_t DayPartForecast.maximumHumidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.minimumHumidity.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 80)) = v1;
  return result;
}

uint64_t DayPartForecast.minimumHumidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.maximumVisibility.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t DayPartForecast.maximumVisibility.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayPartForecast.maximumVisibility.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.minimumVisibility.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t DayPartForecast.minimumVisibility.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayPartForecast.minimumVisibility.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.wind.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  return sub_23B3BAC04();
}

uint64_t DayPartForecast.wind.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  OUTLINED_FUNCTION_2_54();
  return sub_23B502F2C();
}

uint64_t sub_23B502F2C()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t DayPartForecast.wind.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.highWindSpeed.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t DayPartForecast.highWindSpeed.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t DayPartForecast.highWindSpeed.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.humidity.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 100)) = v1;
  return result;
}

uint64_t DayPartForecast.humidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPartForecast(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B5031B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473616365726F66 && a2 == 0xEB00000000646E45;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000023B529F40 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x800000023B528CA0 == a2;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000019 && 0x800000023B5394B0 == a2;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000022 && 0x800000023B5394D0 == a2;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x556D756D6978616DLL && a2 == 0xEE007865646E4956;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x556D756D696E696DLL && a2 == 0xEE007865646E4956;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x486D756D6978616DLL && a2 == 0xEF79746964696D75;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x486D756D696E696DLL && a2 == 0xEF79746964696D75;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x800000023B528CC0 == a2;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000011 && 0x800000023B528CE0 == a2;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x646E695768676968 && a2 == 0xED00006465657053;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (a1 == 0x79746964696D7568 && a2 == 0xE800000000000000)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v27 = sub_23B50D834();

                                            if (v27)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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
    }
  }
}

uint64_t sub_23B5038A0(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 2:
      return 0x766F4364756F6C63;
    case 3:
      return 0xD000000000000014;
    case 4:
      return 0x6F697469646E6F63;
    case 5:
      return 0x706D655468676968;
    case 6:
      return 0x65706D6554776F6CLL;
    case 7:
      return 0x7469706963657270;
    case 8:
    case 10:
      return 0xD000000000000019;
    case 9:
      return 0xD000000000000013;
    case 11:
      return 0xD000000000000022;
    case 12:
      return 0x67696C7961447369;
    case 13:
      v4 = 1769496941;
      return v4 | 0x556D756D00000000;
    case 14:
      v4 = 1768843629;
      return v4 | 0x556D756D00000000;
    case 15:
      v3 = 1769496941;
      goto LABEL_10;
    case 16:
      v3 = 1768843629;
LABEL_10:
      result = v3 | 0x486D756D00000000;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 1684957559;
      break;
    case 20:
      result = 0x646E695768676968;
      break;
    case 21:
      result = 0x79746964696D7568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B503B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5031B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B503B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B503898();
  *a1 = result;
  return result;
}

uint64_t sub_23B503B7C(uint64_t a1)
{
  v2 = sub_23B50454C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B503BB8(uint64_t a1)
{
  v2 = sub_23B50454C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static DayPartForecast.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DayPartForecast(0);
  OUTLINED_FUNCTION_31_2(v4[5]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[6]);
  if (!v10)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = v6 == *v9 && v7 == v9[1];
  if (!v10 || v8 != v9[2])
  {
    return 0;
  }

  if ((sub_23B3CAE4C(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_4_1();
  v14 = sub_23B3F1C50(v12, &qword_27E131E30, &qword_23B511AC0, v13);
  if ((OUTLINED_FUNCTION_45_8(v14) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v4[10]);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3CFF58(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0)
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_31_2(v4[12]);
  if ((static PrecipitationAmountByType.== infix(_:_:)(v15, v16) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[13]);
  if (!v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_9();
  if (!v10)
  {
    return 0;
  }

  if ((sub_23B3E71A0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_9();
  if (!v10)
  {
    return 0;
  }

  if ((sub_23B3E71A0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[16]) != *(a2 + v4[16]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_39_13();
  if (!v10)
  {
    return 0;
  }

  v19 = *(v18 + 8);
  v20 = UVIndex.ExposureCategory.rawValue.getter(*(v17 + 8));
  v22 = v21;
  v23 = UVIndex.ExposureCategory.rawValue.getter(v19);
  if (v20 == v23 && v22 == v24)
  {
  }

  else
  {
    v26 = OUTLINED_FUNCTION_46_6(v23);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_39_13();
  if (!v10)
  {
    return 0;
  }

  v29 = *(v28 + 8);
  v30 = UVIndex.ExposureCategory.rawValue.getter(*(v27 + 8));
  v32 = v31;
  v33 = UVIndex.ExposureCategory.rawValue.getter(v29);
  if (v30 == v33 && v32 == v34)
  {
  }

  else
  {
    v36 = OUTLINED_FUNCTION_46_6(v33);

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_13_0(v4[19]);
  if (!v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[20]);
  if (!v10)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_4_1();
  v39 = sub_23B3F1C50(v37, &qword_27E131E28, &qword_23B50EFB0, v38);
  if ((OUTLINED_FUNCTION_45_8(v39) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v4[22]);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v40 = OUTLINED_FUNCTION_31_2(v4[23]);
  if (!static Wind.== infix(_:_:)(v40, v41))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v42, &qword_27E131E10, &unk_23B5100F0, v43);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[25]);
  return v10;
}

uint64_t DayPartForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BE0, &qword_23B527B38);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50454C();
  sub_23B50D974();
  LOBYTE(v29) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5_35();
  sub_23B505950(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for DayPartForecast(0);
    LOBYTE(v29) = 1;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_7_2(2);
    v14 = (v3 + v13[7]);
    v15 = *(v14 + 2);
    v29 = *v14;
    v30 = v15;
    v31 = 3;
    sub_23B41A4BC();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = *(v3 + v13[8]);
    v31 = 4;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v16, &qword_27E131E30, &qword_23B511AC0, v17);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 6;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = *(v3 + v13[11]);
    v31 = 7;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 8;
    type metadata accessor for PrecipitationAmountByType(0);
    OUTLINED_FUNCTION_24_15();
    sub_23B505950(v18, v19, &protocol conformance descriptor for PrecipitationAmountByType);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_7_2(9);
    OUTLINED_FUNCTION_43_12(v13[14]);
    v31 = 10;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_43_12(v13[15]);
    v31 = 11;
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 12;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    OUTLINED_FUNCTION_44_7(v13[17]);
    v31 = 13;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_44_7(v13[18]);
    v31 = 14;
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_7_2(15);
    OUTLINED_FUNCTION_7_2(16);
    LOBYTE(v29) = 17;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v21, &qword_27E131E28, &qword_23B50EFB0, v22);
    OUTLINED_FUNCTION_21_2();
    v28[1] = v20;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 18;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 19;
    type metadata accessor for Wind(0);
    OUTLINED_FUNCTION_23_17();
    sub_23B505950(v23, v24, &protocol conformance descriptor for Wind);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v29) = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v25, &qword_27E131E10, &unk_23B5100F0, v26);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_7_2(21);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B50454C()
{
  result = qword_27E135BE8;
  if (!qword_27E135BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BE8);
  }

  return result;
}

uint64_t DayPartForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v124 = v4;
  v125 = v3;
  MEMORY[0x28223BE20](v3);
  v119 = &v111 - v5;
  v117 = type metadata accessor for Wind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v118 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v126 = v9;
  v127 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v116 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v115 = &v111 - v13;
  v121 = type metadata accessor for PrecipitationAmountByType(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v122 = v15;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v128 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v111 - v22;
  v24 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v135 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_0();
  v29 = (v27 - v28);
  MEMORY[0x28223BE20](v30);
  v131 = &v111 - v31;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BF0, &qword_23B527B40);
  OUTLINED_FUNCTION_5();
  v123 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v111 - v34;
  v137 = type metadata accessor for DayPartForecast(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v136 = v37;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50454C();
  v129 = v35;
  v38 = v133;
  sub_23B50D964();
  v39 = v38;
  v132 = v24;
  if (v38)
  {
    v133 = v38;
    OUTLINED_FUNCTION_21_17();
    v40 = v137;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    v46 = 0;
  }

  else
  {
    v133 = v29;
    v114 = v23;
    v113 = v20;
    LOBYTE(v139) = 0;
    OUTLINED_FUNCTION_5_35();
    sub_23B505950(v41, v42, MEMORY[0x277CC95A0]);
    v43 = v131;
    sub_23B50D734();
    v112 = a1;
    v53 = v136;
    v54 = *(v135 + 32);
    v54(v136, v43, v24);
    LOBYTE(v139) = 1;
    v55 = v133;
    sub_23B50D734();
    v56 = v137;
    v54(v53 + v137[5], v55, 0);
    LOBYTE(v139) = 2;
    sub_23B50D704();
    *(v53 + v56[6]) = v57;
    v138 = 3;
    sub_23B41A564();
    OUTLINED_FUNCTION_4_47();
    sub_23B50D734();
    v58 = v140;
    v59 = v53 + v56[7];
    *v59 = v139;
    *(v59 + 16) = v58;
    v138 = 4;
    sub_23B3F0450();
    OUTLINED_FUNCTION_4_47();
    sub_23B50D734();
    *(v53 + v56[8]) = v139;
    LOBYTE(v139) = 5;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    v60 = v114;
    v24 = v134;
    OUTLINED_FUNCTION_50_6();
    sub_23B50D734();
    v61 = v53 + v56[9];
    v133 = *(v128 + 32);
    v133(v61, v60, v24);
    LOBYTE(v139) = 6;
    v62 = v113;
    OUTLINED_FUNCTION_50_6();
    sub_23B50D734();
    v133(v53 + v56[10], v62, v24);
    v138 = 7;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_4_47();
    sub_23B50D734();
    *(v53 + v56[11]) = v139;
    LOBYTE(v139) = 8;
    OUTLINED_FUNCTION_24_15();
    sub_23B505950(v63, v64, &protocol conformance descriptor for PrecipitationAmountByType);
    OUTLINED_FUNCTION_22_19();
    sub_23B50D734();
    v133 = 0;
    OUTLINED_FUNCTION_0_63();
    sub_23B501D44();
    OUTLINED_FUNCTION_11_28(9);
    sub_23B50D704();
    v133 = 0;
    *(v136 + v137[13]) = v65;
    v138 = 10;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7(v66, v67, v68, v69);
    v133 = 0;
    v70 = BYTE8(v139);
    v71 = v136 + v137[14];
    *v71 = v139;
    *(v71 + 8) = v70;
    v138 = 11;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7(v72, v73, v74, v75);
    v133 = 0;
    v76 = BYTE8(v139);
    v77 = v136 + v137[15];
    *v77 = v139;
    *(v77 + 8) = v76;
    OUTLINED_FUNCTION_11_28(12);
    v78 = sub_23B50D6F4();
    v133 = 0;
    *(v136 + v137[16]) = v78 & 1;
    v138 = 13;
    sub_23B3F04A4();
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7(v79, v80, v81, v82);
    v133 = 0;
    v83 = BYTE8(v139);
    v84 = v136 + v137[17];
    *v84 = v139;
    *(v84 + 8) = v83;
    v138 = 14;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7(v85, v86, v87, v88);
    v133 = 0;
    v89 = BYTE8(v139);
    v90 = v136 + v137[18];
    *v90 = v139;
    *(v90 + 8) = v89;
    OUTLINED_FUNCTION_11_28(15);
    sub_23B50D704();
    v133 = 0;
    *(v136 + v137[19]) = v91;
    OUTLINED_FUNCTION_11_28(16);
    sub_23B50D704();
    v133 = 0;
    *(v136 + v137[20]) = v92;
    LOBYTE(v139) = 17;
    OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_22_19();
    OUTLINED_FUNCTION_47_7(v93, v94, v95, v96);
    v133 = 0;
    LODWORD(v20) = v126 + 32;
    v97 = *(v126 + 32);
    v97(v136 + v137[21], v115, v127);
    LOBYTE(v139) = 18;
    v98 = v133;
    sub_23B50D734();
    LODWORD(v131) = v98 == 0;
    v133 = v98;
    if (v98 || (v97(v136 + v137[22], v116, v127), LOBYTE(v139) = 19, OUTLINED_FUNCTION_23_17(), sub_23B505950(v99, v100, &protocol conformance descriptor for Wind), OUTLINED_FUNCTION_22_19(), v101 = v133, sub_23B50D734(), (v133 = v101) != 0))
    {
      v102 = OUTLINED_FUNCTION_9_39();
      v103(v102);
      LODWORD(v130) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_54();
      sub_23B501D44();
      LOBYTE(v139) = 20;
      OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_22_19();
      v104 = v133;
      sub_23B50D734();
      v133 = v104;
      if (!v104)
      {
        (*(v124 + 32))(v136 + v137[24], v119, v125);
        OUTLINED_FUNCTION_11_28(21);
        sub_23B50D704();
        v133 = 0;
        v108 = v107;
        v109 = OUTLINED_FUNCTION_9_39();
        v110(v109);
        *(v136 + v137[25]) = v108;
        sub_23B3BAC04();
        __swift_destroy_boxed_opaque_existential_1(v112);
        return sub_23B5053F0();
      }

      v105 = OUTLINED_FUNCTION_9_39();
      v106(v105);
      LODWORD(v130) = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v112);
    OUTLINED_FUNCTION_32_12();
    v39 = 1;
    v46 = 1;
    result = (*(v135 + 8))(v136, v132);
    v40 = v137;
  }

  v47 = v136;
  v48 = v134;
  if (v24)
  {
    v49 = *(v128 + 8);
    result = v49(v136 + v40[9], v134);
    if (v20)
    {
      v45 = v131;
      result = v49(v47 + v40[10], v48);
LABEL_9:
      if ((v39 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    v45 = v131;
  }

  else
  {
    v45 = v131;
    if (v20)
    {
      result = (*(v128 + 8))(v136 + v40[10], v134);
      goto LABEL_9;
    }
  }

  if (!v39)
  {
LABEL_10:
    if (v46)
    {
      goto LABEL_11;
    }

LABEL_16:
    if (!v45)
    {
      goto LABEL_20;
    }

    v50 = v127;
    v51 = *(v126 + 8);
    goto LABEL_18;
  }

LABEL_15:
  result = sub_23B5053F0();
  if ((v46 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v50 = v127;
  v51 = *(v126 + 8);
  result = v51(v47 + v40[21], v127);
  if ((v45 & 1) == 0)
  {
LABEL_20:
    if (v130)
    {
      return sub_23B5053F0();
    }

    return result;
  }

LABEL_18:
  v52 = v130;
  result = v51(v47 + v40[22], v50);
  if (v52)
  {
    return sub_23B5053F0();
  }

  return result;
}

uint64_t sub_23B5053F0()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t DayPartForecast.hash(into:)(uint64_t a1)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_5_35();
  sub_23B505950(v3, v4, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v5 = type metadata accessor for DayPartForecast(0);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v6 = *(v1 + v5[6]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v6);
  CloudCoverByAltitude.hash(into:)();
  v7 = WeatherCondition.rawValue.getter();
  OUTLINED_FUNCTION_14_0(v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0, MEMORY[0x277CC87E0]);
  sub_23B50D0E4();
  sub_23B50D0E4();
  sub_23B3CFAAC(a1, *(v1 + v5[11]));
  PrecipitationAmountByType.hash(into:)(a1);
  v9 = OUTLINED_FUNCTION_7_12(*(v1 + v5[13]));
  MEMORY[0x23EE9DB70](v9);
  v10 = OUTLINED_FUNCTION_7_12(*(v1 + v5[14]));
  MEMORY[0x23EE9DB70](v10);
  sub_23B50D1C4();

  v11 = OUTLINED_FUNCTION_7_12(*(v1 + v5[15]));
  MEMORY[0x23EE9DB70](v11);
  sub_23B50D1C4();

  sub_23B50D8E4();
  v12 = v1 + v5[17];
  v13 = *(v12 + 8);
  MEMORY[0x23EE9DB40](*v12);
  v14 = UVIndex.ExposureCategory.rawValue.getter(v13);
  OUTLINED_FUNCTION_14_0(v14, v15);

  v16 = v1 + v5[18];
  v17 = *(v16 + 8);
  MEMORY[0x23EE9DB40](*v16);
  v18 = UVIndex.ExposureCategory.rawValue.getter(v17);
  OUTLINED_FUNCTION_14_0(v18, v19);

  v20 = OUTLINED_FUNCTION_7_12(*(v1 + v5[19]));
  MEMORY[0x23EE9DB70](v20);
  v21 = OUTLINED_FUNCTION_7_12(*(v1 + v5[20]));
  MEMORY[0x23EE9DB70](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v22 = MEMORY[0x277CC87E0];
  sub_23B3F1C50(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0, MEMORY[0x277CC87E0]);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  Wind.hash(into:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  sub_23B3F1C50(&qword_280B42BE0, &qword_27E131E10, &unk_23B5100F0, v22);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v23 = OUTLINED_FUNCTION_7_12(*(v1 + v5[25]));
  return MEMORY[0x23EE9DB70](v23);
}

uint64_t DayPartForecast.hashValue.getter()
{
  sub_23B50D8C4();
  DayPartForecast.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B5058CC(uint64_t a1)
{
  sub_23B50D8C4();
  DayPartForecast.hash(into:)(v2);
  return sub_23B50D914();
}

uint64_t sub_23B505950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DayPartForecast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DayPartForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B505B00()
{
  result = qword_27E135C00;
  if (!qword_27E135C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C00);
  }

  return result;
}

unint64_t sub_23B505B58()
{
  result = qword_27E135C08;
  if (!qword_27E135C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C08);
  }

  return result;
}

unint64_t sub_23B505BB0()
{
  result = qword_27E135C10;
  if (!qword_27E135C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C10);
  }

  return result;
}

double static Coordinate.mock()@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27E131C58 != -1)
  {
    swift_once();
  }

  result = *&xmmword_27E15A780;
  *a1 = xmmword_27E15A780;
  return result;
}

double sub_23B505C60()
{
  result = 36.97;
  xmmword_27E15A780 = xmmword_23B527DE0;
  return result;
}

uint64_t WeatherAlert.init(detailsURL:source:expirationDate:issuedDate:onsetTime:endDate:summary:region:severity:importance:metadata:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, uint64_t a16)
{
  v50 = *a13;
  v51 = *a14;
  v19 = type metadata accessor for WeatherAlert(0);
  v20 = v19[9];
  v21 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = v19[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  v52 = v19[13];
  v29 = sub_23B50AB34();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = (a9 + v19[14]);
  (*(*(v29 - 8) + 32))(a9, a1, v29);
  v34 = (a9 + v19[5]);
  *v34 = a2;
  v34[1] = a3;
  v35 = *(v21 - 8);
  v36 = *(v35 + 32);
  v36(a9 + v19[7], a4, v21);
  v36(a9 + v19[8], a5, v21);
  OUTLINED_FUNCTION_47_8(a6, a9 + v20);
  OUTLINED_FUNCTION_47_8(a7, a9 + v25);
  v37 = (a9 + v19[11]);
  *v37 = a8;
  v37[1] = a10;
  *v33 = a11;
  v33[1] = a12;
  *(a9 + v19[15]) = v50;
  *(a9 + v19[16]) = v51;
  sub_23B5090B8(a15, a9 + v19[17]);
  (*(v35 + 16))(a9 + v19[6], a15, v21);

  sub_23B50910C();
  v38 = (a9 + v19[12]);
  *v38 = a8;
  v38[1] = a10;
  sub_23B398890(a9 + v52, &qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
  v42 = v19[18];
  sub_23B50AD64();
  OUTLINED_FUNCTION_2();
  v44 = *(v43 + 32);

  return v44(a9 + v42, a16);
}

uint64_t Array<A>.isExpired.getter()
{
  OUTLINED_FUNCTION_34_0();
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  v8 = type metadata accessor for WeatherAlert(0);
  MEMORY[0x28223BE20](v8);
  if (*(v0 + 16))
  {
    sub_23B5090B8(v0 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_23B50B9D4();
    sub_23B50B994();
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_0_64();
    sub_23B5098E0(v11, v12, MEMORY[0x277CC9590]);
    v13 = sub_23B50D114();
    (*(v3 + 8))(v7, v1);
    sub_23B50910C();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t WeatherAlert.detailsURL.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t WeatherAlert.detailsURL.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t WeatherAlert.source.getter()
{
  type metadata accessor for WeatherAlert(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.source.setter()
{
  v3 = OUTLINED_FUNCTION_8_14();
  type metadata accessor for WeatherAlert(v3);
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.source.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.date.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t WeatherAlert.date.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t WeatherAlert.date.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.expirationDate.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t WeatherAlert.expirationDate.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t WeatherAlert.expirationDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.issuedDate.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t WeatherAlert.issuedDate.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t WeatherAlert.issuedDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.onsetTime.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for WeatherAlert(v0);
  v2 = OUTLINED_FUNCTION_54_0(*(v1 + 36));
  return sub_23B3EB900(v2, v3, v4, v5);
}

uint64_t WeatherAlert.onsetTime.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t WeatherAlert.onsetTime.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for WeatherAlert(v0);
  v2 = OUTLINED_FUNCTION_54_0(*(v1 + 40));
  return sub_23B3EB900(v2, v3, v4, v5);
}

uint64_t WeatherAlert.endDate.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t WeatherAlert.endDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.summary.getter()
{
  type metadata accessor for WeatherAlert(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.summary.setter()
{
  v3 = OUTLINED_FUNCTION_8_14();
  type metadata accessor for WeatherAlert(v3);
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.summary.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.description.getter()
{
  type metadata accessor for WeatherAlert(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.description.setter()
{
  v3 = OUTLINED_FUNCTION_8_14();
  type metadata accessor for WeatherAlert(v3);
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.description.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.details.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for WeatherAlert(v0);
  v2 = OUTLINED_FUNCTION_54_0(*(v1 + 52));
  return sub_23B3EB900(v2, v3, v4, v5);
}

uint64_t WeatherAlert.details.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t WeatherAlert.details.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.region.getter()
{
  type metadata accessor for WeatherAlert(0);
  OUTLINED_FUNCTION_9_31();
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.region.setter()
{
  v3 = OUTLINED_FUNCTION_8_14();
  type metadata accessor for WeatherAlert(v3);
  result = OUTLINED_FUNCTION_18();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.region.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.severity.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for WeatherAlert(v2);
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t WeatherAlert.severity.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WeatherAlert(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t WeatherAlert.severity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.importance.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for WeatherAlert(v2);
  *v0 = *(v1 + *(result + 64));
  return result;
}

uint64_t WeatherAlert.importance.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WeatherAlert(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t WeatherAlert.importance.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  v1 = type metadata accessor for WeatherAlert(v0);
  v2 = OUTLINED_FUNCTION_54_0(*(v1 + 68));
  return sub_23B5090B8(v2, v3);
}

uint64_t WeatherAlert.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B407020(v1, v2);
}

uint64_t WeatherAlert.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.id.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD64();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t WeatherAlert.id.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  sub_23B50AD64();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t WeatherAlert.id.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherAlert(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.init(detailsURL:source:date:expirationDate:issuedDate:onsetTime:endDate:summary:description:details:region:severity:importance:metadata:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, char *a18, uint64_t a19, uint64_t a20)
{
  v54 = *a17;
  v52 = *a18;
  v23 = type metadata accessor for WeatherAlert(0);
  v24 = v23[9];
  v25 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v29 = v23[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
  v33 = v23[13];
  v34 = sub_23B50AB34();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = (a9 + v23[14]);
  (*(*(v34 - 8) + 32))(a9, a1, v34);
  v39 = (a9 + v23[5]);
  *v39 = a2;
  v39[1] = a3;
  v40 = *(*(v25 - 8) + 32);
  v40(a9 + v23[6], a4, v25);
  v40(a9 + v23[7], a5, v25);
  v40(a9 + v23[8], a6, v25);
  OUTLINED_FUNCTION_47_8(a7, a9 + v24);
  OUTLINED_FUNCTION_47_8(a8, a9 + v29);
  v41 = (a9 + v23[12]);
  *v41 = a12;
  v41[1] = a13;
  sub_23B3EB988(a14, a9 + v33, &qword_27E131FC0, &qword_23B515170);
  *v38 = a15;
  v38[1] = a16;
  *(a9 + v23[16]) = v52;
  *(a9 + v23[15]) = v54;
  v42 = (a9 + v23[11]);
  *v42 = a10;
  v42[1] = a11;
  sub_23B3CA20C(a19, a9 + v23[17]);
  v43 = v23[18];
  sub_23B50AD64();
  OUTLINED_FUNCTION_2();
  v45 = *(v44 + 32);

  return v45(a9 + v43, a20);
}

uint64_t sub_23B506FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6144646575737369 && a2 == 0xEA00000000006574;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D69547465736E6FLL && a2 == 0xE900000000000065;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7974697265766573 && a2 == 0xE800000000000000;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 25705 && a2 == 0xE200000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_23B50D834();

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

uint64_t sub_23B507464(char a1)
{
  result = 0x55736C6961746564;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6974617269707865;
      break;
    case 4:
      result = 0x6144646575737369;
      break;
    case 5:
      result = 0x6D69547465736E6FLL;
      break;
    case 6:
      result = 0x65746144646E65;
      break;
    case 7:
      result = 0x7972616D6D7573;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 0x736C6961746564;
      break;
    case 10:
      result = 0x6E6F69676572;
      break;
    case 11:
      result = 0x7974697265766573;
      break;
    case 12:
      result = 0x6E6174726F706D69;
      break;
    case 13:
      result = 0x617461646174656DLL;
      break;
    case 14:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B507604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B506FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B50762C(uint64_t a1)
{
  v2 = sub_23B509160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B507668(uint64_t a1)
{
  v2 = sub_23B509160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WeatherAlert.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_14();
  v99 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v97 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v95 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v96 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DE0, &qword_23B515490);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v98 = v12;
  OUTLINED_FUNCTION_24_0();
  v13 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v100 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_123();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  if ((sub_23B50AAF4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v94 = v10;
  v33 = type metadata accessor for WeatherAlert(0);
  OUTLINED_FUNCTION_12_1(v33[5]);
  v36 = v36 && v34 == v35;
  if (!v36 && (sub_23B50D834() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_31_2(v33[6]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_31_2(v33[7]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_31_2(v33[8]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v37 = v33[9];
  v92 = v33;
  v93 = v37;
  v38 = *(v25 + 48);
  sub_23B3EB900(v1 + v37, v32, &qword_27E131E18, &unk_23B50F710);
  v39 = v0 + v93;
  v93 = v38;
  sub_23B3EB900(v39, &v32[v38], &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(v32);
  if (v36)
  {
    OUTLINED_FUNCTION_46(&v32[v93]);
    if (v36)
    {
      sub_23B398890(v32, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_20;
    }

LABEL_18:
    v41 = &qword_27E131E20;
    v42 = &qword_23B51E340;
    v43 = v32;
LABEL_30:
    sub_23B398890(v43, v41, v42);
    goto LABEL_31;
  }

  sub_23B3EB900(v32, v2, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(&v32[v93]);
  if (v40)
  {
    (*(v100 + 8))(v2, v13);
    goto LABEL_18;
  }

  v44 = v100;
  (*(v100 + 32))(v18, &v32[v93], v13);
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v45, v46, MEMORY[0x277CC9598]);
  HIDWORD(v91) = sub_23B50D134();
  v47 = v44 + 8;
  v48 = *(v44 + 8);
  v93 = v47;
  v48(v18, v13);
  v48(v2, v13);
  sub_23B398890(v32, &qword_27E131E18, &unk_23B50F710);
  if ((v91 & 0x100000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v49 = v92[10];
  v50 = *(v25 + 48);
  sub_23B3EB900(v1 + v49, v29, &qword_27E131E18, &unk_23B50F710);
  sub_23B3EB900(v0 + v49, v29 + v50, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(v29);
  if (v36)
  {
    OUTLINED_FUNCTION_46(v29 + v50);
    if (v36)
    {
      sub_23B398890(v29, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_34;
    }

LABEL_28:
    v41 = &qword_27E131E20;
    v42 = &qword_23B51E340;
LABEL_29:
    v43 = v29;
    goto LABEL_30;
  }

  sub_23B3EB900(v29, v23, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(v29 + v50);
  if (v51)
  {
    (*(v100 + 8))(v23, v13);
    goto LABEL_28;
  }

  v54 = v100;
  (*(v100 + 32))(v18, v29 + v50, v13);
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v55, v56, MEMORY[0x277CC9598]);
  v57 = sub_23B50D134();
  v58 = *(v54 + 8);
  v58(v18, v13);
  v58(v23, v13);
  sub_23B398890(v29, &qword_27E131E18, &unk_23B50F710);
  if ((v57 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  OUTLINED_FUNCTION_12_1(v92[11]);
  if (!v36 || v59 != v60)
  {
    v63 = sub_23B50D834();
    v61 = v92;
    if ((v63 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_12_1(v61[12]);
  if (!v36 || v64 != v65)
  {
    v68 = sub_23B50D834();
    v66 = v92;
    if ((v68 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v69 = v66[13];
  v70 = *(v94 + 48);
  v29 = v98;
  sub_23B3EB900(v1 + v69, v98, &qword_27E131FC0, &qword_23B515170);
  sub_23B3EB900(v0 + v69, v29 + v70, &qword_27E131FC0, &qword_23B515170);
  v71 = v99;
  if (__swift_getEnumTagSinglePayload(v29, 1, v99) != 1)
  {
    v72 = v96;
    sub_23B3EB900(v29, v96, &qword_27E131FC0, &qword_23B515170);
    if (__swift_getEnumTagSinglePayload(v29 + v70, 1, v71) != 1)
    {
      v73 = v97;
      v74 = v29 + v70;
      v75 = v95;
      (*(v97 + 32))(v95, v74, v71);
      OUTLINED_FUNCTION_1_51();
      sub_23B5098E0(v76, v77, MEMORY[0x277CC9278]);
      v78 = sub_23B50D134();
      v79 = *(v73 + 8);
      v79(v75, v71);
      v79(v72, v71);
      sub_23B398890(v29, &qword_27E131FC0, &qword_23B515170);
      if ((v78 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    (*(v97 + 8))(v72, v71);
    goto LABEL_49;
  }

  if (__swift_getEnumTagSinglePayload(v29 + v70, 1, v71) != 1)
  {
LABEL_49:
    v41 = &qword_27E132DE0;
    v42 = &qword_23B515490;
    goto LABEL_29;
  }

  sub_23B398890(v29, &qword_27E131FC0, &qword_23B515170);
LABEL_51:
  v80 = v92;
  v81 = v92[14];
  v82 = (v1 + v81);
  v83 = *(v1 + v81 + 8);
  v84 = (v0 + v81);
  v85 = v84[1];
  if (v83)
  {
    if (!v85)
    {
      goto LABEL_31;
    }

    if (*v82 != *v84 || v83 != v85)
    {
      v87 = sub_23B50D834();
      v80 = v92;
      if ((v87 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v85)
  {
    goto LABEL_31;
  }

  v88 = v80;
  if (sub_23B3E71AC() & 1) != 0 && (sub_23B3E5DFC(*(v1 + v88[16]), *(v0 + v88[16])))
  {
    v89 = OUTLINED_FUNCTION_31_2(v88[17]);
    if (static WeatherMetadata.== infix(_:_:)(v89, v90))
    {
      OUTLINED_FUNCTION_31_2(v88[18]);
      v52 = _s10WeatherKit0A28ServiceCacheObservationTokenV2eeoiySbAC_ACtFZ_0();
      return v52 & 1;
    }
  }

LABEL_31:
  v52 = 0;
  return v52 & 1;
}

uint64_t WeatherAlert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C18, &qword_23B527DF0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B509160();
  sub_23B50D974();
  v26 = 0;
  sub_23B50AB34();
  OUTLINED_FUNCTION_1_51();
  sub_23B5098E0(v11, v12, MEMORY[0x277CC9268]);
  OUTLINED_FUNCTION_23_0();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherAlert(0);
    OUTLINED_FUNCTION_15(*(v13 + 20));
    OUTLINED_FUNCTION_8_33(1);
    sub_23B50D7A4();
    v24 = v13;
    v26 = 2;
    v14 = sub_23B50AD24();
    OUTLINED_FUNCTION_0_64();
    sub_23B5098E0(v15, v16, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_26_20();
    v23 = v14;
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_5_36(v24[7]);
    sub_23B50D7F4();
    OUTLINED_FUNCTION_5_36(v24[8]);
    sub_23B50D7F4();
    OUTLINED_FUNCTION_5_36(v24[9]);
    sub_23B50D794();
    OUTLINED_FUNCTION_5_36(v24[10]);
    sub_23B50D794();
    v17 = v24;
    OUTLINED_FUNCTION_15(v24[11]);
    OUTLINED_FUNCTION_8_33(7);
    sub_23B50D7A4();
    OUTLINED_FUNCTION_15(v17[12]);
    OUTLINED_FUNCTION_8_33(8);
    sub_23B50D7A4();
    v26 = 9;
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    OUTLINED_FUNCTION_15(v17[14]);
    OUTLINED_FUNCTION_8_33(10);
    sub_23B50D774();
    v26 = *(v3 + v24[15]);
    v25 = 11;
    sub_23B5091B4();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v26 = *(v3 + v24[16]);
    v25 = 12;
    sub_23B509208();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v26 = 13;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_19_22();
    sub_23B5098E0(v18, v19, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v26 = 14;
    sub_23B50AD64();
    OUTLINED_FUNCTION_6_33();
    sub_23B5098E0(v20, v21, MEMORY[0x277CC95F8]);
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t WeatherAlert.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v124 = sub_23B50AD64();
  OUTLINED_FUNCTION_5();
  v121 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v123 = v6 - v5;
  v7 = OUTLINED_FUNCTION_24_0();
  v125 = type metadata accessor for WeatherMetadata(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v126 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  v127 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_0();
  v128 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v129 = v120 - v19;
  OUTLINED_FUNCTION_24_0();
  v20 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v143 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_0();
  v136 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v120 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_123();
  v29 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v134 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_27();
  v34 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C38, &qword_23B527DF8);
  OUTLINED_FUNCTION_5();
  v130 = v36;
  v131 = v35;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v37);
  v39 = v120 - v38;
  v40 = type metadata accessor for WeatherAlert(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27();
  v44 = v43 - v42;
  v142 = *(v45 + 36);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v20);
  v141 = *(v40 + 40);
  OUTLINED_FUNCTION_1();
  v144 = v20;
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v20);
  v137 = *(v40 + 52);
  v138 = v40;
  v139 = v44;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v29);
  v55 = a1[3];
  v135 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_23B509160();
  v132 = v39;
  v56 = v140;
  sub_23B50D964();
  v133 = v29;
  if (v56)
  {
    v140 = v56;
    v60 = 0;
    LODWORD(v61) = 0;
    LODWORD(v62) = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v140 = v27;
    v146 = 0;
    OUTLINED_FUNCTION_1_51();
    v59 = sub_23B5098E0(v57, v58, MEMORY[0x277CC9280]);
    sub_23B50D734();
    v72 = v139;
    (*(v134 + 32))(v139, v34, v29);
    OUTLINED_FUNCTION_32_13(1);
    v73 = sub_23B50D6E4();
    v74 = v138;
    v120[2] = v59;
    v75 = (v72 + v138[5]);
    *v75 = v73;
    v75[1] = v76;
    v146 = 2;
    OUTLINED_FUNCTION_0_64();
    sub_23B5098E0(v77, v78, MEMORY[0x277CC95A0]);
    v61 = v144;
    OUTLINED_FUNCTION_31_11();
    sub_23B50D734();
    v79 = OUTLINED_FUNCTION_41_8(v74[6]);
    *(v80 - 256) = v81;
    v81(v79);
    OUTLINED_FUNCTION_34_13(3);
    OUTLINED_FUNCTION_31_11();
    sub_23B50D734();
    v82 = OUTLINED_FUNCTION_41_8(v74[7]);
    v84 = *(v83 - 256);
    v84(v82);
    OUTLINED_FUNCTION_34_13(4);
    v85 = v136;
    v64 = v132;
    sub_23B50D734();
    (v84)(v72 + v74[8], v85, v61);
    OUTLINED_FUNCTION_34_13(5);
    v86 = v129;
    sub_23B50D6D4();
    sub_23B3EB988(v86, v72 + v142, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_34_13(6);
    v62 = v128;
    OUTLINED_FUNCTION_31_11();
    sub_23B50D6D4();
    sub_23B3EB988(v62, v72 + v141, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_32_13(7);
    v87 = sub_23B50D6E4();
    v63 = v130;
    v88 = (v72 + v74[11]);
    *v88 = v87;
    v88[1] = v89;
    OUTLINED_FUNCTION_32_13(8);
    v90 = sub_23B50D6E4();
    v140 = 0;
    v92 = (v72 + v74[12]);
    *v92 = v90;
    v92[1] = v91;
    OUTLINED_FUNCTION_34_13(9);
    v93 = v140;
    sub_23B50D6D4();
    v140 = v93;
    if (!v93)
    {
      sub_23B3EB988(v127, v139 + v137, &qword_27E131FC0, &qword_23B515170);
      v146 = 10;
      v64 = v132;
      v94 = v140;
      v95 = sub_23B50D6B4();
      v136 = v96;
      v140 = v94;
      if (!v94)
      {
        v99 = (v139 + v138[14]);
        v100 = v136;
        *v99 = v95;
        v99[1] = v100;
        v145 = 11;
        v101 = sub_23B50925C();
        OUTLINED_FUNCTION_29_14(&type metadata for WeatherSeverity, &v145, v102, v103, v101);
        v140 = 0;
        *(v139 + v138[15]) = v146;
        v145 = 12;
        v104 = sub_23B5092B0();
        OUTLINED_FUNCTION_29_14(&type metadata for WeatherImportance, &v145, v105, v106, v104);
        v140 = 0;
        *(v139 + v138[16]) = v146;
        v146 = 13;
        OUTLINED_FUNCTION_19_22();
        v109 = sub_23B5098E0(v107, v108, &protocol conformance descriptor for WeatherMetadata);
        OUTLINED_FUNCTION_29_14(v125, &v146, v110, v111, v109);
        v140 = 0;
        sub_23B3CA20C(v126, v139 + v138[17]);
        v146 = 14;
        OUTLINED_FUNCTION_6_33();
        v114 = sub_23B5098E0(v112, v113, MEMORY[0x277CC9618]);
        OUTLINED_FUNCTION_29_14(v124, &v146, v115, v116, v114);
        v140 = 0;
        v117 = OUTLINED_FUNCTION_14_30();
        v118(v117);
        v119 = v139;
        (*(v121 + 32))(v139 + v138[18], v123, v124);
        sub_23B5090B8(v119, v122);
        __swift_destroy_boxed_opaque_existential_1(v135);
        OUTLINED_FUNCTION_65();
        return sub_23B50910C();
      }
    }

    v97 = OUTLINED_FUNCTION_14_30();
    v98(v97);
    v60 = 1;
    OUTLINED_FUNCTION_10_31();
    v65 = 1;
    v66 = 1;
  }

  v68 = v138;
  v67 = v139;
  __swift_destroy_boxed_opaque_existential_1(v135);
  if (v60)
  {
    v136 = 0;
    (*(v134 + 8))(v67, v133);
    if (v61)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v136 = 0;
    if (v61)
    {
LABEL_6:

      if ((v62 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  if (!v62)
  {
LABEL_7:
    if (v63)
    {
      v69 = *(v143 + 8);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_11:
  v69 = *(v143 + 8);
  v69(v67 + v68[6], v144);
  if (v63)
  {
LABEL_12:
    v70 = v144;
    v69(v67 + v68[7], v144);
    if ((v64 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_14:
  v70 = v144;
  if (v64)
  {
    v69 = *(v143 + 8);
LABEL_16:
    v69(v67 + v68[8], v70);
  }

LABEL_17:
  sub_23B398890(v67 + v142, &qword_27E131E18, &unk_23B50F710);
  sub_23B398890(v67 + v141, &qword_27E131E18, &unk_23B50F710);
  if (v65)
  {
  }

  if (v66)
  {
  }

  sub_23B398890(v67 + v137, &qword_27E131FC0, &qword_23B515170);
}

uint64_t WeatherAlert.isExpired.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  sub_23B50B9D4();
  sub_23B50B994();
  type metadata accessor for WeatherAlert(0);
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v7, v8, MEMORY[0x277CC9590]);
  v9 = sub_23B50D114();
  (*(v2 + 8))(v6, v0);
  return v9 & 1;
}

uint64_t sub_23B5090B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

uint64_t sub_23B50910C()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_23B509160()
{
  result = qword_27E135C20;
  if (!qword_27E135C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C20);
  }

  return result;
}

unint64_t sub_23B5091B4()
{
  result = qword_27E135C28;
  if (!qword_27E135C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C28);
  }

  return result;
}

unint64_t sub_23B509208()
{
  result = qword_27E135C30;
  if (!qword_27E135C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C30);
  }

  return result;
}

unint64_t sub_23B50925C()
{
  result = qword_27E135C40;
  if (!qword_27E135C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C40);
  }

  return result;
}

unint64_t sub_23B5092B0()
{
  result = qword_27E135C48;
  if (!qword_27E135C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C48);
  }

  return result;
}

uint64_t WeatherAlert.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v32 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v31 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v33 = v9;
  OUTLINED_FUNCTION_24_0();
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v18 = OUTLINED_FUNCTION_3(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_1_51();
  sub_23B5098E0(v23, v24, MEMORY[0x277CC9270]);
  sub_23B50D0E4();
  v25 = type metadata accessor for WeatherAlert(0);
  sub_23B50D1C4();
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v26, v27, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_36_13();
  sub_23B3EB900(v0 + v25[9], v1, &qword_27E131E18, &unk_23B50F710);
  if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v12 + 32))(v16, v1, v10);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_46_7();
    (*(v12 + 8))(v16, v10);
  }

  sub_23B3EB900(v0 + v25[10], v21, &qword_27E131E18, &unk_23B50F710);
  if (__swift_getEnumTagSinglePayload(v21, 1, v10) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v12 + 32))(v16, v21, v10);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_46_7();
    (*(v12 + 8))(v16, v10);
  }

  sub_23B50D1C4();
  sub_23B50D1C4();
  sub_23B3EB900(v0 + v25[13], v33, &qword_27E131FC0, &qword_23B515170);
  if (__swift_getEnumTagSinglePayload(v33, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v32 + 32))(v31, v33, v2);
    OUTLINED_FUNCTION_84();
    sub_23B50D0E4();
    (*(v32 + 8))(v31, v2);
  }

  if (*(v0 + v25[14] + 8))
  {
    OUTLINED_FUNCTION_84();
    sub_23B50D1C4();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  sub_23B3E7198();
  sub_23B50D1C4();

  WeatherMetadata.hash(into:)();
  sub_23B50AD64();
  OUTLINED_FUNCTION_6_33();
  sub_23B5098E0(v28, v29, MEMORY[0x277CC9600]);
  return sub_23B50D0E4();
}

uint64_t WeatherAlert.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherAlert.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B50985C(uint64_t a1)
{
  sub_23B50D8C4();
  WeatherAlert.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B5098E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherAlert.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B509A30()
{
  result = qword_27E135C58;
  if (!qword_27E135C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C58);
  }

  return result;
}

unint64_t sub_23B509A88()
{
  result = qword_27E135C60;
  if (!qword_27E135C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C60);
  }

  return result;
}

unint64_t sub_23B509AE0()
{
  result = qword_27E135C68;
  if (!qword_27E135C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C68);
  }

  return result;
}

WeatherKit::AirQualityScaleGradientStop __swiftcall AirQualityScaleGradientStop.init(location:color:)(Swift::Float location, Swift::String color)
{
  *v2 = location;
  *(v2 + 8) = color;
  result.color = color;
  result.location = location;
  return result;
}

uint64_t AirQualityScaleGradientStop.color.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AirQualityScaleGradientStop.color.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23B509BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B509CBC(char a1)
{
  if (a1)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_23B509CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B509BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B509D20(uint64_t a1)
{
  v2 = sub_23B509F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B509D5C(uint64_t a1)
{
  v2 = sub_23B509F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirQualityScaleGradientStop.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_23B50D834();
  }
}

uint64_t AirQualityScaleGradientStop.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C70, &qword_23B528060);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B509F58();
  sub_23B50D974();
  v13 = 0;
  sub_23B50D7D4();
  if (!v2)
  {
    v12 = 1;
    sub_23B50D7A4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_23B509F58()
{
  result = qword_280B41D70[0];
  if (!qword_280B41D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B41D70);
  }

  return result;
}

uint64_t AirQualityScaleGradientStop.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C78, &qword_23B528068);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B509F58();
  sub_23B50D964();
  if (!v2)
  {
    v17[15] = 0;
    sub_23B50D714();
    v12 = v11;
    v17[14] = 1;
    v14 = sub_23B50D6E4();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AirQualityScaleGradientStop.hash(into:)(uint64_t a1)
{
  sub_23B50D8F4();

  return sub_23B50D1C4();
}

uint64_t AirQualityScaleGradientStop.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B50D8F4();
  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B50A268(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[18] = *v1;
  v6 = v2;
  v7 = v3;
  sub_23B50D8C4();
  AirQualityScaleGradientStop.hash(into:)(v5);
  return sub_23B50D914();
}

unint64_t sub_23B50A2BC()
{
  result = qword_27E135C80;
  if (!qword_27E135C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScaleGradientStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B50A3F0()
{
  result = qword_27E135C88;
  if (!qword_27E135C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C88);
  }

  return result;
}

unint64_t sub_23B50A448()
{
  result = qword_280B41D60;
  if (!qword_280B41D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41D60);
  }

  return result;
}

unint64_t sub_23B50A4A0()
{
  result = qword_280B41D68;
  if (!qword_280B41D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41D68);
  }

  return result;
}

unint64_t sub_23B50A4F4(_BYTE *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = type metadata accessor for CLLocationCoordinate2D.SolarEvents(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(a2, a3, v11);
  v12 = v11[*(v9 + 32)];
  v16 = a1;
  v13 = sub_23B50A5D4(&v16, v12);
  sub_23B4F5D20(v11);
  return v13;
}

unint64_t sub_23B50A5D4(unsigned __int8 *a1, char a2)
{
  v2 = *a1;
  result = 0x6C616369706F7274;
  switch(v2)
  {
    case 1:
      result = 0x747375642E6E7573;
      break;
    case 2:
      result = 0x6F6E732E646E6977;
      break;
    case 3:
    case 32:
      result = 1684957559;
      break;
    case 4:
    case 16:
    case 19:
      if (a2)
      {
        result = 0x2E78616D2E6E7573;
      }

      else
      {
        result = 0x6174732E6E6F6F6DLL;
      }

      break;
    case 5:
    case 20:
      result = 0x69662E64756F6C63;
      break;
    case 6:
      if (a2)
      {
        result = 0xD000000000000012;
      }

      else
      {
        result = 0xD000000000000014;
      }

      break;
    case 7:
    case 26:
    case 28:
      result = 0x6B616C66776F6E73;
      break;
    case 8:
      result = 0x6F662E64756F6C63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
    case 24:
    case 33:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x61682E64756F6C63;
      break;
    case 13:
    case 25:
      result = 0x657A61682E6E7573;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x6E61636972727568;
      break;
    case 18:
    case 23:
      if (a2)
      {
        result = 0x6F622E64756F6C63;
      }

      else
      {
        result = 0xD000000000000014;
      }

      break;
    case 21:
      if (a2)
      {
        result = 0x75732E64756F6C63;
      }

      else
      {
        result = 0x6F6D2E64756F6C63;
      }

      break;
    case 22:
      result = 0x61722E64756F6C63;
      break;
    case 27:
    case 30:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 31:
      return result;
    default:
      result = 0x6E732E64756F6C63;
      break;
  }

  return result;
}