void sub_2202AF0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void TipExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_22036F3C8();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F388();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202AF798(0, &qword_27CF27728, MEMORY[0x277D844C8]);
  v39 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TipExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202AF080();
  v38 = v10;
  v14 = v40;
  sub_220370148();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v5;
    v40 = a1;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    LOBYTE(v41) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    v19 = *(v33 + 32);
    v20 = v37;
    v37 = v6;
    v19(v13, v20, v6);
    LOBYTE(v41) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    sub_22036FF28();
    (*(v17 + 32))(&v13[v11[5]], v15, v18);
    v44 = 2;
    sub_2201FBCC4();
    v31 = 0;
    sub_22036FEB8();
    v21 = v13;
    v22 = v42;
    v23 = &v13[v11[6]];
    *v23 = v41;
    *(v23 + 2) = v22;
    v44 = 3;
    sub_2202020B8();
    sub_22036FF28();
    v24 = v40;
    v25 = *(&v41 + 1);
    v26 = v42;
    v27 = v21 + v11[7];
    *v27 = v41;
    *(v27 + 8) = v25;
    *(v27 + 16) = v26;
    v44 = 4;
    sub_220230BFC();
    sub_22036FEB8();
    v28 = v43;
    v29 = v21 + v11[8];
    v30 = v42;
    *v29 = v41;
    *(v29 + 16) = v30;
    *(v29 + 32) = v28;
    v44 = 5;
    sub_2202AE368();
    sub_22036FF28();
    (*(v16 + 8))(v38, v39);
    *(v21 + v11[9]) = v41;
    sub_2202AF7FC(v21, v32);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_2202AF860(v21);
  }
}

void sub_2202AF798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202AF080();
    v7 = a3(a1, &type metadata for TipExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202AF7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202AF860(uint64_t a1)
{
  v2 = type metadata accessor for TipExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202AF994@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_2202AE2EC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_2202AE2EC(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_2202AE2EC(0, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_2202AE2EC(0, &qword_281266738, sub_2202AE368, sub_2202AE3BC, &type metadata for TipData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_2202AFC70(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202AE2EC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_2202AE2EC(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_2202AE2EC(319, &qword_281266870, sub_220230BFC, sub_220230C50, &type metadata for SymbolData);
          if (v5 <= 0x3F)
          {
            sub_2202AE2EC(319, &qword_281266738, sub_2202AE368, sub_2202AE3BC, &type metadata for TipData);
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

void sub_2202AFE5C(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF27740, &type metadata for SymbolData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2202AFF54()
{
  result = qword_27CF27748;
  if (!qword_27CF27748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27748);
  }

  return result;
}

unint64_t sub_2202AFFAC()
{
  result = qword_27CF27750;
  if (!qword_27CF27750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27750);
  }

  return result;
}

unint64_t sub_2202B0004()
{
  result = qword_27CF27758;
  if (!qword_27CF27758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27758);
  }

  return result;
}

uint64_t sub_2202B0058(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61446C6F626D7973 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746144706974 && a2 == 0xE700000000000000)
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

uint64_t sub_2202B0334()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27790);
  __swift_project_value_buffer(v0, qword_27CF27790);
  return sub_22036F108();
}

uint64_t NonNewsArticleExternalViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleExternalViewEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 20);
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 20);
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 24);
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 24);
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 28);
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 28);
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 32);
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleExternalViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 32);
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 36);
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202B0BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t NonNewsArticleExternalViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleExternalViewEvent(0) + 36);
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleExternalViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleExternalViewEvent(0);
  v5 = v4[5];
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v8, v13);
  v14 = v4[9];
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v8, v15);
}

uint64_t NonNewsArticleExternalViewEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleExternalViewEvent.Model(0) + 20));
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

uint64_t NonNewsArticleExternalViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsArticleExternalViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsArticleExternalViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NonNewsArticleExternalViewEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

void NonNewsArticleExternalViewEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleExternalViewEvent.Model(0) + 36));
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

__n128 NonNewsArticleExternalViewEvent.Model.init(eventData:nonNewsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a2[1];
  v28 = *a2;
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *a3;
  v13 = *(a3 + 4);
  v14 = *a4;
  v15 = *(a4 + 4);
  v29 = *a5;
  v16 = *(a5 + 2);
  v30 = *(a6 + 40);
  v31 = *(a6 + 32);
  v17 = sub_22036F388();
  v25 = *(a6 + 16);
  v26 = *a6;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v28;
  *(v19 + 16) = v27;
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  v20 = a7 + v18[6];
  *v20 = v12;
  *(v20 + 4) = v13;
  v21 = a7 + v18[7];
  *v21 = v14;
  *(v21 + 4) = v15;
  v22 = a7 + v18[8];
  *v22 = v29;
  *(v22 + 16) = v16;
  v23 = a7 + v18[9];
  result = v26;
  *v23 = v26;
  *(v23 + 16) = v25;
  *(v23 + 32) = v31;
  *(v23 + 40) = v30;
  return result;
}

