uint64_t sub_23822BE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23822BE68()
{
  result = qword_27DEF6E38;
  if (!qword_27DEF6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E38);
  }

  return result;
}

uint64_t sub_23822BEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23822BF20()
{
  result = qword_27DEF6E40;
  if (!qword_27DEF6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E40);
  }

  return result;
}

uint64_t sub_23822BF74(void *a1)
{
  a1[1] = sub_238229FA8(&qword_27DEF6E48, type metadata accessor for ElectricHVACLoadEvent, &protocol conformance descriptor for ElectricHVACLoadEvent);
  a1[2] = sub_238229FA8(&qword_27DEF6E50, type metadata accessor for ElectricHVACLoadEvent, &protocol conformance descriptor for ElectricHVACLoadEvent);
  result = sub_238229FA8(&qword_27DEF6E58, type metadata accessor for ElectricHVACLoadEvent, &protocol conformance descriptor for ElectricHVACLoadEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_23822C0AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_238278B70();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_23822C218(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_238278B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for ElectricHVACLoadEvent.Session(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23822C36C(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    result = sub_238278B70();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ElectricHVACLoadEvent.Session(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23822C49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23822C5CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278BC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23822C6EC(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23822C79C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_238278BC0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_23822C85C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23822C8FC(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricHVACLoadEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ElectricHVACLoadEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ElectricHVACLoadEvent.ElectricalMeasurement.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_23822CC14()
{
  result = qword_27DEF6E90;
  if (!qword_27DEF6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E90);
  }

  return result;
}

unint64_t sub_23822CC6C()
{
  result = qword_27DEF6E98;
  if (!qword_27DEF6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E98);
  }

  return result;
}

unint64_t sub_23822CCC4()
{
  result = qword_27DEF6EA0;
  if (!qword_27DEF6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EA0);
  }

  return result;
}

unint64_t sub_23822CD1C()
{
  result = qword_27DEF6EA8;
  if (!qword_27DEF6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EA8);
  }

  return result;
}

unint64_t sub_23822CD74()
{
  result = qword_27DEF6EB0;
  if (!qword_27DEF6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EB0);
  }

  return result;
}

unint64_t sub_23822CDCC()
{
  result = qword_27DEF6EB8;
  if (!qword_27DEF6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EB8);
  }

  return result;
}

unint64_t sub_23822CE24()
{
  result = qword_27DEF6EC0;
  if (!qword_27DEF6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EC0);
  }

  return result;
}

unint64_t sub_23822CE7C()
{
  result = qword_27DEF6EC8;
  if (!qword_27DEF6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EC8);
  }

  return result;
}

unint64_t sub_23822CED4()
{
  result = qword_27DEF6ED0;
  if (!qword_27DEF6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6ED0);
  }

  return result;
}

unint64_t sub_23822CF2C()
{
  result = qword_27DEF6ED8;
  if (!qword_27DEF6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6ED8);
  }

  return result;
}

unint64_t sub_23822CF84()
{
  result = qword_27DEF6EE0;
  if (!qword_27DEF6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EE0);
  }

  return result;
}

unint64_t sub_23822CFDC()
{
  result = qword_27DEF6EE8;
  if (!qword_27DEF6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EE8);
  }

  return result;
}

unint64_t sub_23822D034()
{
  result = qword_27DEF6EF0;
  if (!qword_27DEF6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EF0);
  }

  return result;
}

unint64_t sub_23822D08C()
{
  result = qword_27DEF6EF8;
  if (!qword_27DEF6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6EF8);
  }

  return result;
}

unint64_t sub_23822D0E4()
{
  result = qword_27DEF6F00;
  if (!qword_27DEF6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F00);
  }

  return result;
}

unint64_t sub_23822D13C()
{
  result = qword_27DEF6F08;
  if (!qword_27DEF6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F08);
  }

  return result;
}

unint64_t sub_23822D194()
{
  result = qword_27DEF6F10;
  if (!qword_27DEF6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F10);
  }

  return result;
}

unint64_t sub_23822D1EC()
{
  result = qword_27DEF6F18;
  if (!qword_27DEF6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F18);
  }

  return result;
}

unint64_t sub_23822D244()
{
  result = qword_27DEF6F20;
  if (!qword_27DEF6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F20);
  }

  return result;
}

unint64_t sub_23822D29C()
{
  result = qword_27DEF6F28;
  if (!qword_27DEF6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F28);
  }

  return result;
}

unint64_t sub_23822D2F4()
{
  result = qword_27DEF6F30;
  if (!qword_27DEF6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F30);
  }

  return result;
}

