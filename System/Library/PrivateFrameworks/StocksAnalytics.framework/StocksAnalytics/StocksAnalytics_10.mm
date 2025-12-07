unint64_t sub_22030A160()
{
  result = qword_281263B48;
  if (!qword_281263B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B48);
  }

  return result;
}

uint64_t sub_22030A1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536B7369446E6FLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220391960 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220391980 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002203919A0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002203919C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::VideoAdEngagementData __swiftcall VideoAdEngagementData.init(type:milestone:)(StocksAnalytics::VideoAdEngagementType type, StocksAnalytics::Milestone milestone)
{
  v3 = *milestone;
  *v2 = *type;
  v2[1] = v3;
  result.type = type;
  return result;
}

uint64_t sub_22030A400()
{
  if (*v0)
  {
    return 0x6E6F7473656C696DLL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22030A438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F7473656C696DLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_22030A51C(uint64_t a1)
{
  v2 = sub_22030A740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030A558(uint64_t a1)
{
  v2 = sub_22030A740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementData.encode(to:)(void *a1)
{
  sub_22030AA20(0, &qword_27CF28600, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030A740();
  sub_220370168();
  v16 = v9;
  v15 = 0;
  sub_22030A794();
  sub_22036FFF8();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_22030A7E8();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22030A740()
{
  result = qword_27CF28608;
  if (!qword_27CF28608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28608);
  }

  return result;
}

unint64_t sub_22030A794()
{
  result = qword_27CF28610;
  if (!qword_27CF28610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28610);
  }

  return result;
}

unint64_t sub_22030A7E8()
{
  result = qword_27CF28618;
  if (!qword_27CF28618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28618);
  }

  return result;
}

uint64_t VideoAdEngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22030AA20(0, &qword_27CF28620, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030A740();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    sub_22030AA84();
    sub_22036FF28();
    v10 = v17;
    v14 = 1;
    sub_22030AAD8();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030AA20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030A740();
    v7 = a3(a1, &type metadata for VideoAdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22030AA84()
{
  result = qword_27CF28628;
  if (!qword_27CF28628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28628);
  }

  return result;
}

unint64_t sub_22030AAD8()
{
  result = qword_27CF28630;
  if (!qword_27CF28630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28630);
  }

  return result;
}

unint64_t sub_22030AB30()
{
  result = qword_27CF28638;
  if (!qword_27CF28638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28638);
  }

  return result;
}

unint64_t sub_22030AB88()
{
  result = qword_27CF28640;
  if (!qword_27CF28640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdEngagementData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
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

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
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

_WORD *storeEnumTagSinglePayload for VideoAdEngagementData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
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
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22030AD74()
{
  result = qword_27CF28648;
  if (!qword_27CF28648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28648);
  }

  return result;
}

unint64_t sub_22030ADCC()
{
  result = qword_27CF28650;
  if (!qword_27CF28650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28650);
  }

  return result;
}

unint64_t sub_22030AE24()
{
  result = qword_27CF28658;
  if (!qword_27CF28658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28658);
  }

  return result;
}

uint64_t sub_22030AF40()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812657A8);
  __swift_project_value_buffer(v0, qword_2812657A8);
  return sub_22036F108();
}

uint64_t TelemetryEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22030B02C(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_22030B02C(uint64_t a1)
{
  if (!qword_281266898)
  {
    type metadata accessor for NetworkEventData(255);
    sub_22030B0DC(&qword_2812651C8, &protocol conformance descriptor for NetworkEventData);
    sub_22030B0DC(&qword_2812651D0, &protocol conformance descriptor for NetworkEventData);
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_281266898);
    }
  }
}

