uint64_t sub_22029D54C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C707061;
  if (v2 != 1)
  {
    v3 = 0x6F6F686179;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x656C707061;
  if (*a2 != 1)
  {
    v6 = 0x6F6F686179;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_22029D644()
{
  result = qword_27CF27428;
  if (!qword_27CF27428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27428);
  }

  return result;
}

uint64_t sub_22029D698()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22029D734(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22029D7BC(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22029D860(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656C707061;
  if (v2 != 1)
  {
    v4 = 0x6F6F686179;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_22029D978()
{
  result = qword_27CF27430;
  if (!qword_27CF27430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27430);
  }

  return result;
}

uint64_t sub_22029DA94()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27468);
  __swift_project_value_buffer(v0, qword_27CF27468);
  return sub_22036F108();
}

uint64_t WatchSymbolEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WatchSymbolEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 20);
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchSymbolEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 20);
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchSymbolEvent.watchedSymbolListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 24);
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchSymbolEvent.watchedSymbolListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 24);
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchSymbolEvent.watchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 28);
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WatchSymbolEvent.watchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchSymbolEvent(0) + 28);
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchSymbolEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WatchSymbolEvent(0);
  v5 = v4[5];
  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C, &type metadata for WatchedSymbolListData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t WatchSymbolEvent.Model.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WatchSymbolEvent.Model(0) + 20);
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

uint64_t WatchSymbolEvent.Model.watchedSymbolListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WatchSymbolEvent.Model(0) + 24));
}

uint64_t WatchSymbolEvent.Model.watchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WatchSymbolEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *WatchSymbolEvent.Model.init(eventData:symbolData:watchedSymbolListData:watchlistData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = a2[3];
  v11 = a2[4];
  v12 = *a3;
  v13 = *a4;
  v14 = sub_22036F388();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  result = type metadata accessor for WatchSymbolEvent.Model(0);
  v16 = a5 + result[5];
  *v16 = v7;
  *(v16 + 8) = v8;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  *(v16 + 32) = v11;
  *(a5 + result[6]) = v12;
  *(a5 + result[7]) = v13;
  return result;
}

uint64_t sub_22029E488(uint64_t a1)
{
  v2 = sub_22029E7CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029E4C4(uint64_t a1)
{
  v2 = sub_22029E7CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchSymbolEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22029EC98(0, &qword_27CF27480, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029E7CC();
  sub_220370168();
  LOBYTE(v18) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for WatchSymbolEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = *(v11 + 16);
    v14 = v11[3];
    v15 = v11[4];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    HIBYTE(v17) = 1;
    sub_220230C50();

    sub_22036FFF8();

    v18 = *(v3 + v10[6]);
    HIBYTE(v17) = 2;
    sub_22023D96C();

    sub_22036FFF8();

    LOBYTE(v18) = *(v3 + v10[7]);
    HIBYTE(v17) = 3;
    sub_220237C70();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22029E7CC()
{
  result = qword_27CF27488;
  if (!qword_27CF27488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27488);
  }

  return result;
}

uint64_t WatchSymbolEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_22036F388();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22029EC98(0, &qword_27CF27490, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for WatchSymbolEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029E7CC();
  v29 = v9;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v13 = v12;
  v14 = v25;
  LOBYTE(v30) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v16 = v27;
  sub_22036FF28();
  (*(v14 + 32))(v13, v15, v4);
  v35 = 1;
  sub_220230BFC();
  sub_22036FF28();
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v13 + v10[5];
  *v21 = v30;
  *(v21 + 8) = v17;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(v21 + 32) = v20;
  v35 = 2;
  sub_22023D918();
  sub_22036FF28();
  *(v13 + v10[6]) = v30;
  v35 = 3;
  sub_220237C1C();
  sub_22036FF28();
  (*(v28 + 8))(v29, v16);
  *(v13 + v10[7]) = v30;
  sub_22029ECFC(v13, v24);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_22029ED60(v13);
}

void sub_22029EC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029E7CC();
    v7 = a3(a1, &type metadata for WatchSymbolEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22029ECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchSymbolEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22029ED60(uint64_t a1)
{
  v2 = type metadata accessor for WatchSymbolEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22029EEF8()
{
  result = qword_27CF27498;
  if (!qword_27CF27498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27498);
  }

  return result;
}

unint64_t sub_22029EF50()
{
  result = qword_27CF274A0;
  if (!qword_27CF274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274A0);
  }

  return result;
}

unint64_t sub_22029EFA8()
{
  result = qword_27CF274A8;
  if (!qword_27CF274A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274A8);
  }

  return result;
}

uint64_t sub_22029F064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570)
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

uint64_t sub_22029F0F4(uint64_t a1)
{
  v2 = sub_22029F2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029F130(uint64_t a1)
{
  v2 = sub_22029F2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionResultData.encode(to:)(void *a1)
{
  sub_22029F508(0, &qword_27CF274B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029F2C8();
  sub_220370168();
  v11 = v8;
  sub_22029F31C();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22029F2C8()
{
  result = qword_27CF274B8;
  if (!qword_27CF274B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274B8);
  }

  return result;
}

unint64_t sub_22029F31C()
{
  result = qword_27CF274C0;
  if (!qword_27CF274C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274C0);
  }

  return result;
}

uint64_t SubscriptionResultData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22029F508(0, &qword_27CF274C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029F2C8();
  sub_220370148();
  if (!v2)
  {
    sub_22029F56C();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029F508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029F2C8();
    v7 = a3(a1, &type metadata for SubscriptionResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029F56C()
{
  result = qword_27CF274D0;
  if (!qword_27CF274D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274D0);
  }

  return result;
}

unint64_t sub_22029F5C4()
{
  result = qword_27CF274D8;
  if (!qword_27CF274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274D8);
  }

  return result;
}

unint64_t sub_22029F61C()
{
  result = qword_27CF274E0;
  if (!qword_27CF274E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274E0);
  }

  return result;
}

unint64_t sub_22029F6C4()
{
  result = qword_27CF274E8;
  if (!qword_27CF274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274E8);
  }

  return result;
}

unint64_t sub_22029F71C()
{
  result = qword_27CF274F0;
  if (!qword_27CF274F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274F0);
  }

  return result;
}

unint64_t sub_22029F774()
{
  result = qword_27CF274F8;
  if (!qword_27CF274F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF274F8);
  }

  return result;
}