uint64_t sub_23822D348(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xED00006574617453)
  {

    return 2;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23822D45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_238279590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23822D660(uint64_t a1, unint64_t a2)
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

  sub_238279030();
  return sub_238279070();
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.init(stateOfCharge:direction:power:energy:)@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v11 = sub_2382789B0();
  v12 = [objc_opt_self() milliwatts];
  sub_23821EB10(0, &qword_27DEF6970, 0x277CCAE30);
  v13 = sub_2382792F0();

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v27 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v15 = sub_2382789B0();
  if (qword_27DEF68A0 != -1)
  {
    swift_once();
  }

  v16 = qword_27DEF7170;
  sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
  v17 = v16;
  v18 = sub_2382792F0();

  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = sub_2382789B0();
  v20 = [v19 symbol];

  v21 = sub_238279000();
  v23 = v22;

  if (v21 == 6838125 && v23 == 0xE300000000000000)
  {
  }

  else
  {
    v24 = sub_238279590();

    if ((v24 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a1 <= 0x64)
  {
    *a5 = a1;
    v25 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    (*(*(v10 - 8) + 32))(&a5[v25[5]], a3, v10);
    result = (*(*(v14 - 8) + 32))(&a5[v25[6]], a4, v14);
    a5[v25[7]] = v27;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_238279410();
  __break(1u);
  return result;
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.init(wasFollowingGuidance:guidanceToken:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0) + 20);
  v7 = sub_238278BC0();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  *a3 = a1;
  return result;
}

uint64_t ElectricVehicleLoadEvent.Session.init(id:state:guidanceState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  *(a4 + *(v8 + 20)) = v7;
  v9 = sub_238278BC0();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  return sub_23823187C(a3, a4 + *(v8 + 24), type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
}

uint64_t ElectricVehicleLoadEvent.init(timestamp:measurement:session:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  sub_238278B80();
  v15 = sub_238278BC0();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  sub_23821EBC0(v14);
  if (v16 != 1)
  {
    goto LABEL_17;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a5) & 0xF;
  }

  else
  {
    result = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a5 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_8;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_20;
  }

LABEL_8:

  v18 = sub_23822DECC(a4, a5);

  if ((v18 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_23822DE84(a4, a5);
  if (!v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = sub_238278FC0();

  if ((v20 & 1) == 0)
  {
    result = sub_23822DE84(a4, a5);
    if (!v21)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v22 = sub_238278FB0();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  result = sub_23822D660(a4, a5);
  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = sub_238278FC0();

  if (v24)
  {
LABEL_17:
    Event = type metadata accessor for ElectricVehicleLoadEvent(0);
    v28 = Event[5];
    v29 = sub_238278B70();
    v30 = *(v29 - 8);
    (*(v30 + 16))(a6 + v28, a1, v29);
    sub_238231394(a3, a6 + Event[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
    sub_238231394(a2, a6 + Event[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    *(a6 + Event[9]) = 1;
    sub_238278BB0();
    sub_2382313FC(a3, type metadata accessor for ElectricVehicleLoadEvent.Session);
    sub_2382313FC(a2, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    result = (*(v30 + 8))(a1, v29);
    v31 = (a6 + Event[8]);
    *v31 = a4;
    v31[1] = a5;
    return result;
  }

  result = sub_23822D660(a4, a5);
  if (v25)
  {
    v26 = sub_238278FB0();

    if (v26)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23822DE84(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_238279070();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23822DECC(uint64_t a1, unint64_t a2)
{
  v32 = sub_238278A40();
  v4 = MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v26 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = HIBYTE(a2) & 0xF;
  v34 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v11;
  if (v11)
  {
    v12 = 0;
    v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v13 = (v8 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_2382793A0();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v33[0] = v34;
          v33[1] = v28;
          v15 = v33 + v12;
        }

        else
        {
          v14 = v27;
          if ((v34 & 0x1000000000000000) == 0)
          {
            v14 = sub_238279400();
          }

          v15 = (v14 + v12);
        }

        if ((*v15 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v24 = (__clz(*v15 ^ 0xFF) - 24);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = 4;
          }

          goto LABEL_14;
        }

        if (v24 == 1)
        {
LABEL_13:
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }
      }

LABEL_14:
      v18 = v30;
      sub_238278A10();
      v19 = v31;
      sub_238278A00();
      sub_238278A20();
      v20 = *v13;
      v21 = v19;
      v22 = v32;
      (*v13)(v21, v32);
      v20(v18, v22);
      v23 = sub_238278A30();
      v20(v10, v22);
      if (v23)
      {
        v12 += v17;
        if (v12 < v29)
        {
          continue;
        }
      }

      return v23 & 1;
    }
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.power.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.energy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_23822E2F8()
{
  v1 = 0x43664F6574617473;
  v2 = 0x796772656E65;
  if (*v0 != 2)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0)
  {
    v1 = 0x7265776F70;
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

uint64_t sub_23822E37C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238232E10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23822E3A4(uint64_t a1)
{
  v2 = sub_23823145C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822E3E0(uint64_t a1)
{
  v2 = sub_23823145C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F38, &qword_23827C428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823145C();
  sub_238279640();
  v16 = 0;
  sub_238279530();
  if (!v2)
  {
    v11 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
    sub_2382314F8(&qword_27DEF6F48, &qword_27DEF68E0, &qword_23827C420, MEMORY[0x277CC87D8]);
    sub_238279550();
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
    sub_2382314F8(&qword_27DEF6F50, &qword_27DEF68E8, &qword_23827A320, MEMORY[0x277CC87D8]);
    sub_238279550();
    v13 = *(v3 + *(v11 + 28));
    v12 = 3;
    sub_2382223FC();
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ElectricVehicleLoadEvent.ElectricalMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v27 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F58, &qword_23827C430);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_23823145C();
  v32 = v9;
  v14 = v33;
  sub_238279630();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v15 = v29;
  v16 = v30;
  v33 = v5;
  v39 = 0;
  v17 = sub_2382794A0();
  v25 = v12;
  *v12 = v17;
  v38 = 1;
  sub_2382314F8(&qword_27DEF6F60, &qword_27DEF68E0, &qword_23827C420, MEMORY[0x277CC87F8]);
  v18 = v33;
  sub_2382794C0();
  v24 = v10;
  (*(v28 + 32))(v25 + *(v10 + 20), v7, v18);
  v37 = 2;
  sub_2382314F8(&qword_27DEF6F68, &qword_27DEF68E8, &qword_23827A320, MEMORY[0x277CC87F8]);
  v19 = v4;
  v20 = v31;
  sub_2382794C0();
  v21 = v25;
  (*(v27 + 32))(v25 + *(v24 + 24), v19, v16);
  v35 = 3;
  sub_238222688();
  sub_2382794C0();
  (*(v15 + 8))(v32, v20);
  *(v21 + *(v24 + 28)) = v36;
  sub_238231394(v21, v26, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_2382313FC(v21, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
}

uint64_t sub_23822EC28(uint64_t a1)
{
  v2 = sub_238231594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822EC64(uint64_t a1)
{
  v2 = sub_238231594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822ECA0(uint64_t a1)
{
  v2 = sub_23823163C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822ECDC(uint64_t a1)
{
  v2 = sub_23823163C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822ED18(uint64_t a1)
{
  v2 = sub_238231540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822ED54(uint64_t a1)
{
  v2 = sub_238231540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822ED90(uint64_t a1)
{
  v2 = sub_2382315E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822EDCC(uint64_t a1)
{
  v2 = sub_2382315E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.Session.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F70, &qword_23827C438);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F78, &qword_23827C440);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F80, &qword_23827C448);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6F88, &qword_23827C450);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231540();
  sub_238279640();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2382315E8();
      v9 = v21;
      sub_2382794E0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_238231594();
      v9 = v24;
      sub_2382794E0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_23823163C();
    sub_2382794E0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ElectricVehicleLoadEvent.Session.State.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricVehicleLoadEvent.Session.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FB0, &qword_23827C458);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FB8, &qword_23827C460);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FC0, &qword_23827C468);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FC8, &unk_23827C470);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_238231540();
  v15 = v36;
  sub_238279630();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_2382794D0();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_238228428();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_2382793F0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v24 = &type metadata for ElectricVehicleLoadEvent.Session.State;
      sub_238279450();
      sub_2382793E0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2382315E8();
          sub_238279440();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_238231594();
          v26 = v17;
          sub_238279440();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_23823163C();
        sub_238279440();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.guidanceToken.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_23822F880(uint64_t a1)
{
  v2 = sub_238231690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822F8BC(uint64_t a1)
{
  v2 = sub_238231690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FD0, &qword_23827C480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231690();
  sub_238279640();
  v8[15] = 0;
  sub_238279510();
  if (!v1)
  {
    type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v8[14] = 1;
    sub_238278BC0();
    sub_2382316E4(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_238279550();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ElectricVehicleLoadEvent.Session.GuidanceState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_238278BC0();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FE0, &qword_23827C488);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231690();
  sub_238279630();
  if (!v2)
  {
    v19 = v8;
    v12 = v22;
    v11 = v23;
    v26 = 0;
    v13 = v24;
    v14 = sub_238279480();
    v18 = v10;
    *v10 = v14 & 1;
    v25 = 1;
    sub_2382316E4(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2382794C0();
    (*(v12 + 8))(v7, v13);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v11);
    sub_23823187C(v15, v21, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ElectricVehicleLoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_23822FE40(uint64_t a1)
{
  v2 = sub_23823172C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822FE7C(uint64_t a1)
{
  v2 = sub_23823172C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6FE8, &qword_23827C490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823172C();
  sub_238279640();
  v10[15] = 0;
  sub_238278BC0();
  sub_2382316E4(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ElectricVehicleLoadEvent.Session(0) + 20));
    v10[13] = 1;
    sub_238231780();
    sub_238279550();
    v10[12] = 2;
    type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    sub_2382316E4(&qword_27DEF7000, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState, &protocol conformance descriptor for ElectricVehicleLoadEvent.Session.GuidanceState);
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ElectricVehicleLoadEvent.Session.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_238278BC0();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7008, &qword_23827C498);
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823172C();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  v13 = v23;
  v18 = v11;
  v19 = a1;
  v30 = 0;
  sub_2382316E4(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v24;
  sub_2382794C0();
  (*(v13 + 32))(v18, v14, v25);
  v28 = 1;
  sub_2382317D4();
  sub_2382794C0();
  v15 = v18;
  v18[*(v9 + 20)] = v29;
  v27 = 2;
  sub_2382316E4(&qword_27DEF7018, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState, &protocol conformance descriptor for ElectricVehicleLoadEvent.Session.GuidanceState);
  sub_2382794C0();
  (*(v12 + 8))(v8, v26);
  sub_23823187C(v5, v15 + *(v9 + 24), type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  sub_238231394(v15, v20, type metadata accessor for ElectricVehicleLoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_2382313FC(v15, type metadata accessor for ElectricVehicleLoadEvent.Session);
}

uint64_t sub_2382305BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ElectricVehicleLoadEvent.deviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElectricVehicleLoadEvent(0) + 32));

  return v1;
}

uint64_t sub_238230750(uint64_t a1)
{
  v2 = sub_238231828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823078C(uint64_t a1)
{
  v2 = sub_238231828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricVehicleLoadEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7020, &qword_23827C4A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231828();
  sub_238279640();
  v8[15] = 0;
  sub_238278BC0();
  sub_2382316E4(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v1)
  {
    type metadata accessor for ElectricVehicleLoadEvent(0);
    v8[14] = 1;
    sub_238278B70();
    sub_2382316E4(&qword_27DEF6B68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_238279550();
    v8[13] = 2;
    type metadata accessor for ElectricVehicleLoadEvent.Session(0);
    sub_2382316E4(&qword_27DEF7030, type metadata accessor for ElectricVehicleLoadEvent.Session, &protocol conformance descriptor for ElectricVehicleLoadEvent.Session);
    sub_238279550();
    v8[12] = 3;
    type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    sub_2382316E4(&qword_27DEF7038, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement, &protocol conformance descriptor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    sub_238279550();
    v8[11] = 4;
    sub_238279500();
    v8[10] = 5;
    sub_238279540();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ElectricVehicleLoadEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  MEMORY[0x28223BE20](v30);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238278B70();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_238278BC0();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7040, &qword_23827C4A8);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v26 - v9;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238231828();
  v38 = v10;
  v14 = v39;
  sub_238279630();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v39 = a1;
  v16 = v34;
  v45 = 0;
  sub_2382316E4(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_2382794C0();
  (*(v32 + 32))(v15, v35, v37);
  v44 = 1;
  sub_2382316E4(&qword_27DEF6B90, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2382794C0();
  v26 = v5;
  (*(v16 + 32))(v15 + Event[5], v7, v5);
  v43 = 2;
  sub_2382316E4(&qword_27DEF7048, type metadata accessor for ElectricVehicleLoadEvent.Session, &protocol conformance descriptor for ElectricVehicleLoadEvent.Session);
  v17 = v31;
  v35 = 0;
  sub_2382794C0();
  v18 = v33;
  sub_23823187C(v17, v15 + Event[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
  v42 = 3;
  sub_2382316E4(&qword_27DEF7050, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement, &protocol conformance descriptor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v19 = v29;
  sub_2382794C0();
  v20 = v39;
  sub_23823187C(v19, v15 + Event[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v41 = 4;
  v21 = sub_238279470();
  v22 = (v15 + Event[8]);
  *v22 = v21;
  v22[1] = v23;
  v40 = 5;
  v24 = sub_2382794B0();
  (*(v18 + 8))(v38, v36);
  *(v15 + Event[9]) = v24;
  sub_238231394(v15, v27, type metadata accessor for ElectricVehicleLoadEvent);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_2382313FC(v15, type metadata accessor for ElectricVehicleLoadEvent);
}

uint64_t sub_238231394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2382313FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23823145C()
{
  result = qword_27DEF6F40;
  if (!qword_27DEF6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F40);
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

uint64_t sub_2382314F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_238231540()
{
  result = qword_27DEF6F90;
  if (!qword_27DEF6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F90);
  }

  return result;
}

unint64_t sub_238231594()
{
  result = qword_27DEF6F98;
  if (!qword_27DEF6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6F98);
  }

  return result;
}

unint64_t sub_2382315E8()
{
  result = qword_27DEF6FA0;
  if (!qword_27DEF6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FA0);
  }

  return result;
}

unint64_t sub_23823163C()
{
  result = qword_27DEF6FA8;
  if (!qword_27DEF6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FA8);
  }

  return result;
}

unint64_t sub_238231690()
{
  result = qword_27DEF6FD8;
  if (!qword_27DEF6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FD8);
  }

  return result;
}

uint64_t sub_2382316E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23823172C()
{
  result = qword_27DEF6FF0;
  if (!qword_27DEF6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FF0);
  }

  return result;
}

unint64_t sub_238231780()
{
  result = qword_27DEF6FF8;
  if (!qword_27DEF6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6FF8);
  }

  return result;
}

unint64_t sub_2382317D4()
{
  result = qword_27DEF7010;
  if (!qword_27DEF7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7010);
  }

  return result;
}

unint64_t sub_238231828()
{
  result = qword_27DEF7028;
  if (!qword_27DEF7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7028);
  }

  return result;
}

uint64_t sub_23823187C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2382318E8()
{
  result = qword_27DEF7058;
  if (!qword_27DEF7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7058);
  }

  return result;
}

uint64_t sub_23823193C(void *a1)
{
  a1[1] = sub_2382316E4(&qword_27DEF7060, type metadata accessor for ElectricVehicleLoadEvent, &protocol conformance descriptor for ElectricVehicleLoadEvent);
  a1[2] = sub_2382316E4(&qword_27DEF7068, type metadata accessor for ElectricVehicleLoadEvent, &protocol conformance descriptor for ElectricVehicleLoadEvent);
  result = sub_2382316E4(&qword_27DEF7070, type metadata accessor for ElectricVehicleLoadEvent, &protocol conformance descriptor for ElectricVehicleLoadEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_238231A44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_238278B70();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_238231BF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_238278B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238231D94(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    result = sub_238278B70();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ElectricVehicleLoadEvent.Session(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_238231E74(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 2)
      {
        return v13 - 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_238231FA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_2382320C0(uint64_t a1)
{
  sub_23823218C(319, &qword_27DEF7098, &qword_27DEF6970, 0x277CCAE30);
  if (v1 <= 0x3F)
  {
    sub_23823218C(319, &qword_27DEF70A0, &qword_27DEF6978, 0x277CCADF8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23823218C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_23821EB10(255, a3, a4);
    v5 = sub_2382789F0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2382321F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_238232328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278BC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  else
  {
    v11 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_238232448(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2382324F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_238278BC0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2382325B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_2382326DC()
{
  result = qword_27DEF70C8;
  if (!qword_27DEF70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70C8);
  }

  return result;
}

unint64_t sub_238232734()
{
  result = qword_27DEF70D0;
  if (!qword_27DEF70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70D0);
  }

  return result;
}

unint64_t sub_23823278C()
{
  result = qword_27DEF70D8;
  if (!qword_27DEF70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70D8);
  }

  return result;
}

unint64_t sub_2382327E4()
{
  result = qword_27DEF70E0;
  if (!qword_27DEF70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70E0);
  }

  return result;
}

unint64_t sub_23823283C()
{
  result = qword_27DEF70E8;
  if (!qword_27DEF70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70E8);
  }

  return result;
}

unint64_t sub_238232894()
{
  result = qword_27DEF70F0;
  if (!qword_27DEF70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70F0);
  }

  return result;
}

unint64_t sub_2382328EC()
{
  result = qword_27DEF70F8;
  if (!qword_27DEF70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF70F8);
  }

  return result;
}

unint64_t sub_238232944()
{
  result = qword_27DEF7100;
  if (!qword_27DEF7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7100);
  }

  return result;
}

unint64_t sub_23823299C()
{
  result = qword_27DEF7108;
  if (!qword_27DEF7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7108);
  }

  return result;
}

unint64_t sub_2382329F4()
{
  result = qword_27DEF7110;
  if (!qword_27DEF7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7110);
  }

  return result;
}

unint64_t sub_238232A4C()
{
  result = qword_27DEF7118;
  if (!qword_27DEF7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7118);
  }

  return result;
}

unint64_t sub_238232AA4()
{
  result = qword_27DEF7120;
  if (!qword_27DEF7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7120);
  }

  return result;
}

unint64_t sub_238232AFC()
{
  result = qword_27DEF7128;
  if (!qword_27DEF7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7128);
  }

  return result;
}

unint64_t sub_238232B54()
{
  result = qword_27DEF7130;
  if (!qword_27DEF7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7130);
  }

  return result;
}

unint64_t sub_238232BAC()
{
  result = qword_27DEF7138;
  if (!qword_27DEF7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7138);
  }

  return result;
}

unint64_t sub_238232C04()
{
  result = qword_27DEF7140;
  if (!qword_27DEF7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7140);
  }

  return result;
}

unint64_t sub_238232C5C()
{
  result = qword_27DEF7148;
  if (!qword_27DEF7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7148);
  }

  return result;
}

unint64_t sub_238232CB4()
{
  result = qword_27DEF7150;
  if (!qword_27DEF7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7150);
  }

  return result;
}

unint64_t sub_238232D0C()
{
  result = qword_27DEF7158;
  if (!qword_27DEF7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7158);
  }

  return result;
}

unint64_t sub_238232D64()
{
  result = qword_27DEF7160;
  if (!qword_27DEF7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7160);
  }

  return result;
}

unint64_t sub_238232DBC()
{
  result = qword_27DEF7168;
  if (!qword_27DEF7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7168);
  }

  return result;
}

uint64_t sub_238232E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43664F6574617473 && a2 == 0xED00006567726168;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_238232F80()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x277CCADF8]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithSymbol:v2 converter:v0];

  qword_27DEF7170 = v3;
}

id static NSUnitEnergy.EnergyKit.milliwattHours.getter()
{
  if (qword_27DEF68A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEF7170;

  return v1;
}

id NSUnitEnergy.EnergyKit.__allocating_init(symbol:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = sub_238278FF0();

  v5 = [v3 initWithSymbol_];

  return v5;
}

id NSUnitEnergy.EnergyKit.init(symbol:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_238278FF0();

  v6.receiver = v2;
  v6.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  v4 = objc_msgSendSuper2(&v6, sel_initWithSymbol_, v3);

  return v4;
}

id NSUnitEnergy.EnergyKit.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NSUnitEnergy.EnergyKit.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NSUnitEnergy.EnergyKit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ElectricityGuidance.Service.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t ElectricityGuidance.Service.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ElectricityGuidance.Service.guidance(using:at:)(_BYTE *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7180, &qword_23827CF60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  LOBYTE(v7) = *a1;
  v9 = a1[1];
  v12 = v2;
  v13 = a2;
  v14 = v7;
  v15 = v9;
  type metadata accessor for ElectricityGuidance(0);
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v5);
  return sub_238279270();
}

uint64_t sub_23823358C()
{
  if (*v0)
  {
    return 0x6369726F74736968;
  }

  else
  {
    return 0x7473616365726F66;
  }
}

uint64_t sub_2382335CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473616365726F66 && a2 == 0xE800000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369726F74736968 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2382336B0(uint64_t a1)
{
  v2 = sub_23823753C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382336EC(uint64_t a1)
{
  v2 = sub_23823753C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238233728(uint64_t a1)
{
  v2 = sub_2382375E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238233764(uint64_t a1)
{
  v2 = sub_2382375E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382337A0(uint64_t a1)
{
  v2 = sub_238237590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382337DC(uint64_t a1)
{
  v2 = sub_238237590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Query.QueryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7188, &qword_23827CF68);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7190, &qword_23827CF70);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7198, &qword_23827CF78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823753C();
  sub_238279640();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_238237590();
    v14 = v18;
    sub_2382794E0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2382375E4();
    sub_2382794E0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ElectricityGuidance.Query.QueryType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71B8, &qword_23827CF80);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71C0, &qword_23827CF88);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71C8, &unk_23827CF90);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823753C();
  v12 = v31;
  sub_238279630();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_2382794D0();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23822842C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2382793F0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v22 = &type metadata for ElectricityGuidance.Query.QueryType;
      sub_238279450();
      sub_2382793E0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_238237590();
        sub_238279440();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2382375E4();
        sub_238279440();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

EnergyKit::ElectricityGuidance::Query __swiftcall ElectricityGuidance.Query.init(suggestedAction:)(EnergyKit::ElectricityGuidance::SuggestedAction suggestedAction)
{
  *v1 = *suggestedAction;
  result.suggestedAction = suggestedAction;
  return result;
}

uint64_t sub_238233FC4()
{
  if (*v0)
  {
    return 0x7079547972657571;
  }

  else
  {
    return 0x6574736567677573;
  }
}

uint64_t sub_238234010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574736567677573 && a2 == 0xEF6E6F6974634164;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7079547972657571 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2382340FC(uint64_t a1)
{
  v2 = sub_238237638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238234138(uint64_t a1)
{
  v2 = sub_238237638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Query.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71D0, &qword_23827CFA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237638();
  sub_238279640();
  v15 = v8;
  v14 = 0;
  sub_23823768C();
  sub_238279550();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_2382376E0();
    sub_238279550();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ElectricityGuidance.Query.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF71F0, &qword_23827CFA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237638();
  sub_238279630();
  if (!v2)
  {
    v15 = 0;
    sub_238237734();
    sub_2382794C0();
    v9 = v16;
    v13 = 1;
    sub_238237788();
    sub_2382794C0();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238234534()
{
  if (*v0)
  {
    return 0x656375646572;
  }

  else
  {
    return 0x7466696873;
  }
}

uint64_t sub_238234568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7466696873 && a2 == 0xE500000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656375646572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23823463C(uint64_t a1)
{
  v2 = sub_2382377DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238234678(uint64_t a1)
{
  v2 = sub_2382377DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382346B4(uint64_t a1)
{
  v2 = sub_238237830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382346F0(uint64_t a1)
{
  v2 = sub_238237830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823472C(uint64_t a1)
{
  v2 = sub_238237884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238234768(uint64_t a1)
{
  v2 = sub_238237884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.SuggestedAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7208, &qword_23827CFB0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7210, &qword_23827CFB8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7218, &qword_23827CFC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382377DC();
  sub_238279640();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_238237830();
    v14 = v18;
    sub_2382794E0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_238237884();
    sub_2382794E0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ElectricityGuidance.SuggestedAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7238, &qword_23827CFC8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7240, &qword_23827CFD0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7248, &qword_23827CFD8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382377DC();
  v12 = v31;
  sub_238279630();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_2382794D0();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23822842C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2382793F0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v22 = &type metadata for ElectricityGuidance.SuggestedAction;
      sub_238279450();
      sub_2382793E0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_238237830();
        sub_238279440();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_238237884();
        sub_238279440();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ElectricityGuidance.Value.init(interval:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_238278AA0();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for ElectricityGuidance.Value(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_238235028()
{
  if (*v0)
  {
    return 0x676E69746172;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_238235060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_238235138(uint64_t a1)
{
  v2 = sub_2382378F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238235174(uint64_t a1)
{
  v2 = sub_2382378F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7250, &qword_23827CFE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382378F8();
  sub_238279640();
  v8[15] = 0;
  sub_238278AA0();
  sub_23823794C(&qword_27DEF7260, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  sub_238279550();
  if (!v1)
  {
    type metadata accessor for ElectricityGuidance.Value(0);
    v8[14] = 1;
    sub_238279520();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ElectricityGuidance.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_238278AA0();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7268, &qword_23827CFE8);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ElectricityGuidance.Value(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382378F8();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v12 = v23;
  v13 = v24;
  v28 = 0;
  sub_23823794C(&qword_27DEF7270, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v14 = v25;
  sub_2382794C0();
  (*(v13 + 32))(v21, v6, v14);
  v27 = 1;
  sub_238279490();
  v16 = v15;
  (*(v12 + 8))(v8, v26);
  v18 = v21;
  v17 = v22;
  *&v21[*(v9 + 20)] = v16;
  sub_238237CA0(v18, v17, type metadata accessor for ElectricityGuidance.Value);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238237D08(v18, type metadata accessor for ElectricityGuidance.Value);
}

unint64_t sub_2382356E4()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_238235720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000238281000 == a2 || (sub_238279590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000238281020 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_238279590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_238235804(uint64_t a1)
{
  v2 = sub_238237994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238235840(uint64_t a1)
{
  v2 = sub_238237994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823587C(uint64_t a1)
{
  v2 = sub_2382379E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382358B8(uint64_t a1)
{
  v2 = sub_2382379E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382358F4(uint64_t a1)
{
  v2 = sub_238237A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238235930(uint64_t a1)
{
  v2 = sub_238237A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.Options.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7278, &qword_23827CFF0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7280, &qword_23827CFF8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7288, &qword_23827D000);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237994();
  sub_238279640();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2382379E8();
    v14 = v18;
    sub_2382794E0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_238237A3C();
    sub_2382794E0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ElectricityGuidance.Options.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72A8, &qword_23827D008);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72B0, &qword_23827D010);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72B8, &qword_23827D018);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237994();
  v12 = v31;
  sub_238279630();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_2382794D0();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23822842C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2382793F0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v22 = &type metadata for ElectricityGuidance.Options;
      sub_238279450();
      sub_2382793E0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_2382379E8();
        sub_238279440();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_238237A3C();
        sub_238279440();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_238236214()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t sub_238236288(uint64_t a1)
{
  v2 = *v1;
  sub_238279600();
  MEMORY[0x2383ED500](v2);
  return sub_238279620();
}

BOOL sub_238236310(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_238236340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23823636C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_238236458@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_238236498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ElectricityGuidance.energyVenueID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricityGuidance(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricityGuidance.suggestedAction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityGuidance(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ElectricityGuidance.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricityGuidance(0) + 28);
  v4 = sub_238278AA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricityGuidance.values.getter()
{
  type metadata accessor for ElectricityGuidance(0);
}

uint64_t ElectricityGuidance.options.getter()
{
  type metadata accessor for ElectricityGuidance(0);
}

uint64_t sub_23823669C()
{
  type metadata accessor for ElectricityGuidance.Service();
  v0 = swift_allocObject();
  if ((sub_238278D20() & 1) == 0)
  {
    sub_238278C90();
    sub_238278C80();
  }

  type metadata accessor for SerializedGuidanceOperations();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 16) = v1;
  qword_27DEF7178 = v0;
  return result;
}

uint64_t static ElectricityGuidance.sharedService.getter()
{
  if (qword_27DEF68A8 != -1)
  {
    swift_once();
  }
}

uint64_t ElectricityGuidance.init(guidanceToken:energyVenueID:suggestedAction:interval:values:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = sub_238278BC0();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v16 = type metadata accessor for ElectricityGuidance(0);
  v15(a7 + v16[5], a2, v14);
  *(a7 + v16[6]) = v13;
  v17 = v16[7];
  v18 = sub_238278AA0();
  result = (*(*(v18 - 8) + 32))(a7 + v17, a4, v18);
  *(a7 + v16[8]) = a5;
  *(a7 + v16[9]) = a6;
  return result;
}

uint64_t sub_238236884()
{
  v1 = *v0;
  v2 = 0x65636E6164697567;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6556796772656E65;
  if (v1 != 1)
  {
    v5 = 0x6574736567677573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238236960@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2382392CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238236988(uint64_t a1)
{
  v2 = sub_238237A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382369C4(uint64_t a1)
{
  v2 = sub_238237A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72C0, &qword_23827D020);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237A90();
  sub_238279640();
  LOBYTE(v12) = 0;
  sub_238278BC0();
  sub_23823794C(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v2)
  {
    v9 = type metadata accessor for ElectricityGuidance(0);
    LOBYTE(v12) = 1;
    sub_238279550();
    LOBYTE(v12) = *(v3 + v9[6]);
    v13 = 2;
    sub_23823768C();
    sub_238279550();
    LOBYTE(v12) = 3;
    sub_238278AA0();
    sub_23823794C(&qword_27DEF7260, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
    sub_238279550();
    v12 = *(v3 + v9[8]);
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72D0, &qword_23827D028);
    sub_238237B38(&qword_27DEF72D8, &qword_27DEF72E0, &protocol conformance descriptor for ElectricityGuidance.Value, MEMORY[0x277D83948]);
    sub_238279550();
    v12 = *(v3 + v9[9]);
    v13 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72E8, &qword_23827D030);
    sub_238237BD4(&qword_27DEF72F0, sub_238237AE4, MEMORY[0x277D83B50]);
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ElectricityGuidance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_238278AA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238278BC0();
  v31 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v25 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7300, &qword_23827D038);
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ElectricityGuidance(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238237A90();
  v33 = v11;
  v15 = v35;
  sub_238279630();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v29;
  v25 = v12;
  v35 = v14;
  v17 = v31;
  LOBYTE(v36) = 0;
  sub_23823794C(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_2382794C0();
  v18 = *(v17 + 32);
  v18(v35, v32, v5);
  LOBYTE(v36) = 1;
  sub_2382794C0();
  v19 = v25;
  v18(&v35[*(v25 + 20)], v8, v5);
  v37 = 2;
  sub_238237734();
  v32 = 0;
  sub_2382794C0();
  v35[v19[6]] = v36;
  LOBYTE(v36) = 3;
  sub_23823794C(&qword_27DEF7270, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v20 = v16;
  v21 = v19;
  v22 = v28;
  sub_2382794C0();
  v23 = v35;
  (*(v27 + 32))(&v35[v21[7]], v20, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72D0, &qword_23827D028);
  v37 = 4;
  sub_238237B38(&qword_27DEF7308, &qword_27DEF7310, &protocol conformance descriptor for ElectricityGuidance.Value, MEMORY[0x277D83978]);
  sub_2382794C0();
  *(v23 + v21[8]) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF72E8, &qword_23827D030);
  v37 = 5;
  sub_238237BD4(&qword_27DEF7318, sub_238237C4C, MEMORY[0x277D83B70]);
  sub_2382794C0();
  (*(v30 + 8))(v33, v34);
  *(v23 + v21[9]) = v36;
  sub_238237CA0(v23, v26, type metadata accessor for ElectricityGuidance);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238237D08(v23, type metadata accessor for ElectricityGuidance);
}

uint64_t sub_2382374FC(uint64_t a1)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_23826F254(a1, *(v1 + 16), *(v1 + 24), v2 | *(v1 + 32));
}

unint64_t sub_23823753C()
{
  result = qword_27DEF71A0;
  if (!qword_27DEF71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71A0);
  }

  return result;
}

unint64_t sub_238237590()
{
  result = qword_27DEF71A8;
  if (!qword_27DEF71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71A8);
  }

  return result;
}

unint64_t sub_2382375E4()
{
  result = qword_27DEF71B0;
  if (!qword_27DEF71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71B0);
  }

  return result;
}

unint64_t sub_238237638()
{
  result = qword_27DEF71D8;
  if (!qword_27DEF71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71D8);
  }

  return result;
}

unint64_t sub_23823768C()
{
  result = qword_27DEF71E0;
  if (!qword_27DEF71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71E0);
  }

  return result;
}

unint64_t sub_2382376E0()
{
  result = qword_27DEF71E8;
  if (!qword_27DEF71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71E8);
  }

  return result;
}

unint64_t sub_238237734()
{
  result = qword_27DEF71F8;
  if (!qword_27DEF71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF71F8);
  }

  return result;
}

unint64_t sub_238237788()
{
  result = qword_27DEF7200;
  if (!qword_27DEF7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7200);
  }

  return result;
}

unint64_t sub_2382377DC()
{
  result = qword_27DEF7220;
  if (!qword_27DEF7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7220);
  }

  return result;
}

unint64_t sub_238237830()
{
  result = qword_27DEF7228;
  if (!qword_27DEF7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7228);
  }

  return result;
}

unint64_t sub_238237884()
{
  result = qword_27DEF7230;
  if (!qword_27DEF7230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7230);
  }

  return result;
}

unint64_t sub_2382378F8()
{
  result = qword_27DEF7258;
  if (!qword_27DEF7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7258);
  }

  return result;
}

uint64_t sub_23823794C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238237994()
{
  result = qword_27DEF7290;
  if (!qword_27DEF7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7290);
  }

  return result;
}

unint64_t sub_2382379E8()
{
  result = qword_27DEF7298;
  if (!qword_27DEF7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7298);
  }

  return result;
}

unint64_t sub_238237A3C()
{
  result = qword_27DEF72A0;
  if (!qword_27DEF72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF72A0);
  }

  return result;
}

unint64_t sub_238237A90()
{
  result = qword_27DEF72C8;
  if (!qword_27DEF72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF72C8);
  }

  return result;
}

unint64_t sub_238237AE4()
{
  result = qword_27DEF72F8;
  if (!qword_27DEF72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF72F8);
  }

  return result;
}

uint64_t sub_238237B38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF72D0, &qword_23827D028);
    sub_23823794C(a2, type metadata accessor for ElectricityGuidance.Value, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238237BD4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF72E8, &qword_23827D030);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238237C4C()
{
  result = qword_27DEF7320;
  if (!qword_27DEF7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7320);
  }

  return result;
}

uint64_t sub_238237CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238237D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238237D6C()
{
  result = qword_27DEF7328;
  if (!qword_27DEF7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7328);
  }

  return result;
}

unint64_t sub_238237DC4()
{
  result = qword_27DEF7330;
  if (!qword_27DEF7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7330);
  }

  return result;
}

unint64_t sub_238237E1C()
{
  result = qword_27DEF7338;
  if (!qword_27DEF7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7338);
  }

  return result;
}

unint64_t sub_238237EB8()
{
  result = qword_27DEF7350;
  if (!qword_27DEF7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7350);
  }

  return result;
}

unint64_t sub_238237F10()
{
  result = qword_27DEF7358;
  if (!qword_27DEF7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7358);
  }

  return result;
}

unint64_t sub_238237F68()
{
  result = qword_27DEF7360;
  if (!qword_27DEF7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7360);
  }

  return result;
}

unint64_t sub_238237FC0()
{
  result = qword_27DEF7368;
  if (!qword_27DEF7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7368);
  }

  return result;
}

uint64_t sub_238238028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_238278AA0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_238238148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_238278AA0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_238238250(uint64_t a1)
{
  sub_238278BC0();
  if (v1 <= 0x3F)
  {
    sub_238278AA0();
    if (v2 <= 0x3F)
    {
      sub_238238314(319);
      if (v3 <= 0x3F)
      {
        sub_23823836C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238238314(uint64_t a1)
{
  if (!qword_27DEF7380)
  {
    type metadata accessor for ElectricityGuidance.Value(255);
    v1 = sub_238279150();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEF7380);
    }
  }
}

void sub_23823836C(uint64_t a1)
{
  if (!qword_27DEF7388)
  {
    sub_2382383C8();
    v1 = sub_238279280();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEF7388);
    }
  }
}

unint64_t sub_2382383C8()
{
  result = qword_27DEF7390;
  if (!qword_27DEF7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricityGuidance.Query(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for ElectricityGuidance.Query(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_2382385F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278AA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238238674(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278AA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2382386E4(uint64_t a1)
{
  result = sub_238278AA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_238238880()
{
  result = qword_27DEF73B8;
  if (!qword_27DEF73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73B8);
  }

  return result;
}

unint64_t sub_2382388D8()
{
  result = qword_27DEF73C0;
  if (!qword_27DEF73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73C0);
  }

  return result;
}

unint64_t sub_238238930()
{
  result = qword_27DEF73C8;
  if (!qword_27DEF73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73C8);
  }

  return result;
}

unint64_t sub_238238988()
{
  result = qword_27DEF73D0;
  if (!qword_27DEF73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73D0);
  }

  return result;
}

unint64_t sub_2382389E0()
{
  result = qword_27DEF73D8;
  if (!qword_27DEF73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73D8);
  }

  return result;
}

unint64_t sub_238238A38()
{
  result = qword_27DEF73E0;
  if (!qword_27DEF73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73E0);
  }

  return result;
}

unint64_t sub_238238A90()
{
  result = qword_27DEF73E8;
  if (!qword_27DEF73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73E8);
  }

  return result;
}

unint64_t sub_238238AE8()
{
  result = qword_27DEF73F0;
  if (!qword_27DEF73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73F0);
  }

  return result;
}

unint64_t sub_238238B40()
{
  result = qword_27DEF73F8;
  if (!qword_27DEF73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF73F8);
  }

  return result;
}

unint64_t sub_238238B98()
{
  result = qword_27DEF7400;
  if (!qword_27DEF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7400);
  }

  return result;
}

unint64_t sub_238238BF0()
{
  result = qword_27DEF7408;
  if (!qword_27DEF7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7408);
  }

  return result;
}

unint64_t sub_238238C48()
{
  result = qword_27DEF7410;
  if (!qword_27DEF7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7410);
  }

  return result;
}

unint64_t sub_238238CA0()
{
  result = qword_27DEF7418;
  if (!qword_27DEF7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7418);
  }

  return result;
}