unint64_t sub_2202B134C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000013;
  v4 = 0x6174614464656566;
  if (v1 != 4)
  {
    v4 = 0x74614470756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_2202B1414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202B273C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202B143C(uint64_t a1)
{
  v2 = sub_2202B187C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B1478(uint64_t a1)
{
  v2 = sub_2202B187C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleExternalViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202B1DE4(0, &qword_27CF277A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B187C();
  sub_220370168();
  LOBYTE(v30) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    *&v30 = *v11;
    *(&v30 + 1) = v12;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v34 = v16;
    v35 = 1;
    sub_22026C27C();

    sub_22036FFF8();

    v17 = (v3 + v10[6]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    LODWORD(v30) = v18;
    BYTE4(v30) = v17;
    v35 = 2;
    sub_2202760D8();
    sub_22036FF88();
    v19 = (v3 + v10[7]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LODWORD(v30) = v20;
    BYTE4(v30) = v19;
    v35 = 3;
    sub_220276330();
    sub_22036FF88();
    v21 = (v3 + v10[8]);
    v22 = *(v21 + 2);
    v30 = *v21;
    v31 = v22;
    v35 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v23 = (v3 + v10[9]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    v28 = v23[5];
    *&v30 = *v23;
    *(&v30 + 1) = v24;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v35 = 5;
    sub_22023846C(v30, v24, v25, v26, v27, v28);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v30, *(&v30 + 1), v31, v32, v33, v34);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202B187C()
{
  result = qword_27CF277B0;
  if (!qword_27CF277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277B0);
  }

  return result;
}

uint64_t NonNewsArticleExternalViewEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_22036F388();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202B1DE4(0, &qword_27CF277B8, MEMORY[0x277D844C8]);
  v33 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B187C();
  v32 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v14 = v29;
  v13 = v30;
  LOBYTE(v34) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v31;
  sub_22036FF28();
  (*(v13 + 32))(v12, v15, v4);
  v37 = 1;
  sub_22026C224();
  sub_22036FF28();
  v16 = v35;
  v17 = v36;
  v18 = (v12 + v9[5]);
  *v18 = v34;
  v18[1] = v16;
  v18[2] = v17;
  v37 = 2;
  sub_220276084();
  v31 = 0;
  sub_22036FEB8();
  v19 = BYTE4(v34);
  v20 = v12 + v9[6];
  *v20 = v34;
  *(v20 + 4) = v19;
  v37 = 3;
  sub_2202762DC();
  sub_22036FEB8();
  v21 = BYTE4(v34);
  v22 = v12 + v9[7];
  *v22 = v34;
  *(v22 + 4) = v21;
  v37 = 4;
  sub_2201FBCC4();
  sub_22036FEB8();
  v23 = v35;
  v24 = v12 + v9[8];
  *v24 = v34;
  *(v24 + 16) = v23;
  v37 = 5;
  sub_220236C88();
  sub_22036FEB8();
  (*(v14 + 8))(v32, v33);
  v25 = (v12 + v9[9]);
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  v25[2] = v36;
  sub_2202B1E48(v12, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202B1EAC(v12);
}

void sub_2202B1DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B187C();
    v7 = a3(a1, &type metadata for NonNewsArticleExternalViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B1E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B1EAC(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleExternalViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202B1FE0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202B0BEC(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_2202B0BEC(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_2202B0BEC(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_2202B0BEC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v9, v14);
  v15 = a1[9];
  sub_2202B0BEC(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v9, v16);
}

void sub_2202B22EC(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202B0BEC(319, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_2202B0BEC(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
      if (v3 <= 0x3F)
      {
        sub_2202B0BEC(319, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
        if (v4 <= 0x3F)
        {
          sub_2202B0BEC(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_2202B0BEC(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
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

void sub_2202B2510(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_2812652B8, &type metadata for FeedPositionData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812644F0, &type metadata for InGroupPositionData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2202B2638()
{
  result = qword_27CF277E0;
  if (!qword_27CF277E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277E0);
  }

  return result;
}

unint64_t sub_2202B2690()
{
  result = qword_27CF277E8;
  if (!qword_27CF277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277E8);
  }

  return result;
}

unint64_t sub_2202B26E8()
{
  result = qword_27CF277F0;
  if (!qword_27CF277F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF277F0);
  }

  return result;
}

uint64_t sub_2202B273C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390A60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
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

uint64_t sub_2202B2A14()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27828);
  __swift_project_value_buffer(v0, qword_27CF27828);
  return sub_22036F108();
}

uint64_t ANFComponentExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ANFComponentExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 24);
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ANFComponentExposureEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 28);
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202B305C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ANFComponentExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ANFComponentExposureEvent(0) + 32);
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ANFComponentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ANFComponentExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

uint64_t sub_2202B3448@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ANFComponentExposureEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 24);
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

uint64_t ANFComponentExposureEvent.Model.anfComponentData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ANFComponentExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ANFComponentExposureEvent.Model(0) + 32));
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

__n128 ANFComponentExposureEvent.Model.init(eventData:timedData:newsArticleData:anfComponentData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v26 = *a5;
  v12 = a5[1].n128_u64[1];
  v25 = a5[1].n128_u64[0];
  v13 = a5[2].n128_u8[0];
  v14 = a5[2].n128_u8[1];
  v15 = sub_22036F388();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  v17 = v16[5];
  v18 = sub_22036F3C8();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v19 = a6 + v16[6];
  v20 = *(a3 + 48);
  *(v19 + 32) = *(a3 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a3 + 64);
  v21 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 16) = v21;
  v22 = (a6 + v16[7]);
  *v22 = v10;
  v22[1] = v11;
  v23 = (a6 + v16[8]);
  result = v26;
  *v23 = v26;
  v23[1].n128_u64[0] = v25;
  v23[1].n128_u64[1] = v12;
  v23[2].n128_u8[0] = v13;
  v23[2].n128_u8[1] = v14;
  return result;
}

uint64_t sub_2202B3750()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x697472417377656ELL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x446C656E6E616863;
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

uint64_t sub_2202B3804@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202B4AB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202B382C(uint64_t a1)
{
  v2 = sub_2202B3C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B3868(uint64_t a1)
{
  v2 = sub_2202B3C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202B4314(0, &qword_27CF27840, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B3C84();
  sub_220370168();
  LOBYTE(v40[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for ANFComponentExposureEvent.Model(0);
    v44 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v41 = *(v11 + 32);
    v42 = v13;
    v14 = *(v11 + 16);
    v40[0] = *v11;
    v40[1] = v14;
    v36 = v12;
    v37 = v41;
    v38 = *(v11 + 48);
    v43 = *(v11 + 64);
    v39 = *(v11 + 64);
    v35 = v40[0];
    v34 = 2;
    sub_22022ECDC(v40, v32);
    sub_22022EDA0();
    sub_22036FFF8();
    v32[2] = v37;
    v32[3] = v38;
    v33 = v39;
    v32[0] = v35;
    v32[1] = v36;
    sub_22022ED14(v32);
    v15 = (v3 + v10[7]);
    v16 = v15[1];
    v25 = *v15;
    v26 = v16;
    v31 = 3;
    sub_22024EDBC();

    sub_22036FFF8();

    v17 = (v3 + v10[8]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v17 + 32);
    LOBYTE(v17) = *(v17 + 33);
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v17;
    v31 = 4;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202B3C84()
{
  result = qword_27CF27848;
  if (!qword_27CF27848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27848);
  }

  return result;
}

uint64_t ANFComponentExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_22036F3C8();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202B4314(0, &qword_27CF27850, MEMORY[0x277D844C8]);
  v35 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B3C84();
  v34 = v9;
  v13 = v36;
  sub_220370148();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v36 = a1;
  v15 = v12;
  v16 = v30;
  v17 = v31;
  LOBYTE(v42) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  (*(v29 + 32))(v15, v33, v5);
  LOBYTE(v42) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_22036FF28();
  (*(v16 + 32))(v15 + v10[5], v14, v17);
  v48 = 2;
  sub_22022ED48();
  sub_22036FF28();
  v18 = v15 + v10[6];
  v19 = v45;
  *(v18 + 32) = v44;
  *(v18 + 48) = v19;
  *(v18 + 64) = v46;
  v20 = v43;
  *v18 = v42;
  *(v18 + 16) = v20;
  v47 = 3;
  sub_22024ED64();
  sub_22036FF28();
  *(v15 + v10[7]) = v37;
  v47 = 4;
  sub_220236A30();
  sub_22036FF28();
  (*(v32 + 8))(v34, v35);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v25 = v15 + v10[8];
  *v25 = v37;
  *(v25 + 16) = v21;
  *(v25 + 24) = v22;
  *(v25 + 32) = v23;
  *(v25 + 33) = v24;
  sub_2202B4378(v15, v28);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_2202B43DC(v15);
}

void sub_2202B4314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B3C84();
    v7 = a3(a1, &type metadata for ANFComponentExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B4378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B43DC(uint64_t a1)
{
  v2 = type metadata accessor for ANFComponentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202B4510@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202B305C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202B305C(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202B305C(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_2202B4760(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202B305C(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_2202B305C(319, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
        if (v4 <= 0x3F)
        {
          sub_2202B305C(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2202B48FC(uint64_t a1)
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

unint64_t sub_2202B49B0()
{
  result = qword_27CF27878;
  if (!qword_27CF27878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27878);
  }

  return result;
}

unint64_t sub_2202B4A08()
{
  result = qword_27CF27880;
  if (!qword_27CF27880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27880);
  }

  return result;
}

unint64_t sub_2202B4A60()
{
  result = qword_27CF27888;
  if (!qword_27CF27888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27888);
  }

  return result;
}

uint64_t sub_2202B4AB4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000010 && 0x8000000220390B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
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

StocksAnalytics::InterfaceOrientation_optional __swiftcall InterfaceOrientation.init(rawValue:)(Swift::String rawValue)
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

unint64_t InterfaceOrientation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x70616373646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x7469617274726F70;
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

unint64_t sub_2202B4DAC()
{
  result = qword_27CF27890;
  if (!qword_27CF27890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27890);
  }

  return result;
}

uint64_t sub_2202B4E00()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202B4F00(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202B4FEC(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202B522C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF278C8);
  __swift_project_value_buffer(v0, qword_27CF278C8);
  return sub_22036F108();
}

uint64_t SearchExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for SearchExposureEvent(0) + 20);
  sub_220230718(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t sub_2202B5568@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SearchExposureEvent.Model.init(eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SearchExposureEvent.Model(0) + 20);
  v8 = sub_22036F3C8();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_2202B56D4()
{
  if (*v0)
  {
    return 0x74614464656D6974;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_2202B570C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
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

uint64_t sub_2202B57F0(uint64_t a1)
{
  v2 = sub_2202B5A78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B582C(uint64_t a1)
{
  v2 = sub_2202B5A78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchExposureEvent.Model.encode(to:)(void *a1)
{
  sub_2202B5EFC(0, &qword_27CF278E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B5A78();
  sub_220370168();
  v9[15] = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v1)
  {
    type metadata accessor for SearchExposureEvent.Model(0);
    v9[14] = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202B5A78()
{
  result = qword_27CF278E8;
  if (!qword_27CF278E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF278E8);
  }

  return result;
}

uint64_t SearchExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  sub_2202B5EFC(0, &qword_27CF278F0, MEMORY[0x277D844C8]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SearchExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B5A78();
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
  sub_2202B5F60(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202B5FC4(v18);
}

void sub_2202B5EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B5A78();
    v7 = a3(a1, &type metadata for SearchExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B5F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B5FC4(uint64_t a1)
{
  v2 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202B60F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220230718(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_2202B6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2202B6514()
{
  result = qword_27CF27918;
  if (!qword_27CF27918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27918);
  }

  return result;
}

unint64_t sub_2202B656C()
{
  result = qword_27CF27920;
  if (!qword_27CF27920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27920);
  }

  return result;
}

unint64_t sub_2202B65C4()
{
  result = qword_27CF27928;
  if (!qword_27CF27928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27928);
  }

  return result;
}

uint64_t sub_2202B667C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x50596C6C6F726373 && a2 == 0xEF6E6F697469736FLL)
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

uint64_t sub_2202B670C(uint64_t a1)
{
  v2 = sub_2202B68CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B6748(uint64_t a1)
{
  v2 = sub_2202B68CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScrollStartData.encode(to:)(void *a1)
{
  sub_2202B6AA8(0, &qword_27CF27930, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B68CC();
  sub_220370168();
  sub_22036FFE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202B68CC()
{
  result = qword_27CF27938;
  if (!qword_27CF27938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27938);
  }

  return result;
}

uint64_t ScrollStartData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_2202B6AA8(0, &qword_27CF27940, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B68CC();
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

void sub_2202B6AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B68CC();
    v7 = a3(a1, &type metadata for ScrollStartData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202B6B2C(void *a1)
{
  sub_2202B6AA8(0, &qword_27CF27930, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B68CC();
  sub_220370168();
  sub_22036FFE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202B6C98()
{
  result = qword_27CF27948;
  if (!qword_27CF27948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27948);
  }

  return result;
}

unint64_t sub_2202B6CF0()
{
  result = qword_27CF27950;
  if (!qword_27CF27950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27950);
  }

  return result;
}

unint64_t sub_2202B6D48()
{
  result = qword_27CF27958;
  if (!qword_27CF27958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27958);
  }

  return result;
}

uint64_t VideoAdData.prerollUrl.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t VideoAdData.prerollUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t VideoAdData.init(duration:prerollUrl:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2202B6E68()
{
  if (*v0)
  {
    return 0x556C6C6F72657270;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_2202B6EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x556C6C6F72657270 && a2 == 0xEA00000000006C72)
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

uint64_t sub_2202B6F8C(uint64_t a1)
{
  v2 = sub_2202B7180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B6FC8(uint64_t a1)
{
  v2 = sub_2202B7180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdData.encode(to:)(void *a1)
{
  sub_2202B738C(0, &qword_27CF27960, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = *(v1 + 8);
  v11[0] = *(v1 + 16);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B7180();
  sub_220370168();
  v13 = 0;
  sub_220370008();
  if (!v2)
  {
    v12 = 1;
    sub_22036FFB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2202B7180()
{
  result = qword_27CF27968;
  if (!qword_27CF27968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27968);
  }

  return result;
}

uint64_t VideoAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202B738C(0, &qword_27CF27970, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B7180();
  sub_220370148();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_22036FF38();
    v16 = 1;
    v12 = sub_22036FEE8();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202B738C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B7180();
    v7 = a3(a1, &type metadata for VideoAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202B73F4()
{
  result = qword_27CF27978;
  if (!qword_27CF27978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27978);
  }

  return result;
}

unint64_t sub_2202B744C()
{
  result = qword_27CF27980;
  if (!qword_27CF27980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27980);
  }

  return result;
}

unint64_t sub_2202B74F4()
{
  result = qword_27CF27988;
  if (!qword_27CF27988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27988);
  }

  return result;
}

unint64_t sub_2202B754C()
{
  result = qword_27CF27990;
  if (!qword_27CF27990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27990);
  }

  return result;
}

unint64_t sub_2202B75A4()
{
  result = qword_27CF27998;
  if (!qword_27CF27998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27998);
  }

  return result;
}

uint64_t sub_2202B76C0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF279D0);
  __swift_project_value_buffer(v0, qword_27CF279D0);
  return sub_22036F108();
}

uint64_t HeartbeatEvent.heartbeatData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2202B77AC(0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_2202B77AC(uint64_t a1)
{
  if (!qword_27CF279E8)
  {
    type metadata accessor for HeartbeatData(255);
    sub_2201FE9DC(&qword_27CF279F0, &protocol conformance descriptor for HeartbeatData);
    sub_2201FE9DC(&qword_281265A40, &protocol conformance descriptor for HeartbeatData);
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF279E8);
    }
  }
}

uint64_t HeartbeatEvent.heartbeatData.setter(uint64_t a1)
{
  sub_2202B77AC(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeartbeatEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_2202B77AC(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2202B7964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202B79F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6165627472616568 && a2 == 0xED00006174614474)
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

uint64_t sub_2202B7A88(uint64_t a1)
{
  v2 = sub_2201FE5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B7AC4(uint64_t a1)
{
  v2 = sub_2201FE5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeartbeatEvent.Model.encode(to:)(void *a1)
{
  sub_2201FE384(0, &qword_281261CA8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FE5F8();
  sub_220370168();
  type metadata accessor for HeartbeatData(0);
  sub_2201FE9DC(&qword_281265A40, &protocol conformance descriptor for HeartbeatData);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t HeartbeatEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for HeartbeatData(0);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FE384(0, &qword_27CF279F8, MEMORY[0x277D844C8]);
  v7 = v6;
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for HeartbeatEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FE5F8();
  sub_220370148();
  if (!v2)
  {
    v13 = v17;
    sub_2201FE9DC(&qword_27CF279F0, &protocol conformance descriptor for HeartbeatData);
    v14 = v18;
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    sub_2202B7EFC(v14, v12, type metadata accessor for HeartbeatData);
    sub_2202B7EFC(v12, v16, type metadata accessor for HeartbeatEvent.Model);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2202B7EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2202B8024@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_2202B77AC(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

unint64_t sub_2202B8218()
{
  result = qword_27CF27A10;
  if (!qword_27CF27A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27A10);
  }

  return result;
}

uint64_t sub_2202B826C()
{
  v0 = sub_22036ED68();
  __swift_allocate_value_buffer(v0, qword_27CF27A18);
  v1 = __swift_project_value_buffer(v0, qword_27CF27A18);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_2202B8358()
{
  v0 = sub_22036F048();
  __swift_allocate_value_buffer(v0, qword_27CF27A30);
  v1 = __swift_project_value_buffer(v0, qword_27CF27A30);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_2202B8418()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27A48);
  __swift_project_value_buffer(v0, qword_27CF27A48);
  return sub_22036F108();
}

uint64_t VideoAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 20);
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 20);
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 24);
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 28);
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 32);
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 36);
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.adGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202B8E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t VideoAdImpressionEvent.adGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdImpressionEvent(0) + 40);
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdImpressionEvent(0);
  v5 = v4[5];
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v14, v17);
}

uint64_t VideoAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdImpressionEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 24));
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

uint64_t VideoAdImpressionEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t VideoAdImpressionEvent.Model.adGroupData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VideoAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

__n128 VideoAdImpressionEvent.Model.init(eventData:adUserData:channelData:videoAdData:adPlacementData:adFeedData:adGroupData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, int *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v25 = *a3;
  v12 = a3[1].n128_u64[0];
  v13 = a3[1].n128_u64[1];
  v14 = a3[2].n128_u8[0];
  v15 = a3[2].n128_u8[1];
  v16 = *a4;
  v17 = *(a4 + 1);
  v28 = *a5;
  v26 = *(a4 + 2);
  v27 = a5[1];
  v29 = *a6;
  v30 = *a7;
  v18 = sub_22036F388();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  v20 = (a8 + v19[5]);
  *v20 = v10;
  v20[1] = v11;
  v21 = (a8 + v19[6]);
  result = v25;
  *v21 = v25;
  v21[1].n128_u64[0] = v12;
  v21[1].n128_u64[1] = v13;
  v21[2].n128_u8[0] = v14;
  v21[2].n128_u8[1] = v15;
  v23 = a8 + v19[7];
  *v23 = v16;
  *(v23 + 8) = v17;
  *(v23 + 16) = v26;
  v24 = (a8 + v19[8]);
  *v24 = v28;
  v24[1] = v27;
  *(a8 + v19[9]) = v29;
  *(a8 + v19[10]) = v30;
  return result;
}

uint64_t sub_2202B966C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6144646565466461;
  if (v1 != 5)
  {
    v3 = 0x4470756F72476461;
  }

  v4 = 0x4464416F65646976;
  if (v1 != 3)
  {
    v4 = 0x6D6563616C506461;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6144726573556461;
  if (v1 != 1)
  {
    v5 = 0x446C656E6E616863;
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

uint64_t sub_2202B976C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202BAC10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202B9794(uint64_t a1)
{
  v2 = sub_2202B9BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202B97D0(uint64_t a1)
{
  v2 = sub_2202B9BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202BA21C(0, &qword_27CF27A68, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B9BEC();
  sub_220370168();
  LOBYTE(v26) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for VideoAdImpressionEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v26 = *v11;
    v27 = v12;
    v32 = 1;
    sub_2201F9420();

    sub_22036FFF8();

    v13 = (v3 + v10[6]);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = *(v13 + 32);
    LOBYTE(v13) = *(v13 + 33);
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v13;
    v32 = 2;
    sub_220236A84();

    sub_22036FFF8();

    v19 = v3 + v10[7];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    LODWORD(v26) = *v19;
    v27 = v20;
    v28 = v21;
    v32 = 3;
    sub_2202B744C();

    sub_22036FFF8();

    v23 = (v3 + v10[8]);
    v24 = v23[1];
    v26 = *v23;
    v27 = v24;
    v32 = 4;
    sub_220242D28();

    sub_22036FFF8();

    LOBYTE(v26) = *(v3 + v10[9]);
    v32 = 5;
    sub_220202B7C();
    sub_22036FF88();
    LOBYTE(v26) = *(v3 + v10[10]);
    v32 = 6;
    sub_2202438B4();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202B9BEC()
{
  result = qword_27CF27A70;
  if (!qword_27CF27A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27A70);
  }

  return result;
}

uint64_t VideoAdImpressionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_22036F388();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202BA21C(0, &qword_27CF27A78, MEMORY[0x277D844C8]);
  v32 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202B9BEC();
  v33 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v30;
  LOBYTE(v34) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v13 = v31;
  sub_22036FF28();
  (*(v29 + 32))(v11, v13, v4);
  v39 = 1;
  sub_2201F93C8();
  sub_22036FF28();
  v14 = *(&v34 + 1);
  v15 = &v11[v9[5]];
  *v15 = v34;
  *(v15 + 1) = v14;
  v39 = 2;
  sub_220236A30();
  sub_22036FF28();
  v16 = v35;
  v17 = v36;
  v18 = v37;
  v19 = v38;
  v20 = &v11[v9[6]];
  *v20 = v34;
  *(v20 + 2) = v16;
  *(v20 + 3) = v17;
  v20[32] = v18;
  v20[33] = v19;
  v39 = 3;
  sub_2202B73F4();
  sub_22036FF28();
  v21 = *(&v34 + 1);
  v22 = v35;
  v23 = &v11[v9[7]];
  *v23 = v34;
  *(v23 + 1) = v21;
  *(v23 + 2) = v22;
  v39 = 4;
  sub_220242CD4();
  sub_22036FF28();
  v24 = *(&v34 + 1);
  v25 = &v11[v9[8]];
  *v25 = v34;
  *(v25 + 1) = v24;
  v39 = 5;
  sub_220202B10();
  sub_22036FEB8();
  v11[v9[9]] = v34;
  v39 = 6;
  sub_220243860();
  sub_22036FEB8();
  (*(v12 + 8))(v33, v32);
  v11[v9[10]] = v34;
  sub_2202BA280(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202BA2E4(v11);
}

void sub_2202BA21C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202B9BEC();
    v7 = a3(a1, &type metadata for VideoAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202BA280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202BA2E4(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202BA418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202B8E80(0, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202B8E80(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202B8E80(0, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202B8E80(0, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_2202B8E80(0, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_2202B8E80(0, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v15, v18);
}

void sub_2202BA79C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202B8E80(319, &qword_281266880, sub_2201F93C8, sub_2201F9420, &type metadata for AdUserData);
    if (v2 <= 0x3F)
    {
      sub_2202B8E80(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_2202B8E80(319, &qword_27CF27A60, sub_2202B73F4, sub_2202B744C, &type metadata for VideoAdData);
        if (v4 <= 0x3F)
        {
          sub_2202B8E80(319, &qword_2812667F0, sub_220242CD4, sub_220242D28, &type metadata for AdPlacementData);
          if (v5 <= 0x3F)
          {
            sub_2202B8E80(319, &qword_281266890, sub_220202B10, sub_220202B7C, &type metadata for AdFeedData);
            if (v6 <= 0x3F)
            {
              sub_2202B8E80(319, &qword_281266868, sub_220243860, sub_2202438B4, &type metadata for AdGroupData);
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

void sub_2202BAA10(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26298, &type metadata for AdFeedData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF262A0, &type metadata for AdGroupData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2202BAB0C()
{
  result = qword_27CF27AA0;
  if (!qword_27CF27AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AA0);
  }

  return result;
}

unint64_t sub_2202BAB64()
{
  result = qword_27CF27AA8;
  if (!qword_27CF27AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AA8);
  }

  return result;
}

unint64_t sub_2202BABBC()
{
  result = qword_27CF27AB0;
  if (!qword_27CF27AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AB0);
  }

  return result;
}

uint64_t sub_2202BAC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4470756F72476461 && a2 == 0xEB00000000617461)
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

uint64_t PurchaseSessionData.purchaseSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseSessionData.purchaseSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2202BAF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000220390FF0 == a2)
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

uint64_t sub_2202BAFC0(uint64_t a1)
{
  v2 = sub_2202BB184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202BAFFC(uint64_t a1)
{
  v2 = sub_2202BB184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseSessionData.encode(to:)(void *a1)
{
  sub_2202BB35C(0, &qword_281261C30, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BB184();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202BB184()
{
  result = qword_2812644D8;
  if (!qword_2812644D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644D8);
  }

  return result;
}

uint64_t PurchaseSessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202BB35C(0, &qword_27CF27AB8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BB184();
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

void sub_2202BB35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202BB184();
    v7 = a3(a1, &type metadata for PurchaseSessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202BB3E0(void *a1)
{
  sub_2202BB35C(0, &qword_281261C30, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BB184();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2202BB550()
{
  result = qword_27CF27AC0;
  if (!qword_27CF27AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27AC0);
  }

  return result;
}

unint64_t sub_2202BB5A8()
{
  result = qword_2812644C8;
  if (!qword_2812644C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644C8);
  }

  return result;
}

unint64_t sub_2202BB600()
{
  result = qword_2812644D0;
  if (!qword_2812644D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644D0);
  }

  return result;
}

uint64_t sub_2202BB654()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC15StocksAnalytics25PrivacyValidationProvider_privacyValidation;
  v2 = sub_22036EF88();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2202BB6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15StocksAnalytics25PrivacyValidationProvider_privacyValidation;
  swift_beginAccess();
  v4 = sub_22036EF88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DenylistDescriptor.debugItem.getter()
{
  v0 = sub_22036F868();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22036EF98();
  *v3 = 0;
  v3[1] = 0;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D270], v0);
  return sub_22036F8B8();
}

uint64_t String.denylistDescriptorValueDebugItem.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_22036F868();
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = 0;
  v4[1] = 0;
  (*(v5 + 104))(v4, *MEMORY[0x277D6D270]);

  return sub_22036F8B8();
}

uint64_t sub_2202BB968(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22036EFB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2201F6A50(&qword_2812666D8, MEMORY[0x277CEAD88]);
  v33 = a2;
  v11 = sub_22036FA78();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2201F6A50(&qword_27CF27AC8, MEMORY[0x277CEAD90]);
      v21 = sub_22036FAB8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2202BBF5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2202BBC20(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22036EFB8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2202BCA08(0);
  result = sub_22036FD48();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2201F6A50(&qword_2812666D8, MEMORY[0x277CEAD88]);
      result = sub_22036FA78();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2202BBF5C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22036EFB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2202BBC20(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2202BC1D8();
      goto LABEL_12;
    }

    sub_2202BC400(v10 + 1);
  }

  v12 = *v3;
  sub_2201F6A50(&qword_2812666D8, MEMORY[0x277CEAD88]);
  v13 = sub_22036FA78();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2201F6A50(&qword_27CF27AC8, MEMORY[0x277CEAD90]);
      v21 = sub_22036FAB8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_220370088();
  __break(1u);
  return result;
}

void *sub_2202BC1D8()
{
  v1 = v0;
  v2 = sub_22036EFB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202BCA08(0);
  v6 = *v0;
  v7 = sub_22036FD38();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2202BC400(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22036EFB8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2202BCA08(0);
  v7 = sub_22036FD48();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2201F6A50(&qword_2812666D8, MEMORY[0x277CEAD88]);
      result = sub_22036FA78();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_2202BC6FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2202BC73C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2202BC71C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2202BC908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2202BC73C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2202BCA88(0);
  v10 = *(sub_22036EFB8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22036EFB8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2202BC908(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2202BCAE0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2202BCA08(uint64_t a1)
{
  if (!qword_27CF27AD0)
  {
    sub_22036EFB8();
    sub_2201F6A50(&qword_2812666D8, MEMORY[0x277CEAD88]);
    v1 = sub_22036FD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF27AD0);
    }
  }
}

void sub_2202BCA88(uint64_t a1)
{
  if (!qword_27CF27AD8)
  {
    sub_22036EFB8();
    v1 = sub_220370038();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF27AD8);
    }
  }
}

void sub_2202BCAE0()
{
  if (!qword_281261B08)
  {
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_281261B08);
    }
  }
}

uint64_t sub_2202BCBF8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27AE0);
  __swift_project_value_buffer(v0, qword_27CF27AE0);
  return sub_22036F108();
}

uint64_t SearchResultsReturnedEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchResultsReturnedEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchResultsReturnedEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.searchResultsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188, &type metadata for SearchResultsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202BCFA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t SearchResultsReturnedEvent.searchResultsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsReturnedEvent(0) + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188, &type metadata for SearchResultsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchResultsReturnedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchResultsReturnedEvent(0);
  v5 = *(v4 + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C, &type metadata for SearchData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188, &type metadata for SearchResultsData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SearchResultsReturnedEvent.Model.searchData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SearchResultsReturnedEvent.Model.searchResultsData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SearchResultsReturnedEvent.Model(0) + 24));
}

uint64_t SearchResultsReturnedEvent.Model.init(eventData:searchData:searchResultsData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = sub_22036F388();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  v11 = (a4 + *(result + 20));
  *v11 = v6;
  v11[1] = v7;
  *(a4 + *(result + 24)) = v8;
  return result;
}

unint64_t sub_2202BD3E8()
{
  v1 = 0x6144686372616573;
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

uint64_t sub_2202BD450@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202BE1C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202BD478(uint64_t a1)
{
  v2 = sub_2202BD738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202BD4B4(uint64_t a1)
{
  v2 = sub_2202BD738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsReturnedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202BDB64(0, &qword_27CF27AF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BD738();
  sub_220370168();
  LOBYTE(v16) = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[1];
    v16 = *v11;
    v17 = v12;
    v15 = 1;
    sub_220247C5C();

    sub_22036FFF8();

    v16 = *(v3 + *(v10 + 24));
    v15 = 2;
    sub_220248188();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202BD738()
{
  result = qword_27CF27B00;
  if (!qword_27CF27B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B00);
  }

  return result;
}

uint64_t SearchResultsReturnedEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_22036F388();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202BDB64(0, &qword_27CF27B08, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BD738();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = v9;
  v22 = v11;
  LOBYTE(v28) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v14 = v27;
  sub_22036FF28();
  (*(v12 + 32))(v22, v15, v4);
  v30 = 1;
  sub_220247C08();
  sub_22036FF28();
  v16 = v29;
  v17 = &v22[*(v21 + 20)];
  *v17 = v28;
  *(v17 + 1) = v16;
  v30 = 2;
  sub_220248134();
  sub_22036FF28();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  *&v22[*(v21 + 24)] = v28;
  sub_2202BDBC8(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202BDC2C(v18);
}

void sub_2202BDB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202BD738();
    v7 = a3(a1, &type metadata for SearchResultsReturnedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202BDBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202BDC2C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsReturnedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202BDD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202BCFA0(0, &qword_281266878, sub_220247C08, sub_220247C5C, &type metadata for SearchData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_2202BCFA0(0, &qword_2812667B0, sub_220248134, sub_220248188, &type metadata for SearchResultsData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_2202BDEF8(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202BCFA0(319, &qword_281266878, sub_220247C08, sub_220247C5C, &type metadata for SearchData);
    if (v2 <= 0x3F)
    {
      sub_2202BCFA0(319, &qword_2812667B0, sub_220248134, sub_220248188, &type metadata for SearchResultsData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2202BE02C(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202BE0C4()
{
  result = qword_27CF27B20;
  if (!qword_27CF27B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B20);
  }

  return result;
}

unint64_t sub_2202BE11C()
{
  result = qword_27CF27B28;
  if (!qword_27CF27B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B28);
  }

  return result;
}

unint64_t sub_2202BE174()
{
  result = qword_27CF27B30;
  if (!qword_27CF27B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B30);
  }

  return result;
}

uint64_t sub_2202BE1C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390490 == a2)
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

void *sub_2202BE2F8(void x0_0, uint64_t *a1)
{
  if (qword_281266A40 != -1)
  {
    swift_once();
  }

  sub_2201F50A0(&qword_2812654A0, a1, type metadata accessor for TrackerAssembly, &unk_22037EA60);
  return sub_22036EAC8();
}

uint64_t sub_2202BE3CC(void *a1, uint64_t *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F2B8();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BEB24(0, &qword_2812668E0, &protocolRef_AAEndpointType);
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_22036F158();
  sub_22036F0F8();
  v5 = sub_22036F0E8();
  if (qword_281266A50 != -1)
  {
    swift_once();
  }

  sub_2201F50A0(&qword_2812654A0, v4, type metadata accessor for TrackerAssembly, &unk_22037EA60);
  sub_22036EAC8();
  v6 = sub_22036F0D8();

  if (qword_2812669B8 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  v7 = sub_22036F0B8();

  if (qword_281266A00 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  sub_22036F0C8();

  return sub_22036F148();
}

void *sub_2202BE650(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80, MEMORY[0x277D696F0], 1);
  result = sub_22036F4B8();
  if (!v8[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F358();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266988, MEMORY[0x277CEAC68], 1);
  result = sub_22036F4B8();
  if (!v7[3])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_2812662E0, &protocol descriptor for ExternalAnalyticsPanelIdProviderType, 1);
  result = sub_22036F4B8();
  if (!v6[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, qword_2812662E8, &protocol descriptor for ExternalAnalyticsURLProviderType, 1);
  result = sub_22036F4B8();
  if (v5[3])
  {
    type metadata accessor for ExternalAnalyticsEventProcessor();
    v4 = swift_allocObject();
    v4[23] = sub_2203043C8(MEMORY[0x277D84F90]);
    v4[24] = 0;
    v4[25] = 0;
    v4[26] = 0;
    sub_2201F5DF4(v8, (v4 + 3));
    v4[2] = v3;
    sub_2201F5DF4(v7, (v4 + 8));
    sub_2201F5DF4(v6, (v4 + 13));
    sub_2201F5DF4(v5, (v4 + 18));

    sub_220301BF8();

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v4;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2202BE894@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22036EBB8();
  swift_allocObject();
  result = sub_22036EBA8();
  v4 = MEMORY[0x277CEAC70];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2202BE8EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ExternalAnalyticsPanelIdProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for ExternalAnalyticsPanelIdProvider;
  *a1 = result;
  return result;
}

uint64_t sub_2202BE934@<X0>(uint64_t *a1@<X8>)
{
  sub_2202BEB8C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22037EA40;
  started = type metadata accessor for AppSessionStartEventQueryItemsGenerator();
  v4 = swift_allocObject();
  *(v2 + 56) = started;
  *(v2 + 64) = &off_2833F4010;
  *(v2 + 32) = v4;
  ItemsGenerator = type metadata accessor for ArticleViewEventQueryItemsGenerator();
  v6 = swift_allocObject();
  *(v2 + 96) = ItemsGenerator;
  *(v2 + 104) = &off_2833F6648;
  *(v2 + 72) = v6;
  v7 = type metadata accessor for MediaEngageEventQueryItemsGenerator();
  v8 = swift_allocObject();
  *(v2 + 136) = v7;
  *(v2 + 144) = &off_2833F5928;
  *(v2 + 112) = v8;
  v9 = type metadata accessor for MediaEngageCompletedEventQueryItemsGenerator();
  v10 = swift_allocObject();
  *(v2 + 176) = v9;
  *(v2 + 184) = &off_2833F55C8;
  *(v2 + 152) = v10;
  v11 = type metadata accessor for ExternalAnalyticsURLProvider();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v11;
  a1[4] = &protocol witness table for ExternalAnalyticsURLProvider;
  *a1 = result;
  return result;
}

void sub_2202BEA4C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SessionObserver();
  v2 = sub_22036F4A8();
  if (v2)
  {
    v3 = v2;
    sub_2201F50A0(&qword_2812654D0, 255, type metadata accessor for SessionObserver, &protocol conformance descriptor for SessionObserver);
    sub_22036F698();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2202BEB24(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2202BEB8C(uint64_t a1)
{
  if (!qword_281261B10)
  {
    sub_2201F358C(255, &qword_2812662D8, &protocol descriptor for ExternalAnalyticsQueryItemsGeneratorType, 1);
    v1 = sub_220370038();
    if (!v2)
    {
      atomic_store(v1, &qword_281261B10);
    }
  }
}

uint64_t sub_2202BECC0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27B68);
  __swift_project_value_buffer(v0, qword_27CF27B68);
  return sub_22036F108();
}

uint64_t CustomItemExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CustomItemExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 24);
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.customItemData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC, &type metadata for CustomItemData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202BF158()
{
  result = qword_27CF27B88;
  if (!qword_27CF27B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B88);
  }

  return result;
}

unint64_t sub_2202BF1AC()
{
  result = qword_27CF27B90;
  if (!qword_27CF27B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27B90);
  }

  return result;
}

uint64_t CustomItemExposureEvent.customItemData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 28);
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC, &type metadata for CustomItemData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 32);
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 36);
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 40);
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CustomItemExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 44);
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202BFA70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t CustomItemExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomItemExposureEvent(0) + 48);
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CustomItemExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for CustomItemExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC, &type metadata for CustomItemData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v14, v21);
}

uint64_t sub_2202C0050@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t CustomItemExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t CustomItemExposureEvent.Model.customItemData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t CustomItemExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t CustomItemExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for CustomItemExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t CustomItemExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

void CustomItemExposureEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 44));
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

uint64_t CustomItemExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CustomItemExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 CustomItemExposureEvent.Model.init(eventData:timedData:viewData:customItemData:feedPositionData:inGroupPositionData:feedData:groupData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, int *a5@<X4>, int *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a3;
  v14 = a3[1];
  v16 = *(a3 + 8);
  v33 = *a4;
  v17 = *(a4 + 2);
  v18 = *(a4 + 3);
  v19 = *a5;
  v34 = *(a6 + 4);
  v35 = *a6;
  v38 = *a7;
  v36 = *(a7 + 2);
  v37 = *(a7 + 1);
  v39 = *(a8 + 40);
  v40 = *(a8 + 32);
  v42 = a10[1];
  v43 = *a10;
  v41 = *(a10 + 16);
  v20 = sub_22036F388();
  v31 = *(a8 + 16);
  v32 = *a8;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for CustomItemExposureEvent.Model(0);
  v22 = v21[5];
  v23 = sub_22036F3C8();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = a9 + v21[6];
  *v24 = v15;
  *(v24 + 8) = v14;
  *(v24 + 16) = v16;
  v25 = a9 + v21[7];
  *v25 = v33;
  *(v25 + 16) = v17;
  *(v25 + 24) = v18;
  *(a9 + v21[8]) = v19;
  v26 = a9 + v21[9];
  *v26 = v35;
  *(v26 + 4) = v34;
  v27 = a9 + v21[10];
  *v27 = v38;
  *(v27 + 8) = v37;
  *(v27 + 16) = v36;
  v28 = a9 + v21[11];
  result = v32;
  *v28 = v32;
  *(v28 + 16) = v31;
  *(v28 + 32) = v40;
  *(v28 + 40) = v39;
  v30 = a9 + v21[12];
  *v30 = v43;
  *(v30 + 8) = v42;
  *(v30 + 16) = v41;
  return result;
}

unint64_t sub_2202C04CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x6174614477656976;
    if (a1 != 2)
    {
      v6 = 0x74496D6F74737563;
    }

    if (a1)
    {
      v5 = 0x74614464656D6974;
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
    v1 = 0x6174614464656566;
    v2 = 0x74614470756F7267;
    if (a1 != 7)
    {
      v2 = 0x617373696D736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
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

uint64_t sub_2202C0608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202C1F90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202C0630(uint64_t a1)
{
  v2 = sub_2202C0B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C066C(uint64_t a1)
{
  v2 = sub_2202C0B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CustomItemExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202C143C(0, &qword_27CF27B98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C0B94();
  sub_220370168();
  LOBYTE(v34) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for CustomItemExposureEvent.Model(0);
    LOBYTE(v34) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *v11;
    v13 = *(v11 + 8);
    LOWORD(v11) = *(v11 + 16);
    v34 = v12;
    v35 = v13;
    LOWORD(v36) = v11;
    v40 = 2;
    sub_220202110();

    sub_22036FFF8();

    v14 = (v3 + v10[7]);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v34 = *v14;
    v35 = v15;
    v36 = v16;
    v37 = v17;
    v40 = 3;
    sub_2202BF1AC();

    sub_22036FFF8();

    LODWORD(v34) = *(v3 + v10[8]);
    v40 = 4;
    sub_2202760D8();
    sub_22036FFF8();
    v19 = (v3 + v10[9]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LODWORD(v34) = v20;
    BYTE4(v34) = v19;
    v40 = 5;
    sub_220276330();
    sub_22036FF88();
    v21 = v3 + v10[10];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    LOBYTE(v34) = *v21;
    v35 = v22;
    v36 = v23;
    v40 = 6;
    sub_2201FBD1C();

    sub_22036FFF8();

    v24 = (v3 + v10[11]);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    v28 = v24[4];
    v29 = v24[5];
    v34 = *v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = 7;
    sub_22023846C(v34, v25, v26, v27, v28, v29);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v34, v35, v36, v37, v38, v39);
    v30 = v3 + v10[12];
    v31 = *v30;
    v32 = *(v30 + 8);
    LOBYTE(v30) = *(v30 + 16);
    v34 = v31;
    v35 = v32;
    LOBYTE(v36) = v30;
    v40 = 8;
    sub_220253D5C();

    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202C0B94()
{
  result = qword_27CF27BA0;
  if (!qword_27CF27BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BA0);
  }

  return result;
}

void CustomItemExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v40 = sub_22036F3C8();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C143C(0, &qword_27CF27BA8, MEMORY[0x277D844C8]);
  v43 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for CustomItemExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C0B94();
  v42 = v9;
  v13 = v44;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v4;
    v15 = v12;
    v16 = v38;
    v17 = v40;
    LOBYTE(v45) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v37 + 32))(v15, v41, v5);
    LOBYTE(v45) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    sub_22036FF28();
    v35 = v5;
    (*(v16 + 32))(v15 + v10[5], v14, v17);
    v48 = 2;
    sub_2202020B8();
    v41 = 0;
    sub_22036FF28();
    v18 = v39;
    v19 = *(&v45 + 1);
    v20 = v46;
    v21 = v15 + v10[6];
    *v21 = v45;
    *(v21 + 8) = v19;
    *(v21 + 16) = v20;
    v48 = 3;
    sub_2202BF158();
    sub_22036FF28();
    v34 = a1;
    v22 = v46;
    v23 = (v15 + v10[7]);
    *v23 = v45;
    v23[1] = v22;
    v48 = 4;
    sub_220276084();
    sub_22036FF28();
    *(v15 + v10[8]) = v45;
    v48 = 5;
    sub_2202762DC();
    sub_22036FEB8();
    v24 = BYTE4(v45);
    v25 = v15 + v10[9];
    *v25 = v45;
    *(v25 + 4) = v24;
    v48 = 6;
    sub_2201FBCC4();
    sub_22036FF28();
    v26 = *(&v45 + 1);
    v27 = v46;
    v28 = v15 + v10[10];
    *v28 = v45;
    *(v28 + 8) = v26;
    *(v28 + 16) = v27;
    v48 = 7;
    sub_220236C88();
    sub_22036FEB8();
    v29 = (v15 + v10[11]);
    v30 = v46;
    *v29 = v45;
    v29[1] = v30;
    v29[2] = v47;
    v48 = 8;
    sub_220253D04();
    sub_22036FEB8();
    (*(v18 + 8))(v42, v43);
    v31 = v46;
    v32 = v15 + v10[12];
    *v32 = v45;
    *(v32 + 16) = v31;
    sub_2202C14A0(v15, v36);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_2202C1504(v15);
  }
}

void sub_2202C143C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C0B94();
    v7 = a3(a1, &type metadata for CustomItemExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202C14A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202C1504(uint64_t a1)
{
  v2 = type metadata accessor for CustomItemExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202C1638@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202BFA70(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202BFA70(0, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC, &type metadata for CustomItemData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_2202BFA70(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_2202BFA70(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_2202BFA70(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2202BFA70(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  sub_2202BFA70(0, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v15, v22);
}

void sub_2202C1A7C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_2202BFA70(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_2202BFA70(319, &qword_27CF27B80, sub_2202BF158, sub_2202BF1AC, &type metadata for CustomItemData);
        if (v4 <= 0x3F)
        {
          sub_2202BFA70(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_2202BFA70(319, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_2202BFA70(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_2202BFA70(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
                if (v8 <= 0x3F)
                {
                  sub_2202BFA70(319, &qword_281266818, sub_220253D04, sub_220253D5C, &type metadata for DismissalData);
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

void sub_2202C1D58(uint64_t a1)
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
          sub_22023A8F4(319, &qword_27CF27BD0, &type metadata for DismissalData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2202C1E8C()
{
  result = qword_27CF27BD8;
  if (!qword_27CF27BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BD8);
  }

  return result;
}

unint64_t sub_2202C1EE4()
{
  result = qword_27CF27BE0;
  if (!qword_27CF27BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BE0);
  }

  return result;
}

unint64_t sub_2202C1F3C()
{
  result = qword_27CF27BE8;
  if (!qword_27CF27BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BE8);
  }

  return result;
}

uint64_t sub_2202C1F90(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74496D6F74737563 && a2 == 0xEE00617461446D65 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
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

void __swiftcall CampaignData.init(campaignID:campaignType:creativeID:)(StocksAnalytics::CampaignData *__return_ptr retstr, Swift::String campaignID, Swift::String_optional campaignType, Swift::String_optional creativeID)
{
  retstr->campaignID = campaignID;
  retstr->campaignType = campaignType;
  retstr->creativeID = creativeID;
}

uint64_t CampaignData.campaignID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CampaignData.campaignID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CampaignData.campaignType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CampaignData.campaignType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CampaignData.creativeID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CampaignData.creativeID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2202C2444()
{
  v1 = 0x6576697461657263;
  if (*v0 == 1)
  {
    v1 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E676961706D6163;
  }
}

uint64_t sub_2202C2498@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202C2B74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202C24C0(uint64_t a1)
{
  v2 = sub_2202C26E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C24FC(uint64_t a1)
{
  v2 = sub_2202C26E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CampaignData.encode(to:)(void *a1)
{
  sub_2202C29B0(0, &qword_27CF27BF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C26E8();
  sub_220370168();
  v15 = 0;
  v10 = v12[5];
  sub_22036FFB8();
  if (!v10)
  {
    v14 = 1;
    sub_22036FF68();
    v13 = 2;
    sub_22036FF68();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202C26E8()
{
  result = qword_27CF27BF8;
  if (!qword_27CF27BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27BF8);
  }

  return result;
}

uint64_t CampaignData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2202C29B0(0, &qword_27CF27C00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C26E8();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v25 = v10;
  v27 = 1;
  v13 = sub_22036FE98();
  v15 = v14;
  v24 = v13;
  v26 = 2;
  v16 = sub_22036FE98();
  v19 = v18;
  v20 = *(v7 + 8);
  v23 = v16;
  v20(v9, v6);
  v21 = v24;
  *a2 = v25;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v23;
  a2[5] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C29B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C26E8();
    v7 = a3(a1, &type metadata for CampaignData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C2A70()
{
  result = qword_27CF27C08;
  if (!qword_27CF27C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C08);
  }

  return result;
}

unint64_t sub_2202C2AC8()
{
  result = qword_27CF27C10;
  if (!qword_27CF27C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C10);
  }

  return result;
}

unint64_t sub_2202C2B20()
{
  result = qword_27CF27C18;
  if (!qword_27CF27C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C18);
  }

  return result;
}

uint64_t sub_2202C2B74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E676961706D6163 && a2 == 0xEA00000000004449;
  if (v3 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000065707954 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697461657263 && a2 == 0xEA00000000004449)
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

uint64_t sub_2202C2D60()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_2812637F0);
  __swift_project_value_buffer(v0, qword_2812637F0);
  return sub_22036F108();
}

uint64_t ArticleEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleEngagementEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 20);
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleEngagementEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 24);
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202C32B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleEngagementEvent(0) + 28);
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleEngagementEvent(0);
  v5 = v4[5];
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t ArticleEngagementEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 20);
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

uint64_t ArticleEngagementEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleEngagementEvent.Model(0) + 28));
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

__n128 ArticleEngagementEvent.Model.init(eventData:newsArticleData:userArticleContextData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v20 = *a4;
  v9 = a4[1].n128_u64[0];
  v10 = a4[1].n128_u64[1];
  v11 = a4[2].n128_u8[0];
  v12 = a4[2].n128_u8[1];
  v13 = sub_22036F388();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  v14 = type metadata accessor for ArticleEngagementEvent.Model(0);
  v15 = a5 + v14[5];
  v16 = *(a2 + 48);
  *(v15 + 32) = *(a2 + 32);
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a2 + 64);
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v17;
  *(a5 + v14[6]) = v8;
  v18 = (a5 + v14[7]);
  result = v20;
  *v18 = v20;
  v18[1].n128_u64[0] = v9;
  v18[1].n128_u64[1] = v10;
  v18[2].n128_u8[0] = v11;
  v18[2].n128_u8[1] = v12;
  return result;
}

unint64_t sub_2202C3824()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v1 = 0x697472417377656ELL;
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

uint64_t sub_2202C38BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202C47F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202C38E4(uint64_t a1)
{
  v2 = sub_2202C3C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C3920(uint64_t a1)
{
  v2 = sub_2202C3C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202C4150(0, &qword_27CF27C20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C3C94();
  sub_220370168();
  v42 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleEngagementEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v39 = *(v11 + 32);
    v40 = v13;
    v14 = *(v11 + 16);
    v38[0] = *v11;
    v38[1] = v14;
    v34 = v12;
    v35 = v39;
    v36 = *(v11 + 48);
    v41 = *(v11 + 64);
    v37 = *(v11 + 64);
    v33 = v38[0];
    v32 = 1;
    sub_22022ECDC(v38, v30);
    sub_22022EDA0();
    sub_22036FFF8();
    v30[2] = v35;
    v30[3] = v36;
    v31 = v37;
    v30[0] = v33;
    v30[1] = v34;
    sub_22022ED14(v30);
    LOWORD(v23) = *(v3 + v10[6]);
    v29 = 2;
    sub_22025E918();
    sub_22036FFF8();
    v15 = (v3 + v10[7]);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = *(v15 + 32);
    LOBYTE(v15) = *(v15 + 33);
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v15;
    v29 = 3;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202C3C94()
{
  result = qword_2812637D8;
  if (!qword_2812637D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812637D8);
  }

  return result;
}

uint64_t ArticleEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_22036F388();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C4150(0, &qword_281261D90, MEMORY[0x277D844C8]);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ArticleEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C3C94();
  v31 = v8;
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v12 = v11;
  v13 = v27;
  LOBYTE(v37) = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v14 = v28;
  v15 = v30;
  sub_22036FF28();
  (*(v13 + 32))(v12, v14, v4);
  v43 = 1;
  sub_22022ED48();
  sub_22036FF28();
  v16 = v12 + v9[5];
  v17 = v40;
  *(v16 + 32) = v39;
  *(v16 + 48) = v17;
  *(v16 + 64) = v41;
  v18 = v38;
  *v16 = v37;
  *(v16 + 16) = v18;
  v42 = 2;
  sub_22025E8C4();
  sub_22036FF28();
  *(v12 + v9[6]) = v32;
  v42 = 3;
  sub_220236A30();
  sub_22036FF28();
  (*(v29 + 8))(v31, v15);
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v12 + v9[7];
  *v23 = v32;
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v21;
  *(v23 + 33) = v22;
  sub_2202C41B4(v12, v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_2202C4218(v12);
}

void sub_2202C4150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C3C94();
    v7 = a3(a1, &type metadata for ArticleEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202C41B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202C4218(uint64_t a1)
{
  v2 = type metadata accessor for ArticleEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202C434C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_2202C32B8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_2202C32B8(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_2202C32B8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2202C455C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202C32B8(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_2202C32B8(319, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
      if (v3 <= 0x3F)
      {
        sub_2202C32B8(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2202C46F4()
{
  result = qword_27CF27C28;
  if (!qword_27CF27C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C28);
  }

  return result;
}

unint64_t sub_2202C474C()
{
  result = qword_2812637C8;
  if (!qword_2812637C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812637C8);
  }

  return result;
}

unint64_t sub_2202C47A4()
{
  result = qword_2812637D0;
  if (!qword_2812637D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812637D0);
  }

  return result;
}

uint64_t sub_2202C47F8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
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

void sub_2202C4978(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a8@<X8>)
{
  v60[1] = a4;
  v60[2] = a5;
  v65 = a8;
  v66 = a3;
  v64 = a2;
  v9 = sub_22036E5D8();
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22036E468();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v67 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = v60 - v14;
  v71 = type metadata accessor for NewsArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v71);
  v72 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C50DC(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22036ED58();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v60 - v21;
  sub_2202C5134(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19);
  v28 = swift_dynamicCast();
  v29 = *(v25 + 56);
  if (v28)
  {
    v29(v18, 0, 1, v24);
    (*(v25 + 32))(v27, v18, v24);
    v30 = sub_22036ED28();
    v31 = v73;
    v32 = sub_22036F1F8();
    if (v31)
    {
      (*(v25 + 8))(v27, v24);
    }

    else
    {
      v34 = v33;
      v35 = v32;

      sub_22036E3C8();
      swift_allocObject();
      sub_22036E3B8();
      sub_2202C51C8(&qword_281267068, type metadata accessor for NewsArticleViewEvent.Model, &protocol conformance descriptor for NewsArticleViewEvent.Model);
      v36 = v71;
      sub_22036E3A8();
      v60[0] = v35;
      v73 = v34;

      v37 = v72;
      v38 = &v72[*(v36 + 24)];
      v39 = *(v38 + 3);
      v82 = *(v38 + 2);
      v83 = v39;
      v84 = *(v38 + 16);
      v40 = *(v38 + 1);
      v81[0] = *v38;
      v81[1] = v40;
      v78 = v82;
      v79 = v39;
      v80 = v84;
      v76 = v81[0];
      v77 = v40;
      sub_22022ECDC(v81, v74);
      v41 = v68;
      sub_22036E458();
      (*(v69 + 16))(v67, v41, v70);
      v42 = sub_220287E28(0, 1, 1, MEMORY[0x277D84F90]);
      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_220287E28((v43 > 1), v44 + 1, 1, v42);
      }

      v42[2] = v44 + 1;
      v45 = v69;
      v46 = v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44;
      v47 = v70;
      (*(v69 + 32))(v46, v67, v70);
      v88 = v42;
      v48 = v37 + *(v71 + 68);
      v49 = *(v48 + 16);
      v85 = *v48;
      v86 = v49;
      v87 = *(v48 + 32);
      v50 = sub_2202A6614();
      sub_2202A5E38(v50);
      v51 = v61;
      sub_22036E5C8();
      v71 = sub_22036E5B8();
      v67 = v52;
      sub_2202A6560(v60[0], v73);
      (*(v62 + 8))(v51, v63);
      (*(v45 + 8))(v68, v47);
      sub_2202C5210(v37, type metadata accessor for NewsArticleViewEvent.Model);
      (*(v25 + 8))(v27, v24);
      LODWORD(v75) = v80;
      v53 = v78;
      v54 = v79;
      v74[2] = v78;
      v74[3] = v79;
      v56 = v76;
      v55 = v77;
      v74[0] = v76;
      v74[1] = v77;
      v58 = v65;
      v57 = v66;
      *v65 = v88;
      *(v58 + 3) = v55;
      *(v58 + 5) = v53;
      *(v58 + 7) = v54;
      *(v58 + 1) = v56;
      v58[9] = v75;
      *(v58 + 80) = 1;
      v58[11] = v64;
      v58[12] = v57;
      v59 = v67;
      v58[13] = v71;
      v58[14] = v59;
    }
  }

  else
  {
    v29(v18, 1, 1, v24);
    sub_2202C5210(v18, sub_2202C50DC);
    sub_220287CC4();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_2202C50DC(uint64_t a1)
{
  if (!qword_281267060)
  {
    sub_2202C5134(255);
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_281267060);
    }
  }
}

void sub_2202C5134(uint64_t a1)
{
  if (!qword_2812668C8)
  {
    type metadata accessor for NewsArticleViewEvent(255);
    sub_2202C51C8(qword_281263EE8, type metadata accessor for NewsArticleViewEvent, &protocol conformance descriptor for NewsArticleViewEvent);
    v1 = sub_22036ED58();
    if (!v2)
    {
      atomic_store(v1, &qword_2812668C8);
    }
  }
}

uint64_t sub_2202C51C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2202C5210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2202C52E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73696C6863746177 && a2 == 0xED00006570795474)
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

uint64_t sub_2202C5370(uint64_t a1)
{
  v2 = sub_2202C5544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C53AC(uint64_t a1)
{
  v2 = sub_2202C5544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchlistData.encode(to:)(void *a1)
{
  sub_2202C5730(0, &qword_281261CC0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5544();
  sub_220370168();
  v11 = v8;
  sub_220269CAC();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202C5544()
{
  result = qword_281265998[0];
  if (!qword_281265998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265998);
  }

  return result;
}

uint64_t WatchlistData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202C5730(0, &qword_281261DF0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5544();
  sub_220370148();
  if (!v2)
  {
    sub_220269FD0();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C5730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C5544();
    v7 = a3(a1, &type metadata for WatchlistData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C57F0()
{
  result = qword_27CF27C30;
  if (!qword_27CF27C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C30);
  }

  return result;
}

unint64_t sub_2202C5848()
{
  result = qword_281265988;
  if (!qword_281265988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265988);
  }

  return result;
}

unint64_t sub_2202C58A0()
{
  result = qword_281265990;
  if (!qword_281265990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265990);
  }

  return result;
}

uint64_t MediaData.mediaID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MediaData.mediaID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MediaData.mediaDuration.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

_BYTE *MediaData.init(mediaType:mediaID:mediaDuration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t sub_2202C5A28()
{
  v1 = 0x4449616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x727544616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_2202C5A94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202C62A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202C5ABC(uint64_t a1)
{
  v2 = sub_2202C5D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C5AF8(uint64_t a1)
{
  v2 = sub_2202C5D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaData.encode(to:)(void *a1)
{
  sub_2202C5FEC(0, &qword_281261B70, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v14 = *(v1 + 6);
  HIDWORD(v13) = v1[28];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5D04();
  sub_220370168();
  v21 = v9;
  v20 = 0;
  sub_2202C5D58();
  sub_22036FFF8();
  if (!v2)
  {
    v11 = BYTE4(v13);
    v19 = 1;
    sub_22036FFB8();
    v18 = 2;
    v17 = v11;
    sub_22036FF98();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2202C5D04()
{
  result = qword_281262000;
  if (!qword_281262000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262000);
  }

  return result;
}

unint64_t sub_2202C5D58()
{
  result = qword_281261FD8;
  if (!qword_281261FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FD8);
  }

  return result;
}

uint64_t MediaData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202C5FEC(0, &qword_27CF27C38, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C5D04();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_2202C6050();
  sub_22036FF28();
  v10 = v21;
  v19 = 1;
  v11 = sub_22036FEE8();
  v13 = v12;
  v17 = v11;
  v18 = 2;
  v14 = sub_22036FEC8();
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 28) = BYTE4(v14) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C5FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C5D04();
    v7 = a3(a1, &type metadata for MediaData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C6050()
{
  result = qword_27CF27C40;
  if (!qword_27CF27C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C40);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_2202C60F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_2202C6138(uint64_t result, int a2, int a3)
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
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202C61A4()
{
  result = qword_27CF27C48;
  if (!qword_27CF27C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C48);
  }

  return result;
}

unint64_t sub_2202C61FC()
{
  result = qword_281261FF0;
  if (!qword_281261FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FF0);
  }

  return result;
}

unint64_t sub_2202C6254()
{
  result = qword_281261FF8;
  if (!qword_281261FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FF8);
  }

  return result;
}

uint64_t sub_2202C62A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449616964656DLL && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544616964656DLL && a2 == 0xED00006E6F697461)
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

uint64_t UserData.init(userID:userType:userStartDate:ageBracket:ageBracketConfidenceLevel:gender:genderConfidenceLevel:userStorefrontID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>)
{
  v11 = *a3;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 36) = a10;
  *(a9 + 40) = a6;
  *(a9 + 44) = a11;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t UserData.userID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserData.userID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserData.userStorefrontID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t UserData.userStorefrontID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_2202C6638()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0x7265646E6567;
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
    v2 = 0x444972657375;
    v3 = 0x7261745372657375;
    if (v1 != 2)
    {
      v3 = 0x6B63617242656761;
    }

    if (*v0)
    {
      v2 = 0x6570795472657375;
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

uint64_t sub_2202C6748@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202C7230(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202C6770(uint64_t a1)
{
  v2 = sub_2202C6ABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C67AC(uint64_t a1)
{
  v2 = sub_2202C6ABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserData.encode(to:)(void *a1)
{
  sub_2202C6F20(0, &qword_281261B98, MEMORY[0x277D84538]);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  v7 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v7;
  v8 = *(v1 + 56);
  v15 = *(v1 + 48);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_2202C6ABC();
  sub_220370168();
  v29 = 0;
  v13 = v20;
  sub_22036FFB8();
  if (!v13)
  {
    v20 = v8;
    v28 = v19;
    v27 = 1;
    sub_2202C6B10();
    sub_22036FFF8();
    v26 = 2;
    sub_220370018();
    v25 = 3;
    sub_220370008();
    v24 = 4;
    sub_22036FFE8();
    v23 = 5;
    sub_220370008();
    v22 = 6;
    sub_22036FFE8();
    v21 = 7;
    sub_22036FFB8();
  }

  return (*(v4 + 8))(v6, v12);
}

unint64_t sub_2202C6ABC()
{
  result = qword_281262170;
  if (!qword_281262170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262170);
  }

  return result;
}

unint64_t sub_2202C6B10()
{
  result = qword_281262140;
  if (!qword_281262140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262140);
  }

  return result;
}

uint64_t UserData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2202C6F20(0, &qword_281261D50, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C6ABC();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v51 = v10;
  LOBYTE(v35) = 1;
  sub_2202C6F84();
  sub_22036FF28();
  v13 = LOBYTE(v39[0]);
  LOBYTE(v39[0]) = 2;
  v14 = sub_22036FF48();
  v34 = v13;
  v33 = v14;
  LOBYTE(v39[0]) = 3;
  v32 = sub_22036FF38();
  LOBYTE(v39[0]) = 4;
  sub_22036FF18();
  v16 = v15;
  LOBYTE(v39[0]) = 5;
  v31 = sub_22036FF38();
  LOBYTE(v39[0]) = 6;
  sub_22036FF18();
  v18 = v17;
  v49 = 7;
  v19 = sub_22036FEE8();
  v20 = v9;
  v22 = v21;
  (*(v7 + 8))(v20, v6);
  v23 = v51;
  *&v35 = v51;
  *(&v35 + 1) = v12;
  LOBYTE(v36) = v34;
  *(&v36 + 1) = v50[0];
  DWORD1(v36) = *(v50 + 3);
  v24 = v33;
  *(&v36 + 1) = v33;
  v25 = v32;
  *&v37 = __PAIR64__(v16, v32);
  *(&v37 + 1) = __PAIR64__(v18, v31);
  *&v38 = v19;
  *(&v38 + 1) = v22;
  v26 = v35;
  v27 = v36;
  v28 = v38;
  a2[2] = v37;
  a2[3] = v28;
  *a2 = v26;
  a2[1] = v27;
  sub_2202C6FD8(&v35, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v23;
  v39[1] = v12;
  v40 = v34;
  *v41 = v50[0];
  *&v41[3] = *(v50 + 3);
  v42 = v24;
  v43 = v25;
  v44 = v16;
  v45 = v31;
  v46 = v18;
  v47 = v19;
  v48 = v22;
  return sub_2202C7010(v39);
}

void sub_2202C6F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C6ABC();
    v7 = a3(a1, &type metadata for UserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C6F84()
{
  result = qword_281262130;
  if (!qword_281262130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262130);
  }

  return result;
}

uint64_t sub_2202C7070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2202C70B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202C712C()
{
  result = qword_27CF27C50;
  if (!qword_27CF27C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C50);
  }

  return result;
}

unint64_t sub_2202C7184()
{
  result = qword_281262160;
  if (!qword_281262160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262160);
  }

  return result;
}

unint64_t sub_2202C71DC()
{
  result = qword_281262168;
  if (!qword_281262168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262168);
  }

  return result;
}

uint64_t sub_2202C7230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795472657375 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261745372657375 && a2 == 0xED00006574614474 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63617242656761 && a2 == 0xEA00000000007465 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220391140 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E6567 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220391160 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220391180 == a2)
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

unint64_t sub_2202C74DC@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_22036E5A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202C797C(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage);
  result = [v13 size];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = result % 0x3E8;
  if (result % 0x3E8 > 0x1F3)
  {
    v17 = 1000 - v15;
    v16 = result + v17;
    if (__OFADD__(result, v17))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    v16 = result - v15;
  }

  v18 = [v13 prunedSessionIDs];
  v19 = sub_22036FB68();

  v20 = *(v19 + 16);

  v21 = v20 % 0xA;
  if (v20 % 0xA > 4)
  {
    v23 = 10 - v21;
    v24 = __OFADD__(v20, v23);
    v22 = v20 + v23;
    if (v24)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v22 = v20 - v21;
  }

  v43 = v22;
  result = [v13 prunedSessionSize];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v25 = result;
  v42 = v16;
  v26 = [v13 sessionIDs];
  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v26;
  v28 = sub_22036FB68();

  swift_getKeyPath();
  v45 = v28;

  swift_getAtKeyPath();
  swift_bridgeObjectRelease_n();

  v29 = v44 % 10;
  if (v44 % 10 <= 4)
  {
    v30 = v44 - v29;
    if (!__OFSUB__(v44, v29))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_14:
    v30 = -1;
    goto LABEL_16;
  }

  v31 = 10 - v29;
  v30 = v44 + v31;
  if (__OFADD__(v44, v31))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_16:
  v32 = [v13 earliestSessionDate];
  if (v32)
  {
    v33 = v32;
    sub_22036E588();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v4 + 56))(v12, v34, 1, v3);
  sub_2202C79D4(v12, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    result = sub_2202C7A38(v12);
    v35 = -1;
LABEL_30:
    v24 = __OFSUB__(0, v35);
    v35 = -v35;
    if (!v24)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  (*(v4 + 32))(v6, v10, v3);
  sub_22036E558();
  v37 = v36;
  v38 = v36;
  (*(v4 + 8))(v6, v3);
  result = sub_2202C7A38(v12);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v37;
  v39 = v37 % 1000;
  if (v39 <= 499)
  {
    v24 = __OFSUB__(v35, v39);
    v35 -= v39;
    if (!v24)
    {
LABEL_29:
      if ((v35 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v41 = v43;
        *a1 = v42;
        a1[1] = v41;
        a1[2] = v25;
        a1[3] = v30;
        a1[4] = v35;
        return result;
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  v40 = 1000 - v39;
  v24 = __OFADD__(v35, v40);
  v35 += v40;
  if (!v24)
  {
    goto LABEL_29;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_2202C797C(uint64_t a1)
{
  if (!qword_281266AC0)
  {
    sub_22036E5A8();
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_281266AC0);
    }
  }
}

uint64_t sub_2202C79D4(uint64_t a1, uint64_t a2)
{
  sub_2202C797C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202C7A38(uint64_t a1)
{
  sub_2202C797C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

StocksAnalytics::WebSubscriptionStatus_optional __swiftcall WebSubscriptionStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t WebSubscriptionStatus.rawValue.getter()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x6373627553746F6ELL;
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

uint64_t sub_2202C7B5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6269726373627573;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
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

unint64_t sub_2202C7C84()
{
  result = qword_27CF27C58;
  if (!qword_27CF27C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C58);
  }

  return result;
}

uint64_t sub_2202C7CD8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C7D8C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202C7E2C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202C7EE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x6269726373627573;
  if (v2 != 1)
  {
    v5 = 0x6373627553746F6ELL;
    v4 = 0xED00006465626972;
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

unint64_t sub_2202C8018()
{
  result = qword_281263858;
  if (!qword_281263858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263858);
  }

  return result;
}

uint64_t TrackData.init(trackDuration:trackVariant:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_2202C80EC()
{
  if (*v0)
  {
    return 0x7261566B63617274;
  }

  else
  {
    return 0x7275446B63617274;
  }
}

uint64_t sub_2202C813C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7275446B63617274 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261566B63617274 && a2 == 0xEC000000746E6169)
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

uint64_t sub_2202C8224(uint64_t a1)
{
  v2 = sub_2202C8434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202C8260(uint64_t a1)
{
  v2 = sub_2202C8434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackData.encode(to:)(void *a1)
{
  sub_2202C86A8(0, &qword_27CF27C60, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C8434();
  sub_220370168();
  v14 = 0;
  sub_220370008();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_2202C8488();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2202C8434()
{
  result = qword_27CF27C68;
  if (!qword_27CF27C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C68);
  }

  return result;
}

unint64_t sub_2202C8488()
{
  result = qword_27CF27C70;
  if (!qword_27CF27C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C70);
  }

  return result;
}

uint64_t TrackData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202C86A8(0, &qword_27CF27C78, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202C8434();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_22036FF38();
    v14 = 1;
    sub_2202C870C();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202C86A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202C8434();
    v7 = a3(a1, &type metadata for TrackData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202C870C()
{
  result = qword_27CF27C80;
  if (!qword_27CF27C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C80);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TrackData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2202C8858()
{
  result = qword_27CF27C88;
  if (!qword_27CF27C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C88);
  }

  return result;
}

unint64_t sub_2202C88B0()
{
  result = qword_27CF27C90;
  if (!qword_27CF27C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C90);
  }

  return result;
}

unint64_t sub_2202C8908()
{
  result = qword_27CF27C98;
  if (!qword_27CF27C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27C98);
  }

  return result;
}

unint64_t sub_2202C89A8()
{
  result = qword_27CF27CA0;
  if (!qword_27CF27CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CA0);
  }

  return result;
}

uint64_t sub_2202C8A0C(uint64_t a1, uint64_t a2)
{
  sub_2202C8CE0();

  sub_22036EDA8();

  type metadata accessor for UserSegmentationTreatmentIDsChangeEvent(0);
  sub_2202C8D34(&qword_281262500, type metadata accessor for UserSegmentationTreatmentIDsChangeEvent, &protocol conformance descriptor for UserSegmentationTreatmentIDsChangeEvent);
  memset(v3, 0, sizeof(v3));
  sub_22036EDC8();
  return sub_220235924(v3);
}

uint64_t sub_2202C8B04(uint64_t a1, uint64_t a2)
{
  sub_2202C8C8C();

  sub_22036EDA8();

  type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0);
  sub_2202C8D34(&qword_281262418, type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent, &protocol conformance descriptor for UserSegmentationSegmentSetIDsChangeEvent);
  memset(v3, 0, sizeof(v3));
  sub_22036EDC8();
  return sub_220235924(v3);
}

uint64_t sub_2202C8BFC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2202C8C34()
{
  swift_unownedRetainStrong();
  sub_2201F6C84();
}

unint64_t sub_2202C8C8C()
{
  result = qword_2812628B8;
  if (!qword_2812628B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628B8);
  }

  return result;
}

unint64_t sub_2202C8CE0()
{
  result = qword_2812628E8;
  if (!qword_2812628E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628E8);
  }

  return result;
}

uint64_t sub_2202C8D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

StocksAnalytics::EventPath_optional __swiftcall EventPath.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2202C8DD8()
{
  v0 = EventPath.rawValue.getter();
  v2 = v1;
  if (v0 == EventPath.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_220370048();
  }

  return v5 & 1;
}

unint64_t sub_2202C8E78()
{
  result = qword_27CF27CA8;
  if (!qword_27CF27CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CA8);
  }

  return result;
}

uint64_t sub_2202C8ECC()
{
  sub_220370108();
  EventPath.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C8F34(uint64_t a1)
{
  EventPath.rawValue.getter();
  sub_22036FB08();
}

uint64_t sub_2202C8F98(uint64_t a1)
{
  sub_220370108();
  EventPath.rawValue.getter();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C9008@<X0>(uint64_t *a1@<X8>)
{
  result = EventPath.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EventPath(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2202C9230()
{
  result = qword_27CF27CB0;
  if (!qword_27CF27CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CB0);
  }

  return result;
}

StocksAnalytics::ArticleAccessType_optional __swiftcall ArticleAccessType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ArticleAccessType.rawValue.getter()
{
  v1 = 1701147238;
  if (*v0 != 1)
  {
    v1 = 1684627824;
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

uint64_t sub_2202C932C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1701147238;
  if (v2 != 1)
  {
    v3 = 1684627824;
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
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1701147238;
  if (*a2 != 1)
  {
    v6 = 1684627824;
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
    v8 = 0xE400000000000000;
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

unint64_t sub_2202C9414()
{
  result = qword_27CF27CB8;
  if (!qword_27CF27CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CB8);
  }

  return result;
}

uint64_t sub_2202C9468()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C94FC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202C957C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202C9618(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1701147238;
  if (v2 != 1)
  {
    v4 = 1684627824;
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
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2202C9728()
{
  result = qword_281264E50;
  if (!qword_281264E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E50);
  }

  return result;
}

StocksAnalytics::SubscribeButtonLocation_optional __swiftcall SubscribeButtonLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t SubscribeButtonLocation.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 1684366694;
  if (*v0 != 2)
  {
    v2 = 0x50676E69646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x656C6369747261;
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

unint64_t sub_2202C9864()
{
  result = qword_27CF27CC0;
  if (!qword_27CF27CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CC0);
  }

  return result;
}

uint64_t sub_2202C98B8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202C997C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202C9A2C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_2202C9AF8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1684366694;
  if (*v1 != 2)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  if (*v1)
  {
    v3 = 0x656C6369747261;
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

unint64_t sub_2202C9C38()
{
  result = qword_27CF27CC8;
  if (!qword_27CF27CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CC8);
  }

  return result;
}

uint64_t ExternalAnalyticsURLProvider.__allocating_init(queryItemsGenerators:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ExternalAnalyticsURLProvider.generateURL<A>(from:configuration:sessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v47 = a6;
  v13 = sub_22036E508();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202CB678(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v44 = a2;
  v21 = sub_22036E968();
  if (v22)
  {
    v42 = a7;
    sub_2202CA180(v52, a1, v21, v22, a3, a4, a5, v47, v49);

    *&v51[64] = v49[4];
    *&v51[80] = v49[5];
    *&v51[96] = v49[6];
    *v51 = v49[0];
    *&v51[16] = v49[1];
    *&v51[112] = v50;
    *&v51[32] = v49[2];
    *&v51[48] = v49[3];
    v23 = *&v49[0];
    if (*&v49[0])
    {
      sub_2202CA328(v51, &v48);

      v24 = *&v51[104];
      v25 = *&v51[112];

      sub_2202CA428(&v51[8]);

      sub_2202CA47C(v44, v23, v24, v25, v20);

      sub_2202CB190(v20, v18);
      v27 = v45;
      v26 = v46;
      if ((*(v45 + 48))(v18, 1, v46) == 1)
      {
        sub_2202CB224(v49, &qword_281267080, sub_2202CA38C);
        v28 = MEMORY[0x277CC9260];
        sub_2202CB224(v18, &qword_281266AE0, MEMORY[0x277CC9260]);
        sub_2202CA12C();
        swift_allocError();
        *v29 = 2;
        swift_willThrow();
        return sub_2202CB224(v20, &qword_281266AE0, v28);
      }

      else
      {
        sub_2202CB224(v20, &qword_281266AE0, MEMORY[0x277CC9260]);
        v33 = *(v27 + 32);
        v34 = v43;
        v33(v43, v18, v26);
        v35 = v42;
        v33(v42, v34, v26);

        v36 = type metadata accessor for ExternalURLData(0);
        v37 = &v35[*(v36 + 20)];
        v38 = *&v51[88];
        *(v37 + 4) = *&v51[72];
        *(v37 + 5) = v38;
        *(v37 + 6) = *&v51[104];
        v39 = *&v51[24];
        *v37 = *&v51[8];
        *(v37 + 1) = v39;
        v40 = *&v51[56];
        *(v37 + 2) = *&v51[40];
        *(v37 + 3) = v40;
        return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      }
    }

    else
    {
      v32 = type metadata accessor for ExternalURLData(0);
      return (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
    }
  }

  else
  {
    sub_2202CA12C();
    swift_allocError();
    *v31 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_2202CA12C()
{
  result = qword_27CF27CD0;
  if (!qword_27CF27CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CD0);
  }

  return result;
}

uint64_t sub_2202CA180@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(result + 16);
  if (*(v9 + 16))
  {
    sub_2201F5DF4(v9 + 32, v25);
    v12 = v26;
    v13 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v13 + 8))(v23, a2, a3, a4, a5, a6, a7, a8, v12, v13);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    v14 = v23[5];
    *(a9 + 64) = v23[4];
    *(a9 + 80) = v14;
    *(a9 + 96) = v23[6];
    *(a9 + 112) = v24;
    v15 = v23[1];
    *a9 = v23[0];
    *(a9 + 16) = v15;
    v16 = v23[3];
    *(a9 + 32) = v23[2];
    *(a9 + 48) = v16;
  }

  else
  {
    *(a9 + 112) = 0;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 48) = 0u;
    *(a9 + 64) = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *a9 = 0u;
  }

  return result;
}

uint64_t type metadata accessor for ExternalURLData(uint64_t a1)
{
  result = qword_281265600;
  if (!qword_281265600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2202CA328(uint64_t a1, uint64_t a2)
{
  sub_2202CA38C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2202CA38C(uint64_t a1)
{
  if (!qword_281267070)
  {
    sub_2202CB678(255, &qword_281267078, MEMORY[0x277CC8918], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281267070);
    }
  }
}

uint64_t sub_2202CA47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a4;
  v9 = MEMORY[0x277D83D88];
  sub_2202CB678(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = v83 - v11;
  v12 = sub_22036E508();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v97 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22036E468();
  v114 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v118 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v117 = v83 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v96 = v83 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v95 = v83 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v101 = v83 - v25;
  MEMORY[0x28223BE20](v24);
  v100 = v83 - v26;
  v27 = sub_22036EA08();
  v28 = *(v27 - 8);
  v115 = v27;
  v116 = v28;
  MEMORY[0x28223BE20](v27);
  v121 = v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202CB678(0, qword_281267088, MEMORY[0x277CC8958], v9);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v120 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = v83 - v33;
  v35 = sub_22036E4A8();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v94 = v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v93 = v83 - v39;
  v110 = a1;
  sub_22036E998();
  if (!v40)
  {
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v92 = a3;
  v41 = a2;
  sub_22036E498();

  v43 = v36 + 48;
  v42 = *(v36 + 48);
  if (v42(v34, 1, v35) == 1)
  {
    sub_2202CB224(v34, qword_281267088, MEMORY[0x277CC8958]);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v103 = v42;
  v86 = v36;
  v45 = *(v36 + 32);
  v46 = v93;
  v105 = v35;
  v45(v93, v34, v35);
  v47 = *(sub_22036E9B8() + 16);

  if (v47)
  {
    v99 = v12;
    v90 = v41;
    v48 = sub_22036E9B8();
    v49 = *(v48 + 16);
    if (v49)
    {
      v83[1] = a5;
      v113 = *(v116 + 16);
      v50 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v83[0] = v48;
      v51 = v48 + v50;
      v52 = *(v116 + 72);
      v108 = (v114 + 16);
      v106 = v114 + 32;
      v107 = v114 + 8;
      v116 += 16;
      v111 = (v116 - 8);
      v112 = v52;
      v91 = (v13 + 56);
      v89 = (v86 + 16);
      v88 = (v86 + 8);
      v87 = (v13 + 48);
      v85 = (v13 + 32);
      v53 = MEMORY[0x277D84F90];
      v84 = (v13 + 8);
      v102 = v15;
      v54 = v115;
      v109 = v43;
      while (1)
      {
        v113(v121, v51, v54);
        v56 = sub_22036E9C8();
        if (!v57)
        {
          goto LABEL_28;
        }

        v58 = v57;
        v119 = v56;
        if (sub_22036E9E8() == v56 && v58 == v59)
        {
        }

        else
        {
          v60 = sub_220370048();

          if ((v60 & 1) == 0)
          {

LABEL_28:
            sub_22036E9E8();
            sub_22036E9F8();
            v74 = v117;
            sub_22036E458();

            (*v108)(v118, v74, v15);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = sub_220287E28(0, v53[2] + 1, 1, v53);
            }

            v76 = v53[2];
            v75 = v53[3];
            v54 = v115;
            if (v76 >= v75 >> 1)
            {
              v53 = sub_220287E28((v75 > 1), v76 + 1, 1, v53);
            }

            v77 = v114;
            (*(v114 + 8))(v117, v15);
            (*v111)(v121, v54);
            v53[2] = v76 + 1;
            (*(v77 + 32))(v53 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v118, v15);
            goto LABEL_11;
          }
        }

        v61 = v15;
        sub_22036E9F8();
        v62 = v120;
        sub_22036E498();

        v63 = v105;
        v64 = v103;
        if (!v103(v62, 1, v105))
        {
          v122 = MEMORY[0x277D84F90];

          sub_2202A5E38(v65);
          v66 = v100;
          sub_22036E458();
          (*v108)(v101, v66, v61);
          v67 = v122;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_220287E28(0, v67[2] + 1, 1, v67);
          }

          v69 = v67[2];
          v68 = v67[3];
          if (v69 >= v68 >> 1)
          {
            v67 = sub_220287E28((v68 > 1), v69 + 1, 1, v67);
          }

          v70 = v114;
          v71 = v102;
          (*(v114 + 8))(v100, v102);
          v67[2] = v69 + 1;
          (*(v70 + 32))(v67 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, v101, v71);
          v62 = v120;
          sub_22036E478();
          v54 = v115;
          v63 = v105;
          v64 = v103;
        }

        if (v64(v62, 1, v63))
        {
          (*v111)(v121, v54);

          v55 = v104;
          (*v91)(v104, 1, 1, v99);
        }

        else
        {
          v72 = v94;
          (*v89)(v94, v62, v63);
          v55 = v104;
          sub_22036E488();
          (*v88)(v72, v63);
          v73 = v99;
          if ((*v87)(v55, 1, v99) != 1)
          {
            (*v85)(v97, v55, v73);
            sub_22036E4D8();
            v78 = v95;
            sub_22036E458();

            v15 = v102;
            (*v108)(v96, v78, v102);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v53 = sub_220287E28(0, v53[2] + 1, 1, v53);
            }

            v81 = v53[2];
            v80 = v53[3];
            v54 = v115;
            if (v81 >= v80 >> 1)
            {
              v53 = sub_220287E28((v80 > 1), v81 + 1, 1, v53);
            }

            v82 = v114;
            (*(v114 + 8))(v95, v15);
            (*v84)(v97, v99);
            (*v111)(v121, v54);
            v53[2] = v81 + 1;
            (*(v82 + 32))(v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81, v96, v15);
            goto LABEL_10;
          }

          (*v111)(v121, v54);
        }

        sub_2202CB224(v55, &qword_281266AE0, MEMORY[0x277CC9260]);
        v15 = v102;
LABEL_10:
        sub_2202CB224(v120, qword_281267088, MEMORY[0x277CC8958]);
LABEL_11:
        v51 += v112;
        if (!--v49)
        {

          v46 = v93;
          goto LABEL_41;
        }
      }
    }
  }

  else
  {
    sub_2202CB294(v41, v92, v98);
  }

LABEL_41:
  sub_22036E478();
  sub_22036E488();
  return (*(v86 + 8))(v46, v105);
}

uint64_t sub_2202CB190(uint64_t a1, uint64_t a2)
{
  sub_2202CB678(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202CB224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2202CB678(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2202CB294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22036E468();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v16 = MEMORY[0x277D84F90];

  sub_2202A5E38(v10);
  sub_22036E458();
  (*(v4 + 16))(v7, v9, v3);
  v11 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_220287E28(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_220287E28((v12 > 1), v13 + 1, 1, v11);
  }

  (*(v4 + 8))(v9, v3);
  v11[2] = v13 + 1;
  (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v7, v3);
  return v11;
}

uint64_t ExternalAnalyticsURLProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2202CB524(uint64_t a1)
{
  result = sub_22036E508();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202CB624()
{
  result = qword_27CF27CD8;
  if (!qword_27CF27CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27CD8);
  }

  return result;
}

void sub_2202CB678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2202CB7A4()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27CE0);
  __swift_project_value_buffer(v0, qword_27CF27CE0);
  return sub_22036F108();
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.userSegmentationSegmentSetData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0) + 20);
  sub_2202CB964(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202CB964(uint64_t a1)
{
  if (!qword_281266740)
  {
    sub_2202CB9CC();
    sub_2202CBA20();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_281266740);
    }
  }
}

unint64_t sub_2202CB9CC()
{
  result = qword_2812628A8;
  if (!qword_2812628A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628A8);
  }

  return result;
}

unint64_t sub_2202CBA20()
{
  result = qword_2812628B0;
  if (!qword_2812628B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628B0);
  }

  return result;
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.userSegmentationSegmentSetData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0) + 20);
  sub_2202CB964(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent(0) + 20);
  sub_2202CB964(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.userSegmentationSegmentSetData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0) + 20));
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.init(eventData:userSegmentationSegmentSetData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_2202CBCF4()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_2202CBD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220391300 == a2)
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

uint64_t sub_2202CBE24(uint64_t a1)
{
  v2 = sub_2202CC07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202CBE60(uint64_t a1)
{
  v2 = sub_2202CC07C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202CC428(0, &qword_27CF27CF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202CC07C();
  sub_220370168();
  v13 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0) + 20));
    v11[15] = 1;
    sub_2202CBA20();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202CC07C()
{
  result = qword_27CF27D00;
  if (!qword_27CF27D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D00);
  }

  return result;
}

uint64_t UserSegmentationSegmentSetIDsChangeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v24 = sub_22036F388();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202CC428(0, &qword_27CF27D08, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202CC07C();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v19 = v12;
  v13 = v21;
  v27 = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v14 = v24;
  v15 = v22;
  sub_22036FF28();
  v16 = v19;
  (*(v13 + 32))(v19, v5, v14);
  v26 = 1;
  sub_2202CB9CC();
  sub_22036FF28();
  (*(v23 + 8))(v9, v15);
  *(v16 + *(v18 + 20)) = v25;
  sub_2202CC48C(v16, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202CC4F0(v16);
}

void sub_2202CC428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202CC07C();
    v7 = a3(a1, &type metadata for UserSegmentationSegmentSetIDsChangeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202CC48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202CC4F0(uint64_t a1)
{
  v2 = type metadata accessor for UserSegmentationSegmentSetIDsChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202CC624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_2202CB964(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_2202CC70C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202CB964(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2202CC7B8(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2202CC840()
{
  result = qword_27CF27D20;
  if (!qword_27CF27D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27D20);
  }

  return result;
}