uint64_t VideoAdLoadData.init(duration:loadState:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_22029F848()
{
  if (*v0)
  {
    return 0x7461745364616F6CLL;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_22029F888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
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

uint64_t sub_22029F96C(uint64_t a1)
{
  v2 = sub_22029FB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029F9A8(uint64_t a1)
{
  v2 = sub_22029FB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdLoadData.encode(to:)(void *a1)
{
  sub_22029FDF0(0, &qword_27CF27500, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029FB7C();
  sub_220370168();
  v14 = 0;
  sub_220370018();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_22029FBD0();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22029FB7C()
{
  result = qword_27CF27508;
  if (!qword_27CF27508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27508);
  }

  return result;
}

unint64_t sub_22029FBD0()
{
  result = qword_27CF27510;
  if (!qword_27CF27510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27510);
  }

  return result;
}

uint64_t VideoAdLoadData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22029FDF0(0, &qword_27CF27518, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029FB7C();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_22036FF48();
    v14 = 1;
    sub_22029FE54();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029FDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029FB7C();
    v7 = a3(a1, &type metadata for VideoAdLoadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029FE54()
{
  result = qword_27CF27520;
  if (!qword_27CF27520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27520);
  }

  return result;
}

unint64_t sub_22029FEAC()
{
  result = qword_27CF27528;
  if (!qword_27CF27528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27528);
  }

  return result;
}

unint64_t sub_22029FF04()
{
  result = qword_27CF27530;
  if (!qword_27CF27530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27530);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdLoadData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoAdLoadData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_2202A0048()
{
  result = qword_27CF27538;
  if (!qword_27CF27538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27538);
  }

  return result;
}

unint64_t sub_2202A00A0()
{
  result = qword_27CF27540;
  if (!qword_27CF27540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27540);
  }

  return result;
}

unint64_t sub_2202A00F8()
{
  result = qword_27CF27548;
  if (!qword_27CF27548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27548);
  }

  return result;
}

uint64_t sub_2202A01B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065)
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

uint64_t sub_2202A0240(uint64_t a1)
{
  v2 = sub_2202A0400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202A027C(uint64_t a1)
{
  v2 = sub_2202A0400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementCompletedData.encode(to:)(void *a1)
{
  sub_2202A05D4(0, &qword_27CF27550, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A0400();
  sub_220370168();
  sub_220370018();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202A0400()
{
  result = qword_27CF27558;
  if (!qword_27CF27558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27558);
  }

  return result;
}

uint64_t MediaEngagementCompletedData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202A05D4(0, &qword_27CF27560, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A0400();
  sub_220370148();
  if (!v2)
  {
    v10 = sub_22036FF48();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202A05D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202A0400();
    v7 = a3(a1, &type metadata for MediaEngagementCompletedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202A063C()
{
  result = qword_281262A08;
  if (!qword_281262A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A08);
  }

  return result;
}

unint64_t sub_2202A0694()
{
  result = qword_281262A10;
  if (!qword_281262A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A10);
  }

  return result;
}

uint64_t sub_2202A0700(void *a1)
{
  sub_2202A05D4(0, &qword_27CF27550, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A0400();
  sub_220370168();
  sub_220370018();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202A086C()
{
  result = qword_27CF27568;
  if (!qword_27CF27568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27568);
  }

  return result;
}

unint64_t sub_2202A08C4()
{
  result = qword_27CF27570;
  if (!qword_27CF27570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27570);
  }

  return result;
}

unint64_t sub_2202A091C()
{
  result = qword_27CF27578;
  if (!qword_27CF27578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27578);
  }

  return result;
}

uint64_t sub_2202A0970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x676E696B61657262;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x69706F6C65766564;
    v4 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64657461647075;
  }

  else
  {
    v5 = 0x6C65527373657270;
    v4 = 0xEC00000065736165;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE800000000000000;
    v8 = 0x676E696B61657262;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x69706F6C65766564;
    v6 = 0xEA0000000000676ELL;
    v7 = 0xE700000000000000;
    v8 = 0x64657461647075;
    if (a2 != 3)
    {
      v8 = 0x6C65527373657270;
      v7 = 0xEC00000065736165;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220370048();
  }

  return v12 & 1;
}

uint64_t sub_2202A0B04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7974666966;
  v6 = 0x4679746E65766573;
  v7 = 0xEB00000000657669;
  if (a1 != 4)
  {
    v6 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 7234932;
  if (a1 != 1)
  {
    v9 = 0x694679746E657774;
    v8 = 0xEA00000000006576;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1869768058;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7974666966)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000657669;
      if (v10 != 0x4679746E65766573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x72646E7548656E6FLL)
      {
LABEL_34:
        v13 = sub_220370048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7234932)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x694679746E657774)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1869768058)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2202A0CEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x646574616C6572;
  if (a1 != 5)
  {
    v5 = 25697;
    v4 = 0xE200000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6C6F626D7973;
  if (a1 != 3)
  {
    v7 = 0x6D6F724665726F6DLL;
    v6 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x64657461727563;
  if (a1 != 1)
  {
    v9 = 0x69726F7453706F74;
    v8 = 0xEA00000000007365;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 != 1)
    {
      v12 = 0xEA00000000007365;
      if (v10 != 0x69726F7453706F74)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE700000000000000;
    v13 = 1634891107;
    goto LABEL_28;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C6F626D7973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6D6F724665726F6DLL)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v12 = 0xE700000000000000;
    v13 = 1634493810;
LABEL_28:
    if (v10 != (v13 | 0x64657400000000))
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v12 = 0xE200000000000000;
  if (v10 != 25697)
  {
LABEL_39:
    v14 = sub_220370048();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_2202A0EF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676B636142707061;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xED0000646E756F72;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6976614E72657375;
    v3 = 0xEE006E6F69746167;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6873617263;
  }

  else
  {
    v4 = 0x6975516563726F66;
    v3 = 0xE900000000000074;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x676B636142707061;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xED0000646E756F72;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6873617263;
    if (a2 != 3)
    {
      v6 = 0x6975516563726F66;
      v5 = 0xE900000000000074;
    }

    if (a2 == 2)
    {
      v7 = 0x6976614E72657375;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEE006E6F69746167;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_220370048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2202A10B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x79726F7473;
    }

    if (v3 == 2)
    {
      v5 = 0x800000022038F550;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000012;
  v8 = 0x800000022038F550;
  if (a2 != 2)
  {
    v7 = 0x79726F7473;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A11DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x756F59726F66;
    }

    else
    {
      v4 = 6385509;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C6F626D7973;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x756F59726F66;
  if (a2 != 2)
  {
    v8 = 6385509;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6F626D7973;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A1300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C696166;
    }

    else
    {
      v4 = 0x656C6C69666C7566;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E69646E6570;
    }

    else
    {
      v4 = 0x6C616974696E69;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (a2 != 2)
  {
    v7 = 0x656C6C69666C7566;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x676E69646E6570;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220370048();
  }

  return v10 & 1;
}

uint64_t sub_2202A1444(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEC000000646C6F53;
  v5 = 0x6573756F68;
  if (a1 == 2)
  {
    v5 = 0x72656C6C65736572;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v6 = 0xD000000000000013;
  if (a1)
  {
    v3 = 0x800000022038FAB0;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x72656C6C65736572;
    }

    else
    {
      v11 = 0x6573756F68;
    }

    if (a2 == 2)
    {
      v10 = 0xEC000000646C6F53;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x800000022038FAB0;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_220370048();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2202A1594(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65726F7453707061;
    }

    else
    {
      v4 = 0x6973626557627570;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000006574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7070417377656ELL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x65726F7453707061;
  if (a2 != 2)
  {
    v7 = 0x6973626557627570;
    v6 = 0xEA00000000006574;
  }

  if (a2)
  {
    v2 = 0x7070417377656ELL;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220370048();
  }

  return v10 & 1;
}

uint64_t sub_2202A16E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C61697274;
    }

    else
    {
      v4 = 1684627824;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701147238;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6C61697274;
  if (a2 != 2)
  {
    v8 = 1684627824;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1701147238;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A17F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1851881335;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x67356E617777;
  }

  else
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1768319351;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x67356E617777;
    if (a2 != 3)
    {
      v6 = 0x6863616552746F6ELL;
      v5 = 0xEC000000656C6261;
    }

    if (a2 == 2)
    {
      v7 = 1851881335;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_220370048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2202A196C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726F72;
  v5 = 0x617461446F6ELL;
  if (a1 == 2)
  {
    v5 = 0x7245726576726573;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  v6 = 0xD000000000000012;
  if (a1)
  {
    v3 = 0x800000022038FF90;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x7245726576726573;
    }

    else
    {
      v11 = 0x617461446F6ELL;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000726F72;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v10 = 0x800000022038FF90;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_220370048();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2202A1ABC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xED00007465656853;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x50676E69646E616CLL;
    v3 = 0xEB00000000656761;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1802398060;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x65676150706D61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573616863727570;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xED00007465656853;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1802398060;
    if (a2 != 3)
    {
      v6 = 0x65676150706D61;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x50676E69646E616CLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000656761;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_220370048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2202A1C60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x68637461776E75;
    }

    else
    {
      v4 = 0x626D795377656976;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEE00646565466C6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6863746177;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x68637461776E75;
  if (a2 != 2)
  {
    v8 = 0x626D795377656976;
    v7 = 0xEE00646565466C6FLL;
  }

  if (a2)
  {
    v2 = 0x6863746177;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A1DB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x6373627553746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xED00006465626972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C61697274;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (a2)
  {
    v2 = 0x6C61697274;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A1F10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1684366694;
    }

    else
    {
      v4 = 0x50676E69646E616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000656761;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C6369747261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1684366694;
  if (a2 != 2)
  {
    v7 = 0x50676E69646E616CLL;
    v6 = 0xEB00000000656761;
  }

  if (a2)
  {
    v2 = 0x656C6369747261;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_220370048();
  }

  return v10 & 1;
}

uint64_t sub_2202A2054(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
    if (a1 != 3)
    {
      v4 = 0xD000000000000015;
      v3 = 0x800000022038FCE0;
    }

    if (a1 == 2)
    {
      v5 = 1818845542;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    v10 = 0xE700000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x6C65636E6163;
    v8 = 0x800000022038FCE0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 1818845542;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_220370048();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_2202A21C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x614374656B72616DLL;
    }

    else
    {
      v4 = 0x61746E6563726570;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000070;
    }

    else
    {
      v5 = 0xEA00000000006567;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6563697270;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x614374656B72616DLL;
  v8 = 0xE900000000000070;
  if (a2 != 2)
  {
    v7 = 0x61746E6563726570;
    v8 = 0xEA00000000006567;
  }

  if (a2)
  {
    v2 = 0x6563697270;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A2314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C61697274;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000022038FE10;
  }

  else
  {
    v3 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6C61697274;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000006465;
    if (v3 != 0x6269726373627573)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000022038FE10;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00006465626972;
    if (v3 != 0x6373627553746F6ELL)
    {
LABEL_31:
      v7 = sub_220370048();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2202A24D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6D6F436863746177;
  v5 = 0xED00006574656C70;
  v6 = 0xE400000000000000;
  v7 = 1885956979;
  if (a1 != 4)
  {
    v7 = 0x726F4D6E7261656CLL;
    v6 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 0x656D75736572;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006574656C70;
      if (v10 != 0x6D6F436863746177)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1885956979)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x726F4D6E7261656CLL)
      {
LABEL_34:
        v13 = sub_220370048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656D75736572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2202A26B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE700000000000000;
    v14 = 0xE700000000000000;
    v15 = 0x6B656557656E6FLL;
    v16 = 0xE800000000000000;
    v17 = 0x68746E6F4D656E6FLL;
    if (a1 != 3)
    {
      v17 = 0x6E6F4D6565726874;
      v16 = 0xEB00000000736874;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 0x796144656E6FLL;
    if (a1)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v18 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x7261655965766966;
    v4 = 0xE900000000000073;
    v5 = 0xE800000000000000;
    v6 = 0x73726165596E6574;
    if (a1 != 9)
    {
      v6 = 7889261;
      v5 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x68746E6F4D786973;
    v8 = 0xE900000000000073;
    v9 = 0xE700000000000000;
    v10 = 0x72616559656E6FLL;
    if (a1 != 6)
    {
      v10 = 0x73726165596F7774;
      v9 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x796144656E6FLL)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 2)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x6B656557656E6FLL)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 3)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x68746E6F4D656E6FLL)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xEB00000000736874;
      if (v11 != 0x6E6F4D6565726874)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_60;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x72616559656E6FLL)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v19 = 0xE800000000000000;
      v20 = 1500477300;
LABEL_57:
      if (v11 != (v20 | 0x7372616500000000))
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v21 = 0x68746E6F4D786973;
LABEL_50:
    v19 = 0xE900000000000073;
    if (v11 != v21)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v21 = 0x7261655965766966;
    goto LABEL_50;
  }

  if (a2 == 9)
  {
    v19 = 0xE800000000000000;
    v20 = 1500407156;
    goto LABEL_57;
  }

  v19 = 0xE300000000000000;
  if (v11 != 7889261)
  {
LABEL_62:
    v22 = sub_220370048();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_2202A29E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7469617274726F70;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000022038FB40;
  }

  else
  {
    v3 = 0x70616373646E616CLL;
    if (v2 == 3)
    {
      v4 = 0xED00007466654C65;
    }

    else
    {
      v4 = 0xEE00746867695265;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7469617274726F70;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xED00007466654C65;
    if (a2 != 3)
    {
      v5 = 0xEE00746867695265;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x70616373646E616CLL;
    }

    if (a2 == 2)
    {
      v7 = 0x800000022038FB40;
    }

    else
    {
      v7 = v5;
    }

    if (v3 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v7)
  {
LABEL_33:
    v9 = sub_220370048();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_2202A2B9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657461657263;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (a1 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (a1 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v7;
  }

  else
  {
    v8 = 0x64657461657263;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x6564726163736964;
    }

    else if (a2 == 4)
    {
      v2 = 0x656C6C69666C7566;
    }

    else
    {
      v2 = 0x65746E6573657270;
    }

    v11 = 0xE900000000000064;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE600000000000000;
      v2 = 0x64656C696166;
    }

    else
    {
      v11 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v9 == v2 && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220370048();
  }

  return v12 & 1;
}

uint64_t sub_2202A2D5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xED000064656C6961;
  v4 = 0x726568746FLL;
  if (a1 == 2)
  {
    v4 = 0x4674736575716572;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v5 = 0xD000000000000015;
  v6 = 0x800000022038F510;
  if (a1)
  {
    v5 = 0x6F5464656C696166;
    v6 = 0xEE007265646E6552;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x4674736575716572;
    }

    else
    {
      v11 = 0x726568746FLL;
    }

    if (a2 == 2)
    {
      v10 = 0xED000064656C6961;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x6F5464656C696166;
    }

    else
    {
      v9 = 0xD000000000000015;
    }

    if (a2)
    {
      v10 = 0xEE007265646E6552;
    }

    else
    {
      v10 = 0x800000022038F510;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_220370048();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_2202A2EBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 1685025392;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 1685025392;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A2FD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C65636E6163;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1818845542;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0x800000022038F8E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73736563637573;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 1818845542;
  v8 = 0x800000022038F8E0;
  if (a2 == 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x73736563637573;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A3108(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 0x657370616C6C6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465646E61707865;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (a2 != 2)
  {
    v8 = 0x657370616C6C6F63;
    v7 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x6465646E61707865;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A3254(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x705565636166;
  if (a1 != 5)
  {
    v5 = 0x6E776F4465636166;
    v4 = 0xE800000000000000;
  }

  v6 = 0xED00007466654C65;
  if (a1 != 3)
  {
    v6 = 0xEE00746867695265;
  }

  if (a1 > 4u)
  {
    v7 = v4;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
    v7 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (a1 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x800000022038FB40;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469617274726F70)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x800000022038FB40;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x705565636166)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E776F4465636166)
      {
LABEL_40:
        v13 = sub_220370048();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xED00007466654C65;
    if (v10 != 0x70616373646E616CLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEE00746867695265;
    if (v10 != 0x70616373646E616CLL)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_2202A3498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x800000022038F600;
  v6 = 0x54676E6964616F6CLL;
  v7 = 0xEE0074756F656D69;
  if (a1 != 4)
  {
    v6 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6572676F72506E69;
  v9 = 0xEA00000000007373;
  if (a1 != 1)
  {
    v8 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000022038F600;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEE0074756F656D69;
      if (v10 != 0x54676E6964616F6CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64656C696166)
      {
LABEL_34:
        v13 = sub_220370048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007373;
      if (v10 != 0x6572676F72506E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB0000000079616CLL;
      if (v10 != 0x506F547964616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2202A36A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x696B536F65646976;
    v10 = 0xE900000000000070;
    if (a1 != 6)
    {
      v9 = 0x6974737265746E69;
      v10 = 0xEF7061546C616974;
    }

    v11 = 0x7365526F65646976;
    v12 = 0xEB00000000656D75;
    if (a1 != 4)
    {
      v11 = 0xD000000000000012;
      v12 = 0x800000022038F5B0;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x616C506F65646976;
    v5 = 0xE900000000000079;
    if (a1 != 2)
    {
      v4 = 0x7561506F65646976;
      v5 = 0xEA00000000006573;
    }

    v6 = 0x615472656E6E6162;
    if (a1)
    {
      v3 = 0xE900000000000070;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE900000000000079;
        if (v7 != 0x616C506F65646976)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEA00000000006573;
        if (v7 != 0x7561506F65646976)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6E776F6E6B6E75)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x615472656E6E6162;
LABEL_38:
    v13 = 0xE900000000000070;
    if (v7 != v14)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0xEB00000000656D75;
      if (v7 != 0x7365526F65646976)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000022038F5B0;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_45;
  }

  if (a2 == 6)
  {
    v14 = 0x696B536F65646976;
    goto LABEL_38;
  }

  v13 = 0xEF7061546C616974;
  if (v7 != 0x6974737265746E69)
  {
LABEL_47:
    v15 = sub_220370048();
    goto LABEL_48;
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_2202A396C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0xE400000000000000;
    v12 = 2036427888;
    if (a1 != 2)
    {
      v12 = 0x6573756170;
      v11 = 0xE500000000000000;
    }

    v13 = 0x616C506F54706174;
    if (a1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x6168436465657073;
    v4 = 0xEB0000000065676ELL;
    v5 = 0xE800000000000000;
    v6 = 0x6B63614270696B73;
    if (a1 != 7)
    {
      v6 = 0x77726F4670696B73;
      v5 = 0xEB00000000647261;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x656D75736572;
    if (a1 != 4)
    {
      v7 = 0x64656C696166;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v8 != 2036427888)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6573756170)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE900000000000079;
      if (v8 != 0x616C506F54706174)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0x6168436465657073;
      v16 = 6645614;
    }

    else
    {
      if (a2 == 7)
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x6B63614270696B73)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x77726F4670696B73;
      v16 = 6582881;
    }

    v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v8 != v15)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v14 = 0xE600000000000000;
  if (a2 == 4)
  {
    if (v8 != 0x656D75736572)
    {
      goto LABEL_52;
    }
  }

  else if (v8 != 0x64656C696166)
  {
LABEL_52:
    v17 = sub_220370048();
    goto LABEL_53;
  }

LABEL_50:
  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_2202A3C1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616E7265747865;
    }

    else
    {
      v4 = 0x79616C50726163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7070416E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C616E7265747865;
  if (a2 != 2)
  {
    v8 = 0x79616C50726163;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x7070416E69;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A3D58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x72656E6E6162;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v5 = 0x566C6C6F52657270;
      v6 = 1868915817;
    }

    else
    {
      if (a1 == 3)
      {
        v4 = 0xE800000000000000;
        v5 = 0x644165766974616ELL;
        goto LABEL_14;
      }

      v5 = 0x6974737265746E69;
      v6 = 1818323316;
    }

    v4 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    v7 = 0xE700000000000000;
    v8 = 0xE600000000000000;
    v9 = 0x72656E6E6162;
    v10 = a2 == 0;
  }

  else
  {
    v2 = 0x566C6C6F52657270;
    v7 = 0xEC0000006F656469;
    v8 = 0xE800000000000000;
    v9 = 0x644165766974616ELL;
    if (a2 != 3)
    {
      v9 = 0x6974737265746E69;
      v8 = 0xEC0000006C616974;
    }

    v10 = a2 == 2;
  }

  if (v10)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v4 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_220370048();
  }

  return v13 & 1;
}

uint64_t sub_2202A3EE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x626D79536E65706FLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xEA00000000006C6FLL;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x637461576E65706FLL;
    v4 = 0xED00007473696C68;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000022038FE40;
  }

  else
  {
    v3 = 0x697472416E65706FLL;
    v4 = 0xEB00000000656C63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x626D79536E65706FLL;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v5 = 0xEA00000000006C6FLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xED00007473696C68;
    if (v3 != 0x637461576E65706FLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000022038FE40;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000656C63;
    if (v3 != 0x697472416E65706FLL)
    {
LABEL_31:
      v7 = sub_220370048();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2202A40BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x7748656C646E7562;
  v5 = 0xE900000000000064;
  if (a1 != 5)
  {
    v4 = 0x72756769666E6F63;
    v5 = 0xEC000000656C6261;
  }

  v6 = 0xE700000000000000;
  v7 = 0x656C646E754273;
  if (a1 != 3)
  {
    v7 = 0x43656C646E754273;
    v6 = 0xEE00726569727261;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6574726143616C61;
  if (a1 != 1)
  {
    v9 = 0x656C646E7562;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6574726143616C61)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x656C646E7562)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x7748656C646E7562)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xEC000000656C6261;
      if (v10 != 0x72756769666E6F63)
      {
LABEL_39:
        v13 = sub_220370048();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x656C646E754273)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEE00726569727261;
    if (v10 != 0x43656C646E754273)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2202A4314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB00000000756E65;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x4D747865746E6F63;
    }

    else
    {
      v6 = 0x6570697773;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x776F7272616873;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x4D747865746E6F63;
  v9 = 0xEB00000000756E65;
  if (a2 != 2)
  {
    v8 = 0x6570697773;
    v9 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x776F7272616873;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220370048();
  }

  return v12 & 1;
}

uint64_t sub_2202A445C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6867696C746F7073;
    v12 = 0xE900000000000074;
    v13 = 0xE700000000000000;
    v14 = 0x66666F646E6168;
    if (a1 != 8)
    {
      v14 = 0x6E65746E49707061;
      v13 = 0xE900000000000074;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0xD000000000000011;
    v16 = 0x800000022038FDB0;
    if (a1 != 5)
    {
      v15 = 0xD000000000000020;
      v16 = 0x800000022038FDD0;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C616E7265747865;
    v5 = 0xEC0000006B6E694CLL;
    v6 = 0xD000000000000011;
    v7 = 0x800000022038FD80;
    if (a1 != 3)
    {
      v6 = 0x6465725069726973;
      v7 = 0xEE006E6F69746369;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6469577961646F74;
    if (a1)
    {
      v3 = 0xEB00000000746567;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 > 6u)
    {
      if (a2 == 7)
      {
        v19 = 0x6867696C746F7073;
      }

      else
      {
        if (a2 == 8)
        {
          v18 = 0xE700000000000000;
          if (v9 != 0x66666F646E6168)
          {
            goto LABEL_57;
          }

          goto LABEL_55;
        }

        v19 = 0x6E65746E49707061;
      }

      v18 = 0xE900000000000074;
      if (v9 != v19)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (a2 == 5)
    {
      v17 = "siriVoiceShortcut";
LABEL_42:
      v18 = (v17 - 32) | 0x8000000000000000;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v18 = 0x800000022038FDD0;
    if (v9 != 0xD000000000000020)
    {
LABEL_57:
      v20 = sub_220370048();
      goto LABEL_58;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v18 = 0xEC0000006B6E694CLL;
        if (v9 != 0x6C616E7265747865)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      if (a2 != 3)
      {
        v18 = 0xEE006E6F69746369;
        if (v9 != 0x6465725069726973)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v17 = "homeScreenIconTap";
      goto LABEL_42;
    }

    if (a2)
    {
      v18 = 0xEB00000000746567;
      if (v9 != 0x6469577961646F74)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_55:
  if (v10 != v18)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t sub_2202A47A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xE500000000000000;
    v13 = 0x6570697773;
    if (a1 != 2)
    {
      v13 = 0x656E696C64616568;
      v12 = 0xEB00000000706154;
    }

    v14 = 0x636E75614C707061;
    if (a1)
    {
      v11 = 0xE900000000000068;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000022038FCA0;
    v5 = 0x6976614E72657375;
    v6 = 0xEE006E6F69746167;
    if (a1 != 7)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000022038FCC0;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE800000000000000;
    v8 = 0x6B6E696C70656564;
    if (a1 != 4)
    {
      v8 = 0x6E6164726F666661;
      v7 = 0xED00007061546563;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x6570697773)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEB00000000706154;
        if (v9 != 0x656E696C64616568)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE900000000000068;
      if (v9 != 0x636E75614C707061)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_50;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v16 = "returnFromArticle";
    }

    else
    {
      if (a2 == 7)
      {
        v15 = 0xEE006E6F69746167;
        if (v9 != 0x6976614E72657375)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v16 = "widgetHeadlineTap";
    }

    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6B6E696C70656564)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xED00007061546563;
    if (v9 != 0x6E6164726F666661)
    {
LABEL_52:
      v17 = sub_220370048();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_2202A4AA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x79636E6572727563;
    if (a1 != 6)
    {
      v10 = 0x73657275747566;
      v9 = 0xE700000000000000;
    }

    v11 = 0xD000000000000012;
    v12 = 0x800000022038F9E0;
    if (a1 != 4)
    {
      v11 = 0x75636F7470797263;
      v12 = 0xEE0079636E657272;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E75467865646E69;
    v5 = 0xE900000000000064;
    if (a1 != 2)
    {
      v4 = 0x75466C617574756DLL;
      v5 = 0xEA0000000000646ELL;
    }

    v6 = 0x797469757165;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v7 != 0x79636E6572727563)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x73657275747566)
        {
LABEL_47:
          v14 = sub_220370048();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x800000022038F9E0;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEE0079636E657272;
      if (v7 != 0x75636F7470797263)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000064;
      if (v7 != 0x6E75467865646E69)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEA0000000000646ELL;
      if (v7 != 0x75466C617574756DLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE600000000000000;
    if (v7 != 0x797469757165)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_2202A4D44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656956616964656DLL;
    }

    else
    {
      v4 = 0x6E65704F707061;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000077;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x56656C6369747261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEB00000000776569;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x656956616964656DLL;
  v8 = 0xE900000000000077;
  if (a2 != 2)
  {
    v7 = 0x6E65704F707061;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x56656C6369747261;
    v6 = 0xEB00000000776569;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_220370048();
  }

  return v11 & 1;
}

uint64_t sub_2202A4EA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7972656C6C6167;
  v6 = 0xE500000000000000;
  v7 = 0x6F69647561;
  if (a1 != 4)
  {
    v7 = 7364973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F65646976;
  if (a1 != 1)
  {
    v8 = 0x6567616D69;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v11 = 0xE500000000000000;
    if (a2 != 1)
    {
      if (v9 != 0x6567616D69)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 1701079414;
    goto LABEL_23;
  }

  if (a2 == 3)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972656C6C6167)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v11 = 0xE500000000000000;
    v12 = 1768191329;
LABEL_23:
    if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v11 = 0xE300000000000000;
  if (v9 != 7364973)
  {
LABEL_34:
    v13 = sub_220370048();
    goto LABEL_35;
  }

LABEL_32:
  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

double sub_2202A5050@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a8@<X8>)
{
  v80 = a4;
  v81 = a5;
  v85 = a2;
  v86 = a3;
  v87 = a8;
  v9 = sub_22036E5D8();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v82 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22036E468();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v88 = &v71[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v89 = &v71[-v14];
  v92 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  MEMORY[0x28223BE20](v92);
  v93 = &v71[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2202A642C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22036ED58();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71[-v21];
  sub_2202A6484(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v71[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v22, a1, v19);
  v28 = swift_dynamicCast();
  v29 = *(v25 + 56);
  if (!v28)
  {
    v29(v18, 1, 1, v24);
    sub_2202A65B4(v18, sub_2202A642C);
    sub_220287CC4();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v29(v18, 0, 1, v24);
  (*(v25 + 32))(v27, v18, v24);
  v30 = sub_22036ED28();
  v31 = v94;
  v32 = sub_22036F1F8();
  if (v31)
  {
    (*(v25 + 8))(v27, v24);

    return result;
  }

  v78 = 0;
  v79 = v25;
  v94 = v27;
  v35 = v33;
  v36 = v32;

  sub_22036E3C8();
  swift_allocObject();
  sub_22036E3B8();
  sub_2202A6518(&qword_27CF27588, type metadata accessor for MediaEngageCompleteEvent.Model, &protocol conformance descriptor for MediaEngageCompleteEvent.Model);
  v38 = v92;
  v37 = v93;
  v39 = v78;
  sub_22036E3A8();
  if (v39)
  {
    (*(v79 + 8))(v94, v24);

    sub_2202A6560(v36, v35);
    return result;
  }

  v76 = v36;
  v77 = v35;

  v40 = &v37[*(v38 + 20)];
  v41 = *(v40 + 3);
  v106 = *(v40 + 2);
  v107 = v41;
  v108 = *(v40 + 16);
  v42 = *(v40 + 1);
  v105[0] = *v40;
  v105[1] = v42;
  v104 = v108;
  v102 = v106;
  v103 = v41;
  v100 = v105[0];
  v101 = v42;
  v43 = &v37[*(v38 + 32)];
  v44 = *v43;
  v45 = *(v43 + 1);
  v74 = *(v43 + 2);
  v75 = v45;
  v73 = *(v43 + 6);
  v72 = v43[28];
  LODWORD(v78) = v44;
  if (v44 > 2)
  {
    v46 = v94;
    v47 = v79;
    if (v44 == 4)
    {
      sub_22022ECDC(v105, &v95);
LABEL_13:

      goto LABEL_15;
    }
  }

  else
  {
    v46 = v94;
    v47 = v79;
  }

  v48 = sub_220370048();
  sub_22022ECDC(v105, &v95);

  if ((v48 & 1) == 0)
  {
    if (v78 == 1)
    {
      goto LABEL_13;
    }

    v49 = sub_220370048();

    if ((v49 & 1) == 0)
    {
      (*(v47 + 8))(v46, v24);
      sub_2202A6560(v76, v77);
      sub_22022ED14(v105);
      sub_2202A65B4(v93, type metadata accessor for MediaEngageCompleteEvent.Model);
      result = 0.0;
      v70 = v87;
      *v87 = 0u;
      v70[1] = 0u;
      v70[2] = 0u;
      v70[3] = 0u;
      v70[4] = 0u;
      v70[5] = 0u;
      v70[6] = 0u;
      *(v70 + 14) = 0;
      return result;
    }
  }

LABEL_15:
  v50 = v89;
  sub_22036E458();
  (*(v90 + 16))(v88, v50, v91);
  v51 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v53 = v51[2];
  v52 = v51[3];
  if (v53 >= v52 >> 1)
  {
    v51 = sub_220287E28((v52 > 1), v53 + 1, 1, v51);
  }

  v55 = v87;
  v54 = v88;
  v51[2] = v53 + 1;
  v56 = v90;
  v57 = v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v53;
  v58 = v91;
  (*(v90 + 32))(v57, v54, v91);
  v111 = v51;
  v59 = &v93[*(v92 + 52)];
  v60 = *(v59 + 1);
  v109[0] = *v59;
  v109[1] = v60;
  v110 = *(v59 + 16);
  v61 = sub_2202A59D8(v105, v109, v80, v81);
  sub_2202A5E38(v61);
  LOBYTE(v95) = v72;
  v62 = sub_2202A5F68(v78);
  sub_2202A5E38(v62);
  v63 = sub_2202A6234();
  sub_2202A5E38(v63);
  v64 = v82;
  sub_22036E5C8();
  v94 = sub_22036E5B8();
  v92 = v65;
  sub_2202A6560(v76, v77);
  (*(v83 + 8))(v64, v84);
  (*(v56 + 8))(v89, v58);
  (*(v47 + 8))(v46, v24);
  v97 = v102;
  v98 = v103;
  LODWORD(v99) = v104;
  v95 = v100;
  v96 = v101;
  v66 = v86;

  sub_2202A65B4(v93, type metadata accessor for MediaEngageCompleteEvent.Model);
  v67 = v95;
  *(v55 + 24) = v96;
  result = *&v97;
  v68 = v98;
  *(v55 + 40) = v97;
  *(v55 + 56) = v68;
  *v55 = v111;
  *(v55 + 9) = v99;
  *(v55 + 8) = v67;
  *(v55 + 80) = 2;
  *(v55 + 11) = v85;
  *(v55 + 12) = v66;
  v69 = v92;
  *(v55 + 13) = v94;
  *(v55 + 14) = v69;
  return result;
}

char *sub_2202A59D8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22036E468();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v39 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v39 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v39 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v21 = *a1;
  v20 = a1[1];
  v41 = a1;
  v47 = v21;
  v48 = v20;

  MEMORY[0x223D79930](a3, a4);
  sub_22036FAE8();

  sub_22036E458();

  v22 = *(v8 + 16);
  v42 = v17;
  v44 = v22;
  v22(v17, v19, v7);
  v23 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_220287E28((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v43 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v40 = *(v8 + 72);
  v26 = *(v8 + 32);
  v26(&v23[v43 + v40 * v25], v42, v7);
  v27 = v45;
  sub_22036E458();
  v42 = *(v8 + 8);
  v42(v19, v7);
  v26(v19, v27, v7);
  v44(v46, v19, v7);
  v29 = *(v23 + 2);
  v28 = *(v23 + 3);
  if (v29 >= v28 >> 1)
  {
    v23 = sub_220287E28((v28 > 1), v29 + 1, 1, v23);
  }

  v30 = v40;
  v31 = *(v41 + 64);
  *(v23 + 2) = v29 + 1;
  v32 = &v23[v43 + v29 * v30];
  v33 = v30;
  v26(v32, v46, v7);
  if (v31 == 1)
  {
    v34 = v45;
    sub_22036E458();
    v42(v19, v7);
    v26(v19, v34, v7);
    v35 = v39;
    v44(v39, v19, v7);
    v37 = *(v23 + 2);
    v36 = *(v23 + 3);
    if (v37 >= v36 >> 1)
    {
      v23 = sub_220287E28((v36 > 1), v37 + 1, 1, v23);
    }

    v42(v19, v7);
    *(v23 + 2) = v37 + 1;
    v26(&v23[v43 + v37 * v33], v35, v7);
  }

  else
  {
    v42(v19, v7);
  }

  return v23;
}

uint64_t sub_2202A5E38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_220287E28(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_22036E468();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2202A5F68(unsigned __int8 a1)
{
  v2 = sub_22036E468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = a1;
  v16 = MEMORY[0x277D84F90];
  if (((1 << v15) & 0x2D) == 0)
  {
    if (v15 == 1)
    {
      sub_22036E458();
      (*(v3 + 16))(v6, v9, v2);
      v16 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = v16[2];
      v17 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v16 = sub_220287E28((v17 > 1), v18 + 1, 1, v16);
      }

      v14 = v9;
      v12 = v6;
    }

    else
    {
      sub_22036E458();
      (*(v3 + 16))(v12, v14, v2);
      v16 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = v16[2];
      v20 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v20 >> 1)
      {
        v16 = sub_220287E28((v20 > 1), v18 + 1, 1, v16);
      }
    }

    (*(v3 + 8))(v14, v2);
    v16[2] = v19;
    (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v12, v2);
  }

  return v16;
}

void *sub_2202A6234()
{
  v0 = sub_22036E468();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  sub_22036E458();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_220287E28((v8 > 1), v9 + 1, 1, v7);
  }

  (*(v1 + 8))(v6, v0);
  v7[2] = v9 + 1;
  (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v4, v0);
  return v7;
}

void sub_2202A642C(uint64_t a1)
{
  if (!qword_27CF27580)
  {
    sub_2202A6484(255);
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF27580);
    }
  }
}

void sub_2202A6484(uint64_t a1)
{
  if (!qword_2812668C0)
  {
    type metadata accessor for MediaEngageCompleteEvent(255);
    sub_2202A6518(qword_281263168, type metadata accessor for MediaEngageCompleteEvent, &protocol conformance descriptor for MediaEngageCompleteEvent);
    v1 = sub_22036ED58();
    if (!v2)
    {
      atomic_store(v1, &qword_2812668C0);
    }
  }
}

uint64_t sub_2202A6518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2202A6560(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2202A65B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double URLHandlerContext<A>.urlReferralData()@<D0>(uint64_t *a1@<X8>)
{
  v85 = a1;
  *&v92 = sub_22036F758();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22036E508();
  v103 = *(v100 - 8);
  v3 = MEMORY[0x28223BE20](v100);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v99 = &v78 - v6;
  v7 = sub_22036F578();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v78 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v78 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v78 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v78 - v17;
  v19 = sub_22036F5A8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v84 = &v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v82 = &v78 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v78 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v78 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v78 - v33;
  sub_2202A724C(0);
  v102 = v35;
  v104 = v1;
  sub_22036F678();
  sub_22036F598();
  v36 = *(v20 + 8);
  v96 = v20 + 8;
  v97 = v19;
  v95 = v36;
  v36(v34, v19);
  v37 = sub_22036F588();
  v39 = v38;
  v93 = *(v8 + 8);
  *&v94 = v7;
  v98 = v8 + 8;
  v93(v18, v7);
  if (v39)
  {
    if (v37 == 0x746567646977 && v39 == 0xE600000000000000)
    {

LABEL_6:
      v101 = 0x80000002203902C0;
      v78 = 0xD000000000000017;
      goto LABEL_8;
    }

    v40 = sub_220370048();

    if (v40)
    {
      goto LABEL_6;
    }
  }

  v78 = 0;
  v101 = 0xE000000000000000;
LABEL_8:
  sub_22036F678();
  sub_22036F568();
  v41 = v32;
  v42 = v97;
  v43 = v95;
  v95(v41, v97);
  sub_22036E4C8();
  v44 = *(v103 + 8);
  v103 += 8;
  v81 = v44;
  v44(v5, v100);
  sub_22036F678();
  v45 = v83;
  sub_22036F598();
  v43(v29, v42);
  v80 = sub_22036F588();
  v79 = v46;
  v47 = v45;
  v48 = v93;
  v49 = v94;
  v93(v47, v94);
  v50 = v82;
  sub_22036F678();
  v51 = v86;
  sub_22036F598();
  v43(v50, v42);
  v83 = sub_22036F588();
  v82 = v52;
  v48(v51, v49);
  v53 = v84;
  sub_22036F678();
  v54 = v87;
  sub_22036F598();
  v43(v53, v42);
  v86 = sub_22036F588();
  v84 = v55;
  v48(v54, v49);
  v56 = v90;
  sub_22036F668();
  v57 = sub_22036F748();
  v59 = v58;
  (*(v91 + 8))(v56, v92);
  v60 = v94;
  if (v59)
  {

    v101 = v59;
  }

  else
  {
    v57 = v78;
  }

  v61 = v99;
  v62 = sub_22036E4D8();
  v64 = v63;
  sub_2202A6EC8(v104, v105);
  v65 = v106;
  v66 = v107;
  v94 = v105[0];
  v92 = v105[1];
  v67 = v88;
  sub_22036F678();
  v68 = v89;
  sub_22036F598();
  v95(v67, v97);
  v69 = sub_22036F588();
  v71 = v70;
  v93(v68, v60);
  v81(v61, v100);
  if (v71)
  {
    v72 = v69;
  }

  else
  {
    v72 = 0;
  }

  v73 = v85;
  v74 = v79;
  *v85 = v80;
  v73[1] = v74;
  if (v71 <= 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = v71;
  }

  v73[2] = v83;
  v73[3] = v82;
  v73[4] = v86;
  v73[5] = v84;
  v73[6] = v57;
  v73[7] = v101;
  v73[8] = v62;
  v73[9] = v64;
  v76 = v92;
  result = *&v94;
  *(v73 + 5) = v94;
  *(v73 + 6) = v76;
  v73[14] = v65;
  v73[15] = v66;
  v73[16] = v72;
  v73[17] = v75;
  return result;
}

uint64_t sub_2202A6EC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v3 = sub_22036F578();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = sub_22036F5A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  sub_2202A724C(0);
  v49 = a1;
  sub_22036F678();
  sub_22036F598();
  v20 = *(v12 + 8);
  v47 = v11;
  v20(v19, v11);
  v44 = sub_22036F588();
  v22 = v21;
  v23 = *(v4 + 8);
  v50 = v4 + 8;
  v51 = v3;
  result = v23(v10, v3);
  if (v22)
  {
    sub_22036F678();
    v25 = v46;
    sub_22036F598();
    v43 = v22;
    v26 = v47;
    v20(v17, v47);
    v27 = sub_22036F588();
    v41 = v28;
    v42 = v27;
    v29 = v25;
    v30 = v51;
    v23(v29, v51);
    v31 = v45;
    sub_22036F678();
    v32 = v48;
    sub_22036F598();
    v33 = v26;
    v22 = v43;
    v20(v31, v33);
    v34 = sub_22036F588();
    v36 = v35;
    result = v23(v32, v30);
    v38 = v41;
    v37 = v42;
    v39 = v44;
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v34 = 0;
    v36 = 0;
  }

  v40 = v52;
  *v52 = v39;
  v40[1] = v22;
  v40[2] = v37;
  v40[3] = v38;
  v40[4] = v34;
  v40[5] = v36;
  return result;
}

void sub_2202A724C(uint64_t a1)
{
  if (!qword_281266650)
  {
    sub_22036F878();
    v1 = sub_22036F688();
    if (!v2)
    {
      atomic_store(v1, &qword_281266650);
    }
  }
}

StocksAnalytics::AdType_optional __swiftcall AdType.init(rawValue:)(Swift::String rawValue)
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

unint64_t AdType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656C6C65736572;
  if (*v0 != 2)
  {
    v2 = 0x6573756F68;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t sub_2202A7394()
{
  result = qword_27CF27590;
  if (!qword_27CF27590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27590);
  }

  return result;
}

uint64_t sub_2202A73E8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202A74B4(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202A756C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202A7640(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEC000000646C6F53;
  v5 = 0x72656C6C65736572;
  if (*v1 != 2)
  {
    v5 = 0x6573756F68;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000022038FAB0;
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

unint64_t sub_2202A7788()
{
  result = qword_27CF27598;
  if (!qword_27CF27598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27598);
  }

  return result;
}

uint64_t sub_2202A78A4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF275D0);
  __swift_project_value_buffer(v0, qword_27CF275D0);
  return sub_22036F108();
}

uint64_t NonNewsArticleViewResumeEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleViewResumeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResumeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 20);
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResumeEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewResumeEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 24);
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResumeEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202A7DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t NonNewsArticleViewResumeEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewResumeEvent(0) + 28);
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewResumeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleViewResumeEvent(0);
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

uint64_t NonNewsArticleViewResumeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResumeEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NonNewsArticleViewResumeEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewResumeEvent.Model(0) + 24));
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

uint64_t NonNewsArticleViewResumeEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

__n128 NonNewsArticleViewResumeEvent.Model.init(eventData:viewData:nonNewsArticleData:orientationData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>)
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
  v14 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
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

unint64_t sub_2202A835C()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    v1 = 0x6174614477656976;
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

uint64_t sub_2202A83EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202A9398(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202A8414(uint64_t a1)
{
  v2 = sub_2202A878C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202A8450(uint64_t a1)
{
  v2 = sub_2202A878C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleViewResumeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202A8C68(0, &qword_27CF275E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A878C();
  sub_220370168();
  LOBYTE(v21) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
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

unint64_t sub_2202A878C()
{
  result = qword_27CF275F0;
  if (!qword_27CF275F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF275F0);
  }

  return result;
}

uint64_t NonNewsArticleViewResumeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_22036F388();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202A8C68(0, &qword_27CF275F8, MEMORY[0x277D844C8]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A878C();
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
  sub_2202A8CCC(v11, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202A8D30(v11);
}

void sub_2202A8C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202A878C();
    v7 = a3(a1, &type metadata for NonNewsArticleViewResumeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202A8CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202A8D30(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleViewResumeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202A8E64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202A7DFC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202A7DFC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202A7DFC(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2202A9074(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202A7DFC(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_2202A7DFC(319, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_2202A7DFC(319, &qword_2812667D8, sub_2201F8808, sub_2201F8860, &type metadata for OrientationData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2202A91F8(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202A9294()
{
  result = qword_27CF27620;
  if (!qword_27CF27620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27620);
  }

  return result;
}

unint64_t sub_2202A92EC()
{
  result = qword_27CF27628;
  if (!qword_27CF27628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27628);
  }

  return result;
}

unint64_t sub_2202A9344()
{
  result = qword_27CF27630;
  if (!qword_27CF27630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27630);
  }

  return result;
}

uint64_t sub_2202A9398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390A60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69)
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

uint64_t sub_2202A95DC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27638);
  __swift_project_value_buffer(v0, qword_27CF27638);
  return sub_22036F108();
}

uint64_t SearchEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_2202A979C(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202A979C(uint64_t a1)
{
  if (!qword_281266878)
  {
    sub_220247C08();
    sub_220247C5C();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_281266878);
    }
  }
}

uint64_t SearchEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_2202A979C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchEvent(0) + 20);
  sub_2202A979C(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t SearchEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SearchEvent.Model.init(eventData:searchData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_22036F388();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for SearchEvent.Model(0);
  v9 = (a3 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t sub_2202A9A8C()
{
  if (*v0)
  {
    return 0x6144686372616573;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_2202A9AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174)
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

uint64_t sub_2202A9BBC(uint64_t a1)
{
  v2 = sub_2202A9E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202A9BF8(uint64_t a1)
{
  v2 = sub_2202A9E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202AA1CC(0, &qword_27CF27650, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A9E18();
  sub_220370168();
  LOBYTE(v14) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for SearchEvent.Model(0) + 20));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 1;
    sub_220247C5C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202A9E18()
{
  result = qword_27CF27658;
  if (!qword_27CF27658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27658);
  }

  return result;
}

uint64_t SearchEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22036F388();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AA1CC(0, &qword_27CF27660, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SearchEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202A9E18();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v29;
  v16 = v27;
  sub_22036FF28();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_220247C08();
  sub_22036FF28();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v23;
  v20 = (v23 + *(v24 + 20));
  *v20 = v30;
  v20[1] = v18;
  sub_2202AA230(v19, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202AA294(v19);
}

void sub_2202AA1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202A9E18();
    v7 = a3(a1, &type metadata for SearchEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202AA230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202AA294(uint64_t a1)
{
  v2 = type metadata accessor for SearchEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202AA3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202A979C(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_2202AA4B0(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202A979C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2202AA55C(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202AA5E4()
{
  result = qword_27CF27678;
  if (!qword_27CF27678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27678);
  }

  return result;
}

unint64_t sub_2202AA63C()
{
  result = qword_27CF27680;
  if (!qword_27CF27680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27680);
  }

  return result;
}

unint64_t sub_2202AA694()
{
  result = qword_27CF27688;
  if (!qword_27CF27688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27688);
  }

  return result;
}

uint64_t WatchlistSummaryData.watchlistSummary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2202AA768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000220390F30 == a2)
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

uint64_t sub_2202AA7FC(uint64_t a1)
{
  v2 = sub_2202AAA1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202AA838(uint64_t a1)
{
  v2 = sub_2202AAA1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchlistSummaryData.encode(to:)(void *a1)
{
  sub_2202AAC90(0, &qword_281261C08, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AAA1C();

  sub_220370168();
  v10[1] = v8;
  sub_2202AAA70();
  sub_2202AACF4(&qword_281261F30, sub_22026A0E0, MEMORY[0x277D83948]);
  sub_22036FFF8();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202AAA1C()
{
  result = qword_281263B18;
  if (!qword_281263B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B18);
  }

  return result;
}

void sub_2202AAA70()
{
  if (!qword_281261F38)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261F38);
    }
  }
}

uint64_t WatchlistSummaryData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2202AAC90(0, &qword_281261DA0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AAA1C();
  sub_220370148();
  if (!v2)
  {
    sub_2202AAA70();
    sub_2202AACF4(&qword_281261F28, sub_22026A088, MEMORY[0x277D83978]);
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202AAC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202AAA1C();
    v7 = a3(a1, &type metadata for WatchlistSummaryData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202AACF4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2202AAA70();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2202AAD64()
{
  result = qword_281263AF0;
  if (!qword_281263AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263AF0);
  }

  return result;
}

unint64_t sub_2202AADBC()
{
  result = qword_281263AF8;
  if (!qword_281263AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263AF8);
  }

  return result;
}

unint64_t sub_2202AAE64()
{
  result = qword_27CF27690;
  if (!qword_27CF27690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27690);
  }

  return result;
}

unint64_t sub_2202AAEBC()
{
  result = qword_281263B08;
  if (!qword_281263B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B08);
  }

  return result;
}

unint64_t sub_2202AAF14()
{
  result = qword_281263B10;
  if (!qword_281263B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263B10);
  }

  return result;
}

StocksAnalytics::PaidSubscriberToSourceChannelType_optional __swiftcall PaidSubscriberToSourceChannelType.init(rawValue:)(Swift::String rawValue)
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

uint64_t PaidSubscriberToSourceChannelType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C61697274;
  if (*v0 != 2)
  {
    v2 = 1684627824;
  }

  if (*v0)
  {
    v1 = 1701147238;
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

unint64_t sub_2202AB038()
{
  result = qword_27CF27698;
  if (!qword_27CF27698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27698);
  }

  return result;
}

uint64_t sub_2202AB08C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202AB138(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202AB1D0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202AB284(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE500000000000000;
  v5 = 0x6C61697274;
  if (*v1 != 2)
  {
    v5 = 1684627824;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1701147238;
    v2 = 0xE400000000000000;
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

unint64_t sub_2202AB3AC()
{
  result = qword_281262870;
  if (!qword_281262870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262870);
  }

  return result;
}

double sub_2202AB400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a8@<X8>)
{
  v84 = a4;
  v85 = a5;
  v89 = a2;
  v90 = a3;
  v95 = a8;
  v9 = sub_22036E5D8();
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22036E468();
  v93 = *(v11 - 8);
  v94 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v91 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v75 - v14;
  v96 = type metadata accessor for MediaEngageEvent.Model(0);
  MEMORY[0x28223BE20](v96);
  v97 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AC2B4(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22036ED58();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v75 - v21;
  sub_2202AC30C(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19);
  v28 = swift_dynamicCast();
  v29 = *(v25 + 56);
  if (!v28)
  {
    v29(v18, 1, 1, v24);
    sub_2202AC3E8(v18, sub_2202AC2B4);
    sub_220287CC4();
    swift_allocError();
    swift_willThrow();
    return result;
  }

  v29(v18, 0, 1, v24);
  (*(v25 + 32))(v27, v18, v24);
  v30 = sub_22036ED28();
  v31 = v98;
  v32 = sub_22036F1F8();
  if (v31)
  {
    (*(v25 + 8))(v27, v24);

    return result;
  }

  v35 = v33;
  v36 = v32;

  sub_22036E3C8();
  swift_allocObject();
  sub_22036E3B8();
  sub_2202AC3A0(&qword_27CF276A8, type metadata accessor for MediaEngageEvent.Model, &protocol conformance descriptor for MediaEngageEvent.Model);
  v37 = v96;
  v38 = v97;
  sub_22036E3A8();
  v98 = 0;
  v82 = v36;
  v83 = v35;

  v39 = v38 + v37[6];
  v40 = *(v39 + 48);
  v110 = *(v39 + 32);
  v111 = v40;
  v112 = *(v39 + 64);
  v41 = *(v39 + 16);
  v109[0] = *v39;
  v109[1] = v41;
  v108 = v112;
  v106 = v110;
  v107 = v40;
  v104 = v109[0];
  v105 = v41;
  v42 = (v38 + v37[9]);
  v43 = *v42;
  v44 = *(v42 + 1);
  v45 = *(v42 + 2);
  v46 = *(v42 + 6);
  v47 = v42[28];
  v48 = v38 + v37[10];
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = *(v48 + 12);
  v52 = *(v48 + 16);
  if (((1 << v43) & 0x2D) != 0)
  {
    sub_22022ECDC(v109, &v99);
LABEL_7:
    (*(v25 + 8))(v27, v24);
    sub_2202A6560(v82, v83);
    sub_22022ED14(v109);
    sub_2202AC3E8(v38, type metadata accessor for MediaEngageEvent.Model);
    result = 0.0;
    v53 = v95;
    *v95 = 0u;
    v53[1] = 0u;
    v53[2] = 0u;
    v53[3] = 0u;
    v53[4] = 0u;
    v53[5] = 0u;
    v53[6] = 0u;
    *(v53 + 14) = 0;
    return result;
  }

  if (*(v48 + 8) <= 3u)
  {
    if (*(v48 + 8) > 1u)
    {
      v77 = *v48;
      v80 = v45;
      v81 = v44;
      v79 = v46;
      v78 = v47;
      v76 = v52;
      v75 = v51;
    }

    else
    {
      if (*(v48 + 8))
      {
        sub_22022ECDC(v109, &v99);

        goto LABEL_7;
      }

      v75 = *(v48 + 12);
      v76 = v52;
      v77 = v49;
      v78 = v47;
      v79 = v46;
      v80 = v45;
      v81 = v44;
    }
  }

  else
  {
    v80 = v45;
    v81 = v44;
    v79 = v46;
    v78 = v47;
    v77 = v49;
    v76 = v52;
    v75 = v51;
  }

  v54 = sub_220370048();
  sub_22022ECDC(v109, &v99);

  if (v54)
  {
    goto LABEL_7;
  }

  v55 = v92;
  sub_22036E458();
  (*(v93 + 16))(v91, v55, v94);
  v56 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
  v58 = v56[2];
  v57 = v56[3];
  if (v58 >= v57 >> 1)
  {
    v56 = sub_220287E28((v57 > 1), v58 + 1, 1, v56);
  }

  v56[2] = v58 + 1;
  v59 = v93;
  v60 = v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58;
  v61 = v94;
  (*(v93 + 32))(v60, v91, v94);
  v116 = v56;
  v62 = (v97 + *(v96 + 56));
  v63 = v62[1];
  v113 = *v62;
  v114 = v63;
  v115 = *(v62 + 16);
  v64 = sub_2202A6614();
  sub_2202A5E38(v64);
  v65 = sub_2202ABDA4(v77, v50);
  sub_2202A5E38(v65);
  LOBYTE(v99) = v78;
  v66 = sub_2202A5F64(v43, v81, v80, v79 | (v78 << 32));
  sub_2202A5E38(v66);
  v67 = v86;
  sub_22036E5C8();
  v68 = sub_22036E5B8();
  v70 = v69;
  sub_2202A6560(v82, v83);
  (*(v87 + 8))(v67, v88);
  (*(v59 + 8))(v92, v61);
  (*(v25 + 8))(v27, v24);
  v101 = v106;
  v102 = v107;
  LODWORD(v103) = v108;
  v99 = v104;
  v100 = v105;
  v71 = v90;

  sub_2202AC3E8(v97, type metadata accessor for MediaEngageEvent.Model);
  v72 = v99;
  v73 = v95;
  *(v95 + 24) = v100;
  result = *&v101;
  v74 = v102;
  *(v73 + 40) = v101;
  *(v73 + 56) = v74;
  *v73 = v116;
  *(v73 + 9) = v103;
  *(v73 + 8) = v72;
  *(v73 + 80) = 2;
  *(v73 + 11) = v89;
  *(v73 + 12) = v71;
  *(v73 + 13) = v68;
  *(v73 + 14) = v70;
  return result;
}

void *sub_2202ABDA4(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_22036E468();
  v42 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v41 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - v25;
  v27 = a2;
  v28 = MEMORY[0x277D84F90];
  if (v27 > 2)
  {
    if ((v27 - 5) >= 4)
    {
      v41 = v3;
      if (v27 == 3)
      {
        sub_22036E458();
        (*(v42 + 16))(v6, v9, v3);
        v28 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
        v32 = v28[2];
        v34 = v28[3];
        v33 = v32 + 1;
        if (v32 >= v34 >> 1)
        {
          v28 = sub_220287E28((v34 > 1), v32 + 1, 1, v28);
        }

        v26 = v9;
        v24 = v6;
        v29 = v42;
      }

      else
      {
        sub_22036E458();
        v29 = v42;
        (*(v42 + 16))(v12, v15, v3);
        v37 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
        v28 = v37;
        v32 = v37[2];
        v38 = v37[3];
        if (v32 >= v38 >> 1)
        {
          v28 = sub_220287E28((v38 > 1), v32 + 1, 1, v37);
        }

        v26 = v15;
        v24 = v12;
        v33 = v32 + 1;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (!v27)
    {
      sub_22036E458();
      v29 = v42;
      v35 = *(v42 + 16);
      v41 = v3;
      v35(v24, v26, v3);
      v28 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = v28[2];
      v36 = v28[3];
      v33 = v32 + 1;
      if (v32 >= v36 >> 1)
      {
        v28 = sub_220287E28((v36 > 1), v32 + 1, 1, v28);
      }

      goto LABEL_18;
    }

    if (v27 != 1)
    {
      sub_22036E458();
      v29 = v42;
      v30 = *(v42 + 16);
      v41 = v3;
      v30(v18, v21, v3);
      v28 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = v28[2];
      v31 = v28[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v28 = sub_220287E28((v31 > 1), v32 + 1, 1, v28);
      }

      v26 = v21;
      v24 = v18;
LABEL_18:
      v39 = v41;
      (*(v29 + 8))(v26, v41);
      v28[2] = v33;
      (*(v29 + 32))(v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, v24, v39);
    }
  }

  return v28;
}

void sub_2202AC2B4(uint64_t a1)
{
  if (!qword_27CF276A0)
  {
    sub_2202AC30C(255);
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF276A0);
    }
  }
}

void sub_2202AC30C(uint64_t a1)
{
  if (!qword_2812668D0)
  {
    type metadata accessor for MediaEngageEvent(255);
    sub_2202AC3A0(&qword_2812652B0, type metadata accessor for MediaEngageEvent, &protocol conformance descriptor for MediaEngageEvent);
    v1 = sub_22036ED58();
    if (!v2)
    {
      atomic_store(v1, &qword_2812668D0);
    }
  }
}

uint64_t sub_2202AC3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2202AC3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall ExternalAnalyticsData.init(externalAnalyticsEventType:externalAnalyticsID:externalAnalyticsEventUUID:)(StocksAnalytics::ExternalAnalyticsData *__return_ptr retstr, StocksAnalytics::ExternalAnalyticsEventType externalAnalyticsEventType, Swift::String externalAnalyticsID, Swift::String externalAnalyticsEventUUID)
{
  retstr->externalAnalyticsEventType = *externalAnalyticsEventType;
  retstr->externalAnalyticsID = externalAnalyticsID;
  retstr->externalAnalyticsEventUUID = externalAnalyticsEventUUID;
}

uint64_t ExternalAnalyticsData.externalAnalyticsID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ExternalAnalyticsData.externalAnalyticsID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExternalAnalyticsData.externalAnalyticsEventUUID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ExternalAnalyticsData.externalAnalyticsEventUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_2202AC5AC()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_2202AC600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202ACEAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202AC628(uint64_t a1)
{
  v2 = sub_2202AC860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202AC664(uint64_t a1)
{
  v2 = sub_2202AC860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExternalAnalyticsData.encode(to:)(void *a1)
{
  sub_2202ACB5C(0, &qword_27CF276B0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[2] = *(v1 + 2);
  v13[3] = v10;
  v11 = *(v1 + 3);
  v13[0] = *(v1 + 4);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AC860();
  sub_220370168();
  v17 = v9;
  v16 = 0;
  sub_2202AC8B4();
  sub_22036FFF8();
  if (!v2)
  {
    v15 = 1;
    sub_22036FFB8();
    v14 = 2;
    sub_22036FFB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2202AC860()
{
  result = qword_27CF276B8;
  if (!qword_27CF276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276B8);
  }

  return result;
}

unint64_t sub_2202AC8B4()
{
  result = qword_27CF276C0;
  if (!qword_27CF276C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276C0);
  }

  return result;
}

uint64_t ExternalAnalyticsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202ACB5C(0, &qword_27CF276C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AC860();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_2202ACBC0();
  sub_22036FF28();
  v10 = v25;
  v23 = 1;
  v11 = sub_22036FEE8();
  v13 = v12;
  v21 = v11;
  v22 = 2;
  v14 = sub_22036FEE8();
  v16 = v15;
  v17 = *(v7 + 8);
  v20 = v14;
  v17(v9, v6);
  *a2 = v10;
  v18 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v13;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202ACB5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202AC860();
    v7 = a3(a1, &type metadata for ExternalAnalyticsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202ACBC0()
{
  result = qword_27CF276D0;
  if (!qword_27CF276D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276D0);
  }

  return result;
}

unint64_t sub_2202ACC18()
{
  result = qword_27CF276D8;
  if (!qword_27CF276D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276D8);
  }

  return result;
}

unint64_t sub_2202ACC70()
{
  result = qword_27CF276E0;
  if (!qword_27CF276E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276E0);
  }

  return result;
}

uint64_t sub_2202ACCF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2202ACD3C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2202ACDA8()
{
  result = qword_27CF276E8;
  if (!qword_27CF276E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276E8);
  }

  return result;
}

unint64_t sub_2202ACE00()
{
  result = qword_27CF276F0;
  if (!qword_27CF276F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276F0);
  }

  return result;
}

unint64_t sub_2202ACE58()
{
  result = qword_27CF276F8;
  if (!qword_27CF276F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF276F8);
  }

  return result;
}

uint64_t sub_2202ACEAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000220390F90 == a2 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390FB0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220390FD0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_220370048();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

StocksAnalytics::MediaPlayMethod_optional __swiftcall MediaPlayMethod.init(rawValue:)(Swift::String rawValue)
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

uint64_t MediaPlayMethod.rawValue.getter()
{
  v1 = 0x79616C706F747561;
  if (*v0 != 1)
  {
    v1 = 0x7474754279616C70;
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

uint64_t sub_2202AD098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v4 = 0x7474754279616C70;
    v3 = 0xEF73736572506E6FLL;
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

  v7 = 0xE800000000000000;
  v8 = 0x79616C706F747561;
  if (*a2 != 1)
  {
    v8 = 0x7474754279616C70;
    v7 = 0xEF73736572506E6FLL;
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

unint64_t sub_2202AD1B8()
{
  result = qword_27CF27700;
  if (!qword_27CF27700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27700);
  }

  return result;
}

uint64_t sub_2202AD20C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202AD2BC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202AD358(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202AD410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79616C706F747561;
  if (v2 != 1)
  {
    v5 = 0x7474754279616C70;
    v4 = 0xEF73736572506E6FLL;
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

unint64_t sub_2202AD53C()
{
  result = qword_27CF27708;
  if (!qword_27CF27708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27708);
  }

  return result;
}

StocksAnalytics::GroupType_optional __swiftcall GroupType.init(rawValue:)(Swift::String rawValue)
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

uint64_t GroupType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x646574616C6572;
  if (v1 != 5)
  {
    v3 = 25697;
  }

  v4 = 0x6C6F626D7973;
  if (v1 != 3)
  {
    v4 = 0x6D6F724665726F6DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64657461727563;
  if (v1 != 1)
  {
    v5 = 0x69726F7453706F74;
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

unint64_t sub_2202AD6CC()
{
  result = qword_27CF27710;
  if (!qword_27CF27710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27710);
  }

  return result;
}

uint64_t sub_2202AD72C(uint64_t a1)
{
  sub_22036FB08();
}

void sub_2202AD844(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x646574616C6572;
  if (v2 != 5)
  {
    v6 = 25697;
    v5 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C6F626D7973;
  if (v2 != 3)
  {
    v8 = 0x6D6F724665726F6DLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x64657461727563;
  if (v2 != 1)
  {
    v10 = 0x69726F7453706F74;
    v9 = 0xEA00000000007365;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_2202AD9D8()
{
  result = qword_281262038;
  if (!qword_281262038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262038);
  }

  return result;
}

uint64_t sub_2202ADAF4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281265060);
  __swift_project_value_buffer(v0, qword_281265060);
  return sub_22036F108();
}

uint64_t TipExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TipExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 24);
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 24);
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 28);
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 28);
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.symbolData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 32);
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TipExposureEvent.symbolData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 32);
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.tipData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 36);
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC, &type metadata for TipData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202AE2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

unint64_t sub_2202AE368()
{
  result = qword_281262270;
  if (!qword_281262270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262270);
  }

  return result;
}

unint64_t sub_2202AE3BC()
{
  result = qword_281262278;
  if (!qword_281262278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262278);
  }

  return result;
}

uint64_t TipExposureEvent.tipData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipExposureEvent(0) + 36);
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC, &type metadata for TipData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TipExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC, &type metadata for TipData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t sub_2202AE80C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t TipExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TipExposureEvent.Model(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t TipExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TipExposureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

void TipExposureEvent.Model.symbolData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TipExposureEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_2202AE9B0(v4, v5, v6, v7, v8);
}

void sub_2202AE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t TipExposureEvent.Model.tipData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TipExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 TipExposureEvent.Model.init(eventData:timedData:feedData:viewData:symbolData:tipData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v11 = *(a3 + 2);
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 8);
  v15 = *(a5 + 32);
  v16 = *a6;
  v17 = sub_22036F388();
  v25 = *(a5 + 16);
  v26 = *a5;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for TipExposureEvent.Model(0);
  v19 = v18[5];
  v20 = sub_22036F3C8();
  (*(*(v20 - 8) + 32))(a7 + v19, a2, v20);
  v21 = a7 + v18[6];
  *v21 = v27;
  *(v21 + 16) = v11;
  v22 = a7 + v18[7];
  *v22 = v12;
  *(v22 + 8) = v13;
  *(v22 + 16) = v14;
  v23 = a7 + v18[8];
  result = v26;
  *v23 = v26;
  *(v23 + 16) = v25;
  *(v23 + 32) = v15;
  *(a7 + v18[9]) = v16;
  return result;
}

uint64_t sub_2202AEB68()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614477656976;
  v4 = 0x61446C6F626D7973;
  if (v1 != 4)
  {
    v4 = 0x61746144706974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_2202AEC28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202B0058(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202AEC50(uint64_t a1)
{
  v2 = sub_2202AF080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202AEC8C(uint64_t a1)
{
  v2 = sub_2202AF080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TipExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202AF798(0, &qword_27CF27718, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AF080();
  sub_220370168();
  LOBYTE(v22) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for TipExposureEvent.Model(0);
    LOBYTE(v22) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = *(v11 + 2);
    v22 = *v11;
    v23 = v12;
    v26 = 2;
    sub_2201FBD1C();

    sub_22036FF88();

    v13 = (v3 + v10[7]);
    v14 = *v13;
    v15 = v13[1];
    LOWORD(v13) = *(v13 + 8);
    *&v22 = v14;
    *(&v22 + 1) = v15;
    LOWORD(v23) = v13;
    v26 = 3;
    sub_220202110();

    sub_22036FFF8();

    v16 = (v3 + v10[8]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    *&v22 = *v16;
    *(&v22 + 1) = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = 4;
    sub_2202AE9B0(v22, v17, v18, v19, v20);
    sub_220230C50();
    sub_22036FF88();
    sub_2202AF0D4(v22, *(&v22 + 1), v23, v24, v25);
    LOBYTE(v22) = *(v3 + v10[9]);
    v26 = 5;
    sub_2202AE3BC();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202AF080()
{
  result = qword_27CF27720;
  if (!qword_27CF27720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27720);
  }

  return result;
}