unint64_t sub_238238CF8()
{
  result = qword_27DEF7420;
  if (!qword_27DEF7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7420);
  }

  return result;
}

unint64_t sub_238238D50()
{
  result = qword_27DEF7428;
  if (!qword_27DEF7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7428);
  }

  return result;
}

unint64_t sub_238238DA8()
{
  result = qword_27DEF7430;
  if (!qword_27DEF7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7430);
  }

  return result;
}

unint64_t sub_238238E00()
{
  result = qword_27DEF7438;
  if (!qword_27DEF7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7438);
  }

  return result;
}

unint64_t sub_238238E58()
{
  result = qword_27DEF7440;
  if (!qword_27DEF7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7440);
  }

  return result;
}

unint64_t sub_238238EB0()
{
  result = qword_27DEF7448;
  if (!qword_27DEF7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7448);
  }

  return result;
}

unint64_t sub_238238F08()
{
  result = qword_27DEF7450;
  if (!qword_27DEF7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7450);
  }

  return result;
}

unint64_t sub_238238F60()
{
  result = qword_27DEF7458;
  if (!qword_27DEF7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7458);
  }

  return result;
}

unint64_t sub_238238FB8()
{
  result = qword_27DEF7460;
  if (!qword_27DEF7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7460);
  }

  return result;
}

