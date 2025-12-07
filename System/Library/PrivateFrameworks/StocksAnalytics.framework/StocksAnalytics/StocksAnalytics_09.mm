StocksAnalytics::TipType_optional __swiftcall TipType.init(rawValue:)(Swift::String rawValue)
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

uint64_t TipType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2202ED588(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
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
    v4 = 0x800000022038FD30;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v6 = 0x800000022038FD30;
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

unint64_t sub_2202ED638()
{
  result = qword_27CF28220;
  if (!qword_27CF28220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28220);
  }

  return result;
}

uint64_t sub_2202ED68C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202ED714(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202ED788(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202ED80C@<X0>(char *a2@<X8>)
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

void sub_2202ED86C(unint64_t *a1@<X8>)
{
  v2 = 0x800000022038FD30;
  v3 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2202ED970()
{
  result = qword_281262260;
  if (!qword_281262260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262260);
  }

  return result;
}

uint64_t sub_2202EDA8C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263980);
  __swift_project_value_buffer(v0, qword_281263980);
  return sub_22036F108();
}

uint64_t sub_2202EDB20@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2202EDB50(uint64_t a1)
{
  v2 = sub_2202EDD30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202EDB8C(uint64_t a1)
{
  v2 = sub_2202EDD30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionResumeEvent.Model.encode(to:)(void *a1)
{
  sub_2202EDCD4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202EDD30();
  sub_220370168();
  return (*(v4 + 8))(v6, v3);
}

void sub_2202EDCD4(uint64_t a1)
{
  if (!qword_27CF28228)
  {
    sub_2202EDD30();
    v1 = sub_220370028();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF28228);
    }
  }
}

unint64_t sub_2202EDD30()
{
  result = qword_27CF28230;
  if (!qword_27CF28230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28230);
  }

  return result;
}

uint64_t sub_2202EDDD4(void *a1)
{
  sub_2202EDCD4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202EDD30();
  sub_220370168();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202EDFAC()
{
  result = qword_27CF28238;
  if (!qword_27CF28238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28238);
  }

  return result;
}

unint64_t sub_2202EE004()
{
  result = qword_27CF28240;
  if (!qword_27CF28240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28240);
  }

  return result;
}

uint64_t backgroundTask(withName:work:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), uint64_t))
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = sub_22036FAC8();
  v6 = [v4 beginBackgroundTaskWithName:v5 expirationHandler:0];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  a3(sub_2202EE144, v7);
}

uint64_t backgroundTask(withName:timeout:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = sub_22036FA18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-v12];
  v22 = a3;
  v23 = a4;
  sub_2201FA9C4();
  swift_allocObject();
  sub_22036F7D8();
  v14 = [objc_opt_self() sharedApplication];
  v15 = sub_22036FAC8();
  v16 = [v14 beginBackgroundTaskWithName:v15 expirationHandler:0];

  sub_22036FA08();
  sub_22036FA28();
  v17 = *(v8 + 8);
  v17(v11, v7);
  v18 = sub_22036F7A8();
  sub_22036F7C8();

  v17(v13, v7);
  sub_2201FB9DC();
  v19 = sub_22036FC48();
  *(swift_allocObject() + 16) = v16;
  sub_22036F7B8();
}

uint64_t sub_2202EE3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2201FF83C;
  *(v9 + 24) = v8;

  a5(sub_2201FD0FC, v9);
}

void sub_2202EE4A4(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 endBackgroundTask_];
}

uint64_t BannerAdData.init(traits:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202EE780(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11];
  sub_2202EE7D8(a1, &v22[-v11]);
  v13 = sub_22036F948();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_2202EE83C(v12);
    v16 = 0;
  }

  else
  {
    v16 = sub_22036F928();
    (*(v14 + 8))(v12, v13);
  }

  v24 = v16 & 1;
  sub_2202EE7D8(a1, v10);
  if (v15(v10, 1, v13) == 1)
  {
    sub_2202EE83C(v10);
    v17 = 0;
  }

  else
  {
    v17 = sub_22036F938();
    (*(v14 + 8))(v10, v13);
  }

  v18 = v17 & 1;
  v23 = v17 & 1;
  sub_2202EE7D8(a1, v7);
  if (v15(v7, 1, v13) == 1)
  {
    sub_2202EE83C(a1);
    result = sub_2202EE83C(v7);
    v20 = 0;
  }

  else
  {
    v20 = sub_22036F918();
    sub_2202EE83C(a1);
    result = (*(v14 + 8))(v7, v13);
    v18 = v23;
  }

  v21 = v24;
  *a2 = v20 & 1;
  a2[1] = v21;
  a2[2] = v18;
  return result;
}

void sub_2202EE780(uint64_t a1)
{
  if (!qword_281261FB0)
  {
    sub_22036F948();
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_281261FB0);
    }
  }
}