uint64_t sub_22030B0DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NetworkEventData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TelemetryEvent.networkEventData.setter(uint64_t a1)
{
  sub_22030B02C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TelemetryEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_22030B02C(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22030B274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002203919E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22030B308(uint64_t a1)
{
  v2 = sub_22030B4F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030B344(uint64_t a1)
{
  v2 = sub_22030B4F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TelemetryEvent.Model.encode(to:)(void *a1)
{
  sub_22030B7D0(0, &qword_27CF28660, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030B4F4();
  sub_220370168();
  type metadata accessor for NetworkEventData(0);
  sub_22030B0DC(&qword_2812651D0, &protocol conformance descriptor for NetworkEventData);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22030B4F4()
{
  result = qword_27CF28668;
  if (!qword_27CF28668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28668);
  }

  return result;
}

uint64_t TelemetryEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for NetworkEventData(0);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030B7D0(0, &qword_27CF28670, MEMORY[0x277D844C8]);
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TelemetryEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030B4F4();
  sub_220370148();
  if (!v2)
  {
    v13 = v17;
    sub_22030B0DC(&qword_2812651C8, &protocol conformance descriptor for NetworkEventData);
    v14 = v18;
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    sub_22030B854(v14, v12, type metadata accessor for NetworkEventData);
    sub_22030B854(v12, v16, type metadata accessor for TelemetryEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030B7D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030B4F4();
    v7 = a3(a1, &type metadata for TelemetryEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030B854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22030B8D4(void *a1)
{
  sub_22030B7D0(0, &qword_27CF28660, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030B4F4();
  sub_220370168();
  type metadata accessor for NetworkEventData(0);
  sub_22030B0DC(&qword_2812651D0, &protocol conformance descriptor for NetworkEventData);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22030BAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_22030B02C(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22030BCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22030BD6C()
{
  result = qword_27CF28688;
  if (!qword_27CF28688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28688);
  }

  return result;
}

unint64_t sub_22030BDC4()
{
  result = qword_27CF28690;
  if (!qword_27CF28690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28690);
  }

  return result;
}

unint64_t sub_22030BE1C()
{
  result = qword_27CF28698;
  if (!qword_27CF28698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28698);
  }

  return result;
}

uint64_t sub_22030BF38()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263A80);
  __swift_project_value_buffer(v0, qword_281263A80);
  return sub_22036F108();
}

uint64_t AppSessionResignEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_22030C0F8(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22030C0F8(uint64_t a1)
{
  if (!qword_2812667D8)
  {
    sub_2201F8808();
    sub_2201F8860();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_2812667D8);
    }
  }
}

uint64_t AppSessionResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_22030C0F8(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppSessionResignEvent(0) + 20);
  sub_22030C0F8(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppSessionResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionResignEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t AppSessionResignEvent.Model.init(eventData:orientationData:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AppSessionResignEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_22030C3D0()
{
  if (*v0)
  {
    return 0x7461746E6569726FLL;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22030C41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_22030C508(uint64_t a1)
{
  v2 = sub_22030C74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030C544(uint64_t a1)
{
  v2 = sub_22030C74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22030CAF8(0, &qword_27CF286A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030C74C();
  sub_220370168();
  v13 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for AppSessionResignEvent.Model(0) + 20));
    v11[12] = 1;
    sub_2201F8860();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22030C74C()
{
  result = qword_27CF286A8;
  if (!qword_27CF286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286A8);
  }

  return result;
}

uint64_t AppSessionResignEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_22036F388();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030CAF8(0, &qword_27CF286B0, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for AppSessionResignEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030C74C();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v20 = v12;
  v13 = v22;
  v28 = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v14 = v25;
  v15 = v23;
  sub_22036FF28();
  v16 = v20;
  (*(v13 + 32))(v20, v5, v14);
  v26 = 1;
  sub_2201F8808();
  sub_22036FF28();
  (*(v24 + 8))(v9, v15);
  *(v16 + *(v19 + 20)) = v27;
  sub_22030CB5C(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22030CBC0(v16);
}

void sub_22030CAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030C74C();
    v7 = a3(a1, &type metadata for AppSessionResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030CB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22030CBC0(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22030CCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22030C0F8(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_22030CDDC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22030C0F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22030CE88(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22030CF10()
{
  result = qword_27CF286C8;
  if (!qword_27CF286C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286C8);
  }

  return result;
}

unint64_t sub_22030CF68()
{
  result = qword_27CF286D0;
  if (!qword_27CF286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286D0);
  }

  return result;
}

unint64_t sub_22030CFC0()
{
  result = qword_27CF286D8;
  if (!qword_27CF286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286D8);
  }

  return result;
}

StocksAnalytics::PerformanceDisplayType_optional __swiftcall PerformanceDisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PerformanceDisplayType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x614374656B72616DLL;
  if (*v0 != 2)
  {
    v2 = 0x61746E6563726570;
  }

  if (*v0)
  {
    v1 = 0x6563697270;
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

unint64_t sub_22030D100()
{
  result = qword_27CF286E0;
  if (!qword_27CF286E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF286E0);
  }

  return result;
}

uint64_t sub_22030D154()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22030D21C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22030D2D0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

unint64_t sub_22030D450()
{
  result = qword_281263620;
  if (!qword_281263620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263620);
  }

  return result;
}

uint64_t sub_22030D56C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28718);
  __swift_project_value_buffer(v0, qword_27CF28718);
  return sub_22036F108();
}

uint64_t NonNewsArticleViewResignEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleViewResignEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResignEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResignEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResignEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResignEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleViewResignEvent(0);
  v5 = v4[5];
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t NonNewsArticleViewResignEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResignEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NonNewsArticleViewResignEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResignEvent.Model(0) + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t NonNewsArticleViewResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

__n128 NonNewsArticleViewResignEvent.Model.init(eventData:viewData:nonNewsArticleData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 8);
  v18 = a3[1];
  v19 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = *a4;
  v13 = sub_22036F388();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  v15 = a5 + v14[5];
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 16) = v9;
  v16 = a5 + v14[6];
  result = v18;
  *v16 = v19;
  *(v16 + 16) = v18;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(a5 + v14[7]) = v12;
  return result;
}

uint64_t sub_22030DFA8(uint64_t a1)
{
  v2 = sub_22030E320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030DFE4(uint64_t a1)
{
  v2 = sub_22030E320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleViewResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22030E7FC(0, &qword_27CF28730, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030E320();
  sub_220370168();
  LOBYTE(v21) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v21 = v12;
    v22 = v13;
    LOWORD(v23) = v11;
    v27 = 1;
    sub_220202110();

    sub_22036FFF8();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    v21 = *v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = 2;
    sub_22026C27C();

    sub_22036FFF8();

    LOWORD(v21) = *(v3 + v10[7]);
    v27 = 3;
    sub_2201F8860();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22030E320()
{
  result = qword_27CF28738;
  if (!qword_27CF28738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28738);
  }

  return result;
}

uint64_t NonNewsArticleViewResignEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030E7FC(0, &qword_27CF28740, MEMORY[0x277D844C8]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030E320();
  v27 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v23;
  LOBYTE(v28) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v13 = v24;
  sub_22036FF28();
  (*(v12 + 32))(v11, v13, v4);
  v32 = 1;
  sub_2202020B8();
  sub_22036FF28();
  v14 = *(&v28 + 1);
  v15 = v29;
  v16 = &v11[v9[5]];
  *v16 = v28;
  *(v16 + 1) = v14;
  *(v16 + 8) = v15;
  v32 = 2;
  sub_22026C224();
  sub_22036FF28();
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = &v11[v9[6]];
  *v20 = v28;
  *(v20 + 1) = v17;
  *(v20 + 4) = v18;
  *(v20 + 5) = v19;
  v32 = 3;
  sub_2201F8808();
  sub_22036FF28();
  (*(v25 + 8))(v27, v26);
  *&v11[v9[7]] = v28;
  sub_22030E860(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22030E8C4(v11);
}

void sub_22030E7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030E320();
    v7 = a3(a1, &type metadata for NonNewsArticleViewResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030E860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22030E8C4(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleViewResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22030EA5C()
{
  result = qword_27CF28768;
  if (!qword_27CF28768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28768);
  }

  return result;
}

unint64_t sub_22030EAB4()
{
  result = qword_27CF28770;
  if (!qword_27CF28770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28770);
  }

  return result;
}

unint64_t sub_22030EB0C()
{
  result = qword_27CF28778;
  if (!qword_27CF28778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28778);
  }

  return result;
}

uint64_t PurchaseData.purchaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseData.purchaseID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::PurchaseData __swiftcall PurchaseData.init(purchaseID:purchaseType:)(StocksAnalytics::PurchaseData purchaseID, StocksAnalytics::PurchaseType purchaseType)
{
  v3 = *purchaseType;
  *v2 = purchaseID.purchaseID;
  *(v2 + 16) = v3;
  purchaseID.purchaseType = purchaseType;
  return purchaseID;
}

uint64_t sub_22030EC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v5 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_22030ED4C(uint64_t a1)
{
  v2 = sub_22030EF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030ED88(uint64_t a1)
{
  v2 = sub_22030EF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseData.encode(to:)(void *a1)
{
  sub_22030F210(0, &qword_281261CD8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v14 = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_22030EF64();
  sub_220370168();
  v17 = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_22030EFB8();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_22030EF64()
{
  result = qword_281265D70;
  if (!qword_281265D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D70);
  }

  return result;
}

unint64_t sub_22030EFB8()
{
  result = qword_281265D48;
  if (!qword_281265D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D48);
  }

  return result;
}

uint64_t PurchaseData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22030F210(0, &qword_27CF28780, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030EF64();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  sub_22030F274();
  sub_22036FF28();
  (*(v7 + 8))(v9, v6);
  v14 = v18;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030F210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030EF64();
    v7 = a3(a1, &type metadata for PurchaseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22030F274()
{
  result = qword_27CF28788;
  if (!qword_27CF28788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28788);
  }

  return result;
}

unint64_t sub_22030F324()
{
  result = qword_27CF28790;
  if (!qword_27CF28790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28790);
  }

  return result;
}

unint64_t sub_22030F37C()
{
  result = qword_281265D60;
  if (!qword_281265D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D60);
  }

  return result;
}

unint64_t sub_22030F3D4()
{
  result = qword_281265D68;
  if (!qword_281265D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D68);
  }

  return result;
}

uint64_t sub_22030F468(uint64_t a1)
{
  v2 = sub_22030F628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22030F4A4(uint64_t a1)
{
  v2 = sub_22030F628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedPositionData.encode(to:)(void *a1)
{
  sub_22030F7FC(0, &qword_281261C70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030F628();
  sub_220370168();
  sub_220370008();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22030F628()
{
  result = qword_2812652E0[0];
  if (!qword_2812652E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812652E0);
  }

  return result;
}

uint64_t FeedPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_22030F7FC(0, qword_281267388, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030F628();
  sub_220370148();
  if (!v2)
  {
    v10 = sub_22036FF38();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22030F7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22030F628();
    v7 = a3(a1, &type metadata for FeedPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22030F880(void *a1)
{
  sub_22030F7FC(0, &qword_281261C70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22030F628();
  sub_220370168();
  sub_220370008();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22030F9EC()
{
  result = qword_27CF28798;
  if (!qword_27CF28798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28798);
  }

  return result;
}

unint64_t sub_22030FA44()
{
  result = qword_2812652D0;
  if (!qword_2812652D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812652D0);
  }

  return result;
}

unint64_t sub_22030FA9C()
{
  result = qword_2812652D8;
  if (!qword_2812652D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812652D8);
  }

  return result;
}

uint64_t ArticleScienceData.stocksFractionalCohortMembership.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ArticleScienceData.init(newsComputedGlobalScoreCoefficient:newsUserFeedbackScore:newsAgedPersonalizationScore:newsDiversifiedPersonalizationScore:newsFeatureCtr:newsPersonalizationScore:newsPaidNonPaidSubscriptionCtr:newsSubscribedChannelCtr:newsAutoSubscribeCtr:newsFirstPassPersonalizationScore:stocksFractionalCohortMembership:stocksNewsPersonalizationScore:stocksGlobalScore:stocksTabiScore:stocksRealTimeUserFeedbackScore:stocksSubscriptionCount:stocksImportanceScore:stocksPublisherPrior:stocksHasBeenRead:stocksChannelDiversityRank:stocksImportanceScoreRank:stocksPersonalizedScore:stocksTimeDecayedScore:stocksDiversifiedScore:stocksArticleHalfLife:stocksArticleAge:)@<X0>(uint64_t result@<X0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, __int128 a23, uint64_t a24)
{
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a9;
  *(a6 + 24) = a10;
  *(a6 + 32) = a11;
  *(a6 + 40) = a12;
  *(a6 + 48) = a13;
  *(a6 + 56) = a14;
  *(a6 + 64) = a15;
  *(a6 + 72) = a16;
  *(a6 + 80) = result;
  *(a6 + 88) = a17;
  *(a6 + 104) = a18;
  *(a6 + 112) = a19;
  *(a6 + 120) = a2;
  *(a6 + 128) = a20;
  *(a6 + 136) = a21;
  *(a6 + 144) = a3;
  *(a6 + 148) = a4;
  *(a6 + 152) = a5;
  *(a6 + 160) = a22;
  *(a6 + 176) = a23;
  *(a6 + 192) = a24;
  return result;
}

unint64_t sub_220310050(char a1)
{
  result = 0x746165467377656ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      return result;
    case 5:
    case 7:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 8:
    case 17:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 12:
    case 18:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6154736B636F7473;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
    case 21:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 19:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 22:
    case 23:
      result = 0xD000000000000016;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

uint64_t sub_220310334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203116BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220310368(uint64_t a1)
{
  v2 = sub_220310A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203103A4(uint64_t a1)
{
  v2 = sub_220310A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScienceData.encode(to:)(void *a1)
{
  sub_220311250(0, &qword_281261C40, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v35 = *(v1 + 16);
  v36 = v8;
  v10 = *(v1 + 40);
  v32 = *(v1 + 32);
  v33 = v9;
  v11 = *(v1 + 56);
  v30 = *(v1 + 48);
  v31 = v10;
  v12 = *(v1 + 72);
  v28 = *(v1 + 64);
  v29 = v11;
  v34 = *(v1 + 80);
  v13 = *(v1 + 96);
  v26 = *(v1 + 88);
  v27 = v12;
  v25 = v13;
  v14 = *(v1 + 112);
  v24 = *(v1 + 104);
  v23 = v14;
  v22[1] = *(v1 + 120);
  v22[0] = *(v1 + 144);
  v16 = *(v1 + 148);
  v15 = *(v1 + 152);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220310A48();
  sub_220370168();
  LOBYTE(v39) = 0;
  v17 = v37;
  sub_22036FFD8();
  if (v17)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = v16;
  v20 = v5;
  v21 = v34;
  LOBYTE(v39) = 1;
  sub_22036FFD8();
  LOBYTE(v39) = 2;
  v37 = v4;
  sub_22036FFD8();
  LOBYTE(v39) = 3;
  sub_22036FFD8();
  LOBYTE(v39) = 4;
  sub_22036FFD8();
  LOBYTE(v39) = 5;
  sub_22036FFD8();
  LOBYTE(v39) = 6;
  sub_22036FFD8();
  LOBYTE(v39) = 7;
  sub_22036FFD8();
  LOBYTE(v39) = 8;
  sub_22036FFD8();
  LODWORD(v36) = v19;
  LODWORD(v35) = v15;
  LOBYTE(v39) = 9;
  sub_22036FFD8();
  v39 = v21;
  v38 = 10;
  sub_220310A9C();
  sub_2203112B4(&qword_281261F18, sub_2202F4420, MEMORY[0x277D83948]);
  sub_22036FFF8();
  LOBYTE(v39) = 11;
  sub_22036FFD8();
  LOBYTE(v39) = 12;
  sub_22036FFD8();
  LOBYTE(v39) = 13;
  sub_22036FFD8();
  LOBYTE(v39) = 14;
  sub_22036FFD8();
  LOBYTE(v39) = 15;
  sub_220370008();
  LOBYTE(v39) = 16;
  sub_22036FFD8();
  LOBYTE(v39) = 17;
  sub_22036FFD8();
  LOBYTE(v39) = 18;
  sub_22036FFC8();
  LOBYTE(v39) = 19;
  sub_220370008();
  LOBYTE(v39) = 20;
  sub_220370008();
  LOBYTE(v39) = 21;
  sub_22036FFD8();
  LOBYTE(v39) = 22;
  sub_22036FFD8();
  LOBYTE(v39) = 23;
  sub_22036FFD8();
  LOBYTE(v39) = 24;
  sub_22036FFD8();
  LOBYTE(v39) = 25;
  sub_22036FFD8();
  return (*(v20 + 8))(v7, v37);
}

unint64_t sub_220310A48()
{
  result = qword_281264A98[0];
  if (!qword_281264A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264A98);
  }

  return result;
}

void sub_220310A9C()
{
  if (!qword_281261F20)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261F20);
    }
  }
}

uint64_t ArticleScienceData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220311250(0, &qword_281261DC0, MEMORY[0x277D844C8]);
  v101 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220310A48();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v84[0]) = 0;
  sub_22036FF08();
  v11 = v10;
  LOBYTE(v84[0]) = 1;
  sub_22036FF08();
  v13 = v12;
  LOBYTE(v84[0]) = 2;
  sub_22036FF08();
  v15 = v14;
  LOBYTE(v84[0]) = 3;
  sub_22036FF08();
  v17 = v16;
  LOBYTE(v84[0]) = 4;
  sub_22036FF08();
  v19 = v18;
  LOBYTE(v84[0]) = 5;
  sub_22036FF08();
  v21 = v20;
  LOBYTE(v84[0]) = 6;
  sub_22036FF08();
  v23 = v22;
  LOBYTE(v84[0]) = 7;
  sub_22036FF08();
  v70 = v24;
  LOBYTE(v84[0]) = 8;
  sub_22036FF08();
  v26 = v25;
  LOBYTE(v84[0]) = 9;
  sub_22036FF08();
  v69 = v27;
  sub_220310A9C();
  LOBYTE(v71) = 10;
  sub_2203112B4(&qword_281261F10, sub_2202F43C8, MEMORY[0x277D83978]);
  sub_22036FF28();
  v28 = v84[0];
  LOBYTE(v84[0]) = 11;
  sub_22036FF08();
  v68 = v29;
  LOBYTE(v84[0]) = 12;
  sub_22036FF08();
  v67 = v30;
  LOBYTE(v84[0]) = 13;
  sub_22036FF08();
  v66 = v31;
  LOBYTE(v84[0]) = 14;
  sub_22036FF08();
  v65 = v32;
  LOBYTE(v84[0]) = 15;
  v33 = sub_22036FF38();
  LOBYTE(v84[0]) = 16;
  sub_22036FF08();
  v64 = v34;
  LOBYTE(v84[0]) = 17;
  sub_22036FF08();
  v63 = v35;
  LOBYTE(v84[0]) = 18;
  v62 = sub_22036FEF8();
  LOBYTE(v84[0]) = 19;
  v61 = sub_22036FF38();
  LOBYTE(v84[0]) = 20;
  v60 = sub_22036FF38();
  LOBYTE(v84[0]) = 21;
  sub_22036FF08();
  v59 = v36;
  LOBYTE(v84[0]) = 22;
  sub_22036FF08();
  v58 = v37;
  LOBYTE(v84[0]) = 23;
  sub_22036FF08();
  v57 = v38;
  LOBYTE(v84[0]) = 24;
  sub_22036FF08();
  v56 = v39;
  v98 = 25;
  sub_22036FF08();
  v55 = v40;
  v41 = v62 & 1;
  (*(v9 + 8))(v8, v101);
  *&v71 = v11;
  *(&v71 + 1) = v13;
  *&v72 = v15;
  *(&v72 + 1) = v17;
  *&v73 = v19;
  *(&v73 + 1) = v21;
  *&v74 = v23;
  *(&v74 + 1) = v70;
  *&v75 = v26;
  *(&v75 + 1) = v69;
  *&v76 = v28;
  *(&v76 + 1) = v68;
  *&v77 = v67;
  *(&v77 + 1) = v66;
  *&v78 = v65;
  DWORD2(v78) = v33;
  *&v79 = v64;
  *(&v79 + 1) = v63;
  LOBYTE(v80) = v41;
  BYTE3(v80) = v100;
  *(&v80 + 1) = v99;
  LODWORD(v9) = v60;
  v42 = v61;
  *(&v80 + 4) = __PAIR64__(v60, v61);
  *&v81 = v59;
  *(&v81 + 1) = v58;
  *&v82 = v57;
  *(&v82 + 1) = v56;
  v83 = v55;
  v43 = v71;
  v44 = v72;
  v45 = v74;
  *(a2 + 32) = v73;
  *(a2 + 48) = v45;
  *a2 = v43;
  *(a2 + 16) = v44;
  v46 = v75;
  v47 = v76;
  v48 = v78;
  *(a2 + 96) = v77;
  *(a2 + 112) = v48;
  *(a2 + 64) = v46;
  *(a2 + 80) = v47;
  v49 = v79;
  v50 = v80;
  v51 = v81;
  v52 = v82;
  *(a2 + 192) = v83;
  *(a2 + 160) = v51;
  *(a2 + 176) = v52;
  *(a2 + 128) = v49;
  *(a2 + 144) = v50;
  sub_220272A1C(&v71, v84);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v84[0] = v11;
  v84[1] = v13;
  v84[2] = v15;
  v84[3] = v17;
  v84[4] = v19;
  v84[5] = v21;
  v84[6] = v23;
  v84[7] = v70;
  v84[8] = v26;
  v84[9] = v69;
  v84[10] = v28;
  v84[11] = v68;
  v84[12] = v67;
  v84[13] = v66;
  v84[14] = v65;
  v85 = v33;
  v86 = v64;
  v87 = v63;
  v88 = v41;
  v89 = v99;
  v90 = v100;
  v91 = v42;
  v92 = v9;
  v93 = v59;
  v94 = v58;
  v95 = v57;
  v96 = v56;
  v97 = v55;
  return sub_22027391C(v84);
}

void sub_220311250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220310A48();
    v7 = a3(a1, &type metadata for ArticleScienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203112B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_220310A9C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_22031139C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2203113E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleScienceData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleScienceData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2203115B8()
{
  result = qword_27CF287A0;
  if (!qword_27CF287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287A0);
  }

  return result;
}

unint64_t sub_220311610()
{
  result = qword_281264A88;
  if (!qword_281264A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A88);
  }

  return result;
}

unint64_t sub_220311668()
{
  result = qword_281264A90;
  if (!qword_281264A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A90);
  }

  return result;
}

uint64_t sub_2203116BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x8000000220391A00 == a2;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391A30 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220391A50 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000220391A70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746165467377656ELL && a2 == 0xEE00727443657275 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220391AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220391AC0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220391AE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220391B00 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000220391B20 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000220391B50 == a2 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220391B80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220391BA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6154736B636F7473 && a2 == 0xEF65726F63536962 || (sub_220370048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000220391BC0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220391BE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391C00 == a2 || (sub_220370048() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220391C20 == a2 || (sub_220370048() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220391C40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220391C60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220391C80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220391CA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220391CC0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220391CE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391D00 == a2 || (sub_220370048() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220391D20 == a2)
  {

    return 25;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

StocksAnalytics::LinkType_optional __swiftcall LinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

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

uint64_t LinkType.rawValue.getter()
{
  if (*v0)
  {
    return 0x72756F5361746164;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220311F40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72756F5361746164;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000006563;
  }

  if (*a2)
  {
    v5 = 0x72756F5361746164;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006563;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_220370048();
  }

  return v8 & 1;
}

unint64_t sub_220311FF0()
{
  result = qword_27CF287A8;
  if (!qword_27CF287A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287A8);
  }

  return result;
}

uint64_t sub_220312044()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203120CC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220312140(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203121C4@<X0>(char *a2@<X8>)
{
  v3 = sub_22036FE78();

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

void sub_220312224(uint64_t *a1@<X8>)
{
  v2 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v2 = 0x72756F5361746164;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006563;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_220312328()
{
  result = qword_27CF287B0;
  if (!qword_27CF287B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287B0);
  }

  return result;
}

uint64_t WatchedSymbolListData.symbols.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2203123F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220312480(uint64_t a1)
{
  v2 = sub_220312694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203124BC(uint64_t a1)
{
  v2 = sub_220312694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchedSymbolListData.encode(to:)(void *a1)
{
  sub_2203128AC(0, &qword_281261C00, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312694();

  sub_220370168();
  v10[1] = v8;
  sub_220269D00();
  sub_22026A024(&qword_281261EF0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22036FFF8();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220312694()
{
  result = qword_281263898;
  if (!qword_281263898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263898);
  }

  return result;
}

uint64_t WatchedSymbolListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2203128AC(0, &qword_281261D98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312694();
  sub_220370148();
  if (!v2)
  {
    sub_220269D00();
    sub_22026A024(&qword_281261EE0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203128AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220312694();
    v7 = a3(a1, &type metadata for WatchedSymbolListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031296C()
{
  result = qword_27CF287B8;
  if (!qword_27CF287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF287B8);
  }

  return result;
}

unint64_t sub_2203129C4()
{
  result = qword_281263888;
  if (!qword_281263888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263888);
  }

  return result;
}

unint64_t sub_220312A1C()
{
  result = qword_281263890;
  if (!qword_281263890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263890);
  }

  return result;
}

uint64_t sub_220312B38()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF287F0);
  __swift_project_value_buffer(v0, qword_27CF287F0);
  return sub_22036F108();
}

uint64_t EditWatchListEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EditWatchListEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EditWatchListEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220312D54(uint64_t a1)
{
  v2 = sub_220312F40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220312D90(uint64_t a1)
{
  v2 = sub_220312F40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditWatchListEvent.Model.encode(to:)(void *a1)
{
  sub_22031322C(0, &qword_27CF28808, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312F40();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220312F40()
{
  result = qword_27CF28810;
  if (!qword_27CF28810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28810);
  }

  return result;
}

uint64_t EditWatchListEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22031322C(0, &qword_27CF28818, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for EditWatchListEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312F40();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2203132B0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031322C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220312F40();
    v7 = a3(a1, &type metadata for EditWatchListEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203132B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWatchListEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22031332C(void *a1)
{
  sub_22031322C(0, &qword_27CF28808, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220312F40();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2203135CC()
{
  result = qword_27CF28840;
  if (!qword_27CF28840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28840);
  }

  return result;
}

unint64_t sub_220313624()
{
  result = qword_27CF28848;
  if (!qword_27CF28848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28848);
  }

  return result;
}

unint64_t sub_22031367C()
{
  result = qword_27CF28850;
  if (!qword_27CF28850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28850);
  }

  return result;
}

StocksAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewType.rawValue.getter()
{
  v1 = 1684366694;
  if (*v0 != 1)
  {
    v1 = 0x656C6369747261;
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

uint64_t sub_220313780(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684366694;
  if (v2 != 1)
  {
    v4 = 0x656C6369747261;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (*a2 != 1)
  {
    v8 = 0x656C6369747261;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220313878()
{
  result = qword_27CF28858;
  if (!qword_27CF28858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28858);
  }

  return result;
}

uint64_t sub_2203138CC()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220313968(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2203139F0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220313A94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684366694;
  if (v2 != 1)
  {
    v5 = 0x656C6369747261;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_220313BAC()
{
  result = qword_2812620F8;
  if (!qword_2812620F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620F8);
  }

  return result;
}

uint64_t sub_220313CC8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28890);
  __swift_project_value_buffer(v0, qword_27CF28890);
  return sub_22036F108();
}

uint64_t CreateWatchlistEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CreateWatchlistEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t CreateWatchlistEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220313EE4(uint64_t a1)
{
  v2 = sub_2203140D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220313F20(uint64_t a1)
{
  v2 = sub_2203140D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreateWatchlistEvent.Model.encode(to:)(void *a1)
{
  sub_2203143BC(0, &qword_27CF288A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203140D0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2203140D0()
{
  result = qword_27CF288B0;
  if (!qword_27CF288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288B0);
  }

  return result;
}

uint64_t CreateWatchlistEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203143BC(0, &qword_27CF288B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  Watchlist = type metadata accessor for CreateWatchlistEvent.Model(0);
  MEMORY[0x28223BE20](Watchlist - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203140D0();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_220314440(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203143BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203140D0();
    v7 = a3(a1, &type metadata for CreateWatchlistEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220314440(uint64_t a1, uint64_t a2)
{
  Watchlist = type metadata accessor for CreateWatchlistEvent.Model(0);
  (*(*(Watchlist - 8) + 32))(a2, a1, Watchlist);
  return a2;
}

uint64_t sub_2203144BC(void *a1)
{
  sub_2203143BC(0, &qword_27CF288A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203140D0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22031475C()
{
  result = qword_27CF288E0;
  if (!qword_27CF288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288E0);
  }

  return result;
}

unint64_t sub_2203147B4()
{
  result = qword_27CF288E8;
  if (!qword_27CF288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288E8);
  }

  return result;
}

unint64_t sub_22031480C()
{
  result = qword_27CF288F0;
  if (!qword_27CF288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF288F0);
  }

  return result;
}

uint64_t sub_2203148CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546C6F72746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220314958(uint64_t a1)
{
  v2 = sub_220314B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220314994(uint64_t a1)
{
  v2 = sub_220314B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioControlMenuData.encode(to:)(void *a1)
{
  sub_220314D6C(0, &qword_27CF288F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220314B2C();
  sub_220370168();
  v11 = v8;
  sub_220314B80();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220314B2C()
{
  result = qword_27CF28900;
  if (!qword_27CF28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28900);
  }

  return result;
}

unint64_t sub_220314B80()
{
  result = qword_27CF28908;
  if (!qword_27CF28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28908);
  }

  return result;
}

uint64_t AudioControlMenuData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220314D6C(0, &qword_27CF28910, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220314B2C();
  sub_220370148();
  if (!v2)
  {
    sub_220314DD0();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220314D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220314B2C();
    v7 = a3(a1, &type metadata for AudioControlMenuData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220314DD0()
{
  result = qword_27CF28918;
  if (!qword_27CF28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28918);
  }

  return result;
}

unint64_t sub_220314E28()
{
  result = qword_27CF28920;
  if (!qword_27CF28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28920);
  }

  return result;
}

unint64_t sub_220314E80()
{
  result = qword_27CF28928;
  if (!qword_27CF28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28928);
  }

  return result;
}

unint64_t sub_220314F28()
{
  result = qword_27CF28930;
  if (!qword_27CF28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28930);
  }

  return result;
}

unint64_t sub_220314F80()
{
  result = qword_27CF28938;
  if (!qword_27CF28938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28938);
  }

  return result;
}

unint64_t sub_220314FD8()
{
  result = qword_27CF28940;
  if (!qword_27CF28940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28940);
  }

  return result;
}

uint64_t sub_2203150F4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28978);
  __swift_project_value_buffer(v0, qword_27CF28978);
  return sub_22036F108();
}

uint64_t SubscriptionResultEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionResultEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 20);
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 24);
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 28);
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 32);
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 36);
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 40);
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 44);
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C, &type metadata for SubscriptionResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.subscriptionResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 48);
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C, &type metadata for SubscriptionResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.storeKitErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 52);
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionResultEvent.adReferralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 56);
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203163CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SubscriptionResultEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionResultEvent(0) + 60);
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionResultEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionResultEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v6, v11);
  v12 = v4[8];
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C, &type metadata for SubscriptionResultData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v6, v27);
}

uint64_t SubscriptionResultEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202669E8(v10, v9);
}

void SubscriptionResultEvent.Model.channelData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_2202440A8(v4, v5, v6, v7);
}

uint64_t SubscriptionResultEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

void SubscriptionResultEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t SubscriptionResultEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SubscriptionResultEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SubscriptionResultEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t SubscriptionResultEvent.Model.subscriptionResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SubscriptionResultEvent.Model.storeKitErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionResultEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t SubscriptionResultEvent.Model.adReferralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

void SubscriptionResultEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionResultEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_220298C74(v4, v5, v6, v7, v8, v9);
}

__n128 SubscriptionResultEvent.Model.init(eventData:newsArticleData:channelData:feedData:groupData:purchaseSessionData:purchaseData:paywallData:subscriptionResultData:storeKitErrorData:adReferralData:campaignData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t *a12, uint64_t a13)
{
  v18 = *(a3 + 16);
  v39 = *a4;
  v19 = *(a4 + 2);
  v20 = *(a5 + 4);
  v21 = *(a5 + 5);
  v43 = *a6;
  v42 = a6[1];
  v46 = *a7;
  v45 = a7[1];
  v44 = *(a7 + 16);
  v47 = *a8;
  v48 = *a10;
  v49 = *a11;
  v50 = a12[1];
  v51 = *a12;
  v52 = *(a13 + 40);
  v53 = *(a13 + 32);
  v22 = sub_22036F388();
  v40 = *(a13 + 16);
  v41 = *a13;
  v37 = a5[1];
  v38 = *a5;
  v35 = a3[1];
  v36 = *a3;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for SubscriptionResultEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a2 + 64);
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  v27 = a9 + v23[6];
  *v27 = v36;
  *(v27 + 16) = v35;
  *(v27 + 32) = v18;
  v28 = a9 + v23[7];
  *v28 = v39;
  *(v28 + 16) = v19;
  v29 = a9 + v23[8];
  *v29 = v38;
  *(v29 + 16) = v37;
  *(v29 + 32) = v20;
  *(v29 + 40) = v21;
  v30 = (a9 + v23[9]);
  *v30 = v43;
  v30[1] = v42;
  v31 = a9 + v23[10];
  *v31 = v46;
  *(v31 + 8) = v45;
  *(v31 + 16) = v44;
  *(a9 + v23[11]) = v47;
  *(a9 + v23[12]) = v48;
  *(a9 + v23[13]) = v49;
  v32 = (a9 + v23[14]);
  *v32 = v51;
  v32[1] = v50;
  v33 = a9 + v23[15];
  result = v41;
  *v33 = v41;
  *(v33 + 16) = v40;
  *(v33 + 32) = v53;
  *(v33 + 40) = v52;
  return result;
}

unint64_t sub_220317064(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7272656665526461;
    if (a1 != 10)
    {
      v6 = 0x6E676961706D6163;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000016;
    if (a1 == 7)
    {
      v7 = 0x446C6C6177796170;
    }

    if (a1 == 6)
    {
      v7 = 0x6573616863727570;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x697472417377656ELL;
    if (a1 != 1)
    {
      v4 = 0x446C656E6E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22031722C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203191A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220317254(uint64_t a1)
{
  v2 = sub_2203178F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220317290(uint64_t a1)
{
  v2 = sub_2203178F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203182F4(0, &qword_27CF28998, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203178F8();
  sub_220370168();
  v61 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SubscriptionResultEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v56 = *(v11 + 32);
    v57 = v13;
    v14 = *(v11 + 16);
    v55[0] = *v11;
    v55[1] = v14;
    v15 = *(v11 + 48);
    v52 = v56;
    v53 = v15;
    v58 = *(v11 + 64);
    v54 = *(v11 + 64);
    v50 = v55[0];
    v51 = v12;
    v60 = 1;
    sub_2202669E8(v55, v48);
    sub_22022EDA0();
    sub_22036FF88();
    v48[2] = v52;
    v48[3] = v53;
    v49 = v54;
    v48[0] = v50;
    v48[1] = v51;
    sub_220267640(v48);
    v16 = v3 + v10[6];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v16 + 32);
    *&v43 = *v16;
    *(&v43 + 1) = v17;
    v44 = v18;
    v45 = v19;
    LOWORD(v46) = v20;
    v59 = 2;
    sub_2202440A8(v43, v17, v18, v19);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v43, *(&v43 + 1), v44, v45);
    v21 = (v3 + v10[7]);
    v22 = *(v21 + 2);
    v43 = *v21;
    v44 = v22;
    v59 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v23 = (v3 + v10[8]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    v28 = v23[5];
    *&v43 = *v23;
    *(&v43 + 1) = v24;
    v44 = v25;
    v45 = v26;
    v46 = v27;
    v47 = v28;
    v59 = 4;
    sub_22023846C(v43, v24, v25, v26, v27, v28);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v43, *(&v43 + 1), v44, v45, v46, v47);
    v30 = (v3 + v10[9]);
    v31 = v30[1];
    *&v43 = *v30;
    *(&v43 + 1) = v31;
    v59 = 5;
    sub_220265D28();

    sub_22036FFF8();

    v32 = (v3 + v10[10]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v32) = *(v32 + 16);
    *&v43 = v33;
    *(&v43 + 1) = v34;
    LOBYTE(v44) = v32;
    v59 = 6;
    sub_220265F80();

    sub_22036FFF8();

    LOBYTE(v43) = *(v3 + v10[11]);
    v59 = 7;
    sub_220266254();
    sub_22036FFF8();
    LOBYTE(v43) = *(v3 + v10[12]);
    v59 = 8;
    sub_22029F61C();
    sub_22036FFF8();
    LOBYTE(v43) = *(v3 + v10[13]);
    v59 = 9;
    sub_22027FD84();
    sub_22036FF88();
    v35 = (v3 + v10[14]);
    v36 = v35[1];
    *&v43 = *v35;
    *(&v43 + 1) = v36;
    v59 = 10;
    sub_22027C714(v43, v36);
    sub_220284228();
    sub_22036FF88();
    sub_22027D3B4(v43, *(&v43 + 1));
    v37 = (v3 + v10[15]);
    v38 = v37[1];
    v39 = v37[2];
    v40 = v37[3];
    v41 = v37[4];
    v42 = v37[5];
    *&v43 = *v37;
    *(&v43 + 1) = v38;
    v44 = v39;
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v59 = 11;
    sub_220298C74(v43, v38, v39, v40, v41, v42);
    sub_2202981C0();
    sub_22036FF88();
    sub_220299818(v43, *(&v43 + 1), v44, v45, v46, v47);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2203178F8()
{
  result = qword_27CF289A0;
  if (!qword_27CF289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289A0);
  }

  return result;
}

void SubscriptionResultEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_22036F388();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203182F4(0, &qword_27CF289A8, MEMORY[0x277D844C8]);
  v42 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for SubscriptionResultEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203178F8();
  v41 = v8;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v36 = a1;
    v34 = v9;
    v35 = v11;
    LOBYTE(v46) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v12 = v39;
    sub_22036FF28();
    v13 = v35;
    (*(v38 + 32))(v35, v12, v4);
    v52 = 1;
    sub_22022ED48();
    sub_22036FEB8();
    v33 = v4;
    v39 = 0;
    v14 = v34;
    v15 = &v13[v34[5]];
    v16 = v49;
    *(v15 + 2) = v48;
    *(v15 + 3) = v16;
    *(v15 + 16) = v50;
    v17 = v47;
    *v15 = v46;
    *(v15 + 1) = v17;
    v51 = 2;
    sub_220236A30();
    sub_22036FEB8();
    v18 = v45;
    v19 = &v13[v14[6]];
    v20 = v44;
    *v19 = v43;
    *(v19 + 1) = v20;
    *(v19 + 16) = v18;
    v51 = 3;
    sub_2201FBCC4();
    sub_22036FEB8();
    v21 = v44;
    v22 = &v13[v14[7]];
    *v22 = v43;
    *(v22 + 2) = v21;
    v51 = 4;
    sub_220236C88();
    sub_22036FEB8();
    v23 = &v13[v14[8]];
    v24 = v44;
    *v23 = v43;
    *(v23 + 1) = v24;
    *(v23 + 2) = v45;
    v51 = 5;
    sub_220265CD4();
    sub_22036FF28();
    v25 = *(&v43 + 1);
    v26 = &v13[v14[9]];
    *v26 = v43;
    *(v26 + 1) = v25;
    v51 = 6;
    sub_220265F2C();
    sub_22036FF28();
    v27 = *(&v43 + 1);
    v28 = v44;
    v29 = &v13[v14[10]];
    *v29 = v43;
    *(v29 + 1) = v27;
    v29[16] = v28;
    v51 = 7;
    sub_220266200();
    sub_22036FF28();
    v13[v14[11]] = v43;
    v51 = 8;
    sub_22029F5C4();
    sub_22036FF28();
    v13[v14[12]] = v43;
    v51 = 9;
    sub_22027FD2C();
    sub_22036FEB8();
    v35[v34[13]] = v43;
    v51 = 10;
    sub_2202841D0();
    sub_22036FEB8();
    *&v35[v34[14]] = v43;
    v51 = 11;
    sub_22029816C();
    sub_22036FEB8();
    (*(v40 + 8))(v41, v42);
    v30 = v35;
    v31 = &v35[v34[15]];
    v32 = v44;
    *v31 = v43;
    *(v31 + 1) = v32;
    *(v31 + 2) = v45;
    sub_220318358(v30, v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_2203183BC(v30);
  }
}

void sub_2203182F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203178F8();
    v7 = a3(a1, &type metadata for SubscriptionResultEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220318358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203183BC(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionResultEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203184F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_2203163CC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_2203163CC(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_2203163CC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v7, v12);
  v13 = a1[8];
  sub_2203163CC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v7, v14);
  v15 = a1[9];
  sub_2203163CC(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_2203163CC(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2203163CC(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_2203163CC(0, &qword_27CF28990, sub_22029F5C4, sub_22029F61C, &type metadata for SubscriptionResultData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_2203163CC(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_2203163CC(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_2203163CC(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v7, v28);
}

void sub_220318AD4(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2203163CC(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_2203163CC(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_2203163CC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_2203163CC(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_2203163CC(319, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
            if (v6 <= 0x3F)
            {
              sub_2203163CC(319, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
              if (v7 <= 0x3F)
              {
                sub_2203163CC(319, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
                if (v8 <= 0x3F)
                {
                  sub_2203163CC(319, &qword_27CF28990, sub_22029F5C4, sub_22029F61C, &type metadata for SubscriptionResultData);
                  if (v9 <= 0x3F)
                  {
                    sub_2203163CC(319, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
                    if (v10 <= 0x3F)
                    {
                      sub_2203163CC(319, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
                      if (v11 <= 0x3F)
                      {
                        sub_2203163CC(319, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
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

void sub_220318ED8(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26930, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26288, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_27CF273A8, &type metadata for StoreKitErrorData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_27CF273B0, &type metadata for AdReferralData);
              if (v7 <= 0x3F)
              {
                sub_22023A8F4(319, &qword_281265DA0, &type metadata for CampaignData);
                if (v8 <= 0x3F)
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

unint64_t sub_22031909C()
{
  result = qword_27CF289D0;
  if (!qword_27CF289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289D0);
  }

  return result;
}

unint64_t sub_2203190F4()
{
  result = qword_27CF289D8;
  if (!qword_27CF289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289D8);
  }

  return result;
}

unint64_t sub_22031914C()
{
  result = qword_27CF289E0;
  if (!qword_27CF289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289E0);
  }

  return result;
}

uint64_t sub_2203191A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220391D40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390DE0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7272656665526461 && a2 == 0xEE00617461446C61 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144)
  {

    return 11;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t FlushAnalyticsBatchesStartupTask.group.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v4 = sub_22036F5C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_220319640()
{
  sub_2201FA9C4();
  swift_allocObject();
  return sub_22036F7D8();
}

uint64_t sub_220319694(uint64_t a1)
{
  v186[1] = *MEMORY[0x277D85DE8];
  sub_22031BFC8(0);
  v153 = v2;
  v152 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v151 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_22036E3D8();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = sub_22036F3C8();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22036E5D8();
  v163 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v162 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22036F388();
  v168 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v169 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for AppSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v154);
  v158 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_22036EC08();
  v159 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_22031C388(0, &qword_281266698, MEMORY[0x277CEAEB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v173 = &v134 - v12;
  sub_22031C388(0, &qword_281266980, MEMORY[0x277CEAC78], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v180 = &v134 - v14;
  sub_22031C388(0, &qword_281266AC0, MEMORY[0x277CC9578], v10);
  MEMORY[0x28223BE20](v15 - 8);
  v176 = &v134 - v16;
  v183 = sub_22036E5A8();
  v179 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22031C05C(0);
  v181 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v161 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v160 = &v134 - v22;
  MEMORY[0x28223BE20](v21);
  v167 = &v134 - v23;
  v170 = type metadata accessor for StocksSession(0);
  MEMORY[0x28223BE20](v170);
  v171 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22036EC68();
  v178 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_22036EC88();
  v184 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (&v134 - v32);
  v34 = sub_22036F3D8();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_22036F228())
  {
    return MEMORY[0x277D84F90];
  }

  v146 = v35;
  v149 = v33;
  v147 = v27;
  v148 = v25;
  v144 = v31;
  v150 = v28;
  sub_22036F278();
  if (v38)
  {

    return MEMORY[0x277D84F90];
  }

  v40 = a1;
  sub_22036F418();
  swift_allocObject();
  v41 = sub_22036F408();
  *v37 = sub_22031B1A0;
  v37[1] = 0;
  (*(v146 + 104))(v37, *MEMORY[0x277D6C9B0], v34);
  sub_22036F3E8();
  v42 = objc_opt_self();
  sub_22036F268();
  sub_22031C0C4();
  v43 = sub_22036FB58();

  v186[0] = 0;
  v44 = [v42 dataWithJSONObject:v43 options:0 error:v186];

  v45 = v186[0];
  if (!v44)
  {
    v52 = v45;
    sub_22036E4B8();

    swift_willThrow();
  }

  v46 = sub_22036E518();
  v48 = v47;

  sub_22031C388(0, &qword_281261F80, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
  sub_22031C128();
  v49 = v185;
  sub_22036F3F8();
  if (v49)
  {
    v50 = v46;
    v51 = v48;
LABEL_8:
    sub_2202A6560(v50, v51);
  }

  v140 = v42;
  v142 = v48;
  v141 = v40;
  v143 = v46;
  v185 = 0;
  v53 = 0;
  v54 = v186[0];
  v146 = *(v186[0] + 2);
  v55 = v184;
  v145 = v184 + 16;
  v56 = (v178 + 1);
  v178 = (v184 + 8);
  v57 = v150;
  v58 = v149;
  while (1)
  {
    if (v146 == v53)
    {
      v139 = v54;
      v138 = 0x8000000220391DF0;
      sub_22036F238();
      v65 = sub_22036FA48();

      v186[0] = 0;
      v66 = [v140 dataWithJSONObject:v65 options:0 error:v186];

      v67 = v186[0];
      v68 = v185;
      v69 = v172;
      if (v66)
      {
        v70 = sub_22036E518();
        v72 = v71;

        v73 = v70;
        sub_22031C504(&qword_2812662B0, type metadata accessor for StocksSession, &protocol conformance descriptor for StocksSession);
        sub_22036F3F8();
        v74 = v143;
        if (v68)
        {
          sub_2202A6560(v73, v72);

          v50 = v74;
          v51 = v142;
          goto LABEL_8;
        }

        v135 = v73;
        v136 = v72;
        v137 = v41;
        v185 = 0;
        if (v146)
        {
          v76 = v139 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
          v148 = *(v184 + 72);
          v149 = (v179 + 56);
          ++v159;
          v147 = (v168 + 48);
          v140 = (v168 + 8);
          v77 = MEMORY[0x277D84F90];
          v184 = *(v184 + 16);
          v78 = (v179 + 32);
          v79 = v176;
          v80 = v144;
          while (1)
          {
            v82 = v150;
            (v184)(v80, v76, v150);
            v83 = v180;
            sub_22036EC38();
            v84 = v83;
            v85 = sub_22036EC28();
            v86 = *(v85 - 8);
            if ((*(v86 + 48))(v84, 1, v85) != 1)
            {
              break;
            }

            sub_22031C200(v84, &qword_281266980, MEMORY[0x277CEAC78]);
            v87 = v174;
            sub_22036EC48();
            v88 = v173;
            sub_22036EBF8();
            (*v159)(v87, v175);
            v89 = v177;
            if ((*v147)(v88, 1, v177) != 1)
            {
              sub_22036F368();
              (*v178)(v80, v150);
              (*v140)(v88, v89);
LABEL_31:
              v91 = v182;
              v90 = v183;
              (*v149)(v79, 0, 1, v183);
              v92 = *v78;
              (*v78)(v91, v79, v90);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v77 = sub_220287E50(0, *(v77 + 2) + 1, 1, v77);
              }

              v93 = v179;
              v95 = *(v77 + 2);
              v94 = *(v77 + 3);
              if (v95 >= v94 >> 1)
              {
                v96 = sub_220287E50((v94 > 1), v95 + 1, 1, v77);
                v93 = v179;
                v77 = v96;
              }

              *(v77 + 2) = v95 + 1;
              v92(&v77[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95], v182, v183);
              v81 = v181;
              v80 = v144;
              goto LABEL_26;
            }

            (*v178)(v80, v150);
            sub_22031C200(v88, &qword_281266698, MEMORY[0x277CEAEB0]);
            (*v149)(v79, 1, 1, v183);
            sub_22031C200(v79, &qword_281266AC0, MEMORY[0x277CC9578]);
            v81 = v181;
LABEL_26:
            v76 += v148;
            if (!--v146)
            {

              v69 = v172;
              goto LABEL_38;
            }
          }

          sub_22036EC18();
          (*(v86 + 8))(v84, v85);
          v79 = v176;
          sub_22036E568();
          (*v178)(v80, v82);
          goto LABEL_31;
        }

        v77 = MEMORY[0x277D84F90];
        v81 = v181;
LABEL_38:
        v97 = v167;
        sub_22031B268(v167, v167 + *(v81 + 48), v141, v77);

        if (sub_22036F258())
        {
          v98 = 3;
        }

        else
        {
          v98 = 4;
        }

        LODWORD(v184) = v98;
        v99 = v162;
        sub_22036E5C8();
        sub_22036E5B8();
        (*(v163 + 8))(v99, v69);
        v100 = v160;
        sub_22031C270(v97, v160);
        v101 = v171;

        v102 = v101;
        sub_22036F378();
        v103 = *(v179 + 8);
        v104 = v183;
        v103(v100, v183);
        sub_22031C270(v97, v100);
        v105 = *(v181 + 48);
        v106 = v161;
        sub_22031C270(v97, v161);
        v107 = v164;
        sub_22036F3B8();
        v103(v106, v104);
        v108 = v100 + v105;
        v109 = v102;
        v103(v108, v104);
        v110 = *(v102 + v170[14]);
        if (v110)
        {
          v111 = v107;
          v112 = v97;
          v113 = *(v109 + v170[13]);
          v114 = v166;
          v115 = v165;
          v116 = v168;
          if ((v113 & 0xFF00) == 0x500)
          {
            v117 = 0x8000000220391E40;
            sub_22031C2D4();
            swift_allocError();
            v119 = 0xD000000000000027;
LABEL_50:
            *v118 = v119;
            v118[1] = v117;
            swift_willThrow();

            sub_2202A6560(v143, v142);

            sub_2202A6560(v135, v136);

            (*(v115 + 8))(v111, v114);
            (*(v116 + 8))(v169, v177);
            sub_22031C328(v112, sub_22031C05C);
            v121 = v109;
            return sub_22031C328(v121, type metadata accessor for StocksSession);
          }

          v122 = *(v109 + v170[15]);
          if (!v122)
          {
            v117 = 0x8000000220391E70;
            sub_22031C2D4();
            swift_allocError();
            v119 = 0xD00000000000002CLL;
            goto LABEL_50;
          }

          v123 = v111;
          v58 = v158;
          (*(v168 + 32))(v158, v169, v177);
          v124 = v154;
          (*(v115 + 32))(v58 + *(v154 + 20), v123, v114);
          *(v58 + v124[6]) = v110;
          *(v58 + v124[7]) = v113;
          *(v58 + v124[8]) = v184;
          *(v58 + v124[9]) = v122;
          v125 = v58 + v124[10];
          *(v125 + 32) = 0;
          *v125 = 0u;
          *(v125 + 16) = 0u;
          *(v125 + 40) = 1;
          sub_22036E418();
          swift_allocObject();

          sub_22036E408();
          v126 = v155;
          *v155 = sub_22031BCA0;
          v126[1] = 0;
          (*(v156 + 104))(v126, *MEMORY[0x277CC8770], v157);
          sub_22036E3E8();
          sub_22031C504(&qword_281264C00, type metadata accessor for AppSessionEndEvent.Model, &protocol conformance descriptor for AppSessionEndEvent.Model);
          v127 = v185;
          sub_22036E3F8();
          if (!v127)
          {
            v185 = 0;
            v128 = objc_allocWithZone(sub_22036F208());
            if (sub_22036F218())
            {
              sub_22036F278();
              sub_22036F228();
              type metadata accessor for AppSessionEndEvent(0);
              sub_22031C504(qword_281264B50, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
              v129 = v151;
              sub_22036ED38();
              sub_22036F088();
              sub_22031C388(0, &qword_281261B38, sub_22031C3EC, MEMORY[0x277D84560]);
              v130 = swift_allocObject();
              *(v130 + 16) = xmmword_220371600;
              v131 = v153;
              *(v130 + 56) = v153;
              *(v130 + 64) = sub_22031C504(&qword_2812668B8, sub_22031BFC8, MEMORY[0x277CEACA8]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v130 + 32));
              (*(v152 + 32))(boxed_opaque_existential_1, v129, v131);
              sub_2202A6560(v143, v142);

              sub_2202A6560(v135, v136);

              sub_22031C328(v58, type metadata accessor for AppSessionEndEvent.Model);
              sub_22031C328(v167, sub_22031C05C);
              sub_22031C328(v171, type metadata accessor for StocksSession);
              return v130;
            }

            goto LABEL_54;
          }

          sub_2202A6560(v143, v142);

          sub_2202A6560(v135, v136);

          sub_22031C328(v58, type metadata accessor for AppSessionEndEvent.Model);
          sub_22031C328(v167, sub_22031C05C);
          v121 = v171;
        }

        else
        {
          sub_22031C2D4();
          swift_allocError();
          *v120 = 0xD00000000000002DLL;
          v120[1] = 0x8000000220391E10;
          swift_willThrow();
          sub_2202A6560(v143, v142);

          sub_2202A6560(v135, v136);
          (*(v165 + 8))(v107, v166);
          (*(v168 + 8))(v169, v177);
          sub_22031C328(v97, sub_22031C05C);
          v121 = v102;
        }

        return sub_22031C328(v121, type metadata accessor for StocksSession);
      }

      v75 = v67;

      sub_22036E4B8();

      swift_willThrow();
      sub_2202A6560(v143, v142);
    }

    if (v53 >= v54[2])
    {
      __break(1u);
LABEL_54:
      sub_22031C2D4();
      swift_allocError();
      *v133 = 0xD00000000000001CLL;
      v133[1] = 0x8000000220391EA0;
      swift_willThrow();
      sub_2202A6560(v143, v142);

      sub_2202A6560(v135, v136);

      sub_22031C328(v58, type metadata accessor for AppSessionEndEvent.Model);
      sub_22031C328(v167, sub_22031C05C);
      v121 = v171;
      return sub_22031C328(v121, type metadata accessor for StocksSession);
    }

    v60 = v54;
    (*(v55 + 16))(v58, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53, v57);
    v61 = v147;
    sub_22036EC78();
    v62 = sub_22036EC58();
    v64 = v63;
    (*v56)(v61, v148);
    if (v62 == 0xD000000000000012 && 0x8000000220391DF0 == v64)
    {
      break;
    }

    ++v53;
    v59 = sub_220370048();

    v58 = v149;
    v57 = v150;
    (*v178)(v149, v150);
    v54 = v60;
    v55 = v184;
    if (v59)
    {
      goto LABEL_18;
    }
  }

  (*v178)(v149, v150);
LABEL_18:

  sub_2202A6560(v143, v142);

  return MEMORY[0x277D84F90];
}

void *sub_22031B1A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220370138();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_220370058();
    __swift_destroy_boxed_opaque_existential_1(v3);
    return sub_22036E568();
  }

  return result;
}

uint64_t sub_22031B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v37 = a1;
  v38 = a2;
  sub_22031C388(0, &qword_281266AC0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_22036E5A8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  sub_22036F248();
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    sub_22036E598();
    if (v23(v12, 1, v13) != 1)
    {
      sub_22031C200(v12, &qword_281266AC0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v14 + 32))(v22, v12, v13);
  }

  v24 = v36;
  sub_22031B740(v36, v10);
  if (v23(v10, 1, v13) == 1)
  {
    (*(v14 + 16))(v20, v22, v13);
    if (v23(v10, 1, v13) != 1)
    {
      sub_22031C200(v10, &qword_281266AC0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v14 + 32))(v20, v10, v13);
  }

  sub_22031B9F0(v24, v7);
  if (v23(v7, 1, v13) == 1)
  {
    (*(v14 + 16))(v17, v22, v13);
    v25 = v23(v7, 1, v13);
    v26 = v37;
    if (v25 != 1)
    {
      sub_22031C200(v7, &qword_281266AC0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v7, v13);
    v26 = v37;
  }

  sub_22031C504(&qword_281266AC8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v27 = sub_22036FA98();
  v28 = *(v14 + 16);
  if (v27)
  {
    v29 = v20;
  }

  else
  {
    v29 = v22;
  }

  v28(v26, v29, v13);
  v30 = sub_22036FAA8();
  v31 = v20;
  v32 = v26;
  v33 = *(v14 + 8);
  v33(v31, v13);
  v33(v22, v13);
  if (v30)
  {
    return (*(v14 + 32))(v38, v17, v13);
  }

  v33(v17, v13);
  return (v28)(v38, v32, v13);
}

uint64_t sub_22031B740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036E5A8();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_22031C504(&qword_281266AC8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_22036FA98();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_22031B9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036E5A8();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_22031C504(&qword_281266AC8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_22036FA98();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void sub_22031BCA0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220370158();
  sub_22036E578();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_220370068();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t FlushAnalyticsBatchesStartupTask.deinit()
{
  v1 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v2 = sub_22036F5C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FlushAnalyticsBatchesStartupTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v2 = sub_22036F5C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t static StartupTaskGroup.flushAnalytics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281266660 != -1)
  {
    swift_once();
  }

  v2 = sub_22036F5C8();
  v3 = __swift_project_value_buffer(v2, qword_281266668);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_22031BFC8(uint64_t a1)
{
  if (!qword_2812668B0)
  {
    type metadata accessor for AppSessionEndEvent(255);
    sub_22031C504(qword_281264B50, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
    v1 = sub_22036ED58();
    if (!v2)
    {
      atomic_store(v1, &qword_2812668B0);
    }
  }
}

void sub_22031C05C(uint64_t a1)
{
  if (!qword_281266AD8)
  {
    sub_22036E5A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281266AD8);
    }
  }
}

void sub_22031C0C4()
{
  if (!qword_281261F90)
  {
    v0 = sub_22036FA68();
    if (!v1)
    {
      atomic_store(v0, &qword_281261F90);
    }
  }
}

unint64_t sub_22031C128()
{
  result = qword_281261F78;
  if (!qword_281261F78)
  {
    sub_22031C388(255, &qword_281261F80, MEMORY[0x277CEAC80], MEMORY[0x277D83940]);
    sub_22031C504(&qword_281266978, MEMORY[0x277CEAC80], MEMORY[0x277CEAC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261F78);
  }

  return result;
}

uint64_t sub_22031C200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22031C388(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22031C270(uint64_t a1, uint64_t a2)
{
  sub_22031C05C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22031C2D4()
{
  result = qword_2812665F8;
  if (!qword_2812665F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812665F8);
  }

  return result;
}

uint64_t sub_22031C328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22031C388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_22031C3EC()
{
  result = qword_2812666E0;
  if (!qword_2812666E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812666E0);
  }

  return result;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22031C504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22031C574(uint64_t a1, uint64_t a2)
{
  v3 = sub_22036E778();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22031C71C(&v11);
    v7 = v11;
    if (v11 != 12)
    {
      sub_22036EF08();
      (*(v4 + 16))(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
      v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v9 = swift_allocObject();
      (*(v4 + 32))(v9 + v8, &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
      *(v9 + v8 + v5) = v7;
      sub_22036F308();
    }
  }

  return result;
}

uint64_t sub_22031C71C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_22036E778();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D691E8])
  {
    v9 = 6;
LABEL_5:
    *a1 = v9;
    return (*(v5 + 8))(v7, v4);
  }

  if (v8 == *MEMORY[0x277D69208])
  {
    v9 = 4;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D69218])
  {
    (*(v5 + 96))(v7, v4);
    sub_22031DC6C(0);
    v12 = *(v11 + 48);
    *a1 = 0;
LABEL_17:
    v18 = sub_22036E6A8();
    (*(*(v18 - 8) + 8))(&v7[v12], v18);
    v19 = sub_22036F6F8();
    return (*(*(v19 - 8) + 8))(v7, v19);
  }

  if (v8 == *MEMORY[0x277D69210])
  {
    (*(v5 + 96))(v7, v4);
    sub_22031DC6C(0);
    v12 = *(v13 + 48);
    v14 = 2;
LABEL_16:
    *a1 = v14;
    goto LABEL_17;
  }

  if (v8 == *MEMORY[0x277D69220])
  {
    (*(v5 + 96))(v7, v4);
    sub_22031DC6C(0);
    v12 = *(v15 + 48);
    v14 = 1;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277D69228])
  {
    (*(v5 + 96))(v7, v4);
    sub_22031DC6C(0);
    v12 = *(v16 + 48);
    v14 = 3;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277D691E0])
  {
    (*(v5 + 96))(v7, v4);
    sub_22031DC6C(0);
    v12 = *(v17 + 48);
    v14 = 5;
    goto LABEL_16;
  }

  if (v8 == *MEMORY[0x277D69200])
  {
    v9 = 7;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D691D0])
  {
    v9 = 8;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D691F0])
  {
    v9 = 9;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D69230])
  {
    v9 = 10;
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D691F8])
  {
    v20 = 11;
  }

  else
  {
    v20 = 12;
  }

  *a1 = v20;
  return (*(v5 + 8))(v7, v4);
}

void sub_22031CAC0(char *a1, uint64_t a2, int a3)
{
  sub_22031DBC0(0, &qword_281266AB8, MEMORY[0x277D691D8], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v88 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v65 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v86 = &v65 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - v14;
  v16 = sub_22036E5A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NetworkEventData(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() sharedNetworkReachability];
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = v23;
  if ([v23 isNetworkReachableViaWiFi])
  {

    v84 = 1;
  }

  else
  {
    v83 = v15;
    v25 = v17;
    v26 = a1;
    v27 = a3;
    v28 = v19;
    v29 = [v24 cellularRadioAccessTechnology];

    if ((v29 - 1) > 0xC)
    {
      v84 = 0;
    }

    else
    {
      v84 = byte_220387482[(v29 - 1)];
    }

    v19 = v28;
    a3 = v27;
    a1 = v26;
    v17 = v25;
    v15 = v83;
  }

  sub_22036E768();
  sub_22036E6B8();
  v31 = v30 * 1000.0;
  if (COERCE__INT64(fabs(v30 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_22036E708();
  v33 = v32 * 1000.0;
  if (COERCE__INT64(fabs(v32 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_22036E718();
  v35 = v34 * 1000.0;
  if (COERCE__INT64(fabs(v34 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_22036E728();
  v37 = v36 * 1000.0;
  if (COERCE__INT64(fabs(v36 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_22036E6D8();
  v39 = v38 * 1000.0;
  if (COERCE__INT64(fabs(v38 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v80 = v17;
  v81 = v16;
  v82 = a3;
  v83 = a1;
  v78 = sub_22036E6C8();
  v77 = sub_22036E6F8();
  v76 = sub_22036E758();
  sub_22036E748();
  v40 = sub_22036E6A8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v15, 1, v40) == 1)
  {
    sub_22031DB34(v15);
    v75 = 0;
    v74 = 0;
  }

  else
  {
    v75 = sub_22036E658();
    v74 = v43;
    (*(v41 + 8))(v15, v40);
  }

  sub_22036E748();
  v44 = v85;
  v45 = v42(v85, 1, v40);
  v79 = v19;
  if (v45 == 1)
  {
    sub_22031DB34(v44);
    v73 = 0;
  }

  else
  {
    v73 = sub_22036E698();
    (*(v41 + 8))(v44, v40);
  }

  sub_22036E748();
  v46 = v86;
  v47 = v42(v86, 1, v40);
  if (v47 == 1)
  {
    sub_22031DB34(v46);
    v85 = 0;
  }

  else
  {
    v85 = sub_22036E688();
    (*(v41 + 8))(v46, v40);
  }

  sub_22036E748();
  v48 = v87;
  if (v42(v87, 1, v40) == 1)
  {
    sub_22031DB34(v48);
    v86 = MEMORY[0x277D84F90];
  }

  else
  {
    v86 = sub_22036E678();
    (*(v41 + 8))(v48, v40);
  }

  sub_22036E748();
  v49 = v88;
  if (v42(v88, 1, v40) == 1)
  {
    sub_22031DB34(v49);
    v87 = MEMORY[0x277D84F90];
  }

  else
  {
    v87 = sub_22036E668();
    (*(v41 + 8))(v49, v40);
  }

  LODWORD(v88) = v47 == 1;
  v72 = v45 == 1;
  v66 = v35;
  v68 = v37;
  v67 = v39;
  v71 = sub_22036E6E8();
  v70 = v50;
  v69 = sub_22036E738();
  v51 = &v22[v20[10]];
  v52 = &v22[v20[16]];
  v53 = &v22[v20[17]];
  v54 = v20[18];
  v65 = v20[19];
  v55 = &v22[v54];
  v56 = v20[20];
  v57 = &v22[v20[21]];
  (*(v80 + 32))(v22, v79, v81);
  v22[v20[5]] = 2;
  *&v22[v20[6]] = v31;
  *&v22[v20[7]] = v33;
  *&v22[v20[8]] = v66;
  *&v22[v20[9]] = v68;
  *v51 = v67;
  v51[8] = 0;
  *&v22[v20[11]] = v78;
  *&v22[v20[12]] = v77;
  *&v22[v20[13]] = v76;
  v22[v20[14]] = v82;
  v22[v20[15]] = v84;
  v58 = v74;
  *v52 = v75;
  v52[1] = v58;
  *v53 = v73;
  v53[8] = v72;
  *v55 = v85;
  v55[8] = v88;
  v59 = v87;
  *&v22[v65] = v86;
  *&v22[v56] = v59;
  v60 = v70;
  *v57 = v71;
  v57[1] = v60;
  v22[v20[22]] = v69 & 1;
  sub_22031DBC0(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v61 = sub_22036EE48();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_220371600;
  (*(v62 + 104))(v64 + v63, *MEMORY[0x277CEAD18], v61);
  sub_22031DC24(&qword_2812651D8, type metadata accessor for NetworkEventData, &protocol conformance descriptor for NetworkEventData);
  sub_22036EDA8();

  sub_2201FB380(v22, type metadata accessor for NetworkEventData);
  type metadata accessor for TelemetryEvent(0);
  sub_22031DC24(&unk_281265790, type metadata accessor for TelemetryEvent, &protocol conformance descriptor for TelemetryEvent);
  memset(v89, 0, 32);
  sub_22036EDC8();
  sub_2201FB380(v89, sub_220235980);
}

uint64_t sub_22031D5B8()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_22031D600(uint64_t a1, uint64_t a2)
{
  v4 = sub_22036E5A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_22036E598();
  sub_22036EEA8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22031D784()
{
  v0 = sub_22036E5A8();
  v12 = *(v0 - 8);
  v13 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22036E5D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F2D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CEAE78], v7);
  sub_22036E5C8();
  sub_22036E5B8();
  (*(v4 + 8))(v6, v3);
  sub_22036E598();
  sub_22036EEC8();

  (*(v12 + 8))(v2, v13);
  return (*(v8 + 8))(v10, v7);
}

void sub_22031DAA4(char *a1)
{
  v3 = *(sub_22036E778() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_22031CAC0(a1, v4, v5);
}

uint64_t sub_22031DB34(uint64_t a1)
{
  sub_22031DBC0(0, &qword_281266AB8, MEMORY[0x277D691D8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22031DBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22031DC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22031DC6C(uint64_t a1)
{
  if (!qword_281266638)
  {
    sub_22036F6F8();
    sub_22036E6A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281266638);
    }
  }
}

uint64_t sub_22031DD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000220391FC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22031DDE4(uint64_t a1)
{
  v2 = sub_22031DFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031DE20(uint64_t a1)
{
  v2 = sub_22031DFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdEngagementData.encode(to:)(void *a1)
{
  sub_22031E1F8(0, &qword_27CF289E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031DFB8();
  sub_220370168();
  v11 = v8;
  sub_22031E00C();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22031DFB8()
{
  result = qword_27CF289F0;
  if (!qword_27CF289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289F0);
  }

  return result;
}

unint64_t sub_22031E00C()
{
  result = qword_27CF289F8;
  if (!qword_27CF289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF289F8);
  }

  return result;
}

uint64_t AdEngagementData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22031E1F8(0, &qword_27CF28A00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031DFB8();
  sub_220370148();
  if (!v2)
  {
    sub_22031E25C();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031E1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031DFB8();
    v7 = a3(a1, &type metadata for AdEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031E25C()
{
  result = qword_27CF28A08;
  if (!qword_27CF28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A08);
  }

  return result;
}

unint64_t sub_22031E30C()
{
  result = qword_27CF28A10;
  if (!qword_27CF28A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A10);
  }

  return result;
}

unint64_t sub_22031E364()
{
  result = qword_27CF28A18;
  if (!qword_27CF28A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A18);
  }

  return result;
}

unint64_t sub_22031E3BC()
{
  result = qword_27CF28A20;
  if (!qword_27CF28A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A20);
  }

  return result;
}

uint64_t sub_22031E4D8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28A58);
  __swift_project_value_buffer(v0, qword_27CF28A58);
  return sub_22036F108();
}

uint64_t ClearRecommendationsEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ClearRecommendationsEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ClearRecommendationsEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22031E6F4(uint64_t a1)
{
  v2 = sub_22031E8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031E730(uint64_t a1)
{
  v2 = sub_22031E8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClearRecommendationsEvent.Model.encode(to:)(void *a1)
{
  sub_22031EBCC(0, &qword_27CF28A70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031E8E0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22031E8E0()
{
  result = qword_27CF28A78;
  if (!qword_27CF28A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28A78);
  }

  return result;
}

uint64_t ClearRecommendationsEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22031EBCC(0, &qword_27CF28A80, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ClearRecommendationsEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031E8E0();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_22031EC50(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031EBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031E8E0();
    v7 = a3(a1, &type metadata for ClearRecommendationsEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22031EC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearRecommendationsEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22031ECCC(void *a1)
{
  sub_22031EBCC(0, &qword_27CF28A70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031E8E0();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22031EF6C()
{
  result = qword_27CF28AA8;
  if (!qword_27CF28AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AA8);
  }

  return result;
}

unint64_t sub_22031EFC4()
{
  result = qword_27CF28AB0;
  if (!qword_27CF28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AB0);
  }

  return result;
}

unint64_t sub_22031F01C()
{
  result = qword_27CF28AB8;
  if (!qword_27CF28AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AB8);
  }

  return result;
}

uint64_t sub_22031F0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000220391FE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22031F16C(uint64_t a1)
{
  v2 = sub_22031F340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031F1A8(uint64_t a1)
{
  v2 = sub_22031F340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingScreenData.encode(to:)(void *a1)
{
  sub_22031F580(0, &qword_27CF28AC0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031F340();
  sub_220370168();
  v11 = v8;
  sub_22031F394();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22031F340()
{
  result = qword_27CF28AC8;
  if (!qword_27CF28AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AC8);
  }

  return result;
}

unint64_t sub_22031F394()
{
  result = qword_27CF28AD0;
  if (!qword_27CF28AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AD0);
  }

  return result;
}

uint64_t OnboardingScreenData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22031F580(0, &qword_27CF28AD8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031F340();
  sub_220370148();
  if (!v2)
  {
    sub_22031F5E4();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031F580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031F340();
    v7 = a3(a1, &type metadata for OnboardingScreenData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031F5E4()
{
  result = qword_27CF28AE0;
  if (!qword_27CF28AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AE0);
  }

  return result;
}

unint64_t sub_22031F694()
{
  result = qword_27CF28AE8;
  if (!qword_27CF28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AE8);
  }

  return result;
}

unint64_t sub_22031F6EC()
{
  result = qword_27CF28AF0;
  if (!qword_27CF28AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AF0);
  }

  return result;
}

unint64_t sub_22031F744()
{
  result = qword_27CF28AF8;
  if (!qword_27CF28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28AF8);
  }

  return result;
}

uint64_t URLReferralData.referralData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_220235490(v8, &v7);
}

void URLReferralData.campaignData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_220298C74(v2, v3, v4, v5, v6, v7);
}

uint64_t URLReferralData.adReferralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  a1[1] = v3;
  return sub_22027C714(v2, v3);
}

uint64_t get_enum_tag_for_layout_string_15StocksAnalytics12CampaignDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15StocksAnalytics14AdReferralDataVSg(uint64_t a1)
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

uint64_t sub_22031F874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22031F8BC(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_22031F998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000220392000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22031FA2C(uint64_t a1)
{
  v2 = sub_22031FC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22031FA68(uint64_t a1)
{
  v2 = sub_22031FC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartData.encode(to:)(void *a1)
{
  sub_22031FE40(0, &qword_27CF28B00, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031FC00();
  sub_220370168();
  v11 = v8;
  sub_22031FC54();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22031FC00()
{
  result = qword_27CF28B08;
  if (!qword_27CF28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B08);
  }

  return result;
}

unint64_t sub_22031FC54()
{
  result = qword_27CF28B10;
  if (!qword_27CF28B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B10);
  }

  return result;
}

uint64_t SymbolChartData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22031FE40(0, &qword_27CF28B18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22031FC00();
  sub_220370148();
  if (!v2)
  {
    sub_22031FEA4();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22031FE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22031FC00();
    v7 = a3(a1, &type metadata for SymbolChartData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22031FEA4()
{
  result = qword_27CF28B20;
  if (!qword_27CF28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B20);
  }

  return result;
}

unint64_t sub_22031FEFC()
{
  result = qword_27CF28B28;
  if (!qword_27CF28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B28);
  }

  return result;
}

unint64_t sub_22031FF54()
{
  result = qword_27CF28B30;
  if (!qword_27CF28B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B30);
  }

  return result;
}

unint64_t sub_22031FFFC()
{
  result = qword_27CF28B38;
  if (!qword_27CF28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B38);
  }

  return result;
}

unint64_t sub_220320054()
{
  result = qword_27CF28B40;
  if (!qword_27CF28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B40);
  }

  return result;
}

unint64_t sub_2203200AC()
{
  result = qword_27CF28B48;
  if (!qword_27CF28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B48);
  }

  return result;
}

__n128 AppSessionEndEvent.Model.init(eventData:timedData:watchedSymbolListData:orientationData:viewEndData:watchlistSummaryData:userEventStorageData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *(a7 + 32);
  v17 = *(a7 + 40);
  v18 = sub_22036F388();
  v24 = *(a7 + 16);
  v25 = *a7;
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for AppSessionEndEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  (*(*(v21 - 8) + 32))(a8 + v20, a2, v21);
  *(a8 + v19[6]) = v12;
  *(a8 + v19[7]) = v13;
  *(a8 + v19[8]) = v14;
  *(a8 + v19[9]) = v15;
  v22 = a8 + v19[10];
  result = v25;
  *v22 = v25;
  *(v22 + 16) = v24;
  *(v22 + 32) = v16;
  *(v22 + 40) = v17;
  return result;
}

uint64_t sub_2203202FC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281264C28);
  __swift_project_value_buffer(v0, qword_281264C28);
  return sub_22036F108();
}

uint64_t AppSessionEndEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.watchlistSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.watchlistSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 36);
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.userEventStorageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4, &type metadata for UserEventStorageData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220320CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AppSessionEndEvent.userEventStorageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 40);
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4, &type metadata for UserEventStorageData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  v16 = *MEMORY[0x277CEACF0];
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4, &type metadata for UserEventStorageData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v15, v16, v17);
}

uint64_t sub_22032118C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AppSessionEndEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 24));
}

uint64_t AppSessionEndEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AppSessionEndEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppSessionEndEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AppSessionEndEvent.Model.watchlistSummaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 36));
}

__n128 AppSessionEndEvent.Model.userEventStorageData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 40);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_220321350()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x7461746E6569726FLL;
  if (v1 != 3)
  {
    v4 = 0x44646E4577656976;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 == 1)
  {
    v5 = 0x74614464656D6974;
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

uint64_t sub_220321448@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203227E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220321470(uint64_t a1)
{
  v2 = sub_22032189C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203214AC(uint64_t a1)
{
  v2 = sub_22032189C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220321F48(0, &qword_281261C48, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032189C();
  sub_220370168();
  LOBYTE(v16[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AppSessionEndEvent.Model(0);
    LOBYTE(v16[0]) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    *&v16[0] = *(v3 + v10[6]);
    v19 = 2;
    sub_22023D96C();

    sub_22036FFF8();

    LOWORD(v16[0]) = *(v3 + v10[7]);
    v19 = 3;
    sub_2201F8860();
    sub_22036FFF8();
    LOBYTE(v16[0]) = *(v3 + v10[8]);
    v19 = 4;
    sub_2202310D4();
    sub_22036FFF8();
    *&v16[0] = *(v3 + v10[9]);
    v19 = 5;
    sub_2202AADBC();

    sub_22036FFF8();

    v12 = v3 + v10[10];
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
    v15 = *(v12 + 16);
    v16[0] = *v12;
    v16[1] = v15;
    v17 = v13;
    v18 = v14;
    v19 = 6;
    sub_220309FB4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22032189C()
{
  result = qword_281264C18;
  if (!qword_281264C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C18);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_22036F3C8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220321F48(0, &qword_281261DC8, MEMORY[0x277D844C8]);
  v36 = v8;
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AppSessionEndEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032189C();
  v35 = v10;
  v14 = v37;
  sub_220370148();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v37 = v11;
  v16 = v13;
  v18 = v30;
  v17 = v31;
  v19 = v32;
  LOBYTE(v38) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  v20 = *(v18 + 32);
  v21 = v34;
  v34 = v6;
  v20(v16, v21);
  LOBYTE(v38) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v17 + 32))(v16 + v37[5], v15, v19);
  v42 = 2;
  sub_22023D918();
  sub_22036FF28();
  v22 = v33;
  *(v16 + v37[6]) = v38;
  v42 = 3;
  sub_2201F8808();
  sub_22036FF28();
  *(v16 + v37[7]) = v38;
  v42 = 4;
  sub_220231080();
  sub_22036FF28();
  *(v16 + v37[8]) = v38;
  v42 = 5;
  sub_2202AAD64();
  sub_22036FF28();
  *(v16 + v37[9]) = v38;
  v42 = 6;
  sub_220309F5C();
  sub_22036FEB8();
  (*(v22 + 8))(v35, v36);
  v23 = v40;
  v24 = v41;
  v25 = v16 + v37[10];
  v26 = v39;
  *v25 = v38;
  *(v25 + 16) = v26;
  *(v25 + 32) = v23;
  *(v25 + 40) = v24;
  sub_220321FAC(v16, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220322010(v16);
}

void sub_220321F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22032189C();
    v7 = a3(a1, &type metadata for AppSessionEndEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220321FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220322010(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220322144@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220320CA4(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220320CA4(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_220320CA4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_220320CA4(0, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  v17 = *MEMORY[0x277CEACF0];
  sub_220320CA4(0, &qword_2812668A0, sub_220309F5C, sub_220309FB4, &type metadata for UserEventStorageData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v16, v17, v18);
}

void sub_220322490(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220320CA4(319, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
      if (v3 <= 0x3F)
      {
        sub_220320CA4(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
        if (v4 <= 0x3F)
        {
          sub_220320CA4(319, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
          if (v5 <= 0x3F)
          {
            sub_220320CA4(319, &qword_281266778, sub_2202AAD64, sub_2202AADBC, &type metadata for WatchlistSummaryData);
            if (v6 <= 0x3F)
            {
              sub_220320CA4(319, &qword_2812668A0, sub_220309F5C, sub_220309FB4, &type metadata for UserEventStorageData);
              if (v7 <= 0x3F)
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

unint64_t sub_2203226E0()
{
  result = qword_27CF28B50;
  if (!qword_27CF28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B50);
  }

  return result;
}

unint64_t sub_220322738()
{
  result = qword_281264C08;
  if (!qword_281264C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C08);
  }

  return result;
}

unint64_t sub_220322790()
{
  result = qword_281264C10;
  if (!qword_281264C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264C10);
  }

  return result;
}

uint64_t sub_2203227E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392020 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392040 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_220322A74()
{
  v0 = sub_22036EB48();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22036EB38();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2201F9084(0, &qword_281266998, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_22036EB88();
  qword_281266A48 = result;
  return result;
}

uint64_t Settings.Analytics2.Debugging.Jitter.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22036EB38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_22036EB08();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t sub_220322DB0()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22036EAF8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203235CC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_22036EB58();
  qword_281266A70 = result;
  return result;
}

uint64_t sub_220322F80()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22036EB48();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 1;
  sub_2201F9084(0, &qword_281266998, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_22036EB88();
  qword_27CF28B58 = result;
  return result;
}

uint64_t sub_220323174()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F9084(0, &qword_27CF28B70, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v5[3] = 0xC082C00000000000;
  v5[1] = 0;
  v5[2] = 0xFFEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  result = sub_22036EB68();
  qword_27CF28B60 = result;
  return result;
}

uint64_t sub_2203232E0()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F9084(0, &qword_27CF28B70, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v5[2] = 0;
  v5[3] = 0x4082C00000000000;
  v5[1] = 0x7FEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  result = sub_22036EB68();
  qword_27CF28B68 = result;
  return result;
}

uint64_t Settings.Analytics2.Debugging.Jitter.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22036EB38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v8 = sub_22036EB08();
  (*(v6 + 8))(a4, v5);
  return v8;
}

uint64_t Settings.Analytics2.Debugging.Jitter.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C15StocksAnalyticsE10Analytics2V9DebuggingV6JitterCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

void sub_2203235CC(uint64_t a1)
{
  if (!qword_2812669A8)
  {
    sub_22036EAF8();
    sub_220323630();
    v1 = sub_22036EB78();
    if (!v2)
    {
      atomic_store(v1, &qword_2812669A8);
    }
  }
}

unint64_t sub_220323630()
{
  result = qword_2812669B0;
  if (!qword_2812669B0)
  {
    sub_22036EAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812669B0);
  }

  return result;
}

uint64_t sub_220323750()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28B78);
  __swift_project_value_buffer(v0, qword_27CF28B78);
  return sub_22036F108();
}

uint64_t EOAFeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EOAFeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 24);
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 28);
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 32);
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 36);
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EOAFeedViewEvent.hostArticleNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 40);
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2203242A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t EOAFeedViewEvent.hostArticleChannelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EOAFeedViewEvent(0) + 44);
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EOAFeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for EOAFeedViewEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v16 - 8) + 104))(a1 + v15, v2, v16);
  v17 = v4[11];
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a1 + v17, v2, v18);
}

uint64_t sub_2203247FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t EOAFeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t EOAFeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t EOAFeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for EOAFeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t EOAFeedViewEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t EOAFeedViewEvent.Model.hostArticleNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 40);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t EOAFeedViewEvent.Model.hostArticleChannelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for EOAFeedViewEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 EOAFeedViewEvent.Model.init(eventData:timedData:viewData:feedData:orientationData:hostArticleViewData:hostArticleNewsArticleData:hostArticleChannelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, __int16 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 8);
  v16 = *(a4 + 1);
  v17 = *(a4 + 2);
  v30 = *a4;
  v31 = *a5;
  v32 = a6[1];
  v33 = *a6;
  v38 = *a8;
  v36 = a8[1].n128_u64[1];
  v37 = a8[1].n128_u64[0];
  v34 = a8[2].n128_u8[1];
  v35 = a8[2].n128_u8[0];
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for EOAFeedViewEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = a9 + v19[6];
  *v22 = v13;
  *(v22 + 8) = v14;
  *(v22 + 16) = v15;
  v23 = a9 + v19[7];
  *v23 = v30;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  *(a9 + v19[8]) = v31;
  v24 = (a9 + v19[9]);
  *v24 = v33;
  v24[1] = v32;
  v25 = a9 + v19[10];
  v26 = *(a7 + 48);
  *(v25 + 32) = *(a7 + 32);
  *(v25 + 48) = v26;
  *(v25 + 64) = *(a7 + 64);
  v27 = *(a7 + 16);
  *v25 = *a7;
  *(v25 + 16) = v27;
  v28 = (a9 + v19[11]);
  result = v38;
  *v28 = v38;
  v28[1].n128_u64[0] = v37;
  v28[1].n128_u64[1] = v36;
  v28[2].n128_u8[0] = v35;
  v28[2].n128_u8[1] = v34;
  return result;
}

unint64_t sub_220324C2C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0x7461746E6569726FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000013;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x746144746E657665;
    v3 = 0x6174614477656976;
    if (v1 != 2)
    {
      v3 = 0x6174614464656566;
    }

    if (*v0)
    {
      v2 = 0x74614464656D6974;
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
}

uint64_t sub_220324D40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220326568(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220324D68(uint64_t a1)
{
  v2 = sub_2203252DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220324DA4(uint64_t a1)
{
  v2 = sub_2203252DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EOAFeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220325B48(0, &qword_27CF28B90, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203252DC();
  sub_220370168();
  LOBYTE(v45) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for EOAFeedViewEvent.Model(0);
    LOBYTE(v45) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    *&v45 = v12;
    *(&v45 + 1) = v13;
    LOWORD(v46) = v11;
    LOBYTE(v40) = 2;
    sub_220202110();

    sub_22036FFF8();

    v14 = v3 + v10[7];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    LOBYTE(v45) = *v14;
    *(&v45 + 1) = v15;
    *&v46 = v16;
    LOBYTE(v40) = 3;
    sub_2201FBD1C();

    sub_22036FFF8();

    LOWORD(v45) = *(v3 + v10[8]);
    LOBYTE(v40) = 4;
    sub_2201F8860();
    sub_22036FFF8();
    v18 = (v3 + v10[9]);
    v19 = v18[1];
    v51 = *v18;
    v52 = v19;
    v50 = 5;
    sub_220250F98();

    sub_22036FFF8();

    v20 = (v3 + v10[10]);
    v21 = v20[1];
    v22 = v20[3];
    v47 = v20[2];
    v48 = v22;
    v23 = v20[1];
    v45 = *v20;
    v46 = v23;
    v41 = v21;
    v42 = v47;
    v43 = v20[3];
    v49 = *(v20 + 16);
    v44 = *(v20 + 16);
    v40 = v45;
    v39 = 6;
    sub_22022ECDC(&v45, v37);
    sub_22022EDA0();
    sub_22036FFF8();
    v37[2] = v42;
    v37[3] = v43;
    v38 = v44;
    v37[0] = v40;
    v37[1] = v41;
    sub_22022ED14(v37);
    v24 = (v3 + v10[11]);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = *(v24 + 32);
    LOBYTE(v24) = *(v24 + 33);
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v24;
    v30[7] = 7;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2203252DC()
{
  result = qword_27CF28B98;
  if (!qword_27CF28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28B98);
  }

  return result;
}

uint64_t EOAFeedViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_22036F3C8();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F388();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220325B48(0, &qword_27CF28BA0, MEMORY[0x277D844C8]);
  v45 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for EOAFeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203252DC();
  v47 = v11;
  v15 = v48;
  sub_220370148();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v6;
  v48 = a1;
  v18 = v43;
  v17 = v44;
  LOBYTE(v54) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  v19 = *(v41 + 32);
  v20 = v46;
  v46 = v7;
  v19(v14, v20, v7);
  LOBYTE(v54) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v17 + 32))(&v14[v12[5]], v16, v18);
  LOBYTE(v49) = 2;
  sub_2202020B8();
  sub_22036FF28();
  v21 = *(&v54 + 1);
  v22 = v55;
  v23 = &v14[v12[6]];
  *v23 = v54;
  *(v23 + 1) = v21;
  *(v23 + 8) = v22;
  LOBYTE(v49) = 3;
  sub_2201FBCC4();
  sub_22036FF28();
  v24 = v48;
  v25 = v42;
  v26 = *(&v54 + 1);
  v27 = v55;
  v28 = &v14[v12[7]];
  *v28 = v54;
  *(v28 + 1) = v26;
  *(v28 + 2) = v27;
  LOBYTE(v49) = 4;
  sub_2201F8808();
  sub_22036FF28();
  *&v14[v12[8]] = v54;
  LOBYTE(v49) = 5;
  sub_220250F44();
  sub_22036FF28();
  v29 = *(&v54 + 1);
  v30 = &v14[v12[9]];
  *v30 = v54;
  *(v30 + 1) = v29;
  v60 = 6;
  sub_22022ED48();
  sub_22036FF28();
  v31 = &v14[v12[10]];
  v32 = v57;
  *(v31 + 2) = v56;
  *(v31 + 3) = v32;
  *(v31 + 16) = v58;
  v33 = v55;
  *v31 = v54;
  *(v31 + 1) = v33;
  v59 = 7;
  sub_220236A30();
  sub_22036FF28();
  (*(v25 + 8))(v47, v45);
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v38 = &v14[v12[11]];
  *v38 = v49;
  *(v38 + 2) = v34;
  *(v38 + 3) = v35;
  v38[32] = v36;
  v38[33] = v37;
  sub_220325BAC(v14, v40);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_220325C10(v14);
}

void sub_220325B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203252DC();
    v7 = a3(a1, &type metadata for EOAFeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220325BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220325C10(uint64_t a1)
{
  v2 = type metadata accessor for EOAFeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220325D44@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2203242A8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2203242A8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2203242A8(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_2203242A8(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_2203242A8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v17 - 8) + 104))(a2 + v16, v4, v17);
  v18 = a1[11];
  sub_2203242A8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a2 + v18, v4, v19);
}

void sub_2203260FC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2203242A8(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_2203242A8(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_2203242A8(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_2203242A8(319, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
            if (v6 <= 0x3F)
            {
              sub_2203242A8(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
              if (v7 <= 0x3F)
              {
                sub_2203242A8(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                if (v8 <= 0x3F)
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

uint64_t sub_220326388(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    result = sub_22036F3C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220326464()
{
  result = qword_27CF28BB8;
  if (!qword_27CF28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BB8);
  }

  return result;
}

unint64_t sub_2203264BC()
{
  result = qword_27CF28BC0;
  if (!qword_27CF28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BC0);
  }

  return result;
}

unint64_t sub_220326514()
{
  result = qword_27CF28BC8;
  if (!qword_27CF28BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BC8);
  }

  return result;
}

uint64_t sub_220326568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390500 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220390520 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220390540 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

StocksAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220326880()
{
  result = qword_27CF28BD0;
  if (!qword_27CF28BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BD0);
  }

  return result;
}

uint64_t sub_2203268D4()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C99C(v3, v1);
  return sub_220370128();
}

uint64_t sub_220326924(uint64_t a1)
{
  v2 = *v1;
  sub_220370108();
  sub_22032C99C(v4, v2);
  return sub_220370128();
}

uint64_t sub_2203269E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_220326AA8(&v0[OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfig]);
  v1 = OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate;
  v2 = sub_22036E5A8();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_220326AA8(uint64_t a1)
{
  sub_2201F57FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

StocksAnalytics::PaidSubscriptionStatus_optional __swiftcall PaidSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PaidSubscriptionStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6269726373627573;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6373627553746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C61697274;
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

unint64_t sub_220326C1C()
{
  result = qword_27CF28BD8;
  if (!qword_27CF28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28BD8);
  }

  return result;
}

uint64_t sub_220326C70()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220326D64(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220326E44(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220326F40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA00000000006465;
  v6 = 0x6269726373627573;
  v7 = 0x800000022038FE10;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6373627553746F6ELL;
    v7 = 0xED00006465626972;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C61697274;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2203270B0()
{
  result = qword_281263630;
  if (!qword_281263630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263630);
  }

  return result;
}

char *SessionObserver.__allocating_init(sessionManager:watchlistManager:cloudContext:userContext:client:kind:appConfigurationManager:appIntentExecutionTypeProvider:userEventHistoryStorage:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, void *a7, void *a8, uint64_t a9)
{
  v10 = v9;
  v18 = objc_allocWithZone(v10);
  v33 = *a6;
  swift_unknownObjectWeakInit();
  sub_2201F5DF4(a2, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager]);
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager] = a1;

  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker] = sub_22036EF08();
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] = a3;
  sub_2201F9BFC(a4, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext]);
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client] = a5;
  v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_kind] = v33;
  sub_2201F5DF4(a7, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager]);
  sub_2201F5DF4(a8, &v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider]);
  *&v18[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage] = a9;
  v37.receiver = v18;
  v37.super_class = v10;
  v35 = a3;
  v34 = a5;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v37, sel_init);
  sub_2201F7C9C();
  sub_22036EF08();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22036F318();

  v20 = [objc_opt_self() currentDevice];
  [v20 beginGeneratingDeviceOrientationNotifications];

  sub_2201F8378();
  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v19 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_2201F8974();
  *(swift_allocObject() + 16) = v19;
  v23 = v19;
  sub_22036EE98();

  *(swift_allocObject() + 16) = v23;
  v24 = v23;
  sub_22036EE98();

  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  sub_22036EE98();

  sub_2201F8378();
  v26 = [v21 defaultCenter];
  v27 = sub_22036FAC8();
  [v26 addObserver:v25 selector:sel_offerDidChange_ name:v27 object:0];

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_2201F50E8(&unk_2812654F0, v28, type metadata accessor for SessionObserver, &protocol conformance descriptor for SessionObserver);
  sub_22036E908();

  _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F50E8(&qword_281265500, v29, type metadata accessor for SessionObserver, &protocol conformance descriptor for SessionObserver);
  sub_22036E888();

  if (v33)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v30 = v25;

    sub_22036F318();

    sub_22036EF28();

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(a8);
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_2201F9480(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v25;
}

uint64_t SessionObserverKind.hashValue.getter()
{
  v1 = *v0;
  sub_220370108();
  MEMORY[0x223D79F30](v1);
  return sub_220370128();
}

void sub_220327790(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_2201F8378();
}

void (*SessionObserver.window.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_window;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_220327888;
}

void sub_220327888(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_2201F8378();
  }

  free(v3);
}

char *SessionObserver.init(sessionManager:watchlistManager:cloudContext:userContext:client:kind:appConfigurationManager:appIntentExecutionTypeProvider:userEventHistoryStorage:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned __int8 *a6, void *a7, void *a8, uint64_t a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v32 = *a6;
  swift_unknownObjectWeakInit();
  sub_2201F5DF4(a2, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager]);
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager] = a1;

  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker] = sub_22036EF08();
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] = a3;
  sub_2201F9BFC(a4, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext]);
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client] = a5;
  v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_kind] = v32;
  sub_2201F5DF4(a7, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager]);
  sub_2201F5DF4(a8, &v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider]);
  *&v10[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage] = a9;
  v36.receiver = v10;
  v36.super_class = ObjectType;
  v34 = a3;
  v33 = a5;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v36, sel_init);
  sub_2201F7C9C();
  sub_22036EF08();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22036F318();

  v20 = [objc_opt_self() currentDevice];
  [v20 beginGeneratingDeviceOrientationNotifications];

  sub_2201F8378();
  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v19 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_2201F8974();
  *(swift_allocObject() + 16) = v19;
  v23 = v19;
  sub_22036EE98();

  *(swift_allocObject() + 16) = v23;
  v24 = v23;
  sub_22036EE98();

  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  sub_22036EE98();

  sub_2201F8378();
  v26 = [v21 defaultCenter];
  v27 = sub_22036FAC8();
  [v26 addObserver:v25 selector:sel_offerDidChange_ name:v27 object:0];

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_2201F50E8(&unk_2812654F0, v28, type metadata accessor for SessionObserver, &protocol conformance descriptor for SessionObserver);
  sub_22036E908();

  _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F50E8(&qword_281265500, v29, type metadata accessor for SessionObserver, &protocol conformance descriptor for SessionObserver);
  sub_22036E888();

  if (v32)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v30 = v25;

    sub_22036F318();

    sub_22036EF28();

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(a8);
  __swift_destroy_boxed_opaque_existential_1(a7);
  sub_2201F9480(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v25;
}

uint64_t sub_220327EC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_2202C74DC(&v10);
      sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v6 = sub_22036EE48();
      v7 = *(v6 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_220371600;
      (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD10], v6);
      sub_220329BE4();
      sub_22036EDA8();

      type metadata accessor for AppSessionEndEvent(0);
      sub_2201F50E8(qword_281264B50, 255, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
      v10 = 0u;
      v11 = 0u;
      sub_22036EDC8();
      return sub_220235924(&v10);
    }

    if (a2 != 3)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v4 = swift_unknownObjectUnownedLoadStrong();
      sub_220328230(v3);

      type metadata accessor for AppSessionStartEvent(0);
      sub_2201F50E8(qword_281264200, 255, type metadata accessor for AppSessionStartEvent, &protocol conformance descriptor for AppSessionStartEvent);
      v10 = 0u;
      v11 = 0u;
      sub_22036EDC8();
      sub_220235924(&v10);
      type metadata accessor for AppSessionEndEvent(0);
      sub_2201F50E8(qword_281264B50, 255, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
      return sub_22036EDB8();
    }

LABEL_9:
    result = sub_22036FE08();
    __break(1u);
  }

  return result;
}

uint64_t sub_220328230(uint64_t a1)
{
  v53 = a1;
  sub_2201F8750(0, &qword_281266948, sub_220329B3C, &type metadata for WatchlistSummaryData);
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v43 - v3;
  sub_2201F8750(0, &unk_281266938, sub_220329B90, &type metadata for WatchedSymbolListData);
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v43 - v5;
  v6 = sub_22036EA88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v47 = v1;
  v13 = (v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager), *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager + 24));
  sub_22036E938();
  v45 = sub_22036EA78();
  v14 = *(v7 + 8);
  v58 = v6;
  v56 = v14;
  *&v57 = v7 + 8;
  v14(v12, v6);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v15 = sub_22036E898();
  v16 = *(v15 + 16);
  if (v16)
  {
    v59 = MEMORY[0x277D84F90];
    sub_2202BC71C(0, v16, 0);
    v17 = v59;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v20 = *(v18 + 64);
    v44 = v15;
    v21 = v15 + ((v20 + 32) & ~v20);
    v54 = *(v18 + 56);
    v55 = v19;
    do
    {
      v22 = v58;
      v23 = v18;
      v55(v10, v21, v58);
      v24 = sub_22036EA68();
      v25 = sub_22036EA78();
      v56(v10, v22);
      v59 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2202BC71C((v26 > 1), v27 + 1, 1);
        v17 = v59;
      }

      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = (v24 & 1) == 0;
      *(v28 + 40) = v25;
      v21 += v54;
      --v16;
      v18 = v23;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v29 = v45;
  v59 = v45;
  sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v56 = v30;
  v31 = sub_22036EE48();
  v32 = *(v31 - 8);
  v58 = *(v32 + 72);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v57 = xmmword_220371600;
  *(v34 + 16) = xmmword_220371600;
  v35 = *MEMORY[0x277CEAD10];
  v44 = *(v32 + 104);
  LODWORD(v54) = v35;
  v55 = v31;
  v44(v34 + v33, v35, v31);
  v43 = "SessionObserver";
  sub_220329B90();
  sub_22036EDA8();

  v47 = *(v47 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  v59 = v29;
  v36 = v46;
  sub_22036ECD8();
  v37 = swift_allocObject();
  *(v37 + 16) = v57;
  v38 = v31;
  v39 = v44;
  v44(v37 + v33, v35, v38);
  sub_22036EEB8();

  (*(v48 + 8))(v36, v49);
  v59 = v17;
  sub_220329B3C();
  sub_22036EDA8();
  v59 = v17;
  v40 = v50;
  sub_22036ECD8();
  v41 = swift_allocObject();
  *(v41 + 16) = v57;
  v39(v41 + v33, v54, v55);
  sub_22036EEB8();

  return (*(v51 + 8))(v40, v52);
}

id SessionObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() currentDevice];
  [v2 endGeneratingDeviceOrientationNotifications];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_220328B74()
{
  swift_getObjectType();

  return sub_22036EAC8();
}

uint64_t sub_220328BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_220328C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t SessionObserver.watchlistManagerWatchlistsDidChange(_:)()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_22036F308();
}

uint64_t SessionObserver.watchlistManager(_:observedChanges:in:)()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_22036F308();
}

uint64_t sub_220328DC4()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_22036F308();
}

Swift::Void __swiftcall SessionObserver.sceneDidEnterBackground()()
{
  sub_22036EF08();
  sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v0 = sub_22036EE48();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220371600;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277CEAD10], v0);
  sub_220329868();
  sub_22036F328();
}

uint64_t sub_220328FC0()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC8](ObjectType);
}

uint64_t sub_220328FFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC0](a1, a2, ObjectType);
}

uint64_t sub_220329054()
{
  sub_22036EF08();
  sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v0 = sub_22036EE48();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220371600;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277CEAD10], v0);
  sub_220329868();
  sub_22036F328();
}