unint64_t sub_238239010()
{
  result = qword_27DEF7468;
  if (!qword_27DEF7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7468);
  }

  return result;
}

unint64_t sub_238239068()
{
  result = qword_27DEF7470;
  if (!qword_27DEF7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7470);
  }

  return result;
}

unint64_t sub_2382390C0()
{
  result = qword_27DEF7478;
  if (!qword_27DEF7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7478);
  }

  return result;
}

unint64_t sub_238239118()
{
  result = qword_27DEF7480;
  if (!qword_27DEF7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7480);
  }

  return result;
}

unint64_t sub_238239170()
{
  result = qword_27DEF7488;
  if (!qword_27DEF7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7488);
  }

  return result;
}

unint64_t sub_2382391C8()
{
  result = qword_27DEF7490;
  if (!qword_27DEF7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7490);
  }

  return result;
}

unint64_t sub_238239220()
{
  result = qword_27DEF7498;
  if (!qword_27DEF7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7498);
  }

  return result;
}

unint64_t sub_238239278()
{
  result = qword_27DEF74A0;
  if (!qword_27DEF74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74A0);
  }

  return result;
}

uint64_t sub_2382392CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6164697567 && a2 == 0xED00006E656B6F54;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556796772656E65 && a2 == 0xED0000444965756ELL || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574736567677573 && a2 == 0xEF6E6F6974634164 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_238239514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

EnergyKit::ElectricityInsightQuery::Granularity __swiftcall ElectricityInsightQuery.Granularity.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238239694()
{
  v1 = *v0;
  v2 = 0x796C72756F68;
  v3 = 0x796C6B656577;
  v4 = 0x796C68746E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0x796C72616579;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x796C696164;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238239720@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23823D0D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238239748(uint64_t a1)
{
  v2 = sub_238239F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238239784(uint64_t a1)
{
  v2 = sub_238239F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382397C0(uint64_t a1)
{
  v2 = sub_23823A0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382397FC(uint64_t a1)
{
  v2 = sub_23823A0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238239838(uint64_t a1)
{
  v2 = sub_23823A0FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238239874(uint64_t a1)
{
  v2 = sub_23823A0FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382398B0(uint64_t a1)
{
  v2 = sub_23823A000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382398EC(uint64_t a1)
{
  v2 = sub_23823A000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238239928(uint64_t a1)
{
  v2 = sub_23823A054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238239964(uint64_t a1)
{
  v2 = sub_23823A054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382399A0(uint64_t a1)
{
  v2 = sub_238239FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382399DC(uint64_t a1)
{
  v2 = sub_238239FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityInsightQuery.Granularity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74A8, &qword_23827E210);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74B0, &qword_23827E218);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74B8, &qword_23827E220);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74C0, &qword_23827E228);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74C8, &qword_23827E230);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF74D0, &qword_23827E238);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_238239F58();
  sub_238279640();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_23823A0A8();
      v31 = v45;
      sub_2382794E0();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_23823A0FC();
      v31 = v45;
      sub_2382794E0();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_23823A054();
      v22 = v33;
      v23 = v45;
      sub_2382794E0();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_23823A000();
      v22 = v36;
      v23 = v45;
      sub_2382794E0();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_238239FAC();
      v22 = v39;
      v23 = v45;
      sub_2382794E0();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_238239F58()
{
  result = qword_27DEF74D8;
  if (!qword_27DEF74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74D8);
  }

  return result;
}

unint64_t sub_238239FAC()
{
  result = qword_27DEF74E0;
  if (!qword_27DEF74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74E0);
  }

  return result;
}

unint64_t sub_23823A000()
{
  result = qword_27DEF74E8;
  if (!qword_27DEF74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74E8);
  }

  return result;
}

unint64_t sub_23823A054()
{
  result = qword_27DEF74F0;
  if (!qword_27DEF74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74F0);
  }

  return result;
}

unint64_t sub_23823A0A8()
{
  result = qword_27DEF74F8;
  if (!qword_27DEF74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF74F8);
  }

  return result;
}

unint64_t sub_23823A0FC()
{
  result = qword_27DEF7500;
  if (!qword_27DEF7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7500);
  }

  return result;
}

uint64_t ElectricityInsightQuery.Granularity.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricityInsightQuery.Granularity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7508, &qword_23827E240);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7510, &qword_23827E248);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7518, &qword_23827E250);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7520, &qword_23827E258);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7528, &qword_23827E260);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7530, &unk_23827E268);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_238239F58();
  v19 = v61;
  sub_238279630();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_2382794D0();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_238221114();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_2382793F0();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
    *v34 = &type metadata for ElectricityInsightQuery.Granularity;
    sub_238279450();
    sub_2382793E0();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_23823A0A8();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_238279440();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_23823A0FC();
      v37 = v46;
      sub_238279440();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_23823A054();
    v38 = v24;
    v39 = v46;
    sub_238279440();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_238239FAC();
    v41 = v56;
    v42 = v46;
    sub_238279440();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_23823A000();
  v31 = v46;
  sub_238279440();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_23823AA20()
{
  if (*v0)
  {
    return 0x656D69746E7572;
  }

  else
  {
    return 0x796772656E65;
  }
}