uint64_t sub_2202EE7D8(uint64_t a1, uint64_t a2)
{
  sub_2202EE780(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202EE83C(uint64_t a1)
{
  sub_2202EE780(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202EE900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000220391510 == a2)
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

uint64_t sub_2202EE994(uint64_t a1)
{
  v2 = sub_2202EEB68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202EE9D0(uint64_t a1)
{
  v2 = sub_2202EEB68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CalendarAccessData.encode(to:)(void *a1)
{
  sub_2202EEDA8(0, &qword_27CF28248, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202EEB68();
  sub_220370168();
  v11 = v8;
  sub_2202EEBBC();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202EEB68()
{
  result = qword_27CF28250;
  if (!qword_27CF28250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28250);
  }

  return result;
}

unint64_t sub_2202EEBBC()
{
  result = qword_27CF28258;
  if (!qword_27CF28258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28258);
  }

  return result;
}

uint64_t CalendarAccessData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202EEDA8(0, &qword_27CF28260, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202EEB68();
  sub_220370148();
  if (!v2)
  {
    sub_2202EEE0C();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202EEDA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202EEB68();
    v7 = a3(a1, &type metadata for CalendarAccessData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202EEE0C()
{
  result = qword_27CF28268;
  if (!qword_27CF28268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28268);
  }

  return result;
}

unint64_t sub_2202EEE64()
{
  result = qword_27CF28270;
  if (!qword_27CF28270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28270);
  }

  return result;
}

unint64_t sub_2202EEEBC()
{
  result = qword_27CF28278;
  if (!qword_27CF28278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28278);
  }

  return result;
}

unint64_t sub_2202EEF64()
{
  result = qword_27CF28280;
  if (!qword_27CF28280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28280);
  }

  return result;
}

unint64_t sub_2202EEFBC()
{
  result = qword_27CF28288;
  if (!qword_27CF28288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28288);
  }

  return result;
}

unint64_t sub_2202EF014()
{
  result = qword_27CF28290;
  if (!qword_27CF28290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28290);
  }

  return result;
}

uint64_t CustomItemData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomItemData.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CustomItemData.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomItemData.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

StocksAnalytics::CustomItemData __swiftcall CustomItemData.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t sub_2202EF18C()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2202EF1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_2202EF2A8(uint64_t a1)
{
  v2 = sub_2202EF4A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202EF2E4(uint64_t a1)
{
  v2 = sub_2202EF4A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemData.encode(to:)(void *a1)
{
  sub_2202EF704(0, &qword_27CF28298, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202EF4A0();
  sub_220370168();
  v13 = 0;
  v9 = v11[3];
  sub_22036FFB8();
  if (!v9)
  {
    v12 = 1;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202EF4A0()
{
  result = qword_27CF282A0;
  if (!qword_27CF282A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282A0);
  }

  return result;
}

uint64_t CustomItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202EF704(0, &qword_27CF282A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202EF4A0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_22036FEE8();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202EF704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202EF4A0();
    v7 = a3(a1, &type metadata for CustomItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202EF7A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2202EF7E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202EF84C()
{
  result = qword_27CF282B0;
  if (!qword_27CF282B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282B0);
  }

  return result;
}

unint64_t sub_2202EF8A4()
{
  result = qword_27CF282B8;
  if (!qword_27CF282B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282B8);
  }

  return result;
}

unint64_t sub_2202EF8FC()
{
  result = qword_27CF282C0;
  if (!qword_27CF282C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282C0);
  }

  return result;
}

uint64_t sub_2202EFA18()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281264448);
  __swift_project_value_buffer(v0, qword_281264448);
  return sub_22036F108();
}

uint64_t SymbolExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolExposureEvent.symbolPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 24);
  sub_2202F0210(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolExposureEvent.symbolPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 24);
  sub_2202F0210(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolExposureEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 28);
  sub_2202F0210(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolExposureEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 28);
  sub_2202F0210(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolExposureEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 32);
  sub_2202F0210(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolExposureEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 32);
  sub_2202F0210(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolExposureEvent.symbolPriceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 36);
  sub_2202F0210(0, &qword_2812667D0, sub_2202F028C, sub_2202F02E0, &type metadata for SymbolPriceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202F0210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

unint64_t sub_2202F028C()
{
  result = qword_2812654A8;
  if (!qword_2812654A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654A8);
  }

  return result;
}

unint64_t sub_2202F02E0()
{
  result = qword_2812654B0;
  if (!qword_2812654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654B0);
  }

  return result;
}

uint64_t SymbolExposureEvent.symbolPriceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolExposureEvent(0) + 36);
  sub_2202F0210(0, &qword_2812667D0, sub_2202F028C, sub_2202F02E0, &type metadata for SymbolPriceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202F0210(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202F0210(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202F0210(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_2202F0210(0, &qword_2812667D0, sub_2202F028C, sub_2202F02E0, &type metadata for SymbolPriceData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t sub_2202F071C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SymbolExposureEvent.Model.symbolPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SymbolExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SymbolExposureEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolExposureEvent.Model(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t SymbolExposureEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SymbolExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

double SymbolExposureEvent.Model.symbolPriceData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for SymbolExposureEvent.Model(0) + 36));
  *a1 = result;
  return result;
}

uint64_t SymbolExposureEvent.Model.init(eventData:timedData:symbolPositionData:symbolData:activeWatchlistData:symbolPriceData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 16);
  v15 = a4[3];
  v16 = a4[4];
  v24 = *a5;
  v17 = sub_22036F388();
  v18 = *a6;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v19 = type metadata accessor for SymbolExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F3C8();
  result = (*(*(v21 - 8) + 32))(a7 + v20, a2, v21);
  *(a7 + v19[6]) = v11;
  v23 = a7 + v19[7];
  *v23 = v12;
  *(v23 + 8) = v13;
  *(v23 + 16) = v14;
  *(v23 + 24) = v15;
  *(v23 + 32) = v16;
  *(a7 + v19[8]) = v24;
  *(a7 + v19[9]) = v18;
  return result;
}

uint64_t sub_2202F09F4()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x61446C6F626D7973;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x72506C6F626D7973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_2202F0ACC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202F1DA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202F0AF4(uint64_t a1)
{
  v2 = sub_2202F0EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202F0B30(uint64_t a1)
{
  v2 = sub_2202F0EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202F1530(0, &qword_27CF282C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F0EE4();
  sub_220370168();
  LOBYTE(v17[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SymbolExposureEvent.Model(0);
    LOBYTE(v17[0]) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    LODWORD(v17[0]) = *(v3 + v10[6]);
    v21 = 2;
    sub_2202760D8();
    sub_22036FFF8();
    v11 = v3 + v10[7];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v17[0] = *v11;
    v17[1] = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = 3;
    sub_220230C50();

    sub_22036FFF8();

    LOBYTE(v17[0]) = *(v3 + v10[8]);
    v21 = 4;
    sub_220237C70();
    sub_22036FFF8();
    v17[0] = *(v3 + v10[9]);
    v21 = 5;
    sub_2202F02E0();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202F0EE4()
{
  result = qword_27CF282D0;
  if (!qword_27CF282D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282D0);
  }

  return result;
}

uint64_t SymbolExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = sub_22036F3C8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202F1530(0, &qword_27CF282D8, MEMORY[0x277D844C8]);
  v33 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for SymbolExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F0EE4();
  v32 = v9;
  v13 = v34;
  sub_220370148();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v28;
  v16 = v29;
  LOBYTE(v35) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  v17 = *(v15 + 32);
  v18 = v12;
  v34 = v5;
  v17(v12, v31);
  LOBYTE(v35) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v27 + 32))(&v12[v10[5]], v14, v16);
  v40 = 2;
  sub_220276084();
  v31 = 0;
  sub_22036FF28();
  *&v12[v10[6]] = v35;
  v40 = 3;
  sub_220230BFC();
  sub_22036FF28();
  v19 = v30;
  v20 = v36;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  v24 = v18 + v10[7];
  *v24 = v35;
  *(v24 + 8) = v20;
  *(v24 + 16) = v21;
  *(v24 + 24) = v22;
  *(v24 + 32) = v23;
  v40 = 4;
  sub_220237C1C();
  sub_22036FF28();
  *(v18 + v10[8]) = v35;
  v40 = 5;
  sub_2202F028C();
  sub_22036FF28();
  (*(v19 + 8))(v32, v33);
  *(v18 + v10[9]) = v35;
  sub_2202F1594(v18, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202F15F8(v18);
}

void sub_2202F1530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202F0EE4();
    v7 = a3(a1, &type metadata for SymbolExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202F1594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202F15F8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202F172C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202F0210(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202F0210(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202F0210(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_2202F0210(0, &qword_2812667D0, sub_2202F028C, sub_2202F02E0, &type metadata for SymbolPriceData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_2202F19F4(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202F0210(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
      if (v3 <= 0x3F)
      {
        sub_2202F0210(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
        if (v4 <= 0x3F)
        {
          sub_2202F0210(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
          if (v5 <= 0x3F)
          {
            sub_2202F0210(319, &qword_2812667D0, sub_2202F028C, sub_2202F02E0, &type metadata for SymbolPriceData);
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

uint64_t sub_2202F1BE0(uint64_t a1)
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

unint64_t sub_2202F1CA4()
{
  result = qword_27CF282F0;
  if (!qword_27CF282F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282F0);
  }

  return result;
}

unint64_t sub_2202F1CFC()
{
  result = qword_27CF282F8;
  if (!qword_27CF282F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF282F8);
  }

  return result;
}

unint64_t sub_2202F1D54()
{
  result = qword_27CF28300;
  if (!qword_27CF28300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28300);
  }

  return result;
}

uint64_t sub_2202F1DA8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000012 && 0x8000000220391530 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72506C6F626D7973 && a2 == 0xEF61746144656369)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202F2090()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28338);
  __swift_project_value_buffer(v0, qword_27CF28338);
  return sub_22036F108();
}

uint64_t ChangeSymbolPerfMetricEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ChangeSymbolPerfMetricEvent.symbolPerfData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChangeSymbolPerfMetricEvent(0) + 20);
  sub_2202F2250(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202F2250(uint64_t a1)
{
  if (!qword_2812667F8)
  {
    sub_22020218C();
    sub_2202021E4();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_2812667F8);
    }
  }
}

uint64_t ChangeSymbolPerfMetricEvent.symbolPerfData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ChangeSymbolPerfMetricEvent(0) + 20);
  sub_2202F2250(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ChangeSymbolPerfMetricEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ChangeSymbolPerfMetricEvent(0) + 20);
  sub_2202F2250(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ChangeSymbolPerfMetricEvent.Model.symbolPerfData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChangeSymbolPerfMetricEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ChangeSymbolPerfMetricEvent.Model.init(eventData:symbolPerfData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ChangeSymbolPerfMetricEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_2202F2528()
{
  if (*v0)
  {
    return 0x65506C6F626D7973;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_2202F2574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65506C6F626D7973 && a2 == 0xEE00617461446672)
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

uint64_t sub_2202F2660(uint64_t a1)
{
  v2 = sub_2202F28A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202F269C(uint64_t a1)
{
  v2 = sub_2202F28A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChangeSymbolPerfMetricEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202F2C50(0, &qword_27CF28350, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F28A4();
  sub_220370168();
  v11[15] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ChangeSymbolPerfMetricEvent.Model(0) + 20));
    v11[13] = 1;
    sub_2202021E4();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202F28A4()
{
  result = qword_27CF28358;
  if (!qword_27CF28358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28358);
  }

  return result;
}

uint64_t ChangeSymbolPerfMetricEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_22036F388();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202F2C50(0, &qword_27CF28360, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ChangeSymbolPerfMetricEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F28A4();
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
  sub_22020218C();
  sub_22036FF28();
  (*(v24 + 8))(v9, v15);
  *(v16 + *(v19 + 20)) = v27;
  sub_2202F2CB4(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202F2D18(v16);
}

void sub_2202F2C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202F28A4();
    v7 = a3(a1, &type metadata for ChangeSymbolPerfMetricEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202F2CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChangeSymbolPerfMetricEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202F2D18(uint64_t a1)
{
  v2 = type metadata accessor for ChangeSymbolPerfMetricEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202F2E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202F2250(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_2202F2F34(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202F2250(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2202F2FE0(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202F3068()
{
  result = qword_27CF28388;
  if (!qword_27CF28388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28388);
  }

  return result;
}

unint64_t sub_2202F30C0()
{
  result = qword_27CF28390;
  if (!qword_27CF28390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28390);
  }

  return result;
}

unint64_t sub_2202F3118()
{
  result = qword_27CF28398;
  if (!qword_27CF28398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28398);
  }

  return result;
}

uint64_t WatchlistAgeData.init(averageQuoteAge:averageSparklineAge:minQuoteAge:maxQuoteAge:minSparklineAge:maxSparklineAge:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2202F32A4()
{
  v1 = *v0;
  v2 = 0x5165676172657661;
  v3 = 0x65746F755178616DLL;
  v4 = 0x6B726170536E696DLL;
  if (v1 != 4)
  {
    v4 = 0x6B7261705378616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x65746F75516E696DLL;
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

uint64_t sub_2202F3398@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202F3B24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202F33C0(uint64_t a1)
{
  v2 = sub_2202F3648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202F33FC(uint64_t a1)
{
  v2 = sub_2202F3648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchlistAgeData.encode(to:)(void *a1)
{
  sub_2202F3900(0, &qword_281261C60, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[4] = v1[2];
  v12[5] = v8;
  v12[2] = v1[4];
  v12[3] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F3648();
  sub_220370168();
  v19 = 0;
  v10 = v13;
  sub_220370008();
  if (!v10)
  {
    v18 = 1;
    sub_220370008();
    v17 = 2;
    sub_220370008();
    v16 = 3;
    sub_220370008();
    v15 = 4;
    sub_220370008();
    v14 = 5;
    sub_220370008();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202F3648()
{
  result = qword_281264E80[0];
  if (!qword_281264E80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264E80);
  }

  return result;
}

uint64_t WatchlistAgeData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2202F3900(0, &qword_27CF283A0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F3648();
  sub_220370148();
  if (!v2)
  {
    v23 = 0;
    v10 = sub_22036FF38();
    v22 = 1;
    v11 = sub_22036FF38();
    v21 = 2;
    v17 = sub_22036FF38();
    v20 = 3;
    v16 = sub_22036FF38();
    v19 = 4;
    HIDWORD(v15) = sub_22036FF38();
    v18 = 5;
    v13 = sub_22036FF38();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v11;
    v14 = v16;
    a2[2] = v17;
    a2[3] = v14;
    a2[4] = HIDWORD(v15);
    a2[5] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202F3900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202F3648();
    v7 = a3(a1, &type metadata for WatchlistAgeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WatchlistAgeData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WatchlistAgeData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2202F3A20()
{
  result = qword_27CF283A8;
  if (!qword_27CF283A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF283A8);
  }

  return result;
}

unint64_t sub_2202F3A78()
{
  result = qword_281264E70;
  if (!qword_281264E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E70);
  }

  return result;
}

unint64_t sub_2202F3AD0()
{
  result = qword_281264E78;
  if (!qword_281264E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E78);
  }

  return result;
}

uint64_t sub_2202F3B24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5165676172657661 && a2 == 0xEF65674165746F75;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220391550 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F75516E696DLL && a2 == 0xEB00000000656741 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746F755178616DLL && a2 == 0xEB00000000656741 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B726170536E696DLL && a2 == 0xEF656741656E696CLL || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B7261705378616DLL && a2 == 0xEF656741656E696CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t FractionalCohortMembershipDetails.symbol.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FractionalCohortMembershipDetails.symbol.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::FractionalCohortMembershipDetails __swiftcall FractionalCohortMembershipDetails.init(symbol:score:)(Swift::String symbol, Swift::Double score)
{
  *v2 = symbol;
  *(v2 + 16) = score;
  result.symbol = symbol;
  result.score = score;
  return result;
}

uint64_t sub_2202F3E10()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_2202F3E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
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

uint64_t sub_2202F3F18(uint64_t a1)
{
  v2 = sub_2202F4114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202F3F54(uint64_t a1)
{
  v2 = sub_2202F4114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FractionalCohortMembershipDetails.encode(to:)(void *a1)
{
  sub_2202F4360(0, &qword_281261BC0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F4114();
  sub_220370168();
  v11 = 0;
  v7 = v9;
  sub_22036FFB8();
  if (!v7)
  {
    v10 = 1;
    sub_22036FFD8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202F4114()
{
  result = qword_2812628A0;
  if (!qword_2812628A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628A0);
  }

  return result;
}

uint64_t FractionalCohortMembershipDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202F4360(0, &qword_281267288, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F4114();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17[15] = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v13 = v10;
  v17[14] = 1;
  sub_22036FF08();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202F4360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202F4114();
    v7 = a3(a1, &type metadata for FractionalCohortMembershipDetails.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202F43C8()
{
  result = qword_281262880;
  if (!qword_281262880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262880);
  }

  return result;
}

unint64_t sub_2202F4420()
{
  result = qword_281262888;
  if (!qword_281262888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262888);
  }

  return result;
}

uint64_t sub_2202F44A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2202F44EC(uint64_t result, int a2, int a3)
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

unint64_t sub_2202F4550()
{
  result = qword_27CF283B0;
  if (!qword_27CF283B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF283B0);
  }

  return result;
}

unint64_t sub_2202F45A8()
{
  result = qword_281262890;
  if (!qword_281262890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262890);
  }

  return result;
}

unint64_t sub_2202F4600()
{
  result = qword_281262898;
  if (!qword_281262898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262898);
  }

  return result;
}

uint64_t sub_2202F471C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812649F8);
  __swift_project_value_buffer(v0, qword_2812649F8);
  return sub_22036F108();
}

uint64_t GroupExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t GroupExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 24);
  sub_2202F4D64(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 24);
  sub_2202F4D64(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 28);
  sub_2202F4D64(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 28);
  sub_2202F4D64(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 32);
  sub_2202F4D64(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202F4D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t GroupExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupExposureEvent(0) + 32);
  sub_2202F4D64(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GroupExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for GroupExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202F4D64(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202F4D64(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202F4D64(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_2202F5150@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t GroupExposureEvent.Model.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
}

uint64_t GroupExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t GroupExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GroupExposureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t GroupExposureEvent.Model.init(eventData:timedData:groupData:feedData:viewData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  v15 = *a4;
  v25 = *(a4 + 2);
  v26 = *(a4 + 1);
  v28 = a5[1];
  v29 = *a5;
  v27 = *(a5 + 8);
  v16 = sub_22036F388();
  v17 = *(a3 + 3);
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v18 = type metadata accessor for GroupExposureEvent.Model(0);
  v19 = v18[5];
  v20 = sub_22036F3C8();
  result = (*(*(v20 - 8) + 32))(a6 + v19, a2, v20);
  v22 = a6 + v18[6];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  *(v22 + 24) = v17;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  v23 = a6 + v18[7];
  *v23 = v15;
  *(v23 + 8) = v26;
  *(v23 + 16) = v25;
  v24 = a6 + v18[8];
  *v24 = v29;
  *(v24 + 8) = v28;
  *(v24 + 16) = v27;
  return result;
}

uint64_t sub_2202F5458()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x74614470756F7267;
  v4 = 0x6174614464656566;
  if (v1 != 3)
  {
    v4 = 0x6174614477656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
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

uint64_t sub_2202F54F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202F6718(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202F5518(uint64_t a1)
{
  v2 = sub_2202F5910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202F5554(uint64_t a1)
{
  v2 = sub_2202F5910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202F5F78(0, &qword_27CF283B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F5910();
  sub_220370168();
  LOBYTE(v25) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for GroupExposureEvent.Model(0);
    LOBYTE(v25) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    LOBYTE(v25) = *v11;
    v26 = v12;
    v27 = v13;
    v28 = *(v11 + 24);
    v29 = v14;
    v30 = v15;
    v24 = 2;
    sub_220236CDC();

    sub_22036FFF8();

    v16 = v3 + v10[7];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    LOBYTE(v25) = *v16;
    v26 = v17;
    v27 = v18;
    v24 = 3;
    sub_2201FBD1C();

    sub_22036FFF8();

    v19 = (v3 + v10[8]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v25 = v20;
    v26 = v21;
    LOWORD(v27) = v19;
    v24 = 4;
    sub_220202110();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202F5910()
{
  result = qword_27CF283C0;
  if (!qword_27CF283C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF283C0);
  }

  return result;
}

uint64_t GroupExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_22036F3C8();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202F5F78(0, &qword_27CF283C8, MEMORY[0x277D844C8]);
  v36 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for GroupExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F5910();
  v35 = v10;
  v14 = v37;
  sub_220370148();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v16 = v32;
  v17 = v33;
  LOBYTE(v38) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  (*(v30 + 32))(v13, v34, v6);
  LOBYTE(v38) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v16 + 32))(&v13[v11[5]], v15, v17);
  v43 = 2;
  sub_220236C88();
  sub_22036FF28();
  v18 = v39;
  v19 = v40;
  v20 = &v13[v11[6]];
  *v20 = v38;
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  *(v20 + 3) = v41;
  *(v20 + 2) = v42;
  v43 = 3;
  sub_2201FBCC4();
  sub_22036FF28();
  v21 = v39;
  v22 = v40;
  v23 = &v13[v11[7]];
  *v23 = v38;
  *(v23 + 1) = v21;
  *(v23 + 2) = v22;
  v43 = 4;
  sub_2202020B8();
  sub_22036FF28();
  (*(v31 + 8))(v35, v36);
  v24 = v39;
  v25 = v40;
  v26 = &v13[v11[8]];
  *v26 = v38;
  *(v26 + 1) = v24;
  *(v26 + 8) = v25;
  sub_2202F5FDC(v13, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202F6040(v13);
}

void sub_2202F5F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202F5910();
    v7 = a3(a1, &type metadata for GroupExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202F5FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202F6040(uint64_t a1)
{
  v2 = type metadata accessor for GroupExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202F6174@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202F4D64(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202F4D64(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202F4D64(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_2202F63C4(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202F4D64(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_2202F4D64(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_2202F4D64(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2202F6560(uint64_t a1)
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

unint64_t sub_2202F6614()
{
  result = qword_27CF283E0;
  if (!qword_27CF283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF283E0);
  }

  return result;
}

unint64_t sub_2202F666C()
{
  result = qword_27CF283E8;
  if (!qword_27CF283E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF283E8);
  }

  return result;
}

unint64_t sub_2202F66C4()
{
  result = qword_27CF283F0;
  if (!qword_27CF283F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF283F0);
  }

  return result;
}

uint64_t sub_2202F6718(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
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

uint64_t sub_2202F69A0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28428);
  __swift_project_value_buffer(v0, qword_27CF28428);
  return sub_22036F108();
}

uint64_t AudioEngagementBeginEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngagementBeginEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 20);
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 20);
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 24);
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 24);
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 28);
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 28);
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 32);
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 32);
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 36);
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 36);
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 40);
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 40);
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 44);
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 44);
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 48);
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 48);
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 52);
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 52);
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 56);
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 56);
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 60);
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.audioEngagementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 60);
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 64);
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngagementBeginEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngagementBeginEvent(0) + 64);
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngagementBeginEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngagementBeginEvent(0);
  v5 = v4[5];
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v30 = *(*(v29 - 8) + 104);

  return v30(a1 + v28, v10, v29);
}

uint64_t AudioEngagementBeginEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 20);
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

uint64_t AudioEngagementBeginEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 24));
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

void AudioEngagementBeginEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 28));
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

