unint64_t sub_220329BE4()
{
  result = qword_281263B38;
  if (!qword_281263B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B38);
  }

  return result;
}

StocksAnalytics::AppIntentType_optional __swiftcall AppIntentType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AppIntentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x637461576E65706FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x697472416E65706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x626D79536E65706FLL;
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

unint64_t sub_220329D78()
{
  result = qword_27CF28C48;
  if (!qword_27CF28C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28C48);
  }

  return result;
}

uint64_t sub_220329DCC()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220329ECC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220329FB8(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22032A0C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xED00007473696C68;
  v6 = 0x637461576E65706FLL;
  v7 = 0x800000022038FE40;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x697472416E65706FLL;
    v7 = 0xEB00000000656C63;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x626D79536E65706FLL;
    v3 = 0xEA00000000006C6FLL;
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

unint64_t sub_22032A23C()
{
  result = qword_27CF28C50;
  if (!qword_27CF28C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28C50);
  }

  return result;
}

uint64_t sub_22032A290()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF28C58);
  v1 = __swift_project_value_buffer(v0, qword_27CF28C58);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_22032A37C()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF28C70);
  v1 = __swift_project_value_buffer(v0, qword_27CF28C70);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_22032A43C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28C88);
  __swift_project_value_buffer(v0, qword_27CF28C88);
  return sub_22036F108();
}

uint64_t InterstitialAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InterstitialAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22032AA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t InterstitialAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InterstitialAdImpressionEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v11, v12, v13);
}

uint64_t sub_22032AE7C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t InterstitialAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t InterstitialAdImpressionEvent.Model.init(eventData:timedData:adUserData:adPlacementData:adFeedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = a4[1];
  v13 = *a5;
  v14 = sub_22036F388();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  v16 = v15[5];
  v17 = sub_22036F3C8();
  result = (*(*(v17 - 8) + 32))(a6 + v16, a2, v17);
  v19 = (a6 + v15[6]);
  *v19 = v9;
  v19[1] = v10;
  v20 = (a6 + v15[7]);
  *v20 = v11;
  v20[1] = v12;
  *(a6 + v15[8]) = v13;
  return result;
}

uint64_t sub_22032B0E8()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144726573556461;
  v4 = 0x6D6563616C506461;
  if (v1 != 3)
  {
    v4 = 0x6144646565466461;
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

uint64_t sub_22032B198@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22032C390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22032B1C0(uint64_t a1)
{
  v2 = sub_22032B554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22032B1FC(uint64_t a1)
{
  v2 = sub_22032B554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterstitialAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22032BB80(0, &qword_27CF28CA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032B554();
  sub_220370168();
  LOBYTE(v18) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
    LOBYTE(v18) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v18 = *v11;
    v19 = v12;
    v17 = 2;
    sub_2201F9420();

    sub_22036FFF8();

    v13 = (v3 + v10[7]);
    v14 = v13[1];
    v18 = *v13;
    v19 = v14;
    v17 = 3;
    sub_220242D28();

    sub_22036FFF8();

    LOBYTE(v18) = *(v3 + v10[8]);
    v17 = 4;
    sub_220202B7C();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22032B554()
{
  result = qword_27CF28CA8;
  if (!qword_27CF28CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CA8);
  }

  return result;
}

uint64_t InterstitialAdImpressionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_22036F3C8();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22032BB80(0, &qword_27CF28CB0, MEMORY[0x277D844C8]);
  v34 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22032B554();
  v33 = v10;
  v14 = v35;
  sub_220370148();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v35 = v13;
  v16 = v28;
  v17 = v30;
  v18 = v31;
  LOBYTE(v36) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  (*(v16 + 32))(v35, v32, v6);
  LOBYTE(v36) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v17 + 32))(&v35[v11[5]], v15, v18);
  v38 = 2;
  sub_2201F93C8();
  sub_22036FF28();
  v19 = v37;
  v20 = &v35[v11[6]];
  *v20 = v36;
  *(v20 + 1) = v19;
  v38 = 3;
  sub_220242CD4();
  sub_22036FF28();
  v21 = v29;
  v22 = v37;
  v23 = &v35[v11[7]];
  *v23 = v36;
  *(v23 + 1) = v22;
  v38 = 4;
  sub_220202B10();
  sub_22036FEB8();
  (*(v21 + 8))(v33, v34);
  v24 = v35;
  v35[v11[8]] = v36;
  sub_22032BBE4(v24, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22032BC48(v24);
}

void sub_22032BB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22032B554();
    v7 = a3(a1, &type metadata for InterstitialAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22032BBE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22032BC48(uint64_t a1)
{
  v2 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22032BD7C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22032AA84(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_22032AA84(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_22032AA84(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v12, v13, v14);
}

void sub_22032BFD8(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_22032AA84(319, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
      if (v3 <= 0x3F)
      {
        sub_22032AA84(319, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
        if (v4 <= 0x3F)
        {
          sub_22032AA84(319, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22032C174(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22032C228();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22032C228()
{
  if (!qword_27CF26298)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF26298);
    }
  }
}

unint64_t sub_22032C28C()
{
  result = qword_27CF28CD8;
  if (!qword_27CF28CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CD8);
  }

  return result;
}

unint64_t sub_22032C2E4()
{
  result = qword_27CF28CE0;
  if (!qword_27CF28CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CE0);
  }

  return result;
}

unint64_t sub_22032C33C()
{
  result = qword_27CF28CE8;
  if (!qword_27CF28CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CE8);
  }

  return result;
}

uint64_t sub_22032C390(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174)
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

uint64_t sub_22032C560(uint64_t a1, unsigned __int8 a2)
{
  sub_22036FB08();
}

uint64_t sub_22032C6F4(uint64_t a1, unsigned __int8 a2)
{
  sub_22036FB08();
}

uint64_t sub_22032C84C(uint64_t a1, unsigned __int8 a2)
{
  sub_22036FB08();
}

uint64_t sub_22032C99C(uint64_t a1, unsigned __int8 a2)
{
  sub_22036FB08();
}

uint64_t sub_22032CB38(uint64_t a1, unsigned __int8 a2)
{
  sub_22036FB08();
}

uint64_t sub_22032CCB0(uint64_t a1, unsigned __int8 a2)
{
  sub_22036FB08();
}

StocksAnalytics::MediaUserAction_optional __swiftcall MediaUserAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaUserAction.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 2036427888;
    if (v1 != 2)
    {
      v7 = 0x6573756170;
    }

    if (*v0)
    {
      v6 = 0x616C506F54706174;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6168436465657073;
    v3 = 0x6B63614270696B73;
    if (v1 != 7)
    {
      v3 = 0x77726F4670696B73;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656D75736572;
    if (v1 != 4)
    {
      v4 = 0x64656C696166;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_22032CF7C()
{
  result = qword_27CF28CF0;
  if (!qword_27CF28CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CF0);
  }

  return result;
}

uint64_t sub_22032CFD0()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C84C(v3, v1);
  return sub_220370128();
}

uint64_t sub_22032D020(uint64_t a1)
{
  v2 = *v1;
  sub_220370108();
  sub_22032C84C(v4, v2);
  return sub_220370128();
}

uint64_t sub_22032D070@<X0>(uint64_t *a1@<X8>)
{
  result = MediaUserAction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22032D158()
{
  result = qword_27CF28CF8;
  if (!qword_27CF28CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28CF8);
  }

  return result;
}

uint64_t sub_22032D1AC()
{
  result = sub_22036E438();
  if (result)
  {
    v1 = result;
    v19 = 0xD000000000000012;
    v20 = 0x8000000220392670;
    sub_22036FD28();
    if (*(v1 + 16) && (v2 = sub_22030385C(v18), (v3 & 1) != 0))
    {
      sub_220304FA0(*(v1 + 56) + 32 * v2, &v19);
      sub_2203049D8(v18);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v16;
      }

      else
      {
        v5 = 0;
      }

      if (v4)
      {
        v6 = v17;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      sub_2203049D8(v18);
      v5 = 0;
      v6 = 0;
    }

    v19 = 0x6E676961706D6163;
    v20 = 0xEA00000000004449;
    sub_22036FD28();
    if (*(v1 + 16) && (v7 = sub_22030385C(v18), (v8 & 1) != 0))
    {
      sub_220304FA0(*(v1 + 56) + 32 * v7, &v19);
      sub_2203049D8(v18);
      v9 = swift_dynamicCast();
      if (v9)
      {
        v10 = v16;
      }

      else
      {
        v10 = 0;
      }

      if (v9)
      {
        v11 = v17;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      sub_2203049D8(v18);
      v10 = 0;
      v11 = 0;
    }

    v12 = swift_allocObject();
    sub_22036FD28();
    if (*(v1 + 16) && (v13 = sub_22030385C(v18), (v14 & 1) != 0))
    {
      sub_220304FA0(*(v1 + 56) + 32 * v13, &v19);
      sub_2203049D8(v18);

      if (swift_dynamicCast())
      {
        goto LABEL_26;
      }
    }

    else
    {

      sub_2203049D8(v18);
    }

    *(v12 + 16) = 2;
LABEL_26:
    v15 = swift_allocObject();
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v10;
    v15[5] = v11;
    v15[6] = v12;

    sub_22036EE98();
  }

  return result;
}

uint64_t sub_22032D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22032D7BC(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a6 + 16);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v23 = v16;
  sub_22032D818();

  sub_22036ECD8();
  sub_2201F8304(0);
  v17 = sub_22036EE48();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220371600;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CEAD10], v17);
  sub_22036F028();

  return (*(v13 + 8))(v15, v12);
}

void sub_22032D7BC(uint64_t a1)
{
  if (!qword_281266958)
  {
    sub_22032D818();
    v1 = sub_22036ECE8();
    if (!v2)
    {
      atomic_store(v1, &qword_281266958);
    }
  }
}

unint64_t sub_22032D818()
{
  result = qword_281264338;
  if (!qword_281264338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264338);
  }

  return result;
}

StocksAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceOrientation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x705565636166;
  if (v1 != 5)
  {
    v3 = 0x6E776F4465636166;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x70616373646E616CLL;
  }

  v4 = 0x7469617274726F70;
  if (v1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_22032D9CC()
{
  result = qword_27CF28D00;
  if (!qword_27CF28D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28D00);
  }

  return result;
}

uint64_t sub_22032DA2C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t HeartbeatData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HeartbeatData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeartbeatData.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartbeatData(0) + 20);
  v4 = sub_22036E5A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartbeatData.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeartbeatData(0) + 20);
  v4 = sub_22036E5A8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeartbeatData.eventID.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartbeatData(0) + 24));

  return v1;
}

uint64_t HeartbeatData.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartbeatData(0) + 28));

  return v1;
}

uint64_t HeartbeatData.osVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.osBundleVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeartbeatData(0) + 32));

  return v1;
}