uint64_t sub_23823AA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
  if (v6 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D69746E7572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23823AB30(uint64_t a1)
{
  v2 = sub_23823AF48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823AB6C(uint64_t a1)
{
  v2 = sub_23823AF48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823ABA8(uint64_t a1)
{
  v2 = sub_23823AFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823ABE4(uint64_t a1)
{
  v2 = sub_23823AFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23823AC20(uint64_t a1)
{
  v2 = sub_23823AF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823AC5C(uint64_t a1)
{
  v2 = sub_23823AF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityInsightQuery.QueryType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7538, &qword_23827E278);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7540, &qword_23827E280);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7548, &qword_23827E288);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823AF48();
  sub_238279640();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_23823AF9C();
    v14 = v18;
    sub_2382794E0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_23823AFF0();
    sub_2382794E0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_23823AF48()
{
  result = qword_27DEF7550;
  if (!qword_27DEF7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7550);
  }

  return result;
}

unint64_t sub_23823AF9C()
{
  result = qword_27DEF7558;
  if (!qword_27DEF7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7558);
  }

  return result;
}

unint64_t sub_23823AFF0()
{
  result = qword_27DEF7560;
  if (!qword_27DEF7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7560);
  }

  return result;
}

uint64_t ElectricityInsightQuery.QueryType.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricityInsightQuery.QueryType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7568, &qword_23827E290);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7570, &qword_23827E298);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7578, &qword_23827E2A0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823AF48();
  v12 = v31;
  sub_238279630();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_2382794D0();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_23822842C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_2382793F0();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v22 = &type metadata for ElectricityInsightQuery.QueryType;
      sub_238279450();
      sub_2382793E0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_23823AF9C();
        sub_238279440();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_23823AFF0();
        sub_238279440();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t ElectricityInsightQuery.range.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278AA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricityInsightQuery.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ElectricityInsightQuery(uint64_t a1)
{
  result = qword_27DEF75F8;
  if (!qword_27DEF75F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ElectricityInsightQuery.granularity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ElectricityInsightQuery.flowDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ElectricityInsightQuery.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricityInsightQuery(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ElectricityInsightQuery.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ElectricityInsightQuery(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ElectricityInsightQuery.init(options:range:granularity:flowDirection:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *a3;
  v9 = *a4;
  v10 = type metadata accessor for ElectricityInsightQuery(0);
  *(a5 + v10[8]) = 0;
  *(a5 + v10[5]) = v7;
  v11 = sub_238278AA0();
  result = (*(*(v11 - 8) + 32))(a5, a2, v11);
  *(a5 + v10[6]) = v8;
  *(a5 + v10[7]) = v9;
  return result;
}

uint64_t sub_23823B848()
{
  v1 = *v0;
  v2 = 0x65676E6172;
  v3 = 0x72616C756E617267;
  v4 = 0x65726944776F6C66;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23823B8EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23823D270(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23823B914(uint64_t a1)
{
  v2 = sub_23823BC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23823B950(uint64_t a1)
{
  v2 = sub_23823BC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityInsightQuery.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7580, &qword_23827E2A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823BC18();
  sub_238279640();
  LOBYTE(v12) = 0;
  sub_238278AA0();
  sub_23823C1A0(&qword_27DEF7260, MEMORY[0x277CC88B0]);
  sub_238279550();
  if (!v2)
  {
    v9 = type metadata accessor for ElectricityInsightQuery(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    sub_23823BC6C();
    sub_238279550();
    LOBYTE(v12) = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    sub_23823BCC0();
    sub_238279550();
    LOBYTE(v12) = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_2382223FC();
    sub_238279550();
    LOBYTE(v12) = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    sub_23823BD14();
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23823BC18()
{
  result = qword_27DEF7588;
  if (!qword_27DEF7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7588);
  }

  return result;
}

unint64_t sub_23823BC6C()
{
  result = qword_27DEF7590;
  if (!qword_27DEF7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7590);
  }

  return result;
}

unint64_t sub_23823BCC0()
{
  result = qword_27DEF7598;
  if (!qword_27DEF7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7598);
  }

  return result;
}

unint64_t sub_23823BD14()
{
  result = qword_27DEF75A0;
  if (!qword_27DEF75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75A0);
  }

  return result;
}

uint64_t ElectricityInsightQuery.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_238278AA0();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF75A8, &qword_23827E2B0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ElectricityInsightQuery(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 32);
  v11[v12] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23823BC18();
  v21 = v7;
  v13 = v25;
  sub_238279630();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v20;
  LOBYTE(v27) = 0;
  sub_23823C1A0(&qword_27DEF7270, MEMORY[0x277CC88D0]);
  v15 = v21;
  sub_2382794C0();
  v16 = *(v14 + 32);
  v25 = v3;
  v16(v11, v24, v3);
  v26 = 1;
  sub_23823C1E4();
  sub_2382794C0();
  *&v11[v8[5]] = v27;
  v26 = 2;
  sub_23823C238();
  sub_2382794C0();
  v17 = v22;
  v11[v8[6]] = v27;
  v26 = 3;
  sub_238222688();
  sub_2382794C0();
  v11[v8[7]] = v27;
  v26 = 4;
  sub_23823C28C();
  sub_2382794C0();
  (*(v17 + 8))(v15, v23);
  v11[v12] = v27;
  sub_23823C2E0(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23823C344(v11);
}

uint64_t sub_23823C1A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_238278AA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23823C1E4()
{
  result = qword_27DEF75B0;
  if (!qword_27DEF75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75B0);
  }

  return result;
}

unint64_t sub_23823C238()
{
  result = qword_27DEF75B8;
  if (!qword_27DEF75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75B8);
  }

  return result;
}

unint64_t sub_23823C28C()
{
  result = qword_27DEF75C0;
  if (!qword_27DEF75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75C0);
  }

  return result;
}

uint64_t sub_23823C2E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricityInsightQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23823C344(uint64_t a1)
{
  v2 = type metadata accessor for ElectricityInsightQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23823C3A4()
{
  result = qword_27DEF75C8;
  if (!qword_27DEF75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75C8);
  }

  return result;
}

unint64_t sub_23823C3FC()
{
  result = qword_27DEF75D0;
  if (!qword_27DEF75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75D0);
  }

  return result;
}

unint64_t sub_23823C454()
{
  result = qword_27DEF75D8;
  if (!qword_27DEF75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75D8);
  }

  return result;
}

unint64_t sub_23823C4AC()
{
  result = qword_27DEF75E0;
  if (!qword_27DEF75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75E0);
  }

  return result;
}

unint64_t sub_23823C504()
{
  result = qword_27DEF75E8;
  if (!qword_27DEF75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75E8);
  }

  return result;
}

unint64_t sub_23823C55C()
{
  result = qword_27DEF75F0;
  if (!qword_27DEF75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF75F0);
  }

  return result;
}

uint64_t sub_23823C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278AA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23823C6C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278AA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23823C778(uint64_t a1)
{
  result = sub_238278AA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23823C8EC()
{
  result = qword_27DEF7608;
  if (!qword_27DEF7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7608);
  }

  return result;
}

unint64_t sub_23823C944()
{
  result = qword_27DEF7610;
  if (!qword_27DEF7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7610);
  }

  return result;
}

unint64_t sub_23823C99C()
{
  result = qword_27DEF7618;
  if (!qword_27DEF7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7618);
  }

  return result;
}

unint64_t sub_23823C9F4()
{
  result = qword_27DEF7620;
  if (!qword_27DEF7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7620);
  }

  return result;
}

unint64_t sub_23823CA4C()
{
  result = qword_27DEF7628;
  if (!qword_27DEF7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7628);
  }

  return result;
}

unint64_t sub_23823CAA4()
{
  result = qword_27DEF7630;
  if (!qword_27DEF7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7630);
  }

  return result;
}

unint64_t sub_23823CAFC()
{
  result = qword_27DEF7638;
  if (!qword_27DEF7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7638);
  }

  return result;
}

unint64_t sub_23823CB54()
{
  result = qword_27DEF7640;
  if (!qword_27DEF7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7640);
  }

  return result;
}

unint64_t sub_23823CBAC()
{
  result = qword_27DEF7648;
  if (!qword_27DEF7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7648);
  }

  return result;
}

unint64_t sub_23823CC04()
{
  result = qword_27DEF7650;
  if (!qword_27DEF7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7650);
  }

  return result;
}

unint64_t sub_23823CC5C()
{
  result = qword_27DEF7658;
  if (!qword_27DEF7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7658);
  }

  return result;
}

unint64_t sub_23823CCB4()
{
  result = qword_27DEF7660;
  if (!qword_27DEF7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7660);
  }

  return result;
}

unint64_t sub_23823CD0C()
{
  result = qword_27DEF7668;
  if (!qword_27DEF7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7668);
  }

  return result;
}

unint64_t sub_23823CD64()
{
  result = qword_27DEF7670;
  if (!qword_27DEF7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7670);
  }

  return result;
}

unint64_t sub_23823CDBC()
{
  result = qword_27DEF7678;
  if (!qword_27DEF7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7678);
  }

  return result;
}

unint64_t sub_23823CE14()
{
  result = qword_27DEF7680;
  if (!qword_27DEF7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7680);
  }

  return result;
}

unint64_t sub_23823CE6C()
{
  result = qword_27DEF7688;
  if (!qword_27DEF7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7688);
  }

  return result;
}

unint64_t sub_23823CEC4()
{
  result = qword_27DEF7690;
  if (!qword_27DEF7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7690);
  }

  return result;
}

unint64_t sub_23823CF1C()
{
  result = qword_27DEF7698;
  if (!qword_27DEF7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7698);
  }

  return result;
}

unint64_t sub_23823CF74()
{
  result = qword_27DEF76A0;
  if (!qword_27DEF76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76A0);
  }

  return result;
}

unint64_t sub_23823CFCC()
{
  result = qword_27DEF76A8;
  if (!qword_27DEF76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76A8);
  }

  return result;
}

unint64_t sub_23823D024()
{
  result = qword_27DEF76B0;
  if (!qword_27DEF76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76B0);
  }

  return result;
}

unint64_t sub_23823D07C()
{
  result = qword_27DEF76B8;
  if (!qword_27DEF76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF76B8);
  }

  return result;
}

uint64_t sub_23823D0D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C72756F68 && a2 == 0xE600000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696164 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C72616579 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_23823D270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616C756E617267 && a2 == 0xEB00000000797469 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726944776F6C66 && a2 == 0xED00006E6F697463 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ElectricityInsightRecord.range.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278AA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricityInsightRecord.totalRuntime.setter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + *(a4 + 40);
  *v5 = result;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3 & 1;
  return result;
}

uint64_t ElectricityInsightRecord.dataByGridCleanliness.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 44);
  type metadata accessor for ElectricityInsightRecord.GridCleanliness(255, *(a1 + 16), *(a1 + 24), a3);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t ElectricityInsightRecord.dataByGridCleanliness.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 44);
  type metadata accessor for ElectricityInsightRecord.GridCleanliness(255, *(a2 + 16), *(a2 + 24), a4);
  v7 = sub_238279300();
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t ElectricityInsightRecord.dataByTariffPeak.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 48);
  type metadata accessor for ElectricityInsightRecord.TariffPeak(255, *(a1 + 16), *(a1 + 24), a3);
  v6 = sub_238279300();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t ElectricityInsightRecord.dataByTariffPeak.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 48);
  type metadata accessor for ElectricityInsightRecord.TariffPeak(255, *(a2 + 16), *(a2 + 24), a4);
  v7 = sub_238279300();
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t sub_23823D83C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23823D8D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ElectricityInsightRecord.GridCleanliness.init(cleaner:lessClean:avoid:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(*(a5 - 8) + 56);
  v12(a7, 1, 1, a5);
  v14 = type metadata accessor for ElectricityInsightRecord.GridCleanliness(0, a5, a6, v13);
  v15 = v14[9];
  v12(a7 + v15, 1, 1, a5);
  v16 = v14[10];
  v12(a7 + v16, 1, 1, a5);
  v17 = v14[11];
  v12(a7 + v17, 1, 1, a5);
  v18 = sub_238279300();
  v22 = *(*(v18 - 8) + 40);
  (v22)((v18 - 8), a7, a1, v18);
  v22(a7 + v15, a2, v18);
  v22(a7 + v16, a3, v18);

  return (v22)(a7 + v17, a4, v18);
}