uint64_t AudioEngagementBeginEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t AudioEngagementBeginEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 40));
  *&v9[10] = *(v3 + 26);
  v4 = *&v9[10];
  v5 = v3[1];
  v8 = *v3;
  *v9 = v5;
  *a1 = v8;
  a1[1] = v5;
  *(a1 + 26) = v4;
  return sub_2202385EC(&v8, &v7);
}

uint64_t AudioEngagementBeginEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngagementBeginEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 48);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v26 = *(v3 + 64);
  v14 = v26;
  v27 = v13;
  v15 = *(v3 + 16);
  v16 = *(v3 + 48);
  v24 = *(v3 + 32);
  v17 = v24;
  v25 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v15;
  return sub_220272A1C(v23, v22);
}

uint64_t AudioEngagementBeginEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngagementBeginEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngagementBeginEvent.Model(0) + 56));
  *a1 = result;
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.audioEngagementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t AudioEngagementBeginEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

__n128 AudioEngagementBeginEvent.Model.init(eventData:newsArticleData:channelData:groupData:feedData:trackData:audioEngagementData:viewData:articleScienceData:issueData:playbackData:audioEngagementOriginationData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, int *a12, char *a13, char *a14)
{
  v47 = *a3;
  v20 = *(a3 + 2);
  v19 = *(a3 + 3);
  v21 = *(a3 + 32);
  v22 = *(a3 + 33);
  v48 = *(a4 + 5);
  v49 = *(a4 + 4);
  v51 = *a5;
  v50 = *(a5 + 2);
  v52 = *(a6 + 4);
  v53 = *a6;
  v55 = a8[1];
  v56 = *a8;
  v54 = *(a8 + 8);
  v58 = *a11;
  v57 = a11[1];
  v23 = *a12;
  v59 = *a13;
  v60 = *a14;
  v24 = sub_22036F388();
  v45 = a4[1];
  v46 = *a4;
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  v25 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  v26 = a9 + v25[5];
  v27 = *(a2 + 48);
  *(v26 + 32) = *(a2 + 32);
  *(v26 + 48) = v27;
  *(v26 + 64) = *(a2 + 64);
  v28 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 16) = v28;
  v29 = a9 + v25[6];
  *v29 = v47;
  *(v29 + 16) = v20;
  *(v29 + 24) = v19;
  *(v29 + 32) = v21;
  *(v29 + 33) = v22;
  v30 = a9 + v25[7];
  *v30 = v46;
  *(v30 + 16) = v45;
  *(v30 + 32) = v49;
  *(v30 + 40) = v48;
  v31 = a9 + v25[8];
  *v31 = v51;
  *(v31 + 16) = v50;
  v32 = a9 + v25[9];
  *v32 = v53;
  *(v32 + 4) = v52;
  v33 = (a9 + v25[10]);
  v34 = a7[1];
  *v33 = *a7;
  v33[1] = v34;
  *(v33 + 26) = *(a7 + 26);
  v35 = a9 + v25[11];
  *v35 = v56;
  *(v35 + 8) = v55;
  *(v35 + 16) = v54;
  v36 = a9 + v25[12];
  v37 = *(a10 + 48);
  *(v36 + 32) = *(a10 + 32);
  *(v36 + 48) = v37;
  v38 = *(a10 + 16);
  *v36 = *a10;
  *(v36 + 16) = v38;
  v39 = *(a10 + 112);
  *(v36 + 96) = *(a10 + 96);
  *(v36 + 112) = v39;
  v40 = *(a10 + 80);
  *(v36 + 64) = *(a10 + 64);
  *(v36 + 80) = v40;
  *(v36 + 192) = *(a10 + 192);
  v41 = *(a10 + 176);
  *(v36 + 160) = *(a10 + 160);
  *(v36 + 176) = v41;
  result = *(a10 + 128);
  v43 = *(a10 + 144);
  *(v36 + 128) = result;
  *(v36 + 144) = v43;
  v44 = (a9 + v25[13]);
  *v44 = v58;
  v44[1] = v57;
  *(a9 + v25[14]) = v23;
  *(a9 + v25[15]) = v59;
  *(a9 + v25[16]) = v60;
  return result;
}

uint64_t sub_2202F8BE0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x697472417377656ELL;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_10;
    case 5:
      result = 0x7461446B63617274;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      v3 = 2003134838;
LABEL_10:
      result = v3 | 0x6174614400000000;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x7461446575737369;
      break;
    case 10:
      result = 0x6B63616279616C70;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2202F8D60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202FB178(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202F8D94(uint64_t a1)
{
  v2 = sub_2202F962C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202F8DD0(uint64_t a1)
{
  v2 = sub_2202F962C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementBeginEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202FA0F0(0, &qword_27CF28440, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F962C();
  sub_220370168();
  v118 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
    v11 = *(v10 + 20);
    v119 = v3;
    v12 = v3 + v11;
    v13 = *(v12 + 16);
    v14 = *(v12 + 48);
    v115 = *(v12 + 32);
    v116 = v14;
    v15 = *(v12 + 16);
    v114[0] = *v12;
    v114[1] = v15;
    v16 = *(v12 + 48);
    v111 = v115;
    v112 = v16;
    v117 = *(v12 + 64);
    v113 = *(v12 + 64);
    v109 = v114[0];
    v110 = v13;
    v108 = 1;
    sub_22022ECDC(v114, &v79);
    sub_22022EDA0();
    sub_22036FFF8();
    v106[2] = v111;
    v106[3] = v112;
    v107 = v113;
    v106[0] = v109;
    v106[1] = v110;
    sub_22022ED14(v106);
    v59 = v10;
    v17 = (v119 + *(v10 + 24));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v17 + 32);
    LOBYTE(v17) = *(v17 + 33);
    *&v79 = v18;
    *(&v79 + 1) = v19;
    *&v80 = v20;
    *(&v80 + 1) = v21;
    LOBYTE(v81) = v22;
    BYTE1(v81) = v17;
    LOBYTE(v66) = 2;
    sub_220236A84();

    sub_22036FFF8();

    v23 = v59;
    v24 = (v119 + v59[7]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    *&v79 = *v24;
    *(&v79 + 1) = v25;
    *&v80 = v26;
    *(&v80 + 1) = v27;
    *&v81 = v28;
    *(&v81 + 1) = v29;
    LOBYTE(v66) = 3;
    sub_22023846C(v79, v25, v26, v27, v28, v29);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1));
    v30 = (v119 + v23[8]);
    v31 = *(v30 + 2);
    v79 = *v30;
    *&v80 = v31;
    LOBYTE(v66) = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v32 = v119;
    v33 = (v119 + v23[9]);
    v34 = *v33;
    LOBYTE(v33) = *(v33 + 4);
    v104 = v34;
    v105 = v33;
    v103 = 5;
    sub_2202370E4();
    sub_22036FFF8();
    v35 = (v32 + v23[10]);
    v36 = v35[1];
    v101 = *v35;
    v102[0] = v36;
    *(v102 + 10) = *(v35 + 26);
    v37 = v35[1];
    v99 = *v35;
    v100[0] = v37;
    *(v100 + 10) = *(v35 + 26);
    v98 = 6;
    sub_2202385EC(&v101, &v79);
    sub_2202374EC();
    sub_22036FFF8();
    v96 = v99;
    *v97 = v100[0];
    *&v97[10] = *(v100 + 10);
    sub_22023921C(&v96);
    v38 = (v32 + v59[11]);
    v39 = *v38;
    v40 = v38[1];
    LOWORD(v38) = *(v38 + 8);
    v93 = v39;
    v94 = v40;
    v95 = v38;
    v92 = 7;
    sub_220202110();

    sub_22036FF88();

    v41 = v59;
    v42 = (v32 + v59[12]);
    v43 = v42[9];
    v44 = v42[11];
    v89 = v42[10];
    v90 = v44;
    v45 = v42[5];
    v46 = v42[7];
    v85 = v42[6];
    v86 = v46;
    v47 = v42[7];
    v48 = v42[9];
    v87 = v42[8];
    v88 = v48;
    v49 = v42[1];
    v50 = v42[3];
    v81 = v42[2];
    v82 = v50;
    v51 = v42[3];
    v52 = v42[5];
    v83 = v42[4];
    v84 = v52;
    v53 = v42[1];
    v79 = *v42;
    v80 = v53;
    v54 = v42[11];
    v76 = v89;
    v77 = v54;
    v72 = v85;
    v73 = v47;
    v74 = v87;
    v75 = v43;
    v68 = v81;
    v69 = v51;
    v70 = v83;
    v71 = v45;
    v91 = *(v42 + 24);
    v78 = *(v42 + 24);
    v66 = v79;
    v67 = v49;
    v65 = 8;
    sub_220272A1C(&v79, v63);
    sub_22025E6C0();
    sub_22036FFF8();
    v63[9] = v75;
    v63[10] = v76;
    v63[11] = v77;
    v64 = v78;
    v63[7] = v73;
    v63[8] = v74;
    v63[2] = v68;
    v63[3] = v69;
    v63[5] = v71;
    v63[6] = v72;
    v63[4] = v70;
    v63[0] = v66;
    v63[1] = v67;
    sub_22027391C(v63);
    v55 = v119;
    v56 = (v119 + v41[13]);
    v57 = v56[1];
    v61 = *v56;
    v62 = v57;
    v60 = 9;
    sub_220237744();

    sub_22036FF88();

    LODWORD(v61) = *(v55 + v41[14]);
    v60 = 10;
    sub_22023799C();
    sub_22036FFF8();
    LOBYTE(v61) = *(v119 + v59[15]);
    v60 = 11;
    sub_220271C0C();
    sub_22036FFF8();
    LOBYTE(v61) = *(v119 + v59[16]);
    v60 = 12;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202F962C()
{
  result = qword_27CF28448;
  if (!qword_27CF28448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28448);
  }

  return result;
}

void AudioEngagementBeginEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_22036F388();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202FA0F0(0, &qword_27CF28450, MEMORY[0x277D844C8]);
  v46 = v5;
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v40 - v6;
  v8 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202F962C();
  v47 = v7;
  v11 = v73;
  sub_220370148();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v44;
    v41 = v8;
    v73 = v10;
    LOBYTE(v60) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    v13 = v73;
    (*(v43 + 32))(v73, v45, v3);
    v54 = 1;
    sub_22022ED48();
    sub_22036FF28();
    v40[1] = v3;
    v45 = 0;
    v14 = &v13[v41[5]];
    v15 = v58;
    *(v14 + 2) = v57;
    *(v14 + 3) = v15;
    *(v14 + 16) = v59;
    v16 = v56;
    *v14 = v55;
    *(v14 + 1) = v16;
    LOBYTE(v52) = 2;
    sub_220236A30();
    sub_22036FF28();
    v17 = v61;
    v18 = v62;
    v19 = BYTE1(v62);
    v20 = &v13[v41[6]];
    *v20 = v60;
    *(v20 + 1) = v17;
    v20[32] = v18;
    v20[33] = v19;
    LOBYTE(v52) = 3;
    sub_220236C88();
    sub_22036FEB8();
    v21 = &v13[v41[7]];
    v22 = v61;
    *v21 = v60;
    *(v21 + 1) = v22;
    *(v21 + 2) = v62;
    LOBYTE(v52) = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v23 = v61;
    v24 = &v13[v41[8]];
    *v24 = v60;
    *(v24 + 2) = v23;
    LOBYTE(v52) = 5;
    sub_220237090();
    sub_22036FF28();
    v25 = BYTE4(v60);
    v26 = &v13[v41[9]];
    *v26 = v60;
    v26[4] = v25;
    v51 = 6;
    sub_220237498();
    sub_22036FF28();
    v27 = &v13[v41[10]];
    v28 = *v53;
    *v27 = v52;
    *(v27 + 1) = v28;
    *(v27 + 26) = *&v53[10];
    LOBYTE(v49) = 7;
    sub_2202020B8();
    sub_22036FEB8();
    v29 = v61;
    v30 = &v13[v41[11]];
    *v30 = v60;
    *(v30 + 8) = v29;
    v50 = 8;
    sub_22025E66C();
    sub_22036FF28();
    v31 = &v73[v41[12]];
    v32 = v69;
    v33 = v71;
    *(v31 + 10) = v70;
    *(v31 + 11) = v33;
    *(v31 + 24) = v72;
    v34 = v65;
    v35 = v67;
    *(v31 + 6) = v66;
    *(v31 + 7) = v35;
    *(v31 + 8) = v68;
    *(v31 + 9) = v32;
    v36 = v61;
    v37 = v63;
    *(v31 + 2) = v62;
    *(v31 + 3) = v37;
    *(v31 + 4) = v64;
    *(v31 + 5) = v34;
    *v31 = v60;
    *(v31 + 1) = v36;
    v48 = 9;
    sub_2202376F0();
    sub_22036FEB8();
    *&v73[v41[13]] = v49;
    v48 = 10;
    sub_220237948();
    sub_22036FF28();
    *&v73[v41[14]] = v49;
    v48 = 11;
    sub_220271BB8();
    sub_22036FF28();
    v73[v41[15]] = v49;
    v48 = 12;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v12 + 8))(v47, v46);
    v38 = v42;
    v39 = v73;
    v73[v41[16]] = v49;
    sub_2202FA154(v39, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2202FA1B8(v39);
  }
}