uint64_t HeartbeatData.osBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HeartbeatData(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HeartbeatData.init(userID:timestamp:eventID:osVersion:osBundleVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for HeartbeatData(0);
  v18 = v17[5];
  v19 = sub_22036E5A8();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &a9[v17[7]];
  *v22 = a6;
  *(v22 + 1) = a7;
  v23 = &a9[v17[8]];
  *v23 = a8;
  *(v23 + 1) = a10;
  return result;
}

uint64_t sub_22032E0E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22032E7A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22032E110(uint64_t a1)
{
  v2 = sub_2201FF0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22032E14C(uint64_t a1)
{
  v2 = sub_2201FF0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_22036E5A8();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FEFD4(0, &qword_27CF28D08, MEMORY[0x277D844C8]);
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for HeartbeatData(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FF0B4();
  v31 = v8;
  v12 = v33;
  sub_220370148();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v29;
  v38 = 0;
  *v11 = sub_22036FEE8();
  v11[1] = v14;
  v33 = v14;
  v37 = 1;
  sub_2201FF630(&qword_27CF266C0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22036FF28();
  (*(v13 + 32))(v11 + v9[5], v5, v3);
  v36 = 2;
  v27[1] = 0;
  v15 = sub_22036FEE8();
  v16 = (v11 + v9[6]);
  *v16 = v15;
  v16[1] = v17;
  v35 = 3;
  v18 = sub_22036FEE8();
  v19 = (v11 + v9[7]);
  *v19 = v18;
  v19[1] = v20;
  v34 = 4;
  v21 = sub_22036FEE8();
  v27[0] = v22;
  v23 = v21;
  (*(v30 + 8))(v31, v32);
  v24 = (v11 + v9[8]);
  v25 = v27[0];
  *v24 = v23;
  v24[1] = v25;
  sub_2202B7964(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22032E610(v11);
}

uint64_t sub_22032E610(uint64_t a1)
{
  v2 = type metadata accessor for HeartbeatData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22032E750()
{
  result = qword_27CF28D10;
  if (!qword_27CF28D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28D10);
  }

  return result;
}

uint64_t sub_22032E7A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E657665 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C646E7542736FLL && a2 == 0xEF6E6F6973726556)
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

uint64_t sub_22032EA2C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28D48);
  __swift_project_value_buffer(v0, qword_27CF28D48);
  return sub_22036F108();
}

uint64_t AudioControlMenuEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioControlMenuEngagementEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 20);
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 20);
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 24);
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 24);
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 28);
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 28);
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 32);
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 32);
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 36);
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 36);
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.audioControlMenuData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 40);
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80, &type metadata for AudioControlMenuData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.audioControlMenuData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 40);
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80, &type metadata for AudioControlMenuData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 44);
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioControlMenuEngagementEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 44);
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 48);
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22032F7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AudioControlMenuEngagementEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioControlMenuEngagementEvent(0) + 48);
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioControlMenuEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioControlMenuEngagementEvent(0);
  v5 = v4[5];
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80, &type metadata for AudioControlMenuData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t AudioControlMenuEngagementEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 20);
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

uint64_t AudioControlMenuEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 24));
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

void AudioControlMenuEngagementEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 28));
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

uint64_t AudioControlMenuEngagementEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t AudioControlMenuEngagementEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioControlMenuEngagementEvent.Model.audioControlMenuData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t AudioControlMenuEngagementEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioControlMenuEngagementEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioControlMenuEngagementEvent.Model(0) + 48);
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

__n128 AudioControlMenuEngagementEvent.Model.init(eventData:newsArticleData:channelData:groupData:feedData:trackData:audioControlMenuData:viewData:articleScienceData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = *a3;
  v14 = *(a3 + 2);
  v15 = *(a3 + 3);
  v16 = *(a3 + 32);
  v17 = *(a3 + 33);
  v18 = *(a4 + 5);
  v41 = *a5;
  v39 = *(a4 + 4);
  v40 = *(a5 + 2);
  v42 = *(a6 + 4);
  v43 = *a6;
  v44 = *a7;
  v47 = *a8;
  v46 = a8[1];
  v45 = *(a8 + 8);
  v19 = sub_22036F388();
  v36 = a4[1];
  v37 = *a4;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  v21 = a9 + v20[5];
  v22 = *(a2 + 48);
  *(v21 + 32) = *(a2 + 32);
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 64);
  v23 = *(a2 + 16);
  *v21 = *a2;
  *(v21 + 16) = v23;
  v24 = a9 + v20[6];
  *v24 = v38;
  *(v24 + 16) = v14;
  *(v24 + 24) = v15;
  *(v24 + 32) = v16;
  *(v24 + 33) = v17;
  v25 = a9 + v20[7];
  *v25 = v37;
  *(v25 + 16) = v36;
  *(v25 + 32) = v39;
  *(v25 + 40) = v18;
  v26 = a9 + v20[8];
  *v26 = v41;
  *(v26 + 16) = v40;
  v27 = a9 + v20[9];
  *v27 = v43;
  *(v27 + 4) = v42;
  *(a9 + v20[10]) = v44;
  v28 = a9 + v20[11];
  *v28 = v47;
  *(v28 + 8) = v46;
  *(v28 + 16) = v45;
  v29 = a9 + v20[12];
  v30 = *(a10 + 176);
  *(v29 + 160) = *(a10 + 160);
  *(v29 + 176) = v30;
  *(v29 + 192) = *(a10 + 192);
  v31 = *(a10 + 112);
  *(v29 + 96) = *(a10 + 96);
  *(v29 + 112) = v31;
  v32 = *(a10 + 144);
  *(v29 + 128) = *(a10 + 128);
  *(v29 + 144) = v32;
  v33 = *(a10 + 48);
  *(v29 + 32) = *(a10 + 32);
  *(v29 + 48) = v33;
  v34 = *(a10 + 80);
  *(v29 + 64) = *(a10 + 64);
  *(v29 + 80) = v34;
  result = *(a10 + 16);
  *v29 = *a10;
  *(v29 + 16) = result;
  return result;
}