uint64_t sub_23823DCB4@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_238279300();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_23823DD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_238279300();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_23823DDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23823DE30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23823DED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23823DF4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23823DFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23823E068(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ElectricityInsightRecord.TariffPeak.criticalPeak.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ElectricityInsightRecord.TariffPeak.criticalPeak.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ElectricityInsightRecord.TariffPeak.unknown.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ElectricityInsightRecord.TariffPeak.unknown.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_238279300();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ElectricityInsightRecord.TariffPeak.init(superOffPeak:offPeak:partialPeak:onPeak:criticalPeak:unknown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *(*(a7 - 8) + 56);
  v13(a9, 1, 1, a7);
  v15 = type metadata accessor for ElectricityInsightRecord.TariffPeak(0, a7, a8, v14);
  v16 = v15[9];
  v13(a9 + v16, 1, 1, a7);
  v17 = v15[10];
  v13(a9 + v17, 1, 1, a7);
  v18 = v15[11];
  v13(a9 + v18, 1, 1, a7);
  v19 = v15[12];
  v13(a9 + v19, 1, 1, a7);
  v20 = v15[13];
  v13(a9 + v20, 1, 1, a7);
  v21 = sub_238279300();
  v28 = *(*(v21 - 8) + 40);
  (v28)((v21 - 8), a9, a1, v21);
  v28(a9 + v16, a2, v21);
  v28(a9 + v17, a3, v21);
  v28(a9 + v18, a4, v21);
  v28(a9 + v19, a5, v21);

  return (v28)(a9 + v20, a6, v21);
}

uint64_t ElectricityInsightRecord.init(range:totalEnergy:totalRuntime:byGridCleanliness:byTariffPeak:lowTemperature:highTemperature:avgTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = type metadata accessor for ElectricityInsightRecord(0, a12, a13, a4);
  v15 = v14[9];
  v35 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = v14[11];
  v34 = v17;
  v18 = a9 + v14[10];
  v20 = type metadata accessor for ElectricityInsightRecord.GridCleanliness(0, a12, a13, v19);
  (*(*(v20 - 8) + 56))(a9 + v17, 1, 1, v20);
  v21 = v14[12];
  v33 = v21;
  v23 = type metadata accessor for ElectricityInsightRecord.TariffPeak(0, a12, a13, v22);
  (*(*(v23 - 8) + 56))(a9 + v21, 1, 1, v23);
  v24 = v14[13];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v26 = *(*(v25 - 8) + 56);
  v26(a9 + v24, 1, 1, v25);
  v27 = v14[14];
  v26(a9 + v27, 1, 1, v25);
  v28 = v14[15];
  v26(a9 + v28, 1, 1, v25);
  v29 = sub_238278AA0();
  (*(*(v29 - 8) + 32))(a9, a1, v29);
  sub_23823D8D4(a2, a9 + v35, &qword_27DEF76C0, &qword_23827EFA0);
  *v18 = a3;
  *(v18 + 8) = a4;
  *(v18 + 16) = a5 & 1;
  v30 = sub_238279300();
  (*(*(v30 - 8) + 40))(a9 + v34, a6, v30);
  v31 = sub_238279300();
  (*(*(v31 - 8) + 40))(a9 + v33, a7, v31);
  sub_23823D8D4(a8, a9 + v24, &qword_27DEF76C8, &unk_23827EFA8);
  sub_23823D8D4(a10, a9 + v27, &qword_27DEF76C8, &unk_23827EFA8);
  return sub_23823D8D4(a11, a9 + v28, &qword_27DEF76C8, &unk_23827EFA8);
}

void sub_23823E8D4(uint64_t a1)
{
  sub_238278AA0();
  if (v2 <= 0x3F)
  {
    sub_23823F50C(319, &qword_27DEF7758, &qword_27DEF68E8, &qword_23827A320);
    if (v3 <= 0x3F)
    {
      sub_23823F4BC();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 24);
        type metadata accessor for ElectricityInsightRecord.GridCleanliness(255, v6, v7, v4);
        sub_238279300();
        if (v9 <= 0x3F)
        {
          type metadata accessor for ElectricityInsightRecord.TariffPeak(255, v6, v7, v8);
          sub_238279300();
          if (v10 <= 0x3F)
          {
            sub_23823F50C(319, qword_27DEF7768, qword_27DEF76D0, &qword_23827EFB8);
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23823EA24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_238278AA0();
  v59 = *(v4 - 8);
  v55 = v4;
  v5 = *(v59 + 84);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v58 = *(v6 - 8);
  v7 = *(v58 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v56 = v5;
  v54 = v8;
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v52 = *(a3 + 16);
  v53 = v6;
  v10 = *(v52 - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v13 - 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v16 = *(v10 + 64);
  if (!v12)
  {
    ++v16;
  }

  if (v12 >= 2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v10 + 80);
  v19 = v16 + v18;
  v20 = (v16 + v18 + ((v16 + v18 + ((v16 + v18) & ~v18)) & ~v18)) & ~v18;
  v21 = v20 + v16;
  if (v12 >= 2)
  {
    v22 = v20 + v16;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (v12 >= 2)
  {
    v23 = v16;
  }

  else
  {
    v23 = v16 + 1;
  }

  v24 = *(v15 - 8);
  if (v17 <= v9)
  {
    v25 = v9;
  }

  else
  {
    v25 = v17;
  }

  v26 = *(v15 - 8);
  v27 = *(v24 + 84);
  v28 = v27 - 1;
  if (!v27)
  {
    v28 = 0;
  }

  if (v28 > v25)
  {
    v25 = v28;
  }

  if (v7)
  {
    v29 = *(v58 + 64);
  }

  else
  {
    v29 = *(v58 + 64) + 1;
  }

  v30 = *(v58 + 80);
  v31 = *(v24 + 80);
  v32 = *(v24 + 64);
  if (v27)
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v34 = *(v59 + 64) + v30;
  v35 = v29 + 7;
  v36 = v18 + 17;
  v37 = v23 + ((v19 + ((v21 + v18) & ~v18)) & ~v18);
  if (a2 <= v25)
  {
LABEL_56:
    if (v56 == v25)
    {
      v45 = *(v59 + 48);

      return v45(a1, v56, v55);
    }

    v47 = (a1 + v34) & ~v30;
    if (v54 == v25)
    {
      v48 = (*(v58 + 48))(v47, v7, v53);
      goto LABEL_67;
    }

    v49 = (v36 + ((v35 + v47) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
    if (v17 != v25)
    {
      v48 = (*(v26 + 48))((((v49 + v18 + v22) & ~v18) + v31 + v37) & ~v31);
LABEL_67:
      if (v48 >= 2)
      {
        return v48 - 1;
      }

      else
      {
        return 0;
      }
    }

    if (v12 >= 2)
    {
      v50 = (*(v11 + 48))(v49, v12, v52);
      v51 = v50 >= 2;
      result = v50 - 2;
      if (result != 0 && v51)
      {
        return result;
      }
    }

    return 0;
  }

  v38 = ((v33 + v31 + ((v33 + v31 + ((v37 + v31 + ((v22 + v18 + ((v36 + ((v35 + (v34 & ~v30)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v18)) & ~v31)) & ~v31)) & ~v31) + v33;
  v39 = 8 * v38;
  if (v38 <= 3)
  {
    v41 = ((a2 - v25 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (!v40)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 > 0xFF)
    {
      v40 = *(a1 + v38);
      if (!*(a1 + v38))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v41 < 2)
    {
LABEL_55:
      if (!v25)
      {
        return 0;
      }

      goto LABEL_56;
    }
  }

  v40 = *(a1 + v38);
  if (!*(a1 + v38))
  {
    goto LABEL_55;
  }

LABEL_42:
  v42 = (v40 - 1) << v39;
  if (v38 > 3)
  {
    v42 = 0;
  }

  if (v38)
  {
    if (v38 <= 3)
    {
      v43 = v38;
    }

    else
    {
      v43 = 4;
    }

    if (v43 > 2)
    {
      if (v43 == 3)
      {
        v44 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v44 = *a1;
      }
    }

    else if (v43 == 1)
    {
      v44 = *a1;
    }

    else
    {
      v44 = *a1;
    }
  }

  else
  {
    v44 = 0;
  }

  return v25 + (v44 | v42) + 1;
}

void sub_23823EEAC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = sub_238278AA0();
  v6 = *(v5 - 8);
  v65 = v6;
  v66 = v5;
  v7 = *(v6 + 84);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v8 = *(v63 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v67 = v7;
  v64 = v10;
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v61 = *(a4 + 16);
  v12 = *(v61 - 8);
  v71 = v12;
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v62 = v14;
  v15 = v14 - 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v17 = v12;
  v18 = 0;
  v19 = *(v17 + 64);
  if (!v13)
  {
    ++v19;
  }

  if (v13 >= 2)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v71 + 80);
  v22 = v19 + v21;
  v23 = (v19 + v21 + ((v19 + v21 + ((v19 + v21) & ~v21)) & ~v21)) & ~v21;
  v24 = v23 + v19;
  if (v13 >= 2)
  {
    v25 = v23 + v19;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (v13 >= 2)
  {
    v26 = v19;
  }

  else
  {
    v26 = v19 + 1;
  }

  v27 = *(v16 - 8);
  if (v20 <= v11)
  {
    v28 = v11;
  }

  else
  {
    v28 = v20;
  }

  v29 = *(v16 - 8);
  v30 = *(v27 + 84);
  v31 = *(v6 + 64);
  v32 = *(v8 + 80);
  v33 = *(v27 + 80);
  v34 = *(v27 + 64);
  v35 = v30 - 1;
  if (!v30)
  {
    v35 = 0;
  }

  if (v35 > v28)
  {
    v28 = v35;
  }

  if (v9)
  {
    v36 = *(v8 + 64);
  }

  else
  {
    v36 = *(v8 + 64) + 1;
  }

  v37 = v31 + v32;
  v38 = v36 + 7;
  v39 = (v38 + ((v31 + v32) & ~v32)) & 0xFFFFFFFFFFFFFFF8;
  v40 = v22 + ((v24 + v21) & ~v21);
  v41 = v21 + 17;
  v42 = (v25 + v21 + ((v21 + 17 + v39) & ~v21)) & ~v21;
  v43 = v26 + (v40 & ~v21);
  if (!v30)
  {
    ++v34;
  }

  v44 = ((v34 + v33 + ((v34 + v33 + ((v43 + v33 + v42) & ~v33)) & ~v33)) & ~v33) + v34;
  if (a3 > v28)
  {
    if (v44 <= 3)
    {
      v45 = ((a3 - v28 + ~(-1 << (8 * v44))) >> (8 * v44)) + 1;
      if (HIWORD(v45))
      {
        v18 = 4;
      }

      else
      {
        if (v45 < 0x100)
        {
          v46 = 1;
        }

        else
        {
          v46 = 2;
        }

        if (v45 >= 2)
        {
          v18 = v46;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  if (v28 < a2)
  {
    v47 = ~v28 + a2;
    if (v44 >= 4)
    {
      bzero(a1, v44);
      *a1 = v47;
      v48 = 1;
      if (v18 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_83;
    }

    v48 = (v47 >> (8 * v44)) + 1;
    if (v44)
    {
      v50 = v47 & ~(-1 << (8 * v44));
      bzero(a1, v44);
      if (v44 != 3)
      {
        if (v44 == 2)
        {
          *a1 = v50;
          if (v18 > 1)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *a1 = v47;
          if (v18 > 1)
          {
LABEL_45:
            if (v18 == 2)
            {
              *&a1[v44] = v48;
            }

            else
            {
              *&a1[v44] = v48;
            }

            return;
          }
        }

LABEL_83:
        if (v18)
        {
          a1[v44] = v48;
        }

        return;
      }

      *a1 = v50;
      a1[2] = BYTE2(v50);
    }

    if (v18 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_83;
  }

  v49 = a1;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v44] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_59;
    }

    *&a1[v44] = 0;
  }

  else if (v18)
  {
    a1[v44] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_59;
  }

  if (!a2)
  {
    return;
  }

LABEL_59:
  if (v67 == v28)
  {
    v51 = v66;
    v52 = *(v65 + 56);
    v53 = a2;
    v54 = v67;
LABEL_63:

    v52(v49, v53, v54, v51);
    return;
  }

  v49 = (&a1[v37] & ~v32);
  if (v64 == v28)
  {
    v52 = *(v8 + 56);
    v53 = a2 + 1;
    v54 = v9;
    v51 = v63;
    goto LABEL_63;
  }

  v55 = ((v41 + (&v49[v38] & 0xFFFFFFFFFFFFFFF8)) & ~v21);
  if (v20 == v28)
  {
    if (a2 + 1 <= v62)
    {
      if (a2 == -1 || v13 < 2)
      {
        return;
      }

      v52 = *(v71 + 56);
      v53 = a2 + 2;
      v49 = ((v41 + (&v49[v38] & 0xFFFFFFFFFFFFFFF8)) & ~v21);
      v54 = v13;
      v51 = v61;
      goto LABEL_63;
    }

    if (v24 <= 3)
    {
      v56 = ~(-1 << (8 * v24));
    }

    else
    {
      v56 = -1;
    }

    if (!v24)
    {
      return;
    }

    v57 = v56 & (a2 - v62);
    if (v24 <= 3)
    {
      v58 = v24;
    }

    else
    {
      v58 = 4;
    }

    bzero(v55, v24);
    if (v58 <= 2)
    {
      if (v58 == 1)
      {
LABEL_80:
        *v55 = v57;
        return;
      }

LABEL_98:
      *v55 = v57;
      return;
    }

    goto LABEL_105;
  }

  v55 = (((&v55[v21 + v25] & ~v21) + v33 + v43) & ~v33);
  if (v35 < a2)
  {
    if (v34 <= 3)
    {
      v59 = ~(-1 << (8 * v34));
    }

    else
    {
      v59 = -1;
    }

    if (!v34)
    {
      return;
    }

    v57 = v59 & (~v35 + a2);
    if (v34 <= 3)
    {
      v58 = v34;
    }

    else
    {
      v58 = 4;
    }

    bzero(v55, v34);
    if (v58 <= 2)
    {
      if (v58 == 1)
      {
        goto LABEL_80;
      }

      goto LABEL_98;
    }

LABEL_105:
    if (v58 == 3)
    {
      *v55 = v57;
      v55[2] = BYTE2(v57);
    }

    else
    {
      *v55 = v57;
    }

    return;
  }

  v60 = *(v29 + 56);

  v60(v55, a2 + 1);
}

void sub_23823F4BC()
{
  if (!qword_27DEF7760)
  {
    v0 = sub_238279300();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEF7760);
    }
  }
}

void sub_23823F50C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_238279300();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23823F568(uint64_t a1)
{
  result = sub_238279300();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23823F5DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
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
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_23823F774(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_23823F9C8(uint64_t a1)
{
  result = sub_238279300();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23823FA44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
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
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_23823FBEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

uint64_t sub_23823FE98()
{
  type metadata accessor for ElectricityInsightService();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27DEF7870 = v0;
  return result;
}

uint64_t static ElectricityInsightService.shared.getter()
{
  if (qword_27DEF68B0 != -1)
  {
    swift_once();
  }
}

uint64_t ElectricityInsightService.energyInsights(forDeviceID:using:atVenue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v8 = sub_238278AA0();
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();
  v9 = sub_238278BC0();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = type metadata accessor for ElectricityInsightQuery(0);
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382400F8, v5, 0);
}

uint64_t sub_2382400F8()
{
  if (sub_238278D20() & 1) == 0 && (v1 = sub_238278D00(), *(v0 + 336) = v1, *(v0 + 40) = v1, v2 = sub_238246B9C(&qword_27DEF7880, MEMORY[0x277D073A0], MEMORY[0x277D07368]), *(v0 + 344) = v2, *(v0 + 48) = v2, boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16)), *(v0 + 472) = *MEMORY[0x277D07378], v4 = *(v1 - 8), v5 = *(v4 + 104), *(v0 + 352) = v5, *(v0 + 360) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000, v5(boxed_opaque_existential_1), v6 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 16)), (v6) && (*(v0 + 80) = v1, *(v0 + 88) = v2, v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 56)), *(v0 + 476) = *MEMORY[0x277D07388], v5(v7), v8 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 56)), (v8))
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    sub_23823C2E0(*(v0 + 216), v10);
    *(v10 + *(v9 + 32)) = 0;
    if (qword_27DEF68B8 != -1)
    {
      swift_once();
    }

    v11 = qword_27DF03158;
    *(v0 + 368) = qword_27DF03158;
    sub_238278BB0();
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_238278FF0();
    v14 = [v12 initWithServiceName_];
    *(v0 + 376) = v14;

    v15 = [objc_opt_self() interfaceWithProtocol_];
    [v14 setRemoteObjectInterface_];

    [v14 resume];

    return MEMORY[0x2822009F8](sub_238240410, v11, 0);
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v16 = 6;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_238240410()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 472);
  v13 = *(v0 + 336);
  *(v0 + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v1(boxed_opaque_existential_1, v2, v13);
  LOBYTE(v2) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if (v2 & 1) != 0 && (v4 = *(v0 + 476), v5 = *(v0 + 352), v14 = *(v0 + 336), *(v0 + 160) = v14, v6 = __swift_allocate_boxed_opaque_existential_1((v0 + 136)), v5(v6, v4, v14), LOBYTE(v4) = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 136)), (v4))
  {
    v7 = swift_task_alloc();
    *(v0 + 384) = v7;
    *v7 = v0;
    v7[1] = sub_2382405C4;

    return sub_2382592C4();
  }

  else
  {
    v9 = *(v0 + 376);
    sub_238241158();
    v10 = swift_allocError();
    *v11 = 6;
    swift_willThrow();

    *(v0 + 464) = v10;
    v12 = *(v0 + 232);
    (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

    return MEMORY[0x2822009F8](sub_23824104C, v12, 0);
  }
}

uint64_t sub_2382405C4()
{
  v2 = *v1;

  if (v0)
  {

    *(v2 + 464) = v0;
    v3 = *(v2 + 232);
    (*(*(v2 + 296) + 8))(*(v2 + 312), *(v2 + 288));
    v4 = sub_23824104C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 368);
    v4 = sub_238240714;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_238240714()
{
  receiver = v0[20].receiver;
  super_class = v0[20].super_class;
  v3 = v0[18].super_class;
  v4 = v0[19].receiver;
  v20 = v4;
  v5 = v0[17].super_class;
  v6 = v0[18].receiver;
  v7 = v0[16].super_class;
  v25 = v0[17].receiver;
  v18 = v0[14].receiver;
  v23 = v0[12].super_class;
  v24 = v0[13].receiver;
  v8 = v25[2];
  v8(v5, super_class, v7);
  v19 = *(super_class + receiver[5]);
  v22 = *(super_class + receiver[6]);
  v21 = *(super_class + receiver[7]);
  v9 = *(v3 + 2);
  v9(v4, v18, v6);
  Request = type metadata accessor for InsightQueryRequest(0);
  v11 = objc_allocWithZone(Request);
  v8(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v5, v7);
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v19;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = 0;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v22;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v21;
  v9(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v20, v6);
  v12 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v12 = v23;
  v12[1] = v24;
  v13 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v13 = 0;
  v13[8] = 1;
  v0[11].receiver = v11;
  v0[11].super_class = Request;

  v0[24].super_class = objc_msgSendSuper2(v0 + 11, sel_init);
  v14 = *(v3 + 1);
  v0[25].receiver = v14;
  v0[25].super_class = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v14(v20, v6);
  (v25[1])(v5, v7);
  v15 = swift_task_alloc();
  v0[26].receiver = v15;
  *v15 = v0;
  v15[1] = sub_23824099C;
  v16 = v0[19].super_class;

  return sub_238256AFC(v16);
}

uint64_t sub_23824099C()
{
  v2 = *v1;
  v2[53] = v0;

  if (v0)
  {
    v3 = v2[46];

    return MEMORY[0x2822009F8](sub_238240FB8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v2;
    v4[1] = sub_238240B0C;
    v5 = v2[47];

    return sub_238258C58(v5);
  }
}

uint64_t sub_238240B0C(uint64_t a1)
{
  v4 = *v2;
  v4[55] = v1;

  v5 = v4[46];
  if (v1)
  {
    v6 = sub_238240E74;
  }

  else
  {
    v4[56] = a1;
    v6 = sub_238240C48;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238240C48()
{
  v1 = v0[56];
  v13 = v0[50];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[39];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v11 = v0[36];
  v12 = v0[29];
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = sub_2382599B4;
  v9[5] = 0;
  v9[6] = &unk_23827F100;
  v9[7] = 0;
  v9[8] = v3;
  v9[9] = v1;
  v9[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_238279210();

  swift_unknownObjectRelease();

  v13(v5, v11);

  return MEMORY[0x2822009F8](sub_238240DC8, v12, 0);
}

uint64_t sub_238240DC8()
{
  sub_23823C344(*(v0 + 328));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238240E74()
{
  v1 = *(*(v0 + 368) + 112);
  *(v0 + 456) = v1;
  return MEMORY[0x2822009F8](sub_238240E98, v1, 0);
}

uint64_t sub_238240E98()
{
  v1 = *(v0 + 368);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_238240F04, v1, 0);
}

uint64_t sub_238240F04()
{
  v1 = v0[49];
  v2 = v0[47];
  [v2 invalidate];
  swift_willThrow();

  v0[58] = v0[55];
  v3 = v0[29];
  (*(v0[37] + 8))(v0[39], v0[36]);

  return MEMORY[0x2822009F8](sub_23824104C, v3, 0);
}

uint64_t sub_238240FB8()
{
  v1 = *(v0 + 392);

  *(v0 + 464) = *(v0 + 424);
  v2 = *(v0 + 232);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

  return MEMORY[0x2822009F8](sub_23824104C, v2, 0);
}

uint64_t sub_23824104C()
{
  sub_23823C344(*(v0 + 328));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_238241158()
{
  result = qword_27DEF7888;
  if (!qword_27DEF7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7888);
  }

  return result;
}

uint64_t ElectricityInsightService.runtimeInsights(forDeviceID:using:atVenue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7898, &qword_23827F118);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v8 = sub_238278AA0();
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();
  v9 = sub_238278BC0();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = type metadata accessor for ElectricityInsightQuery(0);
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238241374, v5, 0);
}

uint64_t sub_238241374()
{
  if (sub_238278D20() & 1) == 0 && (v1 = sub_238278D00(), *(v0 + 336) = v1, *(v0 + 40) = v1, v2 = sub_238246B9C(&qword_27DEF7880, MEMORY[0x277D073A0], MEMORY[0x277D07368]), *(v0 + 344) = v2, *(v0 + 48) = v2, boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16)), *(v0 + 472) = *MEMORY[0x277D07378], v4 = *(v1 - 8), v5 = *(v4 + 104), *(v0 + 352) = v5, *(v0 + 360) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000, v5(boxed_opaque_existential_1), v6 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 16)), (v6) && (*(v0 + 80) = v1, *(v0 + 88) = v2, v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 56)), *(v0 + 476) = *MEMORY[0x277D07388], v5(v7), v8 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 56)), (v8))
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    sub_23823C2E0(*(v0 + 216), v10);
    *(v10 + *(v9 + 32)) = 1;
    if (qword_27DEF68B8 != -1)
    {
      swift_once();
    }

    v11 = qword_27DF03158;
    *(v0 + 368) = qword_27DF03158;
    sub_238278BB0();
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_238278FF0();
    v14 = [v12 initWithServiceName_];
    *(v0 + 376) = v14;

    v15 = [objc_opt_self() interfaceWithProtocol_];
    [v14 setRemoteObjectInterface_];

    [v14 resume];

    return MEMORY[0x2822009F8](sub_238241690, v11, 0);
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v16 = 6;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_238241690()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 472);
  v13 = *(v0 + 336);
  *(v0 + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v1(boxed_opaque_existential_1, v2, v13);
  LOBYTE(v2) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if (v2 & 1) != 0 && (v4 = *(v0 + 476), v5 = *(v0 + 352), v14 = *(v0 + 336), *(v0 + 160) = v14, v6 = __swift_allocate_boxed_opaque_existential_1((v0 + 136)), v5(v6, v4, v14), LOBYTE(v4) = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 136)), (v4))
  {
    v7 = swift_task_alloc();
    *(v0 + 384) = v7;
    *v7 = v0;
    v7[1] = sub_238241844;

    return sub_2382592C4();
  }

  else
  {
    v9 = *(v0 + 376);
    sub_238241158();
    v10 = swift_allocError();
    *v11 = 6;
    swift_willThrow();

    *(v0 + 464) = v10;
    v12 = *(v0 + 232);
    (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

    return MEMORY[0x2822009F8](sub_238247644, v12, 0);
  }
}

uint64_t sub_238241844()
{
  v2 = *v1;

  if (v0)
  {

    *(v2 + 464) = v0;
    v3 = *(v2 + 232);
    (*(*(v2 + 296) + 8))(*(v2 + 312), *(v2 + 288));
    v4 = sub_238247644;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 368);
    v4 = sub_238241994;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_238241994()
{
  receiver = v0[20].receiver;
  super_class = v0[20].super_class;
  v3 = v0[18].super_class;
  v4 = v0[19].receiver;
  v20 = v4;
  v5 = v0[17].super_class;
  v6 = v0[18].receiver;
  v7 = v0[16].super_class;
  v25 = v0[17].receiver;
  v18 = v0[14].receiver;
  v24 = v0[13].receiver;
  v23 = v0[12].super_class;
  v8 = v25[2];
  v8(v5, super_class, v7);
  v19 = *(super_class + receiver[5]);
  v21 = *(super_class + receiver[6]);
  v22 = *(super_class + receiver[7]);
  v9 = *(v3 + 2);
  v9(v4, v18, v6);
  Request = type metadata accessor for InsightQueryRequest(0);
  v11 = objc_allocWithZone(Request);
  v8(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v5, v7);
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v19;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = 1;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v21;
  *&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v22;
  v9(&v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v20, v6);
  v12 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v12 = v23;
  v12[1] = v24;
  v13 = &v11[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v13 = 0;
  v13[8] = 1;
  v0[11].receiver = v11;
  v0[11].super_class = Request;

  v0[24].super_class = objc_msgSendSuper2(v0 + 11, sel_init);
  v14 = *(v3 + 1);
  v0[25].receiver = v14;
  v0[25].super_class = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v14(v20, v6);
  (v25[1])(v5, v7);
  v15 = swift_task_alloc();
  v0[26].receiver = v15;
  *v15 = v0;
  v15[1] = sub_238241C24;
  v16 = v0[19].super_class;

  return sub_238256AFC(v16);
}

uint64_t sub_238241C24()
{
  v2 = *v1;
  v2[53] = v0;

  if (v0)
  {
    v3 = v2[46];

    return MEMORY[0x2822009F8](sub_238242194, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[54] = v4;
    *v4 = v2;
    v4[1] = sub_238241D94;
    v5 = v2[47];

    return sub_238258C58(v5);
  }
}

uint64_t sub_238241D94(uint64_t a1)
{
  v4 = *v2;
  v4[55] = v1;

  v5 = v4[46];
  if (v1)
  {
    v6 = sub_238242050;
  }

  else
  {
    v4[56] = a1;
    v6 = sub_238241ED0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238241ED0()
{
  v1 = v0[56];
  v13 = v0[50];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[39];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v11 = v0[36];
  v12 = v0[29];
  v9 = swift_task_alloc();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = sub_2382597F0;
  v9[5] = 0;
  v9[6] = &unk_23827F120;
  v9[7] = 0;
  v9[8] = v3;
  v9[9] = v1;
  v9[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_238279210();

  swift_unknownObjectRelease();

  v13(v5, v11);

  return MEMORY[0x2822009F8](sub_238247678, v12, 0);
}

uint64_t sub_238242050()
{
  v1 = *(*(v0 + 368) + 112);
  *(v0 + 456) = v1;
  return MEMORY[0x2822009F8](sub_238242074, v1, 0);
}

uint64_t sub_238242074()
{
  v1 = *(v0 + 368);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_2382420E0, v1, 0);
}

uint64_t sub_2382420E0()
{
  v1 = v0[49];
  v2 = v0[47];
  [v2 invalidate];
  swift_willThrow();

  v0[58] = v0[55];
  v3 = v0[29];
  (*(v0[37] + 8))(v0[39], v0[36]);

  return MEMORY[0x2822009F8](sub_238247644, v3, 0);
}

uint64_t sub_238242194()
{
  v1 = *(v0 + 392);

  *(v0 + 464) = *(v0 + 424);
  v2 = *(v0 + 232);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));

  return MEMORY[0x2822009F8](sub_238247644, v2, 0);
}

uint64_t ElectricityInsightService.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_238242290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v58 = a7;
  v59 = a8;
  v54 = a4;
  v55 = a5;
  v49 = a2;
  v56 = a10;
  v57 = a6;
  v53 = a9;
  v60 = a14;
  v51 = a1;
  v52 = a13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
  v47 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - v17;
  v48 = &v44 - v17;
  v19 = sub_238278BC0();
  v45 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v46 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  v50 = &v44 - v23;
  v25 = sub_2382791A0();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v20 + 16))(&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v19);
  v44 = v16;
  (*(v16 + 16))(v18, v51, v15);
  v26 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v27 = (v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v16 + 80) + v31 + 8) & ~*(v16 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v49;
  (*(v20 + 32))(&v33[v26], v46, v45);
  v34 = &v33[v27];
  v35 = v55;
  *v34 = v54;
  v34[1] = v35;
  v36 = &v33[v28];
  v37 = v58;
  *v36 = v57;
  v36[1] = v37;
  v38 = v59;
  *&v33[v29] = v59;
  *&v33[v30] = v53;
  v39 = v56;
  *&v33[v31] = v56;
  (*(v44 + 32))(&v33[v32], v48, v47);

  v40 = v38;
  swift_unknownObjectRetain();
  v41 = v39;
  v42 = v50;
  sub_23824B564(0, 0, v50, v60, v33);

  return sub_238246914(v42);
}

uint64_t sub_2382425F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v21;
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E8, &qword_23827F220);
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 - 8);
  *(v8 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F0, &qword_23827F228);
  *(v8 + 304) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F8, &qword_23827F230);
  *(v8 + 312) = v12;
  *(v8 + 320) = *(v12 - 8);
  *(v8 + 328) = swift_task_alloc();
  v13 = sub_238278B10();
  *(v8 + 336) = v13;
  *(v8 + 344) = *(v13 - 8);
  *(v8 + 352) = swift_task_alloc();
  v14 = sub_238278BC0();
  *(v8 + 360) = v14;
  v15 = *(v14 - 8);
  *(v8 + 368) = v15;
  *(v8 + 376) = *(v15 + 64);
  *(v8 + 384) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7900, &qword_23827F238);
  *(v8 + 392) = v16;
  *(v8 + 400) = *(v16 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238242910, a4, 0);
}