uint64_t sub_2203291C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DD0](a1, a2, ObjectType);
}

uint64_t sub_220329220()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DA8](ObjectType);
}

uint64_t SessionObserver.processURL(for:)(uint64_t a1)
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v8, v7, v4);
  v1;
  sub_22036EE98();

  return sub_2202E5058();
}

uint64_t sub_2203293F0(uint64_t a1)
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  (*(v5 + 16))(&v12 - v6, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v8;
  sub_22036EE98();

  return sub_2202E5058();
}

uint64_t _s15StocksAnalytics15SessionObserverC8patternsSay13TeaFoundation17URLHandlerPatternVGvg_0()
{
  v0 = MEMORY[0x277D84560];
  sub_2201FB2BC(0, &qword_281261B18, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  sub_22036F6C8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220371600;
  sub_2201FB2BC(0, &unk_281261B20, MEMORY[0x277D6CCA0], v0);
  v2 = sub_22036F6A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22037EA40;
  v7 = (v6 + v5);
  *v7 = 0x6E676961706D6163;
  *(v7 + 1) = 0xEB0000000064695FLL;
  v8 = *(v3 + 104);
  (v8)(v7, *MEMORY[0x277D6CC80], v2);
  strcpy(&v7[v4], "campaign_type");
  *&v7[v4 + 14] = -4864;
  v8();
  v9 = &v7[2 * v4];
  *v9 = 0x6576697461657263;
  *(v9 + 1) = 0xEB0000000064695FLL;
  v8();
  v10 = &v7[3 * v4];
  *v10 = 0x695F656372756F73;
  *(v10 + 1) = 0xE900000000000064;
  v8();
  sub_2203042BC(MEMORY[0x277D84F90]);
  sub_22036F6B8();
  return v1;
}

unint64_t sub_220329868()
{
  result = qword_281265DF0;
  if (!qword_281265DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DF0);
  }

  return result;
}

unint64_t sub_2203298C4()
{
  result = qword_27CF28C40;
  if (!qword_27CF28C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28C40);
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_220329A98(uint64_t a1)
{
  sub_2201FB2BC(0, &qword_281266650, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_220234858(a1, v4, v5);
}

unint64_t sub_220329B3C()
{
  result = qword_281263B00;
  if (!qword_281263B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B00);
  }

  return result;
}

unint64_t sub_220329B90()
{
  result = qword_281263880;
  if (!qword_281263880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263880);
  }

  return result;
}