unint64_t sub_2203302D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x446C656E6E616863;
    if (a1 != 2)
    {
      v6 = 0x74614470756F7267;
    }

    if (a1)
    {
      v5 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6174614477656976;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6174614464656566;
    if (a1 != 4)
    {
      v3 = 0x7461446B63617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_220330418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220331E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220330440(uint64_t a1)
{
  v2 = sub_220330AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033047C(uint64_t a1)
{
  v2 = sub_220330AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioControlMenuEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203312B0(0, &qword_27CF28D68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v49 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220330AAC();
  sub_220370168();
  v94 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v88 = *(v11 + 32);
    v89 = v13;
    v14 = *(v11 + 16);
    v87[0] = *v11;
    v87[1] = v14;
    v15 = *(v11 + 48);
    v84 = v88;
    v85 = v15;
    v90 = *(v11 + 64);
    v86 = *(v11 + 64);
    v82 = v87[0];
    v83 = v12;
    v93 = 1;
    sub_22022ECDC(v87, &v64);
    sub_22022EDA0();
    sub_22036FFF8();
    v80[2] = v84;
    v80[3] = v85;
    v81 = v86;
    v80[0] = v82;
    v80[1] = v83;
    sub_22022ED14(v80);
    v16 = (v3 + v10[6]);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(v16 + 32);
    LOBYTE(v16) = *(v16 + 33);
    *&v64 = v17;
    *(&v64 + 1) = v18;
    *&v65 = v19;
    *(&v65 + 1) = v20;
    LOBYTE(v66) = v21;
    BYTE1(v66) = v16;
    LOBYTE(v51) = 2;
    sub_220236A84();

    sub_22036FFF8();

    v22 = (v3 + v10[7]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    *&v64 = *v22;
    *(&v64 + 1) = v23;
    *&v65 = v24;
    *(&v65 + 1) = v25;
    *&v66 = v26;
    *(&v66 + 1) = v27;
    LOBYTE(v51) = 3;
    sub_22023846C(v64, v23, v24, v25, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1));
    v28 = (v3 + v10[8]);
    v29 = *(v28 + 2);
    v64 = *v28;
    *&v65 = v29;
    LOBYTE(v51) = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v30 = (v3 + v10[9]);
    v31 = *v30;
    LOBYTE(v30) = *(v30 + 4);
    LODWORD(v64) = v31;
    BYTE4(v64) = v30;
    LOBYTE(v51) = 5;
    sub_2202370E4();
    sub_22036FFF8();
    LOBYTE(v64) = *(v3 + v10[10]);
    LOBYTE(v51) = 6;
    sub_220314E80();
    sub_22036FFF8();
    v32 = (v3 + v10[11]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 8);
    v77 = v33;
    v78 = v34;
    v79 = v32;
    v92 = 7;
    sub_220202110();

    sub_22036FFF8();

    v35 = (v3 + v10[12]);
    v36 = v35[9];
    v37 = v35[11];
    v74 = v35[10];
    v75 = v37;
    v38 = v35[5];
    v39 = v35[7];
    v70 = v35[6];
    v71 = v39;
    v40 = v35[7];
    v41 = v35[9];
    v72 = v35[8];
    v73 = v41;
    v42 = v35[1];
    v43 = v35[3];
    v66 = v35[2];
    v67 = v43;
    v44 = v35[3];
    v45 = v35[5];
    v68 = v35[4];
    v69 = v45;
    v46 = v35[1];
    v64 = *v35;
    v65 = v46;
    v47 = v35[11];
    v61 = v74;
    v62 = v47;
    v57 = v70;
    v58 = v40;
    v59 = v72;
    v60 = v36;
    v53 = v66;
    v54 = v44;
    v55 = v68;
    v56 = v38;
    v76 = *(v35 + 24);
    v63 = *(v35 + 24);
    v51 = v64;
    v52 = v42;
    v91 = 8;
    sub_220272A1C(&v64, v49);
    sub_22025E6C0();
    sub_22036FFF8();
    v49[10] = v61;
    v49[11] = v62;
    v50 = v63;
    v49[6] = v57;
    v49[7] = v58;
    v49[8] = v59;
    v49[9] = v60;
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v49[5] = v56;
    v49[0] = v51;
    v49[1] = v52;
    sub_22027391C(v49);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220330AAC()
{
  result = qword_27CF28D70;
  if (!qword_27CF28D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28D70);
  }

  return result;
}

void AudioControlMenuEngagementEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_22036F388();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203312B0(0, &qword_27CF28D78, MEMORY[0x277D844C8]);
  v50 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220330AAC();
  v51 = v7;
  v11 = v69;
  sub_220370148();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v48;
    v69 = a1;
    v45 = v10;
    LOBYTE(v52) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v14 = v49;
    v13 = v50;
    sub_22036FF28();
    v15 = v3;
    v16 = v45;
    (*(v47 + 32))(v45, v14, v15);
    v66 = 1;
    sub_22022ED48();
    sub_22036FF28();
    v49 = 0;
    v17 = &v16[v8[5]];
    v18 = v67[3];
    *(v17 + 2) = v67[2];
    *(v17 + 3) = v18;
    *(v17 + 16) = v68;
    v19 = v67[1];
    *v17 = v67[0];
    *(v17 + 1) = v19;
    v65 = 2;
    sub_220236A30();
    sub_22036FF28();
    v20 = v53;
    v21 = v54;
    v22 = BYTE1(v54);
    v23 = &v16[v8[6]];
    *v23 = v52;
    *(v23 + 1) = v20;
    v23[32] = v21;
    v23[33] = v22;
    v65 = 3;
    sub_220236C88();
    sub_22036FEB8();
    v24 = &v16[v8[7]];
    v25 = v53;
    *v24 = v52;
    *(v24 + 1) = v25;
    *(v24 + 2) = v54;
    v65 = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v26 = v53;
    v27 = &v16[v8[8]];
    *v27 = v52;
    *(v27 + 2) = v26;
    v65 = 5;
    sub_220237090();
    sub_22036FF28();
    v28 = BYTE4(v52);
    v29 = &v16[v8[9]];
    *v29 = v52;
    v29[4] = v28;
    v65 = 6;
    sub_220314E28();
    sub_22036FF28();
    v44 = v8;
    v16[v8[10]] = v52;
    v65 = 7;
    sub_2202020B8();
    sub_22036FF28();
    v30 = *(&v52 + 1);
    v31 = v53;
    v32 = v44;
    v33 = &v45[v44[11]];
    *v33 = v52;
    *(v33 + 1) = v30;
    *(v33 + 8) = v31;
    v65 = 8;
    sub_22025E66C();
    sub_22036FF28();
    v34 = (v12 + 8);
    v35 = v69;
    (*v34)(v51, v13);
    v36 = v45;
    v37 = &v45[v32[12]];
    v38 = v63;
    *(v37 + 10) = v62;
    *(v37 + 11) = v38;
    *(v37 + 24) = v64;
    v39 = v59;
    *(v37 + 6) = v58;
    *(v37 + 7) = v39;
    v40 = v61;
    *(v37 + 8) = v60;
    *(v37 + 9) = v40;
    v41 = v55;
    *(v37 + 2) = v54;
    *(v37 + 3) = v41;
    v42 = v57;
    *(v37 + 4) = v56;
    *(v37 + 5) = v42;
    v43 = v53;
    *v37 = v52;
    *(v37 + 1) = v43;
    sub_220331314(v36, v46);
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_220331378(v36);
  }
}

void sub_2203312B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220330AAC();
    v7 = a3(a1, &type metadata for AudioControlMenuEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220331314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220331378(uint64_t a1)
{
  v2 = type metadata accessor for AudioControlMenuEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203314AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22032F7F4(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22032F7F4(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22032F7F4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22032F7F4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_22032F7F4(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22032F7F4(0, &qword_27CF28D60, sub_220314E28, sub_220314E80, &type metadata for AudioControlMenuData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_22032F7F4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_22032F7F4(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_220331928(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22032F7F4(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22032F7F4(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_22032F7F4(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_22032F7F4(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_22032F7F4(319, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
            if (v6 <= 0x3F)
            {
              sub_22032F7F4(319, &qword_27CF28D60, sub_220314E28, sub_220314E80, &type metadata for AudioControlMenuData);
              if (v7 <= 0x3F)
              {
                sub_22032F7F4(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_22032F7F4(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
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

void sub_220331C3C(uint64_t a1)
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220331D50()
{
  result = qword_27CF28DA0;
  if (!qword_27CF28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DA0);
  }

  return result;
}

unint64_t sub_220331DA8()
{
  result = qword_27CF28DA8;
  if (!qword_27CF28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DA8);
  }

  return result;
}

unint64_t sub_220331E00()
{
  result = qword_27CF28DB0;
  if (!qword_27CF28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DB0);
  }

  return result;
}

uint64_t sub_220331E54(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x8000000220392740 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

double static ArticleScienceData.empty.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = MEMORY[0x277D84F90];
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_220332194(uint64_t a1, uint64_t a2)
{
  sub_2201F8910(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v2 = sub_22036EE48();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220371600;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277CEAD10], v2);
  sub_2201F8C48();
  sub_22036F028();
}

uint64_t sub_2203322F0(uint64_t a1)
{
  sub_2201F88B4(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_220332194(a1, v4);
}

uint64_t sub_2203323C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795466726570 && a2 == 0xE800000000000000)
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

uint64_t sub_22033244C(uint64_t a1)
{
  v2 = sub_220332620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220332488(uint64_t a1)
{
  v2 = sub_220332620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolPerfData.encode(to:)(void *a1)
{
  sub_220332860(0, &qword_281261CA0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220332620();
  sub_220370168();
  v11 = v8;
  sub_220332674();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220332620()
{
  result = qword_281265830[0];
  if (!qword_281265830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265830);
  }

  return result;
}

unint64_t sub_220332674()
{
  result = qword_281263628;
  if (!qword_281263628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263628);
  }

  return result;
}

uint64_t SymbolPerfData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220332860(0, &qword_27CF28DB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220332620();
  sub_220370148();
  if (!v2)
  {
    sub_2203328C4();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220332860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220332620();
    v7 = a3(a1, &type metadata for SymbolPerfData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2203328C4()
{
  result = qword_27CF28DC0;
  if (!qword_27CF28DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DC0);
  }

  return result;
}

unint64_t sub_22033295C()
{
  result = qword_27CF28DC8;
  if (!qword_27CF28DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28DC8);
  }

  return result;
}

unint64_t sub_2203329B4()
{
  result = qword_281265820;
  if (!qword_281265820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265820);
  }

  return result;
}

unint64_t sub_220332A0C()
{
  result = qword_281265828;
  if (!qword_281265828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265828);
  }

  return result;
}

uint64_t sub_220332B28()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28E00);
  __swift_project_value_buffer(v0, qword_27CF28E00);
  return sub_22036F108();
}

uint64_t TickerExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TickerExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TickerExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TickerExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for TickerExposureEvent(0) + 20);
  sub_220230718(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t sub_220332E64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TickerExposureEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for TickerExposureEvent.Model(0) + 20);
  v8 = sub_22036F3C8();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_220332FD0(uint64_t a1)
{
  v2 = sub_220333258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033300C(uint64_t a1)
{
  v2 = sub_220333258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TickerExposureEvent.Model.encode(to:)(void *a1)
{
  sub_2203336DC(0, &qword_27CF28E18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220333258();
  sub_220370168();
  v9[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v1)
  {
    type metadata accessor for TickerExposureEvent.Model(0);
    v9[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220333258()
{
  result = qword_27CF28E20;
  if (!qword_27CF28E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E20);
  }

  return result;
}

uint64_t TickerExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_22036F3C8();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22036F388();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203336DC(0, &qword_27CF28E28, MEMORY[0x277D844C8]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TickerExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220333258();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v15 = v24;
  v14 = v25;
  v31 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v16 = v26;
  sub_22036FF28();
  v17 = *(v15 + 32);
  v20 = v13;
  v17(v13, v16, v28);
  v30 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v27 + 8))(v9, v29);
  v18 = v20;
  (*(v22 + 32))(v20 + *(v21 + 20), v5, v14);
  sub_220333740(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2203337A4(v18);
}

void sub_2203336DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220333258();
    v7 = a3(a1, &type metadata for TickerExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220333740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TickerExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203337A4(uint64_t a1)
{
  v2 = type metadata accessor for TickerExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22033393C()
{
  result = qword_27CF28E50;
  if (!qword_27CF28E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E50);
  }

  return result;
}

unint64_t sub_220333994()
{
  result = qword_27CF28E58;
  if (!qword_27CF28E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E58);
  }

  return result;
}

unint64_t sub_2203339EC()
{
  result = qword_27CF28E60;
  if (!qword_27CF28E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E60);
  }

  return result;
}

uint64_t sub_220333B08()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28E68);
  __swift_project_value_buffer(v0, qword_27CF28E68);
  return sub_22036F108();
}

uint64_t SymbolChartDisplayErrorEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolChartDisplayErrorEvent.symbolChartDisplayErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00, &type metadata for SymbolChartDisplayErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolChartDisplayErrorEvent.symbolChartDisplayErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00, &type metadata for SymbolChartDisplayErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartDisplayErrorEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220333EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t SymbolChartDisplayErrorEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolChartDisplayErrorEvent(0) + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolChartDisplayErrorEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolChartDisplayErrorEvent(0);
  v5 = *(v4 + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00, &type metadata for SymbolChartDisplayErrorData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SymbolChartDisplayErrorEvent.Model.symbolChartDisplayErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SymbolChartDisplayErrorEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SymbolChartDisplayErrorEvent.Model(0) + 24);
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

uint64_t SymbolChartDisplayErrorEvent.Model.init(eventData:symbolChartDisplayErrorData:symbolData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  v10 = a3[3];
  v11 = a3[4];
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  result = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  v14 = a4 + *(result + 24);
  *v14 = v7;
  *(v14 + 8) = v8;
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  *(v14 + 32) = v11;
  return result;
}

unint64_t sub_220334318()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x61446C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220334380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2203350DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2203343A8(uint64_t a1)
{
  v2 = sub_220334670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203343E4(uint64_t a1)
{
  v2 = sub_220334670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartDisplayErrorEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220334A78(0, &qword_27CF28E80, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220334670();
  sub_220370168();
  LOBYTE(v17[0]) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
    LOBYTE(v17[0]) = *(v3 + *(v10 + 20));
    v21 = 1;
    sub_220264F00();
    sub_22036FFF8();
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v17[0] = *v11;
    v17[1] = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = 2;
    sub_220230C50();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220334670()
{
  result = qword_27CF28E88;
  if (!qword_27CF28E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28E88);
  }

  return result;
}

uint64_t SymbolChartDisplayErrorEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_22036F388();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220334A78(0, &qword_27CF28E90, MEMORY[0x277D844C8]);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220334670();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v13 = v12;
  v14 = v27;
  LOBYTE(v31) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v28;
  v16 = v30;
  sub_22036FF28();
  (*(v14 + 32))(v13, v6, v15);
  v36 = 1;
  sub_220264EA8();
  sub_22036FF28();
  v17 = v25;
  *(v13 + *(v25 + 20)) = v31;
  v36 = 2;
  sub_220230BFC();
  sub_22036FF28();
  (*(v29 + 8))(v9, v16);
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v13 + *(v17 + 24);
  *v22 = v31;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = v21;
  sub_220334ADC(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220334B40(v13);
}

void sub_220334A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220334670();
    v7 = a3(a1, &type metadata for SymbolChartDisplayErrorEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220334ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220334B40(uint64_t a1)
{
  v2 = type metadata accessor for SymbolChartDisplayErrorEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220334C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220333EB0(0, &qword_281266758, sub_220264EA8, sub_220264F00, &type metadata for SymbolChartDisplayErrorData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_220333EB0(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_220334E0C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220333EB0(319, &qword_281266758, sub_220264EA8, sub_220264F00, &type metadata for SymbolChartDisplayErrorData);
    if (v2 <= 0x3F)
    {
      sub_220333EB0(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220334F40(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220334FD8()
{
  result = qword_27CF28EA8;
  if (!qword_27CF28EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EA8);
  }

  return result;
}

unint64_t sub_220335030()
{
  result = qword_27CF28EB0;
  if (!qword_27CF28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EB0);
  }

  return result;
}

unint64_t sub_220335088()
{
  result = qword_27CF28EB8;
  if (!qword_27CF28EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EB8);
  }

  return result;
}

uint64_t sub_2203350DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002203927D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t StocksSession.sessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t StocksSession.appSessionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StocksSession.userData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_2202C6FD8(v7, &v6);
}

uint64_t type metadata accessor for StocksSession(uint64_t a1)
{
  result = qword_2812662A0;
  if (!qword_2812662A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StocksSession.appData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StocksSession(0) + 32));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t StocksSession.deviceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StocksSession(0) + 36);
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
  return sub_2202D6354(v10, v9);
}

uint64_t StocksSession.contentEnvironmentData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StocksSession(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

void StocksSession.userBundleSubscriptionContextData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StocksSession(0) + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v3 + 40);

  sub_220335498(v4, v5, v6, v7, v8);
}

void sub_220335498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

uint64_t StocksSession.debugData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StocksSession(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t StocksSession.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for StocksSession(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t StocksSession.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StocksSession(0) + 56));
}

uint64_t StocksSession.watchlistSummaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StocksSession(0) + 60));
}

unint64_t sub_2203355E4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7461746E6569726FLL;
    v7 = 0xD000000000000015;
    if (a1 != 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000016;
    v9 = 0xD000000000000021;
    if (a1 != 7)
    {
      v9 = 0x7461446775626564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x496E6F6973736573;
    v2 = 0x446E6F6973736573;
    v3 = 0x61746144707061;
    if (a1 != 4)
    {
      v3 = 0x6144656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6973736553707061;
    if (a1 != 1)
    {
      v4 = 0x6174614472657375;
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

uint64_t sub_220335798@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220336D64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2203357C0(uint64_t a1)
{
  v2 = sub_220335E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203357FC(uint64_t a1)
{
  v2 = sub_220335E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StocksSession.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203368DC(0, &qword_27CF28EC0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220335E38();
  sub_220370168();
  LOBYTE(v47[0]) = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v65 = 1;
    sub_22036FF68();
    v10 = v3[3];
    v60[0] = v3[2];
    v60[1] = v10;
    v11 = v3[5];
    v13 = v3[2];
    v12 = v3[3];
    v60[2] = v3[4];
    v60[3] = v11;
    v56 = v13;
    v57 = v12;
    v14 = v3[5];
    v58 = v3[4];
    v59 = v14;
    v64 = 2;
    sub_2202C6FD8(v60, v47);
    sub_2201FF268();
    sub_22036FFF8();
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v59;
    sub_2202C7010(v55);
    v15 = type metadata accessor for StocksSession(0);
    LOBYTE(v47[0]) = 3;
    type metadata accessor for SessionData(0);
    sub_22020192C(&qword_281265EE8, &protocol conformance descriptor for SessionData);
    sub_22036FFF8();
    v16 = (v3 + v15[8]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v51 = *v16;
    v52 = v17;
    v53 = v18;
    v54 = v19;
    v63 = 4;
    sub_2201FEB48();

    sub_22036FFF8();

    v20 = v3 + v15[9];
    v21 = *(v20 + 1);
    v22 = *(v20 + 3);
    v48 = *(v20 + 2);
    v49 = v22;
    v23 = *(v20 + 1);
    v47[0] = *v20;
    v47[1] = v23;
    v24 = *(v20 + 3);
    v44 = v48;
    v45 = v24;
    v50 = *(v20 + 8);
    v46 = *(v20 + 8);
    v42 = v47[0];
    v43 = v21;
    v62 = 5;
    sub_2202D6354(v47, v40);
    sub_2201FD0A8();
    sub_22036FFF8();
    v40[2] = v44;
    v40[3] = v45;
    v41 = v46;
    v40[0] = v42;
    v40[1] = v43;
    sub_2202D638C(v40);
    LOBYTE(v34) = *(v3 + v15[10]);
    v61 = 6;
    sub_2201FE330();
    sub_22036FFF8();
    v25 = v3 + v15[11];
    v26 = *(v25 + 1);
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = *(v25 + 4);
    v30 = v25[40];
    v34 = *v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v61 = 7;
    sub_220335498(v34, v26, v27, v28, v29);
    sub_2201F8128();
    sub_22036FF88();
    sub_220335E8C(v34, v35, v36, v37, v38);
    v32 = (v3 + v15[12]);
    v33 = v32[1];
    v34 = *v32;
    v35 = v33;
    v61 = 8;
    sub_2201F8CF8();

    sub_22036FF88();

    LOWORD(v34) = *(v3 + v15[13]);
    v61 = 9;
    sub_2201F8860();
    sub_22036FF88();
    v34 = *(v3 + v15[14]);
    v61 = 10;
    sub_22023D96C();

    sub_22036FF88();

    v34 = *(v3 + v15[15]);
    v61 = 11;
    sub_2202AADBC();

    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220335E38()
{
  result = qword_2812662C8;
  if (!qword_2812662C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812662C8);
  }

  return result;
}

void sub_220335E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

void StocksSession.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for SessionData(0);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203368DC(0, &qword_281261E28, MEMORY[0x277D844C8]);
  v31 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for StocksSession(0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220335E38();
  v32 = v8;
  v12 = v33;
  sub_220370148();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v28 = v3;
    v33 = a1;
    LOBYTE(v42) = 0;
    *v11 = sub_22036FEE8();
    *(v11 + 1) = v13;
    LOBYTE(v42) = 1;
    *(v11 + 2) = sub_22036FE98();
    *(v11 + 3) = v14;
    v49 = 2;
    sub_2201FF1BC();
    v27[1] = 0;
    sub_22036FF28();
    v15 = v39;
    *(v11 + 2) = v38;
    *(v11 + 3) = v15;
    v16 = v41;
    *(v11 + 4) = v40;
    *(v11 + 5) = v16;
    LOBYTE(v42) = 3;
    sub_22020192C(&qword_281265EE0, &protocol conformance descriptor for SessionData);
    sub_22036FF28();
    v28 = v9;
    sub_220336940(v5, &v11[v9[7]]);
    LOBYTE(v34) = 4;
    sub_2201FEA24();
    sub_22036FF28();
    v17 = v43;
    v18 = v28;
    v19 = &v11[*(v28 + 32)];
    *v19 = v42;
    *(v19 + 1) = v17;
    v48 = 5;
    sub_2201FD00C();
    sub_22036FF28();
    v20 = &v11[*(v18 + 36)];
    v21 = v45;
    *(v20 + 2) = v44;
    *(v20 + 3) = v21;
    *(v20 + 8) = v46;
    v22 = v43;
    *v20 = v42;
    *(v20 + 1) = v22;
    v47 = 6;
    sub_2201FE144();
    sub_22036FF28();
    v11[*(v18 + 40)] = v34;
    v47 = 7;
    sub_2201F80D0();
    sub_22036FEB8();
    v23 = v36;
    v24 = v37;
    v25 = &v11[v9[11]];
    v26 = v35;
    *v25 = v34;
    *(v25 + 1) = v26;
    *(v25 + 4) = v23;
    v25[40] = v24;
    v47 = 8;
    sub_2201F8CA0();
    sub_22036FEB8();
    *&v11[v9[12]] = v34;
    v47 = 9;
    sub_2201F8808();
    sub_22036FEB8();
    *&v11[v9[13]] = v34;
    v47 = 10;
    sub_22023D918();
    sub_22036FEB8();
    *&v11[v9[14]] = v34;
    v47 = 11;
    sub_2202AAD64();
    sub_22036FEB8();
    (*(v30 + 8))(v32, v31);
    *&v11[v9[15]] = v34;
    sub_2203369A4(v11, v29, type metadata accessor for StocksSession);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_220336A0C(v11, type metadata accessor for StocksSession);
  }
}

void sub_2203368DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220335E38();
    v7 = a3(a1, &type metadata for StocksSession.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220336940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203369A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220336A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220336AC4(uint64_t a1)
{
  sub_22023A8F4(319, &qword_281261F88, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SessionData(319);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262830, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262090, &type metadata for DebugData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281265508, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281263868, &type metadata for WatchedSymbolListData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281263AE8, &type metadata for WatchlistSummaryData);
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

unint64_t sub_220336C60()
{
  result = qword_27CF28EC8;
  if (!qword_27CF28EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EC8);
  }

  return result;
}

unint64_t sub_220336CB8()
{
  result = qword_2812662B8;
  if (!qword_2812662B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812662B8);
  }

  return result;
}

unint64_t sub_220336D10()
{
  result = qword_2812662C0;
  if (!qword_2812662C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812662C0);
  }

  return result;
}

uint64_t sub_220336D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203915F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000220390710 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446775626564 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002203903B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220392020 == a2)
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

StocksAnalytics::ExternalAnalyticsEventType_optional __swiftcall ExternalAnalyticsEventType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ExternalAnalyticsEventType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x656956616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E65704F707061;
  }

  if (*v0)
  {
    v1 = 0x56656C6369747261;
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

unint64_t sub_220337258()
{
  result = qword_27CF28ED0;
  if (!qword_27CF28ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28ED0);
  }

  return result;
}

uint64_t sub_2203372AC()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22033737C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220337438(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220337510(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE900000000000077;
  v5 = 0x656956616964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x6E65704F707061;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x56656C6369747261;
    v2 = 0xEB00000000776569;
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

unint64_t sub_22033765C()
{
  result = qword_27CF28ED8;
  if (!qword_27CF28ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28ED8);
  }

  return result;
}

StocksAnalytics::ListeningSource_optional __swiftcall ListeningSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t ListeningSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C616E7265747865;
  if (*v0 != 2)
  {
    v2 = 0x79616C50726163;
  }

  if (*v0)
  {
    v1 = 0x7070416E69;
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

unint64_t sub_220337794()
{
  result = qword_27CF28EE0;
  if (!qword_27CF28EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EE0);
  }

  return result;
}

uint64_t sub_2203377E8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203378A8(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220337954(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220337A1C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265747865;
  if (*v1 != 2)
  {
    v5 = 0x79616C50726163;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x7070416E69;
    v2 = 0xE500000000000000;
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

unint64_t sub_220337B58()
{
  result = qword_27CF28EE8;
  if (!qword_27CF28EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28EE8);
  }

  return result;
}

uint64_t sub_220337C74()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28F20);
  __swift_project_value_buffer(v0, qword_27CF28F20);
  return sub_22036F108();
}

uint64_t SymbolRepositionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SymbolRepositionEvent.previousSymbolPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 20);
  sub_220337E34(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220337E34(uint64_t a1)
{
  if (!qword_2812667C0)
  {
    sub_220276084();
    sub_2202760D8();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_2812667C0);
    }
  }
}

uint64_t SymbolRepositionEvent.previousSymbolPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 20);
  sub_220337E34(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolRepositionEvent.newSymbolPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 24);
  sub_220337E34(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SymbolRepositionEvent.newSymbolPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SymbolRepositionEvent(0) + 24);
  sub_220337E34(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SymbolRepositionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SymbolRepositionEvent(0);
  v5 = *(v4 + 20);
  sub_220337E34(0);
  v7 = v6;
  v10 = *(*(v6 - 8) + 104);
  (v10)((v6 - 8), a1 + v5, v2, v6);
  v8 = a1 + *(v4 + 24);

  return v10(v8, v2, v7);
}

uint64_t SymbolRepositionEvent.Model.previousSymbolPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SymbolRepositionEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SymbolRepositionEvent.Model.newSymbolPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for SymbolRepositionEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SymbolRepositionEvent.Model.init(eventData:previousSymbolPositionData:newSymbolPositionData:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SymbolRepositionEvent.Model(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

unint64_t sub_2203382CC()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220338338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220338F38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220338360(uint64_t a1)
{
  v2 = sub_2203385EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033839C(uint64_t a1)
{
  v2 = sub_2203385EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolRepositionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2203389D8(0, &qword_27CF28F38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203385EC();
  sub_220370168();
  v16 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SymbolRepositionEvent.Model(0);
    v15 = *(v3 + *(v10 + 20));
    v14 = 1;
    sub_2202760D8();
    sub_22036FFF8();
    v13 = *(v3 + *(v10 + 24));
    v12[15] = 2;
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2203385EC()
{
  result = qword_27CF28F40;
  if (!qword_27CF28F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F40);
  }

  return result;
}

uint64_t SymbolRepositionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_22036F388();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203389D8(0, &qword_27CF28F48, MEMORY[0x277D844C8]);
  v24 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SymbolRepositionEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203385EC();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v13 = v21;
  v12 = v22;
  v29 = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v23;
  v14 = v24;
  sub_22036FF28();
  (*(v12 + 32))(v19, v15, v4);
  v28 = 1;
  sub_220276084();
  sub_22036FF28();
  *&v19[*(v18 + 20)] = v26;
  v27 = 2;
  sub_22036FF28();
  (*(v13 + 8))(v8, v14);
  v16 = v19;
  *&v19[*(v18 + 24)] = v25;
  sub_220338A3C(v16, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220338AA0(v16);
}

void sub_2203389D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203385EC();
    v7 = a3(a1, &type metadata for SymbolRepositionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220338A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolRepositionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220338AA0(uint64_t a1)
{
  v2 = type metadata accessor for SymbolRepositionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220338BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220337E34(0);
  v8 = v7;
  v11 = *(*(v7 - 8) + 104);
  (v11)((v7 - 8), a2 + v6, v4, v7);
  v9 = a2 + *(a1 + 24);

  return v11(v9, v4, v8);
}

void sub_220338CF8(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220337E34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220338DA4(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220338E34()
{
  result = qword_27CF28F70;
  if (!qword_27CF28F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F70);
  }

  return result;
}

unint64_t sub_220338E8C()
{
  result = qword_27CF28F78;
  if (!qword_27CF28F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F78);
  }

  return result;
}

unint64_t sub_220338EE4()
{
  result = qword_27CF28F80;
  if (!qword_27CF28F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F80);
  }

  return result;
}

uint64_t sub_220338F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002203927F0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220392810 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t AdState.init(bannerState:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22036F8E8();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D2D190])
  {
    (*(v5 + 96))(a1, v4);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v7 = 3;
  }

  else
  {
    if (result != *MEMORY[0x277D2D178])
    {
      if (result != *MEMORY[0x277D2D180])
      {
        if (result == *MEMORY[0x277D2D188])
        {
          v7 = 1;
          goto LABEL_10;
        }

        result = (*(v5 + 8))(a1, v4);
      }

      v7 = 0;
      goto LABEL_10;
    }

    (*(v5 + 96))(a1, v4);
    v8 = sub_22036F8D8();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v7 = 2;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

BOOL BannerAdState.instrumentationAllowed.getter()
{
  v1 = v0;
  v2 = sub_22036F8E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = v6;
  v8 = *MEMORY[0x277D2D190];
  if (v6 == *MEMORY[0x277D2D190])
  {
    (*(v3 + 96))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else if (v6 == *MEMORY[0x277D2D178])
  {
    (*(v3 + 96))(v5, v2);
    v9 = sub_22036F8D8();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  else if (v6 != *MEMORY[0x277D2D180] && v6 != *MEMORY[0x277D2D188])
  {
    (*(v3 + 8))(v5, v2);
  }

  return v7 == v8;
}

uint64_t UserSegmentationSegmentSetData.setIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_220339438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x734449746573 && a2 == 0xE600000000000000)
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

uint64_t sub_2203394BC(uint64_t a1)
{
  v2 = sub_2203396D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203394F8(uint64_t a1)
{
  v2 = sub_2203396D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationSegmentSetData.encode(to:)(void *a1)
{
  sub_220339938(0, &qword_281261BC8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203396D0();

  sub_220370168();
  v10[1] = v8;
  sub_220339724();
  sub_220205850(&qword_281261EB8, MEMORY[0x277D849B0], MEMORY[0x277D83948]);
  sub_22036FFF8();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2203396D0()
{
  result = qword_2812628D0;
  if (!qword_2812628D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628D0);
  }

  return result;
}

void sub_220339724()
{
  if (!qword_281261EC0)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261EC0);
    }
  }
}

uint64_t UserSegmentationSegmentSetData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_220339938(0, &qword_27CF28F88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203396D0();
  sub_220370148();
  if (!v2)
  {
    sub_220339724();
    sub_220205850(&qword_281261EB0, MEMORY[0x277D849D8], MEMORY[0x277D83978]);
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220339938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203396D0();
    v7 = a3(a1, &type metadata for UserSegmentationSegmentSetData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2203399F8()
{
  result = qword_27CF28F90;
  if (!qword_27CF28F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28F90);
  }

  return result;
}

unint64_t sub_220339A50()
{
  result = qword_2812628C0;
  if (!qword_2812628C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628C0);
  }

  return result;
}

unint64_t sub_220339AA8()
{
  result = qword_2812628C8;
  if (!qword_2812628C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628C8);
  }

  return result;
}

uint64_t sub_220339BC4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF28FC8);
  __swift_project_value_buffer(v0, qword_27CF28FC8);
  return sub_22036F108();
}

uint64_t PersonalizedAdsEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PersonalizedAdsEngagementEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_220339E74(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220339E74(uint64_t a1)
{
  if (!qword_27CF28FE0)
  {
    sub_220280500();
    sub_220280558();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF28FE0);
    }
  }
}

uint64_t PersonalizedAdsEngagementEvent.userSelectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PersonalizedAdsEngagementEvent(0) + 24);
  sub_220339E74(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PersonalizedAdsEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent(0);
  v5 = *(v4 + 20);
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_220339E74(0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t sub_22033A0EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PersonalizedAdsEngagementEvent.Model.userSelectionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.init(eventData:timedData:userSelectionData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  v10 = *(v9 + 20);
  v11 = sub_22036F3C8();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

unint64_t sub_22033A298()
{
  v1 = 0x74614464656D6974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22033A2F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22033B09C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22033A320(uint64_t a1)
{
  v2 = sub_22033A5F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033A35C(uint64_t a1)
{
  v2 = sub_22033A5F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22033AB10(0, &qword_27CF28FE8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033A5F0();
  sub_220370168();
  v12[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
    v12[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v12[13] = *(v3 + *(v10 + 24));
    v12[12] = 2;
    sub_220280558();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22033A5F0()
{
  result = qword_27CF28FF0;
  if (!qword_27CF28FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF28FF0);
  }

  return result;
}

uint64_t PersonalizedAdsEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_22036F3C8();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22036F388();
  v23 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22033AB10(0, &qword_27CF28FF8, MEMORY[0x277D844C8]);
  v28 = v8;
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033A5F0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v21 = a1;
  v14 = v13;
  v16 = v24;
  v15 = v25;
  v17 = v26;
  v33 = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  (*(v23 + 32))(v14, v27, v29);
  v32 = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v15 + 32))(v14 + *(v20 + 20), v6, v17);
  v30 = 2;
  sub_220280500();
  sub_22036FF28();
  v18 = v21;
  (*(v16 + 8))(v10, v28);
  *(v14 + *(v20 + 24)) = v31;
  sub_22033AB74(v14, v22);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_22033ABD8(v14);
}

void sub_22033AB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22033A5F0();
    v7 = a3(a1, &type metadata for PersonalizedAdsEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22033AB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22033ABD8(uint64_t a1)
{
  v2 = type metadata accessor for PersonalizedAdsEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22033AD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_220339E74(0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_22033AE34(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220339E74(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22033AEF8(uint64_t a1)
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

unint64_t sub_22033AF98()
{
  result = qword_27CF29020;
  if (!qword_27CF29020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29020);
  }

  return result;
}

unint64_t sub_22033AFF0()
{
  result = qword_27CF29028;
  if (!qword_27CF29028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29028);
  }

  return result;
}

unint64_t sub_22033B048()
{
  result = qword_27CF29030;
  if (!qword_27CF29030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29030);
  }

  return result;
}

uint64_t sub_22033B09C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x8000000220392830 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::PersonalizedAdsUserSelectionType_optional __swiftcall PersonalizedAdsUserSelectionType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PersonalizedAdsUserSelectionType.rawValue.getter()
{
  v1 = 0x6E49646574706FLL;
  if (*v0 != 1)
  {
    v1 = 0x74754F646574706FLL;
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

uint64_t sub_22033B284(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x6E49646574706FLL;
  if (*a2 != 1)
  {
    v8 = 0x74754F646574706FLL;
    v3 = 0xE800000000000000;
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
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_22033B388()
{
  result = qword_27CF29038;
  if (!qword_27CF29038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29038);
  }

  return result;
}

uint64_t sub_22033B3DC()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22033B480(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22033B510(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22033B5BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E49646574706FLL;
  if (v2 != 1)
  {
    v5 = 0x74754F646574706FLL;
    v4 = 0xE800000000000000;
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

unint64_t sub_22033B6DC()
{
  result = qword_27CF29040;
  if (!qword_27CF29040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29040);
  }

  return result;
}

uint64_t sub_22033B7F8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29078);
  __swift_project_value_buffer(v0, qword_27CF29078);
  return sub_22036F108();
}

uint64_t MediaEngageCompleteEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageCompleteEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694, &type metadata for MediaEngagementCompletedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694, &type metadata for MediaEngagementCompletedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22033C920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t MediaEngageCompleteEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageCompleteEvent(0);
  v5 = v4[5];
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v17 - 8) + 104))(a1 + v16, v8, v17);
  v18 = v4[11];
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694, &type metadata for MediaEngagementCompletedData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v21 - 8) + 104))(a1 + v20, v8, v21);
  v22 = v4[13];
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v8, v25);
}

uint64_t MediaEngageCompleteEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 20);
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

void MediaEngageCompleteEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 24));
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

uint64_t MediaEngageCompleteEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t MediaEngageCompleteEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 32));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.anfComponentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t MediaEngageCompleteEvent.Model.mediaEngagementCompletedData.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MediaEngageCompleteEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageCompleteEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 52));
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

uint64_t MediaEngageCompleteEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

__n128 MediaEngageCompleteEvent.Model.init(eventData:newsArticleData:groupData:feedData:mediaData:viewData:anfComponentData:mediaEngagementCompletedData:issueData:channelData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11, char *a12)
{
  v16 = *(a3 + 4);
  v17 = *(a3 + 5);
  v37 = *a4;
  v18 = *(a4 + 2);
  v39 = *a5;
  v19 = *(a5 + 1);
  v20 = *(a5 + 2);
  v38 = *(a5 + 6);
  v21 = a5[28];
  v42 = *a6;
  v41 = a6[1];
  v40 = *(a6 + 8);
  v44 = *a7;
  v43 = a7[1];
  v45 = *a8;
  v46 = a10[1];
  v47 = *a10;
  v52 = *a11;
  v51 = a11[1].n128_u64[0];
  v50 = a11[1].n128_u64[1];
  v48 = a11[2].n128_u8[1];
  v49 = a11[2].n128_u8[0];
  v53 = *a12;
  v22 = sub_22036F388();
  v35 = a3[1];
  v36 = *a3;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
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
  *(v27 + 32) = v16;
  *(v27 + 40) = v17;
  v28 = a9 + v23[7];
  *v28 = v37;
  *(v28 + 16) = v18;
  v29 = a9 + v23[8];
  *v29 = v39;
  *(v29 + 8) = v19;
  *(v29 + 16) = v20;
  *(v29 + 24) = v38;
  *(v29 + 28) = v21;
  v30 = a9 + v23[9];
  *v30 = v42;
  *(v30 + 8) = v41;
  *(v30 + 16) = v40;
  v31 = (a9 + v23[10]);
  *v31 = v44;
  v31[1] = v43;
  *(a9 + v23[11]) = v45;
  v32 = (a9 + v23[12]);
  *v32 = v47;
  v32[1] = v46;
  v33 = (a9 + v23[13]);
  result = v52;
  *v33 = v52;
  v33[1].n128_u64[0] = v51;
  v33[1].n128_u64[1] = v50;
  v33[2].n128_u8[0] = v49;
  v33[2].n128_u8[1] = v48;
  *(a9 + v23[14]) = v53;
  return result;
}

uint64_t sub_22033D548(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x74614470756F7267;
    v8 = 0x6174614464656566;
    if (a1 != 3)
    {
      v8 = 0x746144616964656DLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7461446575737369;
    v2 = 0x446C656E6E616863;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6174614477656976;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22033D6C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22033F548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22033D6EC(uint64_t a1)
{
  v2 = sub_22033DD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033D728(uint64_t a1)
{
  v2 = sub_22033DD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageCompleteEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22033E7B0(0, &qword_27CF29090, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033DD74();
  sub_220370168();
  v62 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v59 = *(v11 + 32);
    v60 = v13;
    v14 = *(v11 + 16);
    v58[0] = *v11;
    v58[1] = v14;
    v15 = *(v11 + 48);
    v55 = v59;
    v56 = v15;
    v61 = *(v11 + 64);
    v57 = *(v11 + 64);
    v53 = v58[0];
    v54 = v12;
    v52 = 1;
    sub_22022ECDC(v58, v50);
    sub_22022EDA0();
    sub_22036FFF8();
    v50[2] = v55;
    v50[3] = v56;
    v51 = v57;
    v50[0] = v53;
    v50[1] = v54;
    sub_22022ED14(v50);
    v16 = (v3 + v10[6]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    *&v45 = *v16;
    *(&v45 + 1) = v17;
    v46 = v18;
    v47 = v19;
    v48 = v20;
    v49 = v21;
    v44 = 2;
    sub_22023846C(v45, v17, v18, v19, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v45, *(&v45 + 1), v46, v47, v48, v49);
    v22 = (v3 + v10[7]);
    v23 = *(v22 + 2);
    v45 = *v22;
    v46 = v23;
    v44 = 3;
    sub_2201FBD1C();

    sub_22036FF88();

    v24 = (v3 + v10[8]);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = *(v24 + 2);
    v28 = *(v24 + 6);
    LOBYTE(v24) = v24[28];
    LOBYTE(v45) = v25;
    *(&v45 + 1) = v26;
    v46 = v27;
    LODWORD(v47) = v28;
    BYTE4(v47) = v24;
    v44 = 4;
    sub_22027B1AC();

    sub_22036FFF8();

    v30 = (v3 + v10[9]);
    v31 = *v30;
    v32 = v30[1];
    LOWORD(v30) = *(v30 + 8);
    *&v45 = v31;
    *(&v45 + 1) = v32;
    LOWORD(v46) = v30;
    v44 = 5;
    sub_220202110();

    sub_22036FFF8();

    v33 = (v3 + v10[10]);
    v34 = v33[1];
    *&v45 = *v33;
    *(&v45 + 1) = v34;
    v44 = 6;
    sub_22027C714(v45, v34);
    sub_22024EDBC();
    sub_22036FF88();
    sub_22027D3B4(v45, *(&v45 + 1));
    *&v45 = *(v3 + v10[11]);
    v44 = 7;
    sub_2202A0694();
    sub_22036FFF8();
    v35 = (v3 + v10[12]);
    v36 = v35[1];
    *&v45 = *v35;
    *(&v45 + 1) = v36;
    v44 = 8;
    sub_220237744();

    sub_22036FF88();

    v37 = (v3 + v10[13]);
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    v41 = v37[3];
    v42 = *(v37 + 32);
    LOBYTE(v37) = *(v37 + 33);
    *&v45 = v38;
    *(&v45 + 1) = v39;
    v46 = v40;
    v47 = v41;
    LOBYTE(v48) = v42;
    BYTE1(v48) = v37;
    v44 = 9;
    sub_220236A84();

    sub_22036FFF8();

    LOBYTE(v45) = *(v3 + v10[14]);
    v44 = 10;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22033DD74()
{
  result = qword_27CF29098;
  if (!qword_27CF29098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29098);
  }

  return result;
}

void MediaEngageCompleteEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_22036F388();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22033E7B0(0, &qword_27CF290A0, MEMORY[0x277D844C8]);
  v43 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v9 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033DD74();
  v54 = v8;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v41;
    v37 = v9;
    v38 = v11;
    LOBYTE(v49) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v13 = v42;
    sub_22036FF28();
    v14 = v38;
    (*(v40 + 32))(v38, v13, v4);
    v48 = 1;
    sub_22022ED48();
    sub_22036FF28();
    v36[1] = v4;
    v42 = 0;
    v15 = v37;
    v16 = &v14[v37[5]];
    v17 = v52;
    *(v16 + 2) = v51;
    *(v16 + 3) = v17;
    *(v16 + 16) = v53;
    v18 = v50;
    *v16 = v49;
    *(v16 + 1) = v18;
    v44 = 2;
    sub_220236C88();
    sub_22036FEB8();
    v19 = &v14[v15[6]];
    v20 = v46;
    *v19 = v45;
    *(v19 + 1) = v20;
    *(v19 + 2) = v47;
    v44 = 3;
    sub_2201FBCC4();
    sub_22036FEB8();
    v21 = v46;
    v22 = &v14[v15[7]];
    *v22 = v45;
    *(v22 + 2) = v21;
    v44 = 4;
    sub_22027B158();
    sub_22036FF28();
    v23 = *(&v45 + 1);
    v24 = v46;
    v25 = DWORD2(v46);
    v26 = BYTE12(v46);
    v27 = &v14[v15[8]];
    *v27 = v45;
    *(v27 + 1) = v23;
    *(v27 + 2) = v24;
    *(v27 + 6) = v25;
    v27[28] = v26;
    v44 = 5;
    sub_2202020B8();
    sub_22036FF28();
    v28 = *(&v45 + 1);
    v29 = v46;
    v30 = &v14[v15[9]];
    *v30 = v45;
    *(v30 + 1) = v28;
    *(v30 + 8) = v29;
    v44 = 6;
    sub_22024ED64();
    sub_22036FEB8();
    *&v14[v15[10]] = v45;
    v44 = 7;
    sub_2202A063C();
    sub_22036FF28();
    *&v38[v37[11]] = v45;
    v44 = 8;
    sub_2202376F0();
    sub_22036FEB8();
    *&v38[v37[12]] = v45;
    v44 = 9;
    sub_220236A30();
    sub_22036FF28();
    v31 = v46;
    v32 = v47;
    v33 = BYTE1(v47);
    v34 = &v38[v37[13]];
    *v34 = v45;
    *(v34 + 1) = v31;
    v34[32] = v32;
    v34[33] = v33;
    v44 = 10;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v12 + 8))(v54, v43);
    v35 = v38;
    v38[v37[14]] = v45;
    sub_22033E814(v35, v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_22033E878(v35);
  }
}

void sub_22033E7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22033DD74();
    v7 = a3(a1, &type metadata for MediaEngageCompleteEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22033E814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22033E878(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22033E9AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22033C920(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_22033C920(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_22033C920(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_22033C920(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_22033C920(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22033C920(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v18 - 8) + 104))(a2 + v17, v9, v18);
  v19 = a1[11];
  sub_22033C920(0, &qword_281266750, sub_2202A063C, sub_2202A0694, &type metadata for MediaEngagementCompletedData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_22033C920(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v22 - 8) + 104))(a2 + v21, v9, v22);
  v23 = a1[13];
  sub_22033C920(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_22033C920(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v9, v26);
}

void sub_22033EF18(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22033C920(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22033C920(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_22033C920(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22033C920(319, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
          if (v5 <= 0x3F)
          {
            sub_22033C920(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_22033C920(319, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
              if (v7 <= 0x3F)
              {
                sub_22033C920(319, &qword_281266750, sub_2202A063C, sub_2202A0694, &type metadata for MediaEngagementCompletedData);
                if (v8 <= 0x3F)
                {
                  sub_22033C920(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                  if (v9 <= 0x3F)
                  {
                    sub_22033C920(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                    if (v10 <= 0x3F)
                    {
                      sub_22033C920(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
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
        }
      }
    }
  }
}

void sub_22033F2CC(uint64_t a1)
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
        sub_22023A8F4(319, &qword_27CF26C70, &type metadata for ANFComponentData);
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

unint64_t sub_22033F444()
{
  result = qword_27CF290A8;
  if (!qword_27CF290A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290A8);
  }

  return result;
}

unint64_t sub_22033F49C()
{
  result = qword_27CF290B0;
  if (!qword_27CF290B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290B0);
  }

  return result;
}

unint64_t sub_22033F4F4()
{
  result = qword_27CF290B8;
  if (!qword_27CF290B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290B8);
  }

  return result;
}

uint64_t sub_22033F548(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220392850 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t MediaEngagementData.init(mediaTimePlayed:mediaUserAction:position:mediaPlayMethod:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a4;
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 12) = a3;
  *(a5 + 16) = v6;
  return result;
}

uint64_t sub_22033F9E0()
{
  v1 = 0x6D6954616964656DLL;
  v2 = 0x6E6F697469736F70;
  if (*v0 != 2)
  {
    v2 = 0x616C50616964656DLL;
  }

  if (*v0)
  {
    v1 = 0x657355616964656DLL;
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

uint64_t sub_22033FA80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220340224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22033FAA8(uint64_t a1)
{
  v2 = sub_22033FD30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22033FAE4(uint64_t a1)
{
  v2 = sub_22033FD30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementData.encode(to:)(void *a1)
{
  sub_22033FFC8(0, &qword_27CF290C0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *(v1 + 8);
  v13 = *(v1 + 12);
  v14 = v9;
  HIDWORD(v12) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033FD30();
  sub_220370168();
  v20 = 0;
  sub_220370018();
  if (!v2)
  {
    v10 = BYTE4(v12);
    v19 = v14;
    v18 = 1;
    sub_22024C0DC();
    sub_22036FFF8();
    v17 = 2;
    sub_220370008();
    v16 = v10;
    v15 = 3;
    sub_22024C130();
    sub_22036FF88();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22033FD30()
{
  result = qword_27CF290C8;
  if (!qword_27CF290C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290C8);
  }

  return result;
}

uint64_t MediaEngagementData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22033FFC8(0, &qword_27CF290D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22033FD30();
  sub_220370148();
  if (!v2)
  {
    v21 = 0;
    v10 = sub_22036FF48();
    v19 = 1;
    sub_22024C5BC();
    sub_22036FF28();
    v11 = v20;
    v18 = 2;
    v15 = sub_22036FF38();
    v16 = 3;
    sub_22024C610();
    sub_22036FEB8();
    (*(v7 + 8))(v9, v6);
    v13 = v17;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 12) = v15;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22033FFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22033FD30();
    v7 = a3(a1, &type metadata for MediaEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaEngagementData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEngagementData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_220340120()
{
  result = qword_27CF290D8;
  if (!qword_27CF290D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290D8);
  }

  return result;
}

unint64_t sub_220340178()
{
  result = qword_27CF290E0;
  if (!qword_27CF290E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290E0);
  }

  return result;
}

unint64_t sub_2203401D0()
{
  result = qword_27CF290E8;
  if (!qword_27CF290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290E8);
  }

  return result;
}

uint64_t sub_220340224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657355616964656DLL && a2 == 0xEF6E6F6974634172 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C50616964656DLL && a2 == 0xEF646F6874654D79)
  {

    return 3;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t ActionMethod.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_220340598(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F8A8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1, v7) != 1)
  {
    sub_22034064C(a1, v6);
    v9 = (*(v8 + 88))(v6, v7);
    if (v9 != *MEMORY[0x277D6E120])
    {
      if (v9 == *MEMORY[0x277D6E0E0])
      {
        v10 = 3;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E0D8])
      {
        v10 = 2;
        goto LABEL_4;
      }

      if (v9 == *MEMORY[0x277D6E108] || v9 == *MEMORY[0x277D6E118] || v9 == *MEMORY[0x277D6E110])
      {
        v10 = 1;
        goto LABEL_4;
      }

      if (v9 != *MEMORY[0x277D6E0F8] && v9 != *MEMORY[0x277D6E100] && v9 != *MEMORY[0x277D6E0D0] && v9 != *MEMORY[0x277D6E0F0])
      {
        (*(v8 + 8))(v6, v7);
      }
    }
  }

  v10 = 0;
LABEL_4:
  result = sub_2203405F0(a1);
  *a2 = v10;
  return result;
}

void sub_220340598(uint64_t a1)
{
  if (!qword_27CF290F0)
  {
    sub_22036F8A8();
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF290F0);
    }
  }
}

uint64_t sub_2203405F0(uint64_t a1)
{
  sub_220340598(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22034064C(uint64_t a1, uint64_t a2)
{
  sub_220340598(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203406FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000220392870 == a2)
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

uint64_t sub_220340790(uint64_t a1)
{
  v2 = sub_220204800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203407CC(uint64_t a1)
{
  v2 = sub_220204800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentEnvironmentData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220204784(0, &qword_281261D88, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220204800();
  sub_220370148();
  if (!v2)
  {
    sub_2203409A0();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2203409A0()
{
  result = qword_281264A60;
  if (!qword_281264A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A60);
  }

  return result;
}

unint64_t sub_220340A30()
{
  result = qword_27CF290F8;
  if (!qword_27CF290F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF290F8);
  }

  return result;
}

StocksAnalytics::AudioEngagementOrigin_optional __swiftcall AudioEngagementOrigin.init(rawValue:)(Swift::String rawValue)
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

uint64_t AudioEngagementOrigin.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 1684366694;
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

uint64_t sub_220340B34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 1684366694;
    v3 = 0xE400000000000000;
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
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

unint64_t sub_220340C28()
{
  result = qword_27CF29100;
  if (!qword_27CF29100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29100);
  }

  return result;
}

uint64_t sub_220340C7C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220340D18(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220340DA0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220340E44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
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

unint64_t sub_220340F5C()
{
  result = qword_27CF29108;
  if (!qword_27CF29108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29108);
  }

  return result;
}

uint64_t sub_220341078()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29140);
  __swift_project_value_buffer(v0, qword_27CF29140);
  return sub_22036F108();
}

uint64_t ConsentScreenViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_220341238(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220341238(uint64_t a1)
{
  if (!qword_27CF29158)
  {
    sub_22025D378();
    sub_22025D3D0();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF29158);
    }
  }
}

uint64_t ConsentScreenViewEvent.consentScreenActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_220341238(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ConsentScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for ConsentScreenViewEvent(0) + 20);
  sub_220341238(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t ConsentScreenViewEvent.Model.consentScreenActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(eventData:consentScreenActionData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ConsentScreenViewEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_220341510()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220341554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220392890 == a2)
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

uint64_t sub_220341640(uint64_t a1)
{
  v2 = sub_220341884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034167C(uint64_t a1)
{
  v2 = sub_220341884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConsentScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220341C30(0, &qword_27CF29160, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220341884();
  sub_220370168();
  v11[15] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ConsentScreenViewEvent.Model(0) + 20));
    v11[13] = 1;
    sub_22025D3D0();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220341884()
{
  result = qword_27CF29168;
  if (!qword_27CF29168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29168);
  }

  return result;
}

uint64_t ConsentScreenViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_22036F388();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220341C30(0, &qword_27CF29170, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220341884();
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
  sub_22025D378();
  sub_22036FF28();
  (*(v24 + 8))(v9, v15);
  *(v16 + *(v19 + 20)) = v27;
  sub_220341C94(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220341CF8(v16);
}

void sub_220341C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220341884();
    v7 = a3(a1, &type metadata for ConsentScreenViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220341C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220341CF8(uint64_t a1)
{
  v2 = type metadata accessor for ConsentScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220341E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220341238(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_220341F14(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220341238(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220341FC0(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220342048()
{
  result = qword_27CF29198;
  if (!qword_27CF29198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29198);
  }

  return result;
}

unint64_t sub_2203420A0()
{
  result = qword_27CF291A0;
  if (!qword_27CF291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291A0);
  }

  return result;
}

unint64_t sub_2203420F8()
{
  result = qword_27CF291A8;
  if (!qword_27CF291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291A8);
  }

  return result;
}

StocksAnalytics::Milestone_optional __swiftcall Milestone.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Milestone.rawValue.getter()
{
  v1 = *v0;
  v2 = 1869768058;
  v3 = 0x7974666966;
  v4 = 0x4679746E65766573;
  if (v1 != 4)
  {
    v4 = 0x72646E7548656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7234932;
  if (v1 != 1)
  {
    v5 = 0x694679746E657774;
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

unint64_t sub_22034226C()
{
  result = qword_27CF291B0;
  if (!qword_27CF291B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291B0);
  }

  return result;
}

uint64_t sub_2203422C8(uint64_t a1)
{
  sub_22036FB08();
}

void sub_2203423C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869768058;
  v5 = 0xE500000000000000;
  v6 = 0x7974666966;
  v7 = 0xEB00000000657669;
  v8 = 0x4679746E65766573;
  if (v2 != 4)
  {
    v8 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7234932;
  if (v2 != 1)
  {
    v10 = 0x694679746E657774;
    v9 = 0xEA00000000006576;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_22034253C()
{
  result = qword_27CF291B8;
  if (!qword_27CF291B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291B8);
  }

  return result;
}

uint64_t SearchData.searchString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchData.searchString.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220342648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972)
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

uint64_t sub_2203426D4(uint64_t a1)
{
  v2 = sub_220342898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220342710(uint64_t a1)
{
  v2 = sub_220342898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchData.encode(to:)(void *a1)
{
  sub_220342A70(0, &qword_281261D20, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220342898();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220342898()
{
  result = qword_281266130;
  if (!qword_281266130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266130);
  }

  return result;
}

uint64_t SearchData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220342A70(0, &qword_27CF291C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220342898();
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

void sub_220342A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220342898();
    v7 = a3(a1, &type metadata for SearchData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220342AF4(void *a1)
{
  sub_220342A70(0, &qword_281261D20, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220342898();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220342C64()
{
  result = qword_27CF291C8;
  if (!qword_27CF291C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291C8);
  }

  return result;
}

unint64_t sub_220342CBC()
{
  result = qword_281266120;
  if (!qword_281266120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266120);
  }

  return result;
}

unint64_t sub_220342D14()
{
  result = qword_281266128;
  if (!qword_281266128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266128);
  }

  return result;
}

uint64_t UserSegmentationTreatmentData.treatmentIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_220342DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D7461657274 && a2 == 0xEC00000073444974)
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

uint64_t sub_220342E78(uint64_t a1)
{
  v2 = sub_22034308C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220342EB4(uint64_t a1)
{
  v2 = sub_22034308C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationTreatmentData.encode(to:)(void *a1)
{
  sub_2203432F4(0, &qword_281261BD0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034308C();

  sub_220370168();
  v10[1] = v8;
  sub_2203430E0();
  sub_22020576C(&qword_281261EA0, MEMORY[0x277D84A30], MEMORY[0x277D83948]);
  sub_22036FFF8();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22034308C()
{
  result = qword_281262900;
  if (!qword_281262900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262900);
  }

  return result;
}

void sub_2203430E0()
{
  if (!qword_281261EA8)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261EA8);
    }
  }
}

uint64_t UserSegmentationTreatmentData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2203432F4(0, &qword_27CF291D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034308C();
  sub_220370148();
  if (!v2)
  {
    sub_2203430E0();
    sub_22020576C(&qword_281261E98, MEMORY[0x277D84A58], MEMORY[0x277D83978]);
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203432F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034308C();
    v7 = a3(a1, &type metadata for UserSegmentationTreatmentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2203433B4()
{
  result = qword_27CF291D8;
  if (!qword_27CF291D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291D8);
  }

  return result;
}

unint64_t sub_22034340C()
{
  result = qword_2812628F0;
  if (!qword_2812628F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628F0);
  }

  return result;
}

unint64_t sub_220343464()
{
  result = qword_2812628F8;
  if (!qword_2812628F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628F8);
  }

  return result;
}

uint64_t WebSubscriptionData.webSubscriptionChannelIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_22034355C()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_220343598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002203928B0 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002203928D0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_220370048();

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

uint64_t sub_22034367C(uint64_t a1)
{
  v2 = sub_2203438D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203436B8(uint64_t a1)
{
  v2 = sub_2203438D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebSubscriptionData.encode(to:)(void *a1)
{
  sub_220343BA4(0, &qword_281261C28, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203438D0();
  sub_220370168();
  v14 = v9;
  v13 = 0;
  sub_220343924();
  sub_22036FFF8();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_220269D00();
    sub_22026A024(&qword_281261EF0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22036FF88();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2203438D0()
{
  result = qword_281264390[0];
  if (!qword_281264390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264390);
  }

  return result;
}

unint64_t sub_220343924()
{
  result = qword_281263860;
  if (!qword_281263860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263860);
  }

  return result;
}

uint64_t WebSubscriptionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220343BA4(0, &qword_27CF291E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203438D0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_220343C08();
  sub_22036FF28();
  v10 = v16;
  sub_220269D00();
  v14 = 1;
  sub_22026A024(&qword_281261EE0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22036FEB8();
  (*(v7 + 8))(v9, v6);
  v11 = v13[1];
  *a2 = v10;
  *(a2 + 8) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220343BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203438D0();
    v7 = a3(a1, &type metadata for WebSubscriptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220343C08()
{
  result = qword_27CF291E8;
  if (!qword_27CF291E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291E8);
  }

  return result;
}

unint64_t sub_220343C60()
{
  result = qword_281264368;
  if (!qword_281264368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264368);
  }

  return result;
}

unint64_t sub_220343CB8()
{
  result = qword_281264370;
  if (!qword_281264370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264370);
  }

  return result;
}

unint64_t sub_220343D60()
{
  result = qword_27CF291F0;
  if (!qword_27CF291F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF291F0);
  }

  return result;
}

unint64_t sub_220343DB8()
{
  result = qword_281264380;
  if (!qword_281264380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264380);
  }

  return result;
}

unint64_t sub_220343E10()
{
  result = qword_281264388;
  if (!qword_281264388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264388);
  }

  return result;
}

uint64_t sub_220343EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63616279616C70 && a2 == 0xED00006465657053)
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

uint64_t sub_220343F58(uint64_t a1)
{
  v2 = sub_220344118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220343F94(uint64_t a1)
{
  v2 = sub_220344118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaybackData.encode(to:)(void *a1)
{
  sub_2203442F4(0, &qword_27CF291F8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220344118();
  sub_220370168();
  sub_22036FFE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220344118()
{
  result = qword_27CF29200;
  if (!qword_27CF29200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29200);
  }

  return result;
}

uint64_t PlaybackData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2203442F4(0, &qword_27CF29208, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220344118();
  sub_220370148();
  if (!v2)
  {
    sub_22036FF18();
    v11 = v10;
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203442F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220344118();
    v7 = a3(a1, &type metadata for PlaybackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220344378(void *a1)
{
  sub_2203442F4(0, &qword_27CF291F8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220344118();
  sub_220370168();
  sub_22036FFE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2203444E4()
{
  result = qword_27CF29210;
  if (!qword_27CF29210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29210);
  }

  return result;
}

unint64_t sub_22034453C()
{
  result = qword_27CF29218;
  if (!qword_27CF29218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29218);
  }

  return result;
}

unint64_t sub_220344594()
{
  result = qword_27CF29220;
  if (!qword_27CF29220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29220);
  }

  return result;
}

StocksAnalytics::PaidSubscriberToSourceChannelMethod_optional __swiftcall PaidSubscriberToSourceChannelMethod.init(rawValue:)(Swift::String rawValue)
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

uint64_t PaidSubscriberToSourceChannelMethod.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65726F7453707061;
  if (*v0 != 2)
  {
    v2 = 0x6973626557627570;
  }

  if (*v0)
  {
    v1 = 0x7070417377656ELL;
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

unint64_t sub_2203446D4()
{
  result = qword_27CF29228;
  if (!qword_27CF29228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29228);
  }

  return result;
}

uint64_t sub_220344728()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2203447F0(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2203448A4(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220344974(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x65726F7453707061;
  if (*v1 != 2)
  {
    v5 = 0x6973626557627570;
    v4 = 0xEA00000000006574;
  }

  if (*v1)
  {
    v3 = 0x7070417377656ELL;
    v2 = 0xE700000000000000;
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

unint64_t sub_220344AB8()
{
  result = qword_2812626E8;
  if (!qword_2812626E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812626E8);
  }

  return result;
}

uint64_t sub_220344B0C()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF29230);
  v1 = __swift_project_value_buffer(v0, qword_27CF29230);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_220344BF8()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF29248);
  v1 = __swift_project_value_buffer(v0, qword_27CF29248);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_220344CB8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29260);
  __swift_project_value_buffer(v0, qword_27CF29260);
  return sub_22036F108();
}

uint64_t VideoAdLoadEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VideoAdLoadEvent.adUserData.setter(uint64_t a1)
{
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdLoadEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 20);
  sub_220230578(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 24);
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 28);
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 32);
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 36);
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 40);
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdLoadEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 44);
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04, &type metadata for VideoAdLoadData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220345A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t VideoAdLoadEvent.adLoadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdLoadEvent(0) + 48);
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04, &type metadata for VideoAdLoadData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  Event = type metadata accessor for VideoAdLoadEvent(0);
  v5 = Event[5];
  sub_220230578(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = Event[6];
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = Event[7];
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = Event[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = Event[9];
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = Event[10];
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = Event[11];
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = Event[12];
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04, &type metadata for VideoAdLoadData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t VideoAdLoadEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_22034608C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t VideoAdLoadEvent.Model.userBundleSubscriptionContextData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 24));
  v4 = *(v3 + 25);
  v5 = v3[1];
  v8 = *v3;
  v9[0] = v5;
  *(v9 + 9) = v4;
  *a1 = v8;
  a1[1] = v5;
  *(a1 + 25) = v4;
  return sub_22029C728(&v8, &v7);
}

uint64_t VideoAdLoadEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 28));
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

uint64_t VideoAdLoadEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t VideoAdLoadEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdLoadEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdLoadEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t VideoAdLoadEvent.Model.adLoadData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for VideoAdLoadEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

__n128 VideoAdLoadEvent.Model.init(adUserData:eventData:userBundleSubscriptionContextData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:adLoadData:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, char *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v13 = a1[1];
  v14 = *(a4 + 2);
  v15 = *(a4 + 3);
  v16 = *(a4 + 32);
  v17 = *(a4 + 33);
  v29 = *a4;
  v30 = *a5;
  v18 = a5[1].n128_u64[0];
  v32 = *a6;
  v31 = a6[1];
  v33 = *a7;
  v34 = *a8;
  v36 = *a10;
  v35 = *(a10 + 8);
  *a9 = *a1;
  *(a9 + 1) = v13;
  v19 = type metadata accessor for VideoAdLoadEvent.Model(0);
  v20 = v19[5];
  v21 = sub_22036F388();
  (*(*(v21 - 8) + 32))(&a9[v20], a2, v21);
  v22 = &a9[v19[6]];
  v23 = a3[1];
  *v22 = *a3;
  *(v22 + 1) = v23;
  *(v22 + 25) = *(a3 + 25);
  v24 = &a9[v19[7]];
  result = v30;
  *v24 = v29;
  *(v24 + 2) = v14;
  *(v24 + 3) = v15;
  v24[32] = v16;
  v24[33] = v17;
  v26 = &a9[v19[8]];
  *v26 = v30;
  *(v26 + 2) = v18;
  v27 = &a9[v19[9]];
  *v27 = v32;
  *(v27 + 1) = v31;
  a9[v19[10]] = v33;
  a9[v19[11]] = v34;
  v28 = &a9[v19[12]];
  *v28 = v36;
  v28[8] = v35;
  return result;
}

uint64_t sub_2203464B0(unsigned __int8 a1)
{
  v1 = 0x6144726573556461;
  v2 = 0x6144646565466461;
  v3 = 0x4470756F72476461;
  if (a1 != 7)
  {
    v3 = 0x614464616F4C6461;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v4 = 0x4464416F65646976;
  if (a1 != 4)
  {
    v4 = 0x6D6563616C506461;
  }

  if (a1 <= 5u)
  {
    v2 = v4;
  }

  v5 = 0xD000000000000021;
  if (a1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (a1)
  {
    v1 = 0x746144746E657665;
  }

  if (a1 > 1u)
  {
    v1 = v5;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2203465FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220347F14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220346624(uint64_t a1)
{
  v2 = sub_220346BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220346660(uint64_t a1)
{
  v2 = sub_220346BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220347354(0, &qword_27CF29288, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220346BDC();
  sub_220370168();
  v10 = v3[1];
  *&v40 = *v3;
  *(&v40 + 1) = v10;
  LOBYTE(v38) = 0;
  sub_2201F9420();

  sub_22036FFF8();

  if (!v2)
  {
    v11 = type metadata accessor for VideoAdLoadEvent.Model(0);
    v42 = 1;
    sub_22036F388();
    sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
    sub_22036FFF8();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v40 = *v12;
    *v41 = v13;
    *&v41[9] = *(v12 + 25);
    v14 = v12[1];
    v38 = *v12;
    v39[0] = v14;
    *(v39 + 9) = *(v12 + 25);
    v37 = 2;
    sub_22029C728(&v40, &v35);
    sub_2201F8128();
    sub_22036FFF8();
    v35 = v38;
    *v36 = v39[0];
    *&v36[9] = *(v39 + 9);
    sub_22029C760(&v35);
    v16 = v3 + v11[7];
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    v20 = *(v16 + 3);
    v21 = v16[32];
    LOBYTE(v16) = v16[33];
    *&v30 = v17;
    *(&v30 + 1) = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v16;
    v29 = 3;
    sub_220236A84();

    sub_22036FFF8();

    v22 = v3 + v11[8];
    v23 = *(v22 + 2);
    v30 = *v22;
    v31 = v23;
    v29 = 4;
    sub_2202B744C();

    sub_22036FF88();

    v24 = (v3 + v11[9]);
    v25 = v24[1];
    *&v30 = *v24;
    *(&v30 + 1) = v25;
    v29 = 5;
    sub_220242D28();

    sub_22036FFF8();

    LOBYTE(v30) = *(v3 + v11[10]);
    v29 = 6;
    sub_220202B7C();
    sub_22036FF88();
    LOBYTE(v30) = *(v3 + v11[11]);
    v29 = 7;
    sub_2202438B4();
    sub_22036FF88();
    v26 = v3 + v11[12];
    v27 = *v26;
    LOBYTE(v26) = v26[8];
    *&v30 = v27;
    BYTE8(v30) = v26;
    v29 = 8;
    sub_22029FF04();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220346BDC()
{
  result = qword_27CF29290;
  if (!qword_27CF29290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29290);
  }

  return result;
}

uint64_t VideoAdLoadEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_22036F388();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220347354(0, &qword_27CF29298, MEMORY[0x277D844C8]);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for VideoAdLoadEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220346BDC();
  v39 = v8;
  v12 = v40;
  sub_220370148();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = a1;
  v13 = v36;
  v34 = v3;
  LOBYTE(v41) = 0;
  sub_2201F93C8();
  sub_22036FF28();
  v14 = *(&v46 + 1);
  v15 = v11;
  *v11 = v46;
  *(v11 + 1) = v14;
  LOBYTE(v46) = 1;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v16 = v34;
  sub_22036FF28();
  (*(v13 + 32))(&v11[v9[5]], v5, v16);
  v49 = 2;
  sub_2201F80D0();
  sub_22036FF28();
  v17 = &v11[v9[6]];
  v18 = v47[0];
  *v17 = v46;
  *(v17 + 1) = v18;
  *(v17 + 25) = *(v47 + 9);
  v48 = 3;
  sub_220236A30();
  sub_22036FF28();
  v19 = v37;
  v20 = v42;
  v21 = v43;
  v22 = v44;
  v23 = v45;
  v24 = &v11[v9[7]];
  *v24 = v41;
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  v24[32] = v22;
  v24[33] = v23;
  v48 = 4;
  sub_2202B73F4();
  sub_22036FEB8();
  v25 = v42;
  v26 = &v11[v9[8]];
  *v26 = v41;
  *(v26 + 2) = v25;
  v48 = 5;
  sub_220242CD4();
  sub_22036FF28();
  v27 = *(&v41 + 1);
  v28 = &v11[v9[9]];
  *v28 = v41;
  *(v28 + 1) = v27;
  v48 = 6;
  sub_220202B10();
  sub_22036FEB8();
  v11[v9[10]] = v41;
  v48 = 7;
  sub_220243860();
  sub_22036FEB8();
  v11[v9[11]] = v41;
  v48 = 8;
  sub_22029FEAC();
  sub_22036FF28();
  v29 = v40;
  (*(v19 + 8))(v39, v38);
  v30 = BYTE8(v41);
  v31 = v15 + v9[12];
  *v31 = v41;
  *(v31 + 8) = v30;
  sub_2203473B8(v15, v35);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_22034741C(v15);
}

void sub_220347354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220346BDC();
    v7 = a3(a1, &type metadata for VideoAdLoadEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2203473B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22034741C(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220347550@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220345A80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230578(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220345A80(0, &qword_27CF29278, sub_2201F80D0, sub_2201F8128, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220345A80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_220345A80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_220345A80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_220345A80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_220345A80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  (*(*(v20 - 8) + 104))(a2 + v19, v13, v20);
  v21 = a1[12];
  sub_220345A80(0, &qword_27CF29280, sub_22029FEAC, sub_22029FF04, &type metadata for VideoAdLoadData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_2203479CC(uint64_t a1)
{
  sub_220345A80(319, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  if (v1 <= 0x3F)
  {
    sub_220230578(319);
    if (v2 <= 0x3F)
    {
      sub_220345A80(319, &qword_27CF29278, sub_2201F80D0, sub_2201F8128, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_220345A80(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_220345A80(319, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
          if (v5 <= 0x3F)
          {
            sub_220345A80(319, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
            if (v6 <= 0x3F)
            {
              sub_220345A80(319, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
              if (v7 <= 0x3F)
              {
                sub_220345A80(319, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
                if (v8 <= 0x3F)
                {
                  sub_220345A80(319, &qword_27CF29280, sub_22029FEAC, sub_22029FF04, &type metadata for VideoAdLoadData);
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

void sub_220347CE0(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF292C0, &type metadata for VideoAdData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26298, &type metadata for AdFeedData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF262A0, &type metadata for AdGroupData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_220347E10()
{
  result = qword_27CF292C8;
  if (!qword_27CF292C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF292C8);
  }

  return result;
}

unint64_t sub_220347E68()
{
  result = qword_27CF292D0;
  if (!qword_27CF292D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF292D0);
  }

  return result;
}

unint64_t sub_220347EC0()
{
  result = qword_27CF292D8;
  if (!qword_27CF292D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF292D8);
  }

  return result;
}

uint64_t sub_220347F14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144726573556461 && a2 == 0xEA00000000006174;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000220390710 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x614464616F4C6461 && a2 == 0xEA00000000006174)
  {

    return 8;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

Swift::String_optional __swiftcall ExternalAnalyticsPanelIdProvider.panelIdentifier(with:)(Swift::OpaquePointer with)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_220348364()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF29310);
  __swift_project_value_buffer(v0, qword_27CF29310);
  return sub_22036F108();
}

uint64_t EditWatchlistNameEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EditWatchlistNameEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EditWatchlistNameEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220348580(uint64_t a1)
{
  v2 = sub_22034876C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203485BC(uint64_t a1)
{
  v2 = sub_22034876C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditWatchlistNameEvent.Model.encode(to:)(void *a1)
{
  sub_220348A58(0, &qword_27CF29328, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034876C();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22034876C()
{
  result = qword_27CF29330;
  if (!qword_27CF29330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29330);
  }

  return result;
}

uint64_t EditWatchlistNameEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220348A58(0, &qword_27CF29338, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for EditWatchlistNameEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034876C();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_220348ADC(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220348A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22034876C();
    v7 = a3(a1, &type metadata for EditWatchlistNameEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220348ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditWatchlistNameEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220348B58(void *a1)
{
  sub_220348A58(0, &qword_27CF29328, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22034876C();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220348DF8()
{
  result = qword_27CF29360;
  if (!qword_27CF29360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29360);
  }

  return result;
}

unint64_t sub_220348E50()
{
  result = qword_27CF29368;
  if (!qword_27CF29368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29368);
  }

  return result;
}

unint64_t sub_220348EA8()
{
  result = qword_27CF29370;
  if (!qword_27CF29370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29370);
  }

  return result;
}

uint64_t sub_220348FC4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF293A8);
  __swift_project_value_buffer(v0, qword_27CF293A8);
  return sub_22036F108();
}

uint64_t AppReviewPromptRequestEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppReviewPromptRequestEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AppReviewPromptRequestEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2203491E0(uint64_t a1)
{
  v2 = sub_2203493CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22034921C(uint64_t a1)
{
  v2 = sub_2203493CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppReviewPromptRequestEvent.Model.encode(to:)(void *a1)
{
  sub_2203496B8(0, &qword_27CF293C0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203493CC();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2203493CC()
{
  result = qword_27CF293C8;
  if (!qword_27CF293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF293C8);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203496B8(0, &qword_27CF293D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203493CC();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_22034973C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2203496B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2203493CC();
    v7 = a3(a1, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22034973C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203497B8(void *a1)
{
  sub_2203496B8(0, &qword_27CF293C0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203493CC();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220349A58()
{
  result = qword_27CF293F8;
  if (!qword_27CF293F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF293F8);
  }

  return result;
}

unint64_t sub_220349AB0()
{
  result = qword_27CF29400;
  if (!qword_27CF29400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29400);
  }

  return result;
}

unint64_t sub_220349B08()
{
  result = qword_27CF29408;
  if (!qword_27CF29408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29408);
  }

  return result;
}

StocksAnalytics::TrackVariant_optional __swiftcall TrackVariant.init(rawValue:)(Swift::String rawValue)
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

uint64_t TrackVariant.rawValue.getter()
{
  v1 = 0x656C706D6173;
  if (*v0 != 1)
  {
    v1 = 1819047270;
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

uint64_t sub_220349C08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C706D6173;
  if (v2 != 1)
  {
    v4 = 1819047270;
    v3 = 0xE400000000000000;
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

  v7 = 0xE600000000000000;
  v8 = 0x656C706D6173;
  if (*a2 != 1)
  {
    v8 = 1819047270;
    v7 = 0xE400000000000000;
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

unint64_t sub_220349CF8()
{
  result = qword_27CF29410;
  if (!qword_27CF29410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29410);
  }

  return result;
}

uint64_t sub_220349D4C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220349DE4(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220349E68(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220349F08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C706D6173;
  if (v2 != 1)
  {
    v5 = 1819047270;
    v4 = 0xE400000000000000;
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

unint64_t sub_22034A01C()
{
  result = qword_27CF29418;
  if (!qword_27CF29418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF29418);
  }

  return result;
}

uint64_t sub_22034A070(unsigned __int8 a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}