uint64_t sub_238242910()
{
  v0[52] = sub_23824C004(v0[23], v0[24], v0[25]);
  v0[53] = v1;

  return MEMORY[0x2822009F8](sub_238242980, 0, 0);
}

uint64_t sub_238242980()
{
  v1 = v0[26];
  v2 = *(v0[53] + qword_27DEF79F0);
  v0[54] = v2;
  v3 = v2;
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_238242A9C;
  v5 = v0[51];

  return v7(v5, v3);
}

uint64_t sub_238242A9C()
{
  v1 = *(*v0 + 432);

  return MEMORY[0x2822009F8](sub_238242BB0, 0, 0);
}

uint64_t sub_238242BB0()
{
  v1 = v0[53];
  v19 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v20 = v0[22];
  v21 = v0[28];
  v17 = *(v4 + 16);
  v18 = v0[23];
  v14 = v5;
  v17(v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v16 = *(v4 + 32);
  v16(v7 + v15, v3, v5);
  *(v7 + v6) = v1;
  v0[6] = sub_2382471C4;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238250868;
  v0[5] = &block_descriptor_44;
  v8 = _Block_copy(v0 + 2);
  v9 = v1;

  [v21 setInterruptionHandler_];
  _Block_release(v8);
  (v17)(v3, v18, v14);
  v10 = swift_allocObject();
  v16(v10 + v15, v3, v14);
  *(v10 + v6) = v9;
  v0[12] = sub_238247280;
  v0[13] = v10;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238250868;
  v0[11] = &block_descriptor_50;
  v11 = _Block_copy(v0 + 8);
  v12 = v9;

  [v21 setInvalidationHandler_];
  _Block_release(v11);
  v0[56] = [v19 endpoint];

  return MEMORY[0x2822009F8](sub_238242E68, v20, 0);
}

uint64_t sub_238242E68()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 456) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_238242FB8;

  return sub_23825F914(v3);
}