void sub_2202FA0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202F962C();
    v7 = a3(a1, &type metadata for AudioEngagementBeginEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202FA154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202FA1B8(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngagementBeginEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202FA2EC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v31 = *(*(v30 - 8) + 104);

  return v31(a2 + v29, v11, v30);
}

void sub_2202FA948(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220271E10(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_220271E10(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_220271E10(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_220271E10(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_220271E10(319, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
            if (v6 <= 0x3F)
            {
              sub_220271E10(319, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
              if (v7 <= 0x3F)
              {
                sub_220271E10(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_220271E10(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
                  if (v9 <= 0x3F)
                  {
                    sub_220271E10(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_220271E10(319, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
                      if (v11 <= 0x3F)
                      {
                        sub_220271E10(319, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
                        if (v12 <= 0x3F)
                        {
                          sub_220271E10(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                          if (v13 <= 0x3F)
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
}

void sub_2202FAD9C(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF25FA8, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
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

uint64_t getEnumTagSinglePayload for AudioEngagementBeginEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioEngagementBeginEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2202FB074()
{
  result = qword_27CF28478;
  if (!qword_27CF28478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28478);
  }

  return result;
}

unint64_t sub_2202FB0CC()
{
  result = qword_27CF28480;
  if (!qword_27CF28480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28480);
  }

  return result;
}

unint64_t sub_2202FB124()
{
  result = qword_27CF28488;
  if (!qword_27CF28488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28488);
  }

  return result;
}

uint64_t sub_2202FB178(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390370 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220390A40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_2202FB628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_2202FB6B8(uint64_t a1)
{
  v2 = sub_2202FB88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202FB6F4(uint64_t a1)
{
  v2 = sub_2202FB88C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewEndData.encode(to:)(void *a1)
{
  sub_2202FBACC(0, &qword_281261CF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202FB88C();
  sub_220370168();
  v11 = v8;
  sub_2202FB8E0();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202FB88C()
{
  result = qword_281265E08;
  if (!qword_281265E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265E08);
  }

  return result;
}

unint64_t sub_2202FB8E0()
{
  result = qword_281262088;
  if (!qword_281262088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262088);
  }

  return result;
}

uint64_t ViewEndData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202FBACC(0, &qword_281261E00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202FB88C();
  sub_220370148();
  if (!v2)
  {
    sub_2202FBB30();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202FBACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202FB88C();
    v7 = a3(a1, &type metadata for ViewEndData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202FBB30()
{
  result = qword_281262078;
  if (!qword_281262078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262078);
  }

  return result;
}

unint64_t sub_2202FBBE0()
{
  result = qword_27CF28490;
  if (!qword_27CF28490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28490);
  }

  return result;
}

unint64_t sub_2202FBC38()
{
  result = qword_281265DF8;
  if (!qword_281265DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DF8);
  }

  return result;
}

unint64_t sub_2202FBC90()
{
  result = qword_281265E00;
  if (!qword_281265E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265E00);
  }

  return result;
}

uint64_t sub_2202FBD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65707954706974 && a2 == 0xE700000000000000)
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

uint64_t sub_2202FBDD0(uint64_t a1)
{
  v2 = sub_2202FBFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202FBE0C(uint64_t a1)
{
  v2 = sub_2202FBFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TipData.encode(to:)(void *a1)
{
  sub_2202FC1E4(0, &qword_281261BA8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202FBFA4();
  sub_220370168();
  v11 = v8;
  sub_2202FBFF8();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202FBFA4()
{
  result = qword_281262290;
  if (!qword_281262290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262290);
  }

  return result;
}

unint64_t sub_2202FBFF8()
{
  result = qword_281262268;
  if (!qword_281262268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262268);
  }

  return result;
}

uint64_t TipData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202FC1E4(0, &qword_27CF28498, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202FBFA4();
  sub_220370148();
  if (!v2)
  {
    sub_2202FC248();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202FC1E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202FBFA4();
    v7 = a3(a1, &type metadata for TipData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202FC248()
{
  result = qword_27CF284A0;
  if (!qword_27CF284A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF284A0);
  }

  return result;
}

unint64_t sub_2202FC2F8()
{
  result = qword_27CF284A8;
  if (!qword_27CF284A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF284A8);
  }

  return result;
}

unint64_t sub_2202FC350()
{
  result = qword_281262280;
  if (!qword_281262280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262280);
  }

  return result;
}

unint64_t sub_2202FC3A8()
{
  result = qword_281262288;
  if (!qword_281262288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262288);
  }

  return result;
}

uint64_t sub_2202FC4C4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263008);
  __swift_project_value_buffer(v0, qword_281263008);
  return sub_22036F108();
}

uint64_t NewsHeadlineExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NewsHeadlineExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 24);
  sub_2202FDC94(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 24);
  sub_2202FDC94(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 28);
  sub_2202FDC94(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 28);
  sub_2202FDC94(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 32);
  sub_2202FDC94(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 32);
  sub_2202FDC94(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 36);
  sub_2202FDC94(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 36);
  sub_2202FDC94(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 40);
  sub_2202FDC94(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 40);
  sub_2202FDC94(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 44);
  sub_2202FDC94(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 44);
  sub_2202FDC94(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 48);
  sub_2202FDC94(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 48);
  sub_2202FDC94(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 52);
  sub_2202FDC94(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 52);
  sub_2202FDC94(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.badgeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 56);
  sub_2202FDC94(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202FD52C()
{
  result = qword_2812620C8;
  if (!qword_2812620C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620C8);
  }

  return result;
}

unint64_t sub_2202FD580()
{
  result = qword_2812620D0;
  if (!qword_2812620D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620D0);
  }

  return result;
}

uint64_t NewsHeadlineExposureEvent.badgeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 56);
  sub_2202FDC94(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 60);
  sub_2202FDC94(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 60);
  sub_2202FDC94(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.hostArticleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 64);
  sub_2202FDC94(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.hostArticleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 64);
  sub_2202FDC94(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 68);
  sub_2202FDC94(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsHeadlineExposureEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 68);
  sub_2202FDC94(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 72);
  sub_2202FDC94(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202FDC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t NewsHeadlineExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsHeadlineExposureEvent(0) + 72);
  sub_2202FDC94(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NewsHeadlineExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NewsHeadlineExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202FDC94(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202FDC94(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_2202FDC94(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_2202FDC94(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_2202FDC94(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  sub_2202FDC94(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_2202FDC94(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_2202FDC94(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_2202FDC94(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  (*(*(v25 - 8) + 104))(a1 + v24, v12, v25);
  v26 = v4[15];
  sub_2202FDC94(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_2202FDC94(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_2202FDC94(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  (*(*(v31 - 8) + 104))(a1 + v30, v12, v31);
  v32 = v4[18];
  sub_2202FDC94(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v12, v33);
}

uint64_t sub_2202FE544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NewsHeadlineExposureEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 24);
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

uint64_t NewsHeadlineExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NewsHeadlineExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NewsHeadlineExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 36);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

void NewsHeadlineExposureEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 40));
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

uint64_t NewsHeadlineExposureEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 44);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v24 = *(v3 + 32);
  v14 = v24;
  v25 = v13;
  v15 = *(v3 + 48);
  v16 = *(v3 + 80);
  v26 = *(v3 + 64);
  v17 = v26;
  v27 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v17;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v12;
  return sub_220272A1C(v23, v22);
}

uint64_t NewsHeadlineExposureEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t NewsHeadlineExposureEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsHeadlineExposureEvent.Model.badgeData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t NewsHeadlineExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 60));
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

uint64_t NewsHeadlineExposureEvent.Model.hostArticleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 64));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NewsHeadlineExposureEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t NewsHeadlineExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NewsHeadlineExposureEvent.Model(0) + 72));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 NewsHeadlineExposureEvent.Model.init(eventData:timedData:newsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:articleScienceData:userArticleContextData:issueData:badgeData:channelData:hostArticleViewData:activeWatchlistData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, int *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int16 *a10, uint64_t *a11, __int16 *a12, __n128 *a13, uint64_t *a14, char *a15, uint64_t *a16)
{
  v22 = *a4;
  v23 = *a5;
  v24 = *(a5 + 4);
  v51 = *a6;
  v25 = *(a6 + 1);
  v50 = *(a6 + 2);
  v53 = *(a7 + 4);
  v52 = *(a7 + 5);
  v54 = *a10;
  v55 = a11[1];
  v56 = *a11;
  v62 = *a13;
  v60 = a13[1].n128_u64[1];
  v61 = a13[1].n128_u64[0];
  v59 = a13[2].n128_u8[0];
  v57 = *a12;
  v58 = a13[2].n128_u8[1];
  v63 = a14[1];
  v64 = *a14;
  v68 = *a16;
  v67 = a16[1];
  v65 = *a15;
  v66 = *(a16 + 16);
  v26 = sub_22036F388();
  v48 = a7[1];
  v49 = *a7;
  (*(*(v26 - 8) + 32))(a9, a1, v26);
  v27 = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  v28 = v27[5];
  v29 = sub_22036F3C8();
  (*(*(v29 - 8) + 32))(a9 + v28, a2, v29);
  v30 = a9 + v27[6];
  v31 = *(a3 + 48);
  *(v30 + 32) = *(a3 + 32);
  *(v30 + 48) = v31;
  *(v30 + 64) = *(a3 + 64);
  v32 = *(a3 + 16);
  *v30 = *a3;
  *(v30 + 16) = v32;
  *(a9 + v27[7]) = v22;
  v33 = a9 + v27[8];
  *v33 = v23;
  *(v33 + 4) = v24;
  v34 = a9 + v27[9];
  *v34 = v51;
  *(v34 + 8) = v25;
  *(v34 + 16) = v50;
  v35 = a9 + v27[10];
  *v35 = v49;
  *(v35 + 16) = v48;
  *(v35 + 32) = v53;
  *(v35 + 40) = v52;
  v36 = a9 + v27[11];
  v37 = *(a8 + 176);
  *(v36 + 160) = *(a8 + 160);
  *(v36 + 176) = v37;
  *(v36 + 192) = *(a8 + 192);
  v38 = *(a8 + 112);
  *(v36 + 96) = *(a8 + 96);
  *(v36 + 112) = v38;
  v39 = *(a8 + 144);
  *(v36 + 128) = *(a8 + 128);
  *(v36 + 144) = v39;
  v40 = *(a8 + 48);
  *(v36 + 32) = *(a8 + 32);
  *(v36 + 48) = v40;
  v41 = *(a8 + 80);
  *(v36 + 64) = *(a8 + 64);
  *(v36 + 80) = v41;
  v42 = *(a8 + 16);
  *v36 = *a8;
  *(v36 + 16) = v42;
  *(a9 + v27[12]) = v54;
  v43 = (a9 + v27[13]);
  *v43 = v56;
  v43[1] = v55;
  *(a9 + v27[14]) = v57;
  v44 = (a9 + v27[15]);
  result = v62;
  *v44 = v62;
  v44[1].n128_u64[0] = v61;
  v44[1].n128_u64[1] = v60;
  v44[2].n128_u8[0] = v59;
  v44[2].n128_u8[1] = v58;
  v46 = (a9 + v27[16]);
  *v46 = v64;
  v46[1] = v63;
  *(a9 + v27[17]) = v65;
  v47 = a9 + v27[18];
  *v47 = v68;
  *(v47 + 8) = v67;
  *(v47 + 16) = v66;
  return result;
}

uint64_t sub_2202FECC4(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x697472417377656ELL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6174614464656566;
      break;
    case 6:
      result = 0x74614470756F7267;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      v3 = 1970500457;
      goto LABEL_16;
    case 10:
      v3 = 1734631778;
LABEL_16:
      result = v3 | 0x7461446500000000;
      break;
    case 11:
      result = 0x446C656E6E616863;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x617373696D736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2202FEE78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22030159C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202FEEAC(uint64_t a1)
{
  v2 = sub_2202FF780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202FEEE8(uint64_t a1)
{
  v2 = sub_2202FF780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsHeadlineExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22030039C(0, &qword_27CF284B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202FF780();
  sub_220370168();
  LOBYTE(v78) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
    v110 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v107 = *(v11 + 32);
    v108 = v13;
    v14 = *(v11 + 16);
    v106[0] = *v11;
    v106[1] = v14;
    v15 = *(v11 + 48);
    v103 = v107;
    v104 = v15;
    v109 = *(v11 + 64);
    v105 = *(v11 + 64);
    v101 = v106[0];
    v102 = v12;
    v100 = 2;
    sub_22022ECDC(v106, &v78);
    sub_22022EDA0();
    sub_22036FFF8();
    v98[2] = v103;
    v98[3] = v104;
    v99 = v105;
    v98[0] = v101;
    v98[1] = v102;
    sub_22022ED14(v98);
    LODWORD(v78) = *(v3 + v10[7]);
    LOBYTE(v65) = 3;
    sub_2202760D8();
    sub_22036FFF8();
    v16 = (v3 + v10[8]);
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 4);
    LODWORD(v78) = v17;
    BYTE4(v78) = v16;
    LOBYTE(v65) = 4;
    sub_220276330();
    sub_22036FF88();
    v18 = v3 + v10[9];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    LOBYTE(v78) = *v18;
    *(&v78 + 1) = v19;
    *&v79 = v20;
    LOBYTE(v65) = 5;
    sub_2201FBD1C();

    sub_22036FFF8();

    v21 = (v3 + v10[10]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    v26 = v21[5];
    v92 = *v21;
    v93 = v22;
    v94 = v23;
    v95 = v24;
    v96 = v25;
    v97 = v26;
    v91 = 6;
    sub_22023846C(v92, v22, v23, v24, v25, v26);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v92, v93, v94, v95, v96, v97);
    v27 = (v3 + v10[11]);
    v28 = v27[9];
    v29 = v27[11];
    v88 = v27[10];
    v89 = v29;
    v30 = v27[5];
    v31 = v27[7];
    v84 = v27[6];
    v85 = v31;
    v32 = v27[7];
    v33 = v27[9];
    v86 = v27[8];
    v87 = v33;
    v34 = v27[1];
    v35 = v27[3];
    v80 = v27[2];
    v81 = v35;
    v36 = v27[3];
    v37 = v27[5];
    v82 = v27[4];
    v83 = v37;
    v38 = v27[1];
    v78 = *v27;
    v79 = v38;
    v39 = v27[11];
    v75 = v88;
    v76 = v39;
    v71 = v84;
    v72 = v32;
    v73 = v86;
    v74 = v28;
    v67 = v80;
    v68 = v36;
    v69 = v82;
    v70 = v30;
    v90 = *(v27 + 24);
    v77 = *(v27 + 24);
    v65 = v78;
    v66 = v34;
    v64 = 7;
    sub_220272A1C(&v78, v62);
    sub_22025E6C0();
    sub_22036FFF8();
    v62[10] = v75;
    v62[11] = v76;
    v63 = v77;
    v62[6] = v71;
    v62[7] = v72;
    v62[8] = v73;
    v62[9] = v74;
    v62[2] = v67;
    v62[3] = v68;
    v62[4] = v69;
    v62[5] = v70;
    v62[0] = v65;
    v62[1] = v66;
    sub_22027391C(v62);
    LOWORD(v55) = *(v3 + v10[12]);
    v61 = 8;
    sub_22025E918();
    sub_22036FFF8();
    v41 = (v3 + v10[13]);
    v42 = v41[1];
    v55 = *v41;
    v56 = v42;
    v61 = 9;
    sub_220237744();

    sub_22036FF88();

    LOWORD(v55) = *(v3 + v10[14]);
    v61 = 10;
    sub_2202FD580();
    sub_22036FF88();
    v43 = (v3 + v10[15]);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    v47 = v43[3];
    v48 = *(v43 + 32);
    LOBYTE(v43) = *(v43 + 33);
    v55 = v44;
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v59 = v48;
    v60 = v43;
    v61 = 11;
    sub_220236A84();

    sub_22036FFF8();

    v49 = (v3 + v10[16]);
    v50 = v49[1];
    v55 = *v49;
    v56 = v50;
    v61 = 12;
    sub_220250F98();

    sub_22036FF88();

    LOBYTE(v55) = *(v3 + v10[17]);
    v61 = 13;
    sub_220237C70();
    sub_22036FF88();
    v51 = (v3 + v10[18]);
    v52 = *v51;
    v53 = v51[1];
    LOBYTE(v51) = *(v51 + 16);
    v55 = v52;
    v56 = v53;
    LOBYTE(v57) = v51;
    v61 = 14;
    sub_220253D5C();

    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202FF780()
{
  result = qword_281267290;
  if (!qword_281267290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281267290);
  }

  return result;
}

void NewsHeadlineExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_22036F3C8();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22030039C(0, qword_281267298, MEMORY[0x277D844C8]);
  v59 = v7;
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v48 - v8;
  v10 = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202FF780();
  v58 = v9;
  v13 = v60;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v55;
    v14 = v56;
    v49 = v10;
    v50 = a1;
    v60 = v12;
    LOBYTE(v71) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v57;
    sub_22036FF28();
    v17 = v5;
    v18 = *(v54 + 32);
    v19 = v60;
    v57 = v17;
    v18(v60, v16);
    LOBYTE(v71) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v20 = v14;
    v21 = v53;
    sub_22036FF28();
    v48[1] = 0;
    v22 = v49;
    (*(v52 + 32))(&v19[v49[5]], v20, v21);
    v86 = 2;
    sub_22022ED48();
    sub_22036FF28();
    v23 = &v19[v22[6]];
    v24 = v69;
    *(v23 + 2) = v68;
    *(v23 + 3) = v24;
    *(v23 + 16) = v70;
    v25 = v67;
    *v23 = v66;
    *(v23 + 1) = v25;
    LOBYTE(v61) = 3;
    sub_220276084();
    sub_22036FF28();
    *&v19[v22[7]] = v71;
    LOBYTE(v61) = 4;
    sub_2202762DC();
    sub_22036FEB8();
    v26 = BYTE4(v71);
    v27 = &v19[v22[8]];
    *v27 = v71;
    v27[4] = v26;
    LOBYTE(v61) = 5;
    sub_2201FBCC4();
    sub_22036FF28();
    v28 = *(&v71 + 1);
    v29 = v72;
    v30 = &v19[v22[9]];
    *v30 = v71;
    *(v30 + 1) = v28;
    *(v30 + 2) = v29;
    LOBYTE(v61) = 6;
    sub_220236C88();
    sub_22036FEB8();
    v31 = &v19[v22[10]];
    v32 = v72;
    *v31 = v71;
    *(v31 + 1) = v32;
    *(v31 + 2) = v73;
    v85 = 7;
    sub_22025E66C();
    sub_22036FF28();
    v33 = &v19[v49[11]];
    v34 = v82;
    *(v33 + 10) = v81;
    *(v33 + 11) = v34;
    *(v33 + 24) = v83;
    v35 = v78;
    *(v33 + 6) = v77;
    *(v33 + 7) = v35;
    v36 = v80;
    *(v33 + 8) = v79;
    *(v33 + 9) = v36;
    v37 = v74;
    *(v33 + 2) = v73;
    *(v33 + 3) = v37;
    v38 = v76;
    *(v33 + 4) = v75;
    *(v33 + 5) = v38;
    v39 = v72;
    *v33 = v71;
    *(v33 + 1) = v39;
    v84 = 8;
    sub_22025E8C4();
    sub_22036FF28();
    *&v60[v49[12]] = v61;
    v84 = 9;
    sub_2202376F0();
    sub_22036FEB8();
    *&v60[v49[13]] = v61;
    v84 = 10;
    sub_2202FD52C();
    sub_22036FEB8();
    *&v60[v49[14]] = v61;
    v84 = 11;
    sub_220236A30();
    sub_22036FF28();
    v40 = v62;
    v41 = v63;
    v42 = v64;
    v43 = v65;
    v44 = &v60[v49[15]];
    *v44 = v61;
    *(v44 + 2) = v40;
    *(v44 + 3) = v41;
    v44[32] = v42;
    v44[33] = v43;
    v84 = 12;
    sub_220250F44();
    sub_22036FEB8();
    *&v60[v49[16]] = v61;
    v84 = 13;
    sub_220237C1C();
    sub_22036FEB8();
    v60[v49[17]] = v61;
    v84 = 14;
    sub_220253D04();
    sub_22036FEB8();
    (*(v15 + 8))(v58, v59);
    v45 = v62;
    v46 = v60;
    v47 = &v60[v49[18]];
    *v47 = v61;
    v47[16] = v45;
    sub_220300400(v46, v51);
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_220300464(v46);
  }
}

void sub_22030039C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202FF780();
    v7 = a3(a1, &type metadata for NewsHeadlineExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220300400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220300464(uint64_t a1)
{
  v2 = type metadata accessor for NewsHeadlineExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220300598@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202FDC94(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202FDC94(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_2202FDC94(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_2202FDC94(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_2202FDC94(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_2202FDC94(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_2202FDC94(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_2202FDC94(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_2202FDC94(0, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
  (*(*(v26 - 8) + 104))(a2 + v25, v13, v26);
  v27 = a1[15];
  sub_2202FDC94(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_2202FDC94(0, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_2202FDC94(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  (*(*(v32 - 8) + 104))(a2 + v31, v13, v32);
  v33 = a1[18];
  sub_2202FDC94(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v13, v34);
}

void sub_220300CAC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202FDC94(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_2202FDC94(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
        if (v4 <= 0x3F)
        {
          sub_2202FDC94(319, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
          if (v5 <= 0x3F)
          {
            sub_2202FDC94(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_2202FDC94(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_2202FDC94(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
                if (v8 <= 0x3F)
                {
                  sub_2202FDC94(319, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_2202FDC94(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_2202FDC94(319, &qword_281266720, sub_2202FD52C, sub_2202FD580, &type metadata for BadgeData);
                      if (v11 <= 0x3F)
                      {
                        sub_2202FDC94(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                        if (v12 <= 0x3F)
                        {
                          sub_2202FDC94(319, &qword_2812667E8, sub_220250F44, sub_220250F98, &type metadata for ArticleViewData);
                          if (v13 <= 0x3F)
                          {
                            sub_2202FDC94(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                            if (v14 <= 0x3F)
                            {
                              sub_2202FDC94(319, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
                              if (v15 <= 0x3F)
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
    }
  }
}

void sub_220301168(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812644F0, &type metadata for InGroupPositionData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_2812620C0, &type metadata for BadgeData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_27CF284B8, &type metadata for ArticleViewData);
              if (v7 <= 0x3F)
              {
                sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
                if (v8 <= 0x3F)
                {
                  sub_22023A8F4(319, &qword_27CF27BD0, &type metadata for DismissalData);
                  if (v9 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for NewsHeadlineExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsHeadlineExposureEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_220301498()
{
  result = qword_27CF284C0;
  if (!qword_27CF284C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF284C0);
  }

  return result;
}

unint64_t sub_2203014F0()
{
  result = qword_281267368;
  if (!qword_281267368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281267368);
  }

  return result;
}

unint64_t sub_220301548()
{
  result = qword_281267370;
  if (!qword_281267370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281267370);
  }

  return result;
}

uint64_t sub_22030159C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446567646162 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390500 == a2 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2 || (sub_220370048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
  {

    return 14;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

void *ExternalAnalyticsEventProcessor.__allocating_init(appConfigurationManager:tracker:uploader:panelIdProvider:urlProvider:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  v10[23] = sub_2203043C8(MEMORY[0x277D84F90]);
  v10[24] = 0;
  v10[25] = 0;
  v10[26] = 0;
  sub_2201F5DF4(a1, (v10 + 3));
  v10[2] = a2;
  sub_2201F5DF4(a3, (v10 + 8));
  sub_2201F5DF4(a4, (v10 + 13));
  sub_2201F5DF4(a5, (v10 + 18));

  sub_220301BF8();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void *ExternalAnalyticsEventProcessor.init(appConfigurationManager:tracker:uploader:panelIdProvider:urlProvider:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5[23] = sub_2203043C8(MEMORY[0x277D84F90]);
  v5[24] = 0;
  v5[25] = 0;
  v5[26] = 0;
  sub_2201F5DF4(a1, (v5 + 3));
  v5[2] = a2;
  sub_2201F5DF4(a3, (v5 + 8));
  sub_2201F5DF4(a4, (v5 + 13));
  sub_2201F5DF4(a5, (v5 + 18));

  sub_220301BF8();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_220301BF8()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedManagerForAllUsers];
  if (v2)
  {
    v3 = v2;
    sub_220263690(0, &qword_281261E60, 0x277D85C78);
    v4 = sub_22036FC48();
    v6[4] = sub_220304F50;
    v6[5] = v1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_220302280;
    v6[3] = &block_descriptor_1;
    v5 = _Block_copy(v6);

    [v3 loadConfigurationsWithCompletionQueue:v4 handler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220301D20(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    sub_220263690(0, &qword_281261E38, 0x277D86200);
    v5 = a2;
    v6 = sub_22036FCB8();
    v7 = sub_22036FC08();
    sub_220203688(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220371600;
    sub_2202036F0(0, &qword_281261AF0, MEMORY[0x277D84948]);
    sub_22036FDF8();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_22020374C();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_22036F828("Failed to obtain VPN configurations with error= %{public}@", 58, 2, &dword_2201F1000, v6, v7, v8);

    *(a3 + 192) = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    v10 = sub_220302174(a1);
    if (v10)
    {
      v11 = v10;
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v10 >> 62)
      {
LABEL_29:
        v13 = sub_22036FE18();
        if (v13)
        {
LABEL_8:
          v14 = 0;
          v15 = MEMORY[0x277D84F90];
          do
          {
            v16 = v14;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x223D79B90](v16, v11);
              }

              else
              {
                if (v16 >= *(v12 + 16))
                {
                  goto LABEL_28;
                }

                v17 = *(v11 + 8 * v16 + 32);
              }

              v18 = v17;
              v14 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                __break(1u);
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

              v19 = [v17 name];
              if (v19)
              {
                break;
              }

              ++v16;
              if (v14 == v13)
              {
                goto LABEL_31;
              }
            }

            v20 = v15;
            v21 = v19;
            v22 = sub_22036FAD8();
            v37 = v23;
            v38 = v22;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_220287D18(0, *(v20 + 2) + 1, 1, v20);
            }

            v25 = *(v20 + 2);
            v24 = *(v20 + 3);
            v26 = v20;
            if (v25 >= v24 >> 1)
            {
              v26 = sub_220287D18((v24 > 1), v25 + 1, 1, v20);
            }

            *(v26 + 2) = v25 + 1;
            v27 = &v26[16 * v25];
            v15 = v26;
            *(v27 + 4) = v38;
            *(v27 + 5) = v37;
          }

          while (v14 != v13);
          goto LABEL_31;
        }
      }

      else
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_8;
        }
      }

      v15 = MEMORY[0x277D84F90];
LABEL_31:

      sub_220263690(0, &qword_281261E38, 0x277D86200);
      v31 = sub_22036FCB8();
      sub_220203688(0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_220371600;
      sub_220269D00();
      sub_220304F58(&qword_281261EE8, sub_220269D00, MEMORY[0x277D83958]);
      v33 = sub_22036FA88();
      v35 = v34;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_22020374C();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v36 = sub_22036FC18();
      sub_22036F828("ExternalAnalyticsProcessor loaded with VPN Profile names=%@", 59, 2, &dword_2201F1000, v31, v36, v32);

      *(a3 + 192) = v15;
    }
  }

  sub_220263690(0, &qword_281261E38, 0x277D86200);
  v28 = sub_22036FCB8();
  v29 = sub_22036FC18();
  v30 = MEMORY[0x277D84F90];
  sub_22036F828("ExternalAnalyticsProcessor loadConfigurations resulted in empty configurations", 78, 2, &dword_2201F1000, v28, v29, MEMORY[0x277D84F90]);

  *(a3 + 192) = v30;
}

uint64_t sub_220302174(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22036FDC8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_220304FA0(i, v5);
    sub_220263690(0, &unk_281261E80, 0x277CD92B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22036FDA8();
    sub_22036FDD8();
    sub_22036FDE8();
    sub_22036FDB8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_220302280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_22036FB68();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t ExternalAnalyticsEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22036E9D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22036E868();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2203044E4(a1, a2, a3);
  if (result)
  {
    v30 = a2;
    v31 = a1;
    v17 = v13;
    v18 = v4[6];
    v33 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v18);
    v19 = v12;
    sub_22036E958();
    v20 = sub_22036E7C8();
    (*(v17 + 8))(v15, v19);
    v21 = *(v20 + 16);
    if (v21)
    {
      v23 = *(v9 + 16);
      v22 = v9 + 16;
      v32 = v23;
      v33 = a3;
      v24 = *(v22 + 64);
      v29[1] = v20;
      v25 = v20 + ((v24 + 32) & ~v24);
      v27 = v30;
      v26 = v31;
      v28 = *(v22 + 56);
      do
      {
        v32(v11, v25, v8);
        sub_220302564(v26, v11, v27, v33);
        (*(v22 - 8))(v11, v8);
        v25 += v28;
        --v21;
      }

      while (v21);
    }
  }

  return result;
}

uint64_t sub_220302564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v59 = a2;
  v57 = a3;
  v6 = sub_22036ED58();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - v8;
  v9 = type metadata accessor for ExternalURLData(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = v4[24];
  if (v21)
  {
    v22 = v4[26];
    if (v22)
    {
      v49 = v19;
      v50 = v10;
      v48 = v20;
      v52 = &v45 - v18;
      v53 = a1;
      v51 = v4[25];

      v23 = v59;
      v24 = sub_220302FD8(v59, v21);

      if (v24)
      {
        v46 = v4;
        v47 = v6;
        v26 = v4[21];
        v25 = v4[22];
        __swift_project_boxed_opaque_existential_1(v4 + 18, v26);
        (*(v25 + 8))(v53, v23, v51, v22, v57, v58, v26, v25);

        v33 = v52;
        sub_220304A88(v52, v16);
        if ((v50[6])(v16, 1, v9) == 1)
        {
          sub_220304B1C(v33);
          v34 = v16;
        }

        else
        {
          v35 = v55;
          sub_220304BA8(v16, v55);
          v36 = v46[12];
          v51 = v46[11];
          v59 = v36;
          v50 = __swift_project_boxed_opaque_existential_1(v46 + 8, v51);
          v37 = v56;
          v38 = v54;
          v39 = v47;
          (*(v56 + 16))(v54, v53, v47);
          v40 = v49;
          sub_220304A88(v33, v49);
          v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v42 = (v7 + *(v48 + 80) + v41) & ~*(v48 + 80);
          v43 = swift_allocObject();
          v44 = v58;
          *(v43 + 16) = v57;
          *(v43 + 24) = v44;
          (*(v37 + 32))(v43 + v41, v38, v39);
          sub_220304C0C(v40, v43 + v42);
          sub_22036EB98();

          sub_220304DC0(v35);
          v34 = v33;
        }

        return sub_220304B1C(v34);
      }

      else
      {

        result = sub_22036E968();
        if (v27)
        {
          v28 = result;
          v29 = v27;
          sub_220263690(0, &qword_281261E38, 0x277D86200);
          v30 = sub_22036FCB8();
          sub_220203688(0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_220371600;
          *(v31 + 56) = MEMORY[0x277D837D0];
          *(v31 + 64) = sub_22020374C();
          *(v31 + 32) = v28;
          *(v31 + 40) = v29;
          v32 = sub_22036FC18();
          sub_22036F828("User is not a panelist for the external analytics config=%@", 59, 2, &dword_2201F1000, v30, v32, v31);
        }
      }
    }
  }

  return result;
}

uint64_t ExternalAnalyticsEventProcessor.didStartSession(_:)()
{
  v1 = v0;
  v2 = sub_22036E9D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036E868();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[25] = sub_22036F2C8();
  v0[26] = v10;

  swift_beginAccess();
  v0[23] = MEMORY[0x277D84F98];

  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  sub_22036E958();
  v11 = sub_22036E7C8();
  (*(v7 + 8))(v9, v6);
  v12 = *(v11 + 16);
  if (!v12)
  {
  }

  v15 = *(v3 + 16);
  v14 = v3 + 16;
  v13 = v15;
  v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
  v46[1] = v11;
  v47 = v2;
  v17 = v11 + v16;
  v18 = *(v14 + 56);
  v19 = (v14 - 8);
  v52 = v15;
  v53 = v14;
  v50 = (v14 - 8);
  v51 = v18;
  v15(v5, v11 + v16, v2);
  while (1)
  {
    if ((sub_22036E9A8() & 1) == 0)
    {
      (*v19)(v5, v2);
      goto LABEL_4;
    }

    v20 = v1[17];
    __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
    sub_22036E978();
    v21 = (*(v20 + 8))();
    v23 = v22;

    if (v23)
    {
      break;
    }

    v19 = v50;
    (*v50)(v5, v2);
LABEL_23:
    v13 = v52;
    v18 = v51;
LABEL_4:
    v17 += v18;
    if (!--v12)
    {
    }

    v13(v5, v17, v2);
  }

  v24 = sub_22036E968();
  if (!v25)
  {
    v19 = v50;
    (*v50)(v5, v2);

    goto LABEL_23;
  }

  v26 = v24;
  v27 = v25;
  v49 = v21;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v1[23];
  v29 = v54;
  v1[23] = 0x8000000000000000;
  v48 = v26;
  v31 = sub_220304238(v26, v27, sub_2203038A0);
  v32 = v29[2];
  v33 = (v30 & 1) == 0;
  v34 = v32 + v33;
  if (!__OFADD__(v32, v33))
  {
    v35 = v30;
    if (v29[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v54;
        if ((v30 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_2203040CC();
        v38 = v54;
        if ((v35 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_220303CB8(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_220304238(v48, v27, sub_2203038A0);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v31 = v36;
      v38 = v54;
      if ((v35 & 1) == 0)
      {
LABEL_20:
        v38[(v31 >> 6) + 8] |= 1 << v31;
        v40 = (v38[6] + 16 * v31);
        *v40 = v48;
        v40[1] = v27;
        v41 = (v38[7] + 16 * v31);
        *v41 = v49;
        v41[1] = v23;
        v42 = v38[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_26;
        }

        v38[2] = v44;
        goto LABEL_22;
      }
    }

    v39 = (v38[7] + 16 * v31);
    *v39 = v49;
    v39[1] = v23;

LABEL_22:
    v1[23] = v38;
    swift_endAccess();
    v19 = v50;
    v2 = v47;
    (*v50)(v5, v47);
    goto LABEL_23;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_220370098();
  __break(1u);
  return result;
}

uint64_t sub_220302FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_22036E988() + 16);

  if (v3)
  {
    result = sub_22036E988();
    v5 = result;
    v6 = (result + 40);
    v7 = -*(result + 16);
    v8 = -1;
    while (1)
    {
      v9 = v7 + v8 != -1;
      if (v7 + v8 == -1)
      {
LABEL_6:

        return v9;
      }

      if (++v8 >= *(v5 + 16))
      {
        break;
      }

      v10 = v6 + 2;
      v12 = *(v6 - 1);
      v11 = *v6;

      LOBYTE(v12) = sub_2203030A8(v12, v11, a2, v13);

      v6 = v10;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL sub_2203030A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 40;
  v5 = *(a3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 16;
    sub_220304E84();
    v7 = sub_22036FCD8();
    v4 = v6;
  }

  while (v7);
  return v5 != 0;
}

void sub_220303140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v6 = sub_22036E508();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  sub_220304E1C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277CEAD30])
  {
    (*(v14 + 8))(v16, v13);
    sub_220203688(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220371610;
    sub_22036ED58();
    v19 = sub_22036ED48();
    v21 = v20;
    v22 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v23 = sub_22020374C();
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_220304A88(v44, v11);
    v24 = type metadata accessor for ExternalURLData(0);
    if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
    {
      sub_220304B1C(v11);
      v25 = (v18 + 72);
      *(v18 + 96) = v22;
      *(v18 + 104) = v23;
    }

    else
    {
      v37 = v43;
      (*(v43 + 16))(v8, v11, v6);
      sub_220304DC0(v11);
      v38 = sub_22036E4D8();
      v40 = v39;
      (*(v37 + 8))(v8, v6);
      v25 = (v18 + 72);
      *(v18 + 96) = v22;
      *(v18 + 104) = v23;
      if (v40)
      {
        *v25 = v38;
LABEL_9:
        *(v18 + 80) = v40;
        sub_220263690(0, &qword_281261E38, 0x277D86200);
        v41 = sub_22036FC98();
        v42 = sub_22036FC18();
        sub_22036F828("Successful submission of external analytics event: %@ externalURL: %@", 69, 2, &dword_2201F1000, v41, v42, v18);

        return;
      }
    }

    *v25 = 0;
    v40 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (v17 == *MEMORY[0x277CEAD28])
  {
    (*(v14 + 96))(v16, v13);
    v26 = *v16;
    sub_220263690(0, &qword_281261E38, 0x277D86200);
    v27 = sub_22036FC98();
    v28 = sub_22036FC08();
    sub_220203688(0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_220371610;
    sub_22036ED58();
    v30 = sub_22036ED48();
    v32 = v31;
    v33 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v34 = sub_22020374C();
    *(v29 + 64) = v34;
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    swift_getErrorValue();
    v35 = sub_2203700A8();
    *(v29 + 96) = v33;
    *(v29 + 104) = v34;
    *(v29 + 72) = v35;
    *(v29 + 80) = v36;
    sub_22036F828("Failed to submit external analytics for event: %@ error: %{public}@", 67, 2, &dword_2201F1000, v27, v28, v29);
  }

  else
  {
    sub_22036FE08();
    __break(1u);
  }
}

void *ExternalAnalyticsEventProcessor.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return v0;
}

uint64_t ExternalAnalyticsEventProcessor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

unint64_t sub_22030385C(uint64_t a1)
{
  v2 = sub_22036FD08();

  return sub_220303958(a1, v2);
}

unint64_t sub_2203038A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_220370048())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_220303958(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22030497C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D79B30](v9, a1);
      sub_2203049D8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_220303A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_220304ED8(0);
  v35 = v4;
  result = sub_22036FE38();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_220370108();
      sub_22036FB08();
      result = sub_220370128();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_220303CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_220304A2C();
  v37 = v4;
  result = sub_22036FE38();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_220370108();
      sub_22036FB08();
      result = sub_220370128();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_220303F6C()
{
  v1 = v0;
  sub_220304ED8(0);
  v2 = *v0;
  v3 = sub_22036FE28();
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_2203040CC()
{
  v1 = v0;
  sub_220304A2C();
  v2 = *v0;
  v3 = sub_22036FE28();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_220304238(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_220370108();
  sub_22036FB08();
  v5 = sub_220370128();

  return a3(a1, a2, v5);
}

unint64_t sub_2203042BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_220304FFC(0);
    v3 = sub_22036FE48();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_220304238(v5, v6, sub_2203038A0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_2203043C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_220304A2C();
    v3 = sub_22036FE48();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_220304238(v5, v6, sub_2203038A0);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_2203044E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220287C08(0);
  v39 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202A6484(0);
  v42 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AC30C(0);
  v44 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C5134(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22036ED58();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v36 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v35 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = *(v16 + 16);
  v25(&v35 - v26, a1, v15);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v25(v24, a1, v15);
    v28 = v43;
    v27 = v44;
    if (swift_dynamicCast())
    {
      (*(v40 + 8))(v28, v27);
    }

    else
    {
      v25(v21, a1, v15);
      v29 = v41;
      v30 = v42;
      if (swift_dynamicCast())
      {
        v31 = *(v37 + 8);
        v32 = v29;
      }

      else
      {
        v25(v36, a1, v15);
        v33 = v38;
        v30 = v39;
        result = swift_dynamicCast();
        if (!result)
        {
          return result;
        }

        v31 = *(v35 + 8);
        v32 = v33;
      }

      v31(v32, v30);
    }
  }

  return 1;
}

void sub_220304A2C()
{
  if (!qword_27CF284C8)
  {
    v0 = sub_22036FE58();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF284C8);
    }
  }
}

uint64_t sub_220304A88(uint64_t a1, uint64_t a2)
{
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220304B1C(uint64_t a1)
{
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220304BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalURLData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220304C0C(uint64_t a1, uint64_t a2)
{
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220304CA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_22036ED58() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_220305094(0, qword_2812655D0, type metadata accessor for ExternalURLData, MEMORY[0x277D83D88]);
  v9 = v1 + ((v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  sub_220303140(a1, v1 + v6, v9, v3, v4);
}

uint64_t sub_220304DC0(uint64_t a1)
{
  v2 = type metadata accessor for ExternalURLData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220304E1C(uint64_t a1)
{
  if (!qword_281267378)
  {
    sub_220263690(255, &qword_281267380, 0x277CCAA40);
    v1 = sub_22036EE58();
    if (!v2)
    {
      atomic_store(v1, &qword_281267378);
    }
  }
}

unint64_t sub_220304E84()
{
  result = qword_281261FA0;
  if (!qword_281261FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FA0);
  }

  return result;
}

void sub_220304ED8(uint64_t a1)
{
  if (!qword_27CF284D0)
  {
    sub_220263690(255, &qword_281261E50, 0x277D31338);
    v1 = sub_22036FE58();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF284D0);
    }
  }
}

uint64_t sub_220304F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220304FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_220304FFC(uint64_t a1)
{
  if (!qword_27CF284D8)
  {
    sub_220305094(255, &qword_27CF284E0, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    v1 = sub_22036FE58();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF284D8);
    }
  }
}

void sub_220305094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203051C0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28518);
  __swift_project_value_buffer(v0, qword_27CF28518);
  return sub_22036F108();
}

uint64_t AddEarningsToCalendarEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AddEarningsToCalendarEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 20);
  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddEarningsToCalendarEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 20);
  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddEarningsToCalendarEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 24);
  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddEarningsToCalendarEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 24);
  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddEarningsToCalendarEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 28);
  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddEarningsToCalendarEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 28);
  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddEarningsToCalendarEvent.calendarAccessData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 32);
  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC, &type metadata for CalendarAccessData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AddEarningsToCalendarEvent.calendarAccessData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 32);
  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC, &type metadata for CalendarAccessData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddEarningsToCalendarEvent.addToCalendarResultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 36);
  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214, &type metadata for AddToCalendarResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220305A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AddEarningsToCalendarEvent.addToCalendarResultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AddEarningsToCalendarEvent(0) + 36);
  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214, &type metadata for AddToCalendarResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AddEarningsToCalendarEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AddEarningsToCalendarEvent(0);
  v5 = v4[5];
  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC, &type metadata for CalendarAccessData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214, &type metadata for AddToCalendarResultData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t AddEarningsToCalendarEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AddEarningsToCalendarEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t AddEarningsToCalendarEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AddEarningsToCalendarEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t AddEarningsToCalendarEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AddEarningsToCalendarEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AddEarningsToCalendarEvent.Model.calendarAccessData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AddEarningsToCalendarEvent.Model.addToCalendarResultData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

int *AddEarningsToCalendarEvent.Model.init(eventData:feedData:symbolData:viewData:calendarAccessData:addToCalendarResultData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = a3[3];
  v16 = a3[4];
  v23 = a4[1];
  v24 = *a4;
  v22 = *(a4 + 8);
  v25 = *a5;
  v26 = *a6;
  v17 = sub_22036F388();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  result = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  v19 = a7 + result[5];
  *v19 = v9;
  *(v19 + 8) = v10;
  *(v19 + 16) = v11;
  v20 = a7 + result[6];
  *v20 = v12;
  *(v20 + 8) = v13;
  *(v20 + 16) = v14;
  *(v20 + 24) = v15;
  *(v20 + 32) = v16;
  v21 = a7 + result[7];
  *v21 = v24;
  *(v21 + 8) = v23;
  *(v21 + 16) = v22;
  *(a7 + result[8]) = v25;
  *(a7 + result[9]) = v26;
  return result;
}

uint64_t sub_220306180()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x61446C6F626D7973;
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

uint64_t sub_22030624C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203074F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220306274(uint64_t a1)
{
  v2 = sub_220306678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203062B0(uint64_t a1)
{
  v2 = sub_220306678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddEarningsToCalendarEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220306C1C(0, &qword_27CF28540, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220306678();
  sub_220370168();
  LOBYTE(v23) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v23) = *v11;
    v24 = v12;
    v25 = v13;
    v28 = 1;
    sub_2201FBD1C();

    sub_22036FFF8();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v16 = *(v14 + 16);
    v17 = v14[3];
    v18 = v14[4];
    v23 = *v14;
    v24 = v15;
    LOBYTE(v25) = v16;
    v26 = v17;
    v27 = v18;
    v28 = 2;
    sub_220230C50();

    sub_22036FFF8();

    v19 = (v3 + v10[7]);
    v20 = *v19;
    v21 = v19[1];
    LOWORD(v19) = *(v19 + 8);
    v23 = v20;
    v24 = v21;
    LOWORD(v25) = v19;
    v28 = 3;
    sub_220202110();

    sub_22036FFF8();

    LOBYTE(v23) = *(v3 + v10[8]);
    v28 = 4;
    sub_2202EEEBC();
    sub_22036FFF8();
    LOBYTE(v23) = *(v3 + v10[9]);
    v28 = 5;
    sub_220292214();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220306678()
{
  result = qword_27CF28548;
  if (!qword_27CF28548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28548);
  }

  return result;
}

uint64_t AddEarningsToCalendarEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_22036F388();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220306C1C(0, &qword_27CF28550, MEMORY[0x277D844C8]);
  v34 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220306678();
  v33 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v14 = v30;
  v13 = v31;
  LOBYTE(v35) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v32;
  sub_22036FF28();
  (*(v13 + 32))(v12, v15, v4);
  v40 = 1;
  sub_2201FBCC4();
  sub_22036FF28();
  v16 = v36;
  v17 = v37;
  v18 = v12 + v9[5];
  *v18 = v35;
  *(v18 + 8) = v16;
  *(v18 + 16) = v17;
  v40 = 2;
  sub_220230BFC();
  v32 = 0;
  sub_22036FF28();
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = v12 + v9[6];
  *v23 = v35;
  *(v23 + 8) = v19;
  *(v23 + 16) = v20;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  v40 = 3;
  sub_2202020B8();
  sub_22036FF28();
  v24 = v36;
  v25 = v37;
  v26 = v12 + v9[7];
  *v26 = v35;
  *(v26 + 8) = v24;
  *(v26 + 16) = v25;
  v40 = 4;
  sub_2202EEE64();
  sub_22036FF28();
  *(v12 + v9[8]) = v35;
  v40 = 5;
  sub_2202921BC();
  sub_22036FF28();
  (*(v14 + 8))(v33, v34);
  *(v12 + v9[9]) = v35;
  sub_220306C80(v12, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220306CE4(v12);
}

void sub_220306C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220306678();
    v7 = a3(a1, &type metadata for AddEarningsToCalendarEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220306C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220306CE4(uint64_t a1)
{
  v2 = type metadata accessor for AddEarningsToCalendarEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220306E18@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220305A78(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220305A78(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220305A78(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_220305A78(0, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC, &type metadata for CalendarAccessData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_220305A78(0, &qword_27CF28538, sub_2202921BC, sub_220292214, &type metadata for AddToCalendarResultData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_220307118(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220305A78(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_220305A78(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
      if (v3 <= 0x3F)
      {
        sub_220305A78(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_220305A78(319, &qword_27CF28530, sub_2202EEE64, sub_2202EEEBC, &type metadata for CalendarAccessData);
          if (v5 <= 0x3F)
          {
            sub_220305A78(319, &qword_27CF28538, sub_2202921BC, sub_220292214, &type metadata for AddToCalendarResultData);
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

uint64_t sub_22030733C(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2203073F0()
{
  result = qword_27CF28578;
  if (!qword_27CF28578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28578);
  }

  return result;
}

unint64_t sub_220307448()
{
  result = qword_27CF28580;
  if (!qword_27CF28580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28580);
  }

  return result;
}

unint64_t sub_2203074A0()
{
  result = qword_27CF28588;
  if (!qword_27CF28588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28588);
  }

  return result;
}

uint64_t sub_2203074F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002203918F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220391910 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_22030770C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t ArticleViewData.viewSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220307800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69)
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

uint64_t sub_220307890(uint64_t a1)
{
  v2 = sub_220307A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203078CC(uint64_t a1)
{
  v2 = sub_220307A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewData.encode(to:)(void *a1)
{
  sub_220307C2C(0, &qword_281261C90, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220307A54();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220307A54()
{
  result = qword_2812656D0;
  if (!qword_2812656D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656D0);
  }

  return result;
}

uint64_t ArticleViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220307C2C(0, &qword_281261DE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220307A54();
  sub_220370148();
  if (!v2)
  {
    v10 = sub_22036FEE8();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220307C2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220307A54();
    v7 = a3(a1, &type metadata for ArticleViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220307CB0(void *a1)
{
  sub_220307C2C(0, &qword_281261C90, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220307A54();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220307E20()
{
  result = qword_27CF28590;
  if (!qword_27CF28590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28590);
  }

  return result;
}

unint64_t sub_220307E78()
{
  result = qword_2812656C0;
  if (!qword_2812656C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656C0);
  }

  return result;
}

unint64_t sub_220307ED0()
{
  result = qword_2812656C8;
  if (!qword_2812656C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812656C8);
  }

  return result;
}

StocksAnalytics::AdJournalEntryData __swiftcall AdJournalEntryData.init(status:error:)(StocksAnalytics::AdJournalEntryStatus status, StocksAnalytics::AdJournalEntryError_optional error)
{
  v3 = *error.value;
  *v2 = *status;
  v2[1] = v3;
  result.status = status;
  return result;
}

uint64_t sub_220307FB0()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_220307FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_2203080B8(uint64_t a1)
{
  v2 = sub_2203082DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203080F4(uint64_t a1)
{
  v2 = sub_2203082DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdJournalEntryData.encode(to:)(void *a1)
{
  sub_2203085BC(0, &qword_281261C50, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203082DC();
  sub_220370168();
  v16 = v9;
  v15 = 0;
  sub_220308330();
  sub_22036FFF8();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_220308384();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2203082DC()
{
  result = qword_281264CB0;
  if (!qword_281264CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264CB0);
  }

  return result;
}

unint64_t sub_220308330()
{
  result = qword_281264360;
  if (!qword_281264360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264360);
  }

  return result;
}

unint64_t sub_220308384()
{
  result = qword_281264650[0];
  if (!qword_281264650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264650);
  }

  return result;
}

uint64_t AdJournalEntryData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2203085BC(0, &qword_27CF28598, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203082DC();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    sub_220308620();
    sub_22036FF28();
    v10 = v17;
    v14 = 1;
    sub_220308674();
    sub_22036FEB8();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203085BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203082DC();
    v7 = a3(a1, &type metadata for AdJournalEntryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220308620()
{
  result = qword_27CF285A0;
  if (!qword_27CF285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285A0);
  }

  return result;
}

unint64_t sub_220308674()
{
  result = qword_27CF285A8;
  if (!qword_27CF285A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdJournalEntryData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_2203087C8()
{
  result = qword_27CF285B0;
  if (!qword_27CF285B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285B0);
  }

  return result;
}

unint64_t sub_220308820()
{
  result = qword_281264CA0;
  if (!qword_281264CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264CA0);
  }

  return result;
}

unint64_t sub_220308878()
{
  result = qword_281264CA8;
  if (!qword_281264CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264CA8);
  }

  return result;
}

uint64_t AdData.impressionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdData.impressionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AdData.iadCampaign.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AdData.iadCampaign.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AdData.iadLine.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AdData.iadLine.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AdData.iadAd.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AdData.iadAd.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void __swiftcall AdData.init(impressionID:adType:adCreativeType:iadCampaign:iadLine:iadAd:)(StocksAnalytics::AdData *__return_ptr retstr, Swift::String impressionID, StocksAnalytics::AdType adType, StocksAnalytics::AdCreativeType adCreativeType, Swift::String_optional iadCampaign, Swift::String_optional iadLine, Swift::String_optional iadAd)
{
  v7 = *adType;
  v8 = *adCreativeType;
  retstr->impressionID = impressionID;
  retstr->adType = v7;
  retstr->adCreativeType = v8;
  retstr->iadCampaign = iadCampaign;
  retstr->iadLine = iadLine;
  retstr->iadAd = iadAd;
}

uint64_t sub_220308B8C()
{
  v1 = *v0;
  v2 = 0x6973736572706D69;
  v3 = 0x61706D6143646169;
  v4 = 0x656E694C646169;
  if (v1 != 4)
  {
    v4 = 0x6441646169;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657079546461;
  if (v1 != 1)
  {
    v5 = 0x6974616572436461;
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

uint64_t sub_220308C5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220309624(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220308C84(uint64_t a1)
{
  v2 = sub_220308F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220308CC0(uint64_t a1)
{
  v2 = sub_220308F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdData.encode(to:)(void *a1)
{
  sub_22030940C(0, &qword_27CF285B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v8;
  v9 = *(v1 + 24);
  v16[4] = *(v1 + 32);
  v16[5] = v9;
  v10 = *(v1 + 40);
  v16[2] = *(v1 + 48);
  v16[3] = v10;
  v11 = *(v1 + 64);
  v16[0] = *(v1 + 56);
  v16[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220308F80();
  v12 = v4;
  sub_220370168();
  v27 = 0;
  v13 = v19;
  sub_22036FFB8();
  if (!v13)
  {
    v14 = v17;
    v26 = v18;
    v25 = 1;
    sub_220308FD4();
    sub_22036FFF8();
    v24 = v14;
    v23 = 2;
    sub_22028B818();
    sub_22036FFF8();
    v22 = 3;
    sub_22036FF68();
    v21 = 4;
    sub_22036FF68();
    v20 = 5;
    sub_22036FF68();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_220308F80()
{
  result = qword_27CF285C0;
  if (!qword_27CF285C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285C0);
  }

  return result;
}

unint64_t sub_220308FD4()
{
  result = qword_27CF285C8;
  if (!qword_27CF285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285C8);
  }

  return result;
}

uint64_t AdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22030940C(0, &qword_27CF285D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220308F80();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v53 = v10;
  LOBYTE(v34) = 1;
  sub_220309470();
  sub_22036FF28();
  v13 = LOBYTE(v39[0]);
  LOBYTE(v34) = 2;
  sub_22028BA68();
  sub_22036FF28();
  v32 = LOBYTE(v39[0]);
  v33 = v13;
  LOBYTE(v39[0]) = 3;
  v14 = sub_22036FE98();
  v16 = v15;
  v31 = v14;
  LOBYTE(v39[0]) = 4;
  v29 = sub_22036FE98();
  v30 = v17;
  v50 = 5;
  v18 = sub_22036FE98();
  v19 = v9;
  v21 = v20;
  (*(v7 + 8))(v19, v6);
  v22 = v53;
  *&v34 = v53;
  *(&v34 + 1) = v12;
  LOBYTE(v35) = v33;
  BYTE1(v35) = v32;
  *(&v35 + 2) = v51;
  WORD3(v35) = v52;
  *(&v35 + 1) = v31;
  *&v36 = v16;
  v23 = v29;
  *(&v36 + 1) = v29;
  *&v37 = v30;
  *(&v37 + 1) = v18;
  v38 = v21;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  *(a2 + 64) = v21;
  *(a2 + 32) = v26;
  *(a2 + 48) = v27;
  *a2 = v24;
  *(a2 + 16) = v25;
  sub_2202823D8(&v34, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v22;
  v39[1] = v12;
  v40 = v33;
  v41 = v32;
  v42 = v51;
  v43 = v52;
  v44 = v31;
  v45 = v16;
  v46 = v23;
  v47 = v30;
  v48 = v18;
  v49 = v21;
  return sub_220282A40(v39);
}

void sub_22030940C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220308F80();
    v7 = a3(a1, &type metadata for AdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220309470()
{
  result = qword_27CF285D8;
  if (!qword_27CF285D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285D8);
  }

  return result;
}

unint64_t sub_220309520()
{
  result = qword_27CF285E0;
  if (!qword_27CF285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285E0);
  }

  return result;
}

unint64_t sub_220309578()
{
  result = qword_27CF285E8;
  if (!qword_27CF285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285E8);
  }

  return result;
}

unint64_t sub_2203095D0()
{
  result = qword_27CF285F0;
  if (!qword_27CF285F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285F0);
  }

  return result;
}

uint64_t sub_220309624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572706D69 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616572436461 && a2 == 0xEE00657079546576 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61706D6143646169 && a2 == 0xEB000000006E6769 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E694C646169 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6441646169 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t UserEventStorageData.init(onDiskSize:prunedSessionCount:prunedSessionSize:totalSessionsCount:oldestSessionAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_220309930()
{
  v1 = *v0;
  v2 = 0x69536B7369446E6FLL;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_2203099E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22030A1B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220309A08(uint64_t a1)
{
  v2 = sub_220309C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220309A44(uint64_t a1)
{
  v2 = sub_220309C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventStorageData.encode(to:)(void *a1)
{
  sub_220309EF4(0, &qword_281261C10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[1] = v1[2];
  v12[2] = v8;
  v12[0] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220309C68();
  sub_220370168();
  v17 = 0;
  v10 = v12[3];
  sub_220370018();
  if (!v10)
  {
    v16 = 1;
    sub_220370018();
    v15 = 2;
    sub_220370018();
    v14 = 3;
    sub_220370018();
    v13 = 4;
    sub_220370018();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220309C68()
{
  result = qword_281263B50;
  if (!qword_281263B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B50);
  }

  return result;
}

uint64_t UserEventStorageData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220309EF4(0, &qword_281261DA8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220309C68();
  sub_220370148();
  if (!v2)
  {
    v21 = 0;
    v10 = sub_22036FF48();
    v20 = 1;
    v11 = sub_22036FF48();
    v19 = 2;
    v16 = sub_22036FF48();
    v18 = 3;
    v15 = sub_22036FF48();
    v17 = 4;
    v13 = sub_22036FF48();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v11;
    v14 = v15;
    a2[2] = v16;
    a2[3] = v14;
    a2[4] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220309EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220309C68();
    v7 = a3(a1, &type metadata for UserEventStorageData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220309F5C()
{
  result = qword_281263B28;
  if (!qword_281263B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B28);
  }

  return result;
}

unint64_t sub_220309FB4()
{
  result = qword_281263B30;
  if (!qword_281263B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B30);
  }

  return result;
}

uint64_t sub_22030A038(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22030A058(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_22030A0B0()
{
  result = qword_27CF285F8;
  if (!qword_27CF285F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF285F8);
  }

  return result;
}

unint64_t sub_22030A108()
{
  result = qword_281263B40;
  if (!qword_281263B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B40);
  }

  return result;
}