uint64_t sub_238242FB8()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2382430E0, v2, 0);
}

uint64_t sub_2382430E0()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v34 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    super_class = v0[21].super_class;
    v4 = *(super_class + 2);
    super_class = (super_class + 16);
    v31 = v4;
    v5 = v1 + ((*(super_class + 64) + 32) & ~*(super_class + 64));
    v6 = *MEMORY[0x277D861C0];
    v29 = *(super_class + 7);
    v27 = (super_class - 8);
    v28 = (super_class + 16);
    v7 = MEMORY[0x277D84F90];
    v30 = *MEMORY[0x277D861C0];
    while (1)
    {
      v32 = v7;
      v33 = v2;
      v31(v0[22].receiver, v5, v0[21].receiver);
      type metadata accessor for SandboxExtension.Context();
      v8 = swift_allocObject();
      v8[2] = j__sandbox_extension_consume;
      v8[3] = 0;
      v8[4] = j__sandbox_extension_release;
      v8[5] = 0;
      v8[6] = j__sandbox_extension_issue_file;
      v8[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v9 = swift_allocObject();
      *(v9 + 40) = 0;
      *(v9 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v12 = v9;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v13 = sandbox_extension_issue_file();

      receiver = v0[22].receiver;
      v15 = v0[21].receiver;
      if (v13)
      {
        *(v12 + 3) = sub_238279050();
        *(v12 + 4) = v16;
        free(v13);
        (*v28)(&v12[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], receiver, v15);
        *(v12 + 2) = v8;

        MEMORY[0x2383ECFB0](v17);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v34;
      }

      else
      {

        (*v27)(receiver, v15);
        swift_deallocPartialClassInstance();
        v7 = v32;
      }

      v6 = v30;
      v5 += v29;
      v2 = v33 - 1;
      if (v33 == 1)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v18 = v0[28].receiver;
    v20 = v0[14].super_class;
    v19 = v0[15].receiver;
    v21 = type metadata accessor for XPCSandboxExtensionContainer();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    v0[10].receiver = v22;
    v0[10].super_class = v21;
    v23 = objc_msgSendSuper2(v0 + 10, sel_init);
    v0[9].receiver = sub_2382599AC;
    v0[9].super_class = 0;
    v0[7].receiver = MEMORY[0x277D85DD0];
    v0[7].super_class = 1107296256;
    v0[8].receiver = sub_238250868;
    v0[8].super_class = &block_descriptor_54;
    v24 = _Block_copy(&v0[7]);
    v25 = v23;
    [(objc_class *)v20 batchedDeviceInsightsWithRequest:v19 endpoint:v18 ekSandboxExtension:v25 completion:v24];

    _Block_release(v24);
    v9 = sub_23824352C;
    v10 = 0;
    v11 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23824352C()
{
  sub_2382791F0();
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_2382435E0;
  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2382435E0()
{

  return MEMORY[0x2822009F8](sub_2382436DC, 0, 0);
}

uint64_t sub_2382436DC()
{
  v1 = v0[38];
  if ((*(v0[33] + 48))(v1, 1, v0[32]) == 1)
  {
    v2 = v0[22];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = *(v2 + 112);
    v0[60] = v3;

    return MEMORY[0x2822009F8](sub_23824387C, v3, 0);
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    sub_2382472A0(v1, v0[34], &qword_27DEF7890, &qword_23827F108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
    sub_2382791C0();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[59] = v7;
    *v7 = v0;
    v7[1] = sub_2382435E0;
    v8 = v0[38];
    v9 = v0[39];

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }
}

uint64_t sub_23824387C()
{
  sub_238257608();

  return MEMORY[0x2822009F8](sub_2382438E4, 0, 0);
}

uint64_t sub_2382438E4()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v6 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  sub_2382791D0();
  [v6 invalidate];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_238243A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v21;
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B8, &qword_23827F1C8);
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 - 8);
  *(v8 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78C0, &qword_23827F1D0);
  *(v8 + 304) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78C8, &qword_23827F1D8);
  *(v8 + 312) = v12;
  *(v8 + 320) = *(v12 - 8);
  *(v8 + 328) = swift_task_alloc();
  v13 = sub_238278B10();
  *(v8 + 336) = v13;
  *(v8 + 344) = *(v13 - 8);
  *(v8 + 352) = swift_task_alloc();
  v14 = sub_238278BC0();
  *(v8 + 360) = v14;
  v15 = *(v14 - 8);
  *(v8 + 368) = v15;
  *(v8 + 376) = *(v15 + 64);
  *(v8 + 384) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78D0, &qword_23827F1E0);
  *(v8 + 392) = v16;
  *(v8 + 400) = *(v16 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238243D28, a4, 0);
}

uint64_t sub_238243D28()
{
  v0[52] = sub_23824C6BC(v0[23], v0[24], v0[25]);
  v0[53] = v1;

  return MEMORY[0x2822009F8](sub_238243D98, 0, 0);
}

uint64_t sub_238243D98()
{
  v1 = v0[26];
  v2 = *(v0[53] + qword_27DEF79F0);
  v0[54] = v2;
  v3 = v2;
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_238243EB4;
  v5 = v0[51];

  return v7(v5, v3);
}

uint64_t sub_238243EB4()
{
  v1 = *(*v0 + 432);

  return MEMORY[0x2822009F8](sub_238243FC8, 0, 0);
}

uint64_t sub_238243FC8()
{
  v1 = v0[53];
  v19 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v20 = v0[22];
  v21 = v0[28];
  v17 = *(v4 + 16);
  v18 = v0[23];
  v14 = v5;
  v17(v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v16 = *(v4 + 32);
  v16(v7 + v15, v3, v5);
  *(v7 + v6) = v1;
  v0[6] = sub_238246980;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238250868;
  v0[5] = &block_descriptor;
  v8 = _Block_copy(v0 + 2);
  v9 = v1;

  [v21 setInterruptionHandler_];
  _Block_release(v8);
  (v17)(v3, v18, v14);
  v10 = swift_allocObject();
  v16(v10 + v15, v3, v14);
  *(v10 + v6) = v9;
  v0[12] = sub_2382469B8;
  v0[13] = v10;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238250868;
  v0[11] = &block_descriptor_20;
  v11 = _Block_copy(v0 + 8);
  v12 = v9;

  [v21 setInvalidationHandler_];
  _Block_release(v11);
  v0[56] = [v19 endpoint];

  return MEMORY[0x2822009F8](sub_238244280, v20, 0);
}

uint64_t sub_238244280()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 456) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_2382443D0;

  return sub_23825F914(v3);
}

uint64_t sub_2382443D0()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2382444F8, v2, 0);
}

uint64_t sub_2382444F8()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v34 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    super_class = v0[21].super_class;
    v4 = *(super_class + 2);
    super_class = (super_class + 16);
    v31 = v4;
    v5 = v1 + ((*(super_class + 64) + 32) & ~*(super_class + 64));
    v6 = *MEMORY[0x277D861C0];
    v29 = *(super_class + 7);
    v27 = (super_class - 8);
    v28 = (super_class + 16);
    v7 = MEMORY[0x277D84F90];
    v30 = *MEMORY[0x277D861C0];
    while (1)
    {
      v32 = v7;
      v33 = v2;
      v31(v0[22].receiver, v5, v0[21].receiver);
      type metadata accessor for SandboxExtension.Context();
      v8 = swift_allocObject();
      v8[2] = j__sandbox_extension_consume;
      v8[3] = 0;
      v8[4] = j__sandbox_extension_release;
      v8[5] = 0;
      v8[6] = j__sandbox_extension_issue_file;
      v8[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v9 = swift_allocObject();
      *(v9 + 40) = 0;
      *(v9 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v12 = v9;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v13 = sandbox_extension_issue_file();

      receiver = v0[22].receiver;
      v15 = v0[21].receiver;
      if (v13)
      {
        *(v12 + 3) = sub_238279050();
        *(v12 + 4) = v16;
        free(v13);
        (*v28)(&v12[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], receiver, v15);
        *(v12 + 2) = v8;

        MEMORY[0x2383ECFB0](v17);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v34;
      }

      else
      {

        (*v27)(receiver, v15);
        swift_deallocPartialClassInstance();
        v7 = v32;
      }

      v6 = v30;
      v5 += v29;
      v2 = v33 - 1;
      if (v33 == 1)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v18 = v0[28].receiver;
    v20 = v0[14].super_class;
    v19 = v0[15].receiver;
    v21 = type metadata accessor for XPCSandboxExtensionContainer();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    v0[10].receiver = v22;
    v0[10].super_class = v21;
    v23 = objc_msgSendSuper2(v0 + 10, sel_init);
    v0[9].receiver = sub_2382599AC;
    v0[9].super_class = 0;
    v0[7].receiver = MEMORY[0x277D85DD0];
    v0[7].super_class = 1107296256;
    v0[8].receiver = sub_238250868;
    v0[8].super_class = &block_descriptor_24;
    v24 = _Block_copy(&v0[7]);
    v25 = v23;
    [(objc_class *)v20 batchedDeviceInsightsWithRequest:v19 endpoint:v18 ekSandboxExtension:v25 completion:v24];

    _Block_release(v24);
    v9 = sub_238244944;
    v10 = 0;
    v11 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}