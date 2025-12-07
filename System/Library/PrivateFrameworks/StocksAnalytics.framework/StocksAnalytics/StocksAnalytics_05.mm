unint64_t sub_220280500()
{
  result = qword_27CF26D10;
  if (!qword_27CF26D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D10);
  }

  return result;
}

unint64_t sub_220280558()
{
  result = qword_27CF26D18;
  if (!qword_27CF26D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D18);
  }

  return result;
}

unint64_t sub_220280600()
{
  result = qword_27CF26D20;
  if (!qword_27CF26D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D20);
  }

  return result;
}

unint64_t sub_220280658()
{
  result = qword_27CF26D28;
  if (!qword_27CF26D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D28);
  }

  return result;
}

unint64_t sub_2202806B0()
{
  result = qword_27CF26D30;
  if (!qword_27CF26D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D30);
  }

  return result;
}

uint64_t sub_2202807CC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26D68);
  __swift_project_value_buffer(v0, qword_27CF26D68);
  return sub_22036F108();
}

uint64_t OnboardingScreenContinueEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OnboardingScreenContinueEvent.onboardingScreenData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingScreenContinueEvent(0) + 20);
  sub_22028098C(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22028098C(uint64_t a1)
{
  if (!qword_27CF26D80)
  {
    sub_2202809F4();
    sub_220280A48();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF26D80);
    }
  }
}

unint64_t sub_2202809F4()
{
  result = qword_27CF26D88;
  if (!qword_27CF26D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D88);
  }

  return result;
}

unint64_t sub_220280A48()
{
  result = qword_27CF26D90;
  if (!qword_27CF26D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D90);
  }

  return result;
}

uint64_t OnboardingScreenContinueEvent.onboardingScreenData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OnboardingScreenContinueEvent(0) + 20);
  sub_22028098C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OnboardingScreenContinueEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for OnboardingScreenContinueEvent(0) + 20);
  sub_22028098C(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t OnboardingScreenContinueEvent.Model.onboardingScreenData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for OnboardingScreenContinueEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t OnboardingScreenContinueEvent.Model.init(eventData:onboardingScreenData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for OnboardingScreenContinueEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_220280D0C()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_220280D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220390B90 == a2)
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

uint64_t sub_220280E3C(uint64_t a1)
{
  v2 = sub_220281080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220280E78(uint64_t a1)
{
  v2 = sub_220281080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingScreenContinueEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22028142C(0, &qword_27CF26D98, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220281080();
  sub_220370168();
  v11[15] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for OnboardingScreenContinueEvent.Model(0) + 20));
    v11[13] = 1;
    sub_220280A48();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220281080()
{
  result = qword_27CF26DA0;
  if (!qword_27CF26DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26DA0);
  }

  return result;
}

uint64_t OnboardingScreenContinueEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_22036F388();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22028142C(0, &qword_27CF26DA8, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for OnboardingScreenContinueEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220281080();
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
  sub_2202809F4();
  sub_22036FF28();
  (*(v24 + 8))(v9, v15);
  *(v16 + *(v19 + 20)) = v27;
  sub_220281490(v16, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202814F4(v16);
}

void sub_22028142C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220281080();
    v7 = a3(a1, &type metadata for OnboardingScreenContinueEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220281490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingScreenContinueEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202814F4(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingScreenContinueEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220281628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22028098C(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_220281710(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22028098C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2202817BC(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220281844()
{
  result = qword_27CF26DD0;
  if (!qword_27CF26DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26DD0);
  }

  return result;
}

unint64_t sub_22028189C()
{
  result = qword_27CF26DD8;
  if (!qword_27CF26DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26DD8);
  }

  return result;
}

unint64_t sub_2202818F4()
{
  result = qword_27CF26DE0;
  if (!qword_27CF26DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26DE0);
  }

  return result;
}

uint64_t sub_220281A10()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26E18);
  __swift_project_value_buffer(v0, qword_27CF26E18);
  return sub_22036F108();
}

uint64_t AdInterstitialImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AdInterstitialImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdInterstitialImpressionEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdInterstitialImpressionEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdInterstitialImpressionEvent(0) + 24);
  sub_220281F50(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220281CF8()
{
  result = qword_27CF26E38;
  if (!qword_27CF26E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E38);
  }

  return result;
}

unint64_t sub_220281D4C()
{
  result = qword_27CF26E40;
  if (!qword_27CF26E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E40);
  }

  return result;
}

uint64_t AdInterstitialImpressionEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdInterstitialImpressionEvent(0) + 24);
  sub_220281F50(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdInterstitialImpressionEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdInterstitialImpressionEvent(0) + 28);
  sub_220281F50(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220281F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t AdInterstitialImpressionEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AdInterstitialImpressionEvent(0) + 28);
  sub_220281F50(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AdInterstitialImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AdInterstitialImpressionEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220281F50(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220281F50(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_2202822C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AdInterstitialImpressionEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdInterstitialImpressionEvent.Model(0) + 24);
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
  return sub_2202823D8(v10, v9);
}

uint64_t AdInterstitialImpressionEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AdInterstitialImpressionEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

__n128 AdInterstitialImpressionEvent.Model.init(eventData:timedData:adData:feedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  v12 = sub_22036F388();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for AdInterstitialImpressionEvent.Model(0);
  v14 = v13[5];
  v15 = sub_22036F3C8();
  (*(*(v15 - 8) + 32))(a5 + v14, a2, v15);
  v16 = a5 + v13[6];
  v17 = *(a3 + 48);
  *(v16 + 32) = *(a3 + 32);
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a3 + 64);
  result = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = result;
  v19 = a5 + v13[7];
  *v19 = v9;
  *(v19 + 8) = v10;
  *(v19 + 16) = v11;
  return result;
}

uint64_t sub_220282588()
{
  v1 = 0x746144746E657665;
  v2 = 0x617461446461;
  if (*v0 != 2)
  {
    v2 = 0x6174614464656566;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
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

uint64_t sub_220282600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202836D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220282628(uint64_t a1)
{
  v2 = sub_2202829EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220282664(uint64_t a1)
{
  v2 = sub_2202829EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdInterstitialImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220283004(0, &qword_27CF26E48, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202829EC();
  sub_220370168();
  LOBYTE(v31[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AdInterstitialImpressionEvent.Model(0);
    v35 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v32 = *(v11 + 32);
    v33 = v13;
    v14 = *(v11 + 16);
    v31[0] = *v11;
    v31[1] = v14;
    v15 = *(v11 + 48);
    v28 = v32;
    v29 = v15;
    v34 = *(v11 + 64);
    v30 = *(v11 + 64);
    v26 = v31[0];
    v27 = v12;
    v25 = 2;
    sub_2202823D8(v31, v23);
    sub_220281D4C();
    sub_22036FFF8();
    v23[2] = v28;
    v23[3] = v29;
    v24 = v30;
    v23[0] = v26;
    v23[1] = v27;
    sub_220282A40(v23);
    v16 = v3 + *(v10 + 28);
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v20[8] = *v16;
    v21 = v17;
    v22 = v18;
    v20[7] = 3;
    sub_2201FBD1C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202829EC()
{
  result = qword_27CF26E50;
  if (!qword_27CF26E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E50);
  }

  return result;
}

uint64_t AdInterstitialImpressionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = sub_22036F3C8();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220283004(0, &qword_27CF26E58, MEMORY[0x277D844C8]);
  v36 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AdInterstitialImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202829EC();
  v35 = v9;
  v13 = v37;
  sub_220370148();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v37 = v10;
  v16 = v31;
  v15 = v32;
  LOBYTE(v41) = 0;
  sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_22036FF28();
  v17 = *(v16 + 32);
  v18 = v12;
  v19 = v34;
  v34 = v5;
  v17(v12, v19);
  LOBYTE(v41) = 1;
  sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v20 = v14;
  sub_22036FF28();
  v21 = v37;
  (*(v30 + 32))(v18 + *(v37 + 20), v20, v15);
  v47 = 2;
  sub_220281CF8();
  sub_22036FF28();
  v22 = v18 + *(v21 + 24);
  v23 = v44;
  *(v22 + 32) = v43;
  *(v22 + 48) = v23;
  *(v22 + 64) = v45;
  v24 = v42;
  *v22 = v41;
  *(v22 + 16) = v24;
  v46 = 3;
  sub_2201FBCC4();
  sub_22036FF28();
  (*(v33 + 8))(v35, v36);
  v25 = v39;
  v26 = v40;
  v27 = v18 + *(v21 + 28);
  *v27 = v38;
  *(v27 + 8) = v25;
  *(v27 + 16) = v26;
  sub_220283068(v18, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2202830CC(v18);
}

void sub_220283004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202829EC();
    v7 = a3(a1, &type metadata for AdInterstitialImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220283068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdInterstitialImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202830CC(uint64_t a1)
{
  v2 = type metadata accessor for AdInterstitialImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220283200@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220281F50(0, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220281F50(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_2202833D8(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220281F50(319, &qword_27CF26E30, sub_220281CF8, sub_220281D4C, &type metadata for AdData);
      if (v3 <= 0x3F)
      {
        sub_220281F50(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_220283524(uint64_t a1)
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

unint64_t sub_2202835D4()
{
  result = qword_27CF26E80;
  if (!qword_27CF26E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E80);
  }

  return result;
}

unint64_t sub_22028362C()
{
  result = qword_27CF26E88;
  if (!qword_27CF26E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E88);
  }

  return result;
}

unint64_t sub_220283684()
{
  result = qword_27CF26E90;
  if (!qword_27CF26E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E90);
  }

  return result;
}

uint64_t sub_2202836D8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
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

StocksAnalytics::SymbolType_optional __swiftcall SymbolType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SymbolType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x79636E6572727563;
  if (v1 != 6)
  {
    v3 = 0x73657275747566;
  }

  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x75636F7470797263;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E75467865646E69;
  if (v1 != 2)
  {
    v5 = 0x75466C617574756DLL;
  }

  if (*v0)
  {
    v2 = 0x797469757165;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2202839C4()
{
  result = qword_27CF26E98;
  if (!qword_27CF26E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26E98);
  }

  return result;
}

void sub_220283A40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE800000000000000;
  v6 = 0x79636E6572727563;
  if (v2 != 6)
  {
    v6 = 0x73657275747566;
    v5 = 0xE700000000000000;
  }

  v7 = 0x800000022038F9E0;
  v8 = 0xD000000000000012;
  if (v2 != 4)
  {
    v8 = 0x75636F7470797263;
    v7 = 0xEE0079636E657272;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000064;
  v10 = 0x6E75467865646E69;
  if (v2 != 2)
  {
    v10 = 0x75466C617574756DLL;
    v9 = 0xEA0000000000646ELL;
  }

  if (*v1)
  {
    v4 = 0x797469757165;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

unint64_t sub_220283C14()
{
  result = qword_2812660D8;
  if (!qword_2812660D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660D8);
  }

  return result;
}

uint64_t AdReferralData.qToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdReferralData.qToken.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::AdReferralData __swiftcall AdReferralData.init(qToken:)(Swift::String_optional qToken)
{
  object = qToken.value._object;
  countAndFlagsBits = qToken.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.qToken.value._object = v6;
  result.qToken.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_220283D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F5471 && a2 == 0xE600000000000000)
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

uint64_t sub_220283DCC(uint64_t a1)
{
  v2 = sub_220283F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220283E08(uint64_t a1)
{
  v2 = sub_220283F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdReferralData.encode(to:)(void *a1)
{
  sub_220284168(0, &qword_27CF26EA0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220283F90();
  sub_220370168();
  sub_22036FF68();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220283F90()
{
  result = qword_27CF26EA8;
  if (!qword_27CF26EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EA8);
  }

  return result;
}

uint64_t AdReferralData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220284168(0, &qword_27CF26EB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220283F90();
  sub_220370148();
  if (!v2)
  {
    v10 = sub_22036FE98();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220284168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220283F90();
    v7 = a3(a1, &type metadata for AdReferralData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202841D0()
{
  result = qword_2812658E8;
  if (!qword_2812658E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812658E8);
  }

  return result;
}

unint64_t sub_220284228()
{
  result = qword_2812658F0;
  if (!qword_2812658F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812658F0);
  }

  return result;
}

uint64_t sub_220284294(void *a1)
{
  sub_220284168(0, &qword_27CF26EA0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220283F90();
  sub_220370168();
  sub_22036FF68();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220284404()
{
  result = qword_27CF26EB8;
  if (!qword_27CF26EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EB8);
  }

  return result;
}

unint64_t sub_22028445C()
{
  result = qword_27CF26EC0;
  if (!qword_27CF26EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EC0);
  }

  return result;
}

unint64_t sub_2202844B4()
{
  result = qword_27CF26EC8;
  if (!qword_27CF26EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EC8);
  }

  return result;
}

StocksAnalytics::AdCreativeType_optional __swiftcall AdCreativeType.init(rawValue:)(Swift::String rawValue)
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

uint64_t AdCreativeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x566C6C6F52657270;
  v4 = 0x644165766974616ELL;
  if (v1 != 3)
  {
    v4 = 0x6974737265746E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72656E6E6162;
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

unint64_t sub_22028461C()
{
  result = qword_27CF26ED0;
  if (!qword_27CF26ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26ED0);
  }

  return result;
}

uint64_t sub_220284670()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220284760(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22028483C(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220284934(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC0000006F656469;
  v6 = 0x566C6C6F52657270;
  v7 = 0xE800000000000000;
  v8 = 0x644165766974616ELL;
  if (v2 != 3)
  {
    v8 = 0x6974737265746E69;
    v7 = 0xEC0000006C616974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656E6E6162;
    v3 = 0xE600000000000000;
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

unint64_t sub_220284AA0()
{
  result = qword_281265920;
  if (!qword_281265920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265920);
  }

  return result;
}

uint64_t SearchResultsData.results.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_220284B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
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

uint64_t sub_220284BF8(uint64_t a1)
{
  v2 = sub_220284E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220284C34(uint64_t a1)
{
  v2 = sub_220284E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchResultsData.encode(to:)(void *a1)
{
  sub_220285024(0, &qword_281261C58, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220284E0C();

  sub_220370168();
  v10[1] = v8;
  sub_220269D00();
  sub_22026A024(&qword_281261EF0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22036FFF8();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220284E0C()
{
  result = qword_281264D88[0];
  if (!qword_281264D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264D88);
  }

  return result;
}

uint64_t SearchResultsData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_220285024(0, &qword_27CF26ED8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220284E0C();
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

void sub_220285024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220284E0C();
    v7 = a3(a1, &type metadata for SearchResultsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202850CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220285114(uint64_t result, int a2, int a3)
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

unint64_t sub_220285174()
{
  result = qword_27CF26EE0;
  if (!qword_27CF26EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EE0);
  }

  return result;
}

unint64_t sub_2202851CC()
{
  result = qword_281264D78;
  if (!qword_281264D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264D78);
  }

  return result;
}

unint64_t sub_220285224()
{
  result = qword_281264D80;
  if (!qword_281264D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264D80);
  }

  return result;
}

uint64_t SymbolData.symbol.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SymbolData.symbol.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SymbolData.exchange.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SymbolData.exchange.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SymbolData.init(symbol:symbolType:exchange:)(StocksAnalytics::SymbolData *__return_ptr retstr, Swift::String symbol, StocksAnalytics::SymbolType symbolType, Swift::String exchange)
{
  v4 = *symbolType;
  retstr->symbol = symbol;
  retstr->symbolType = v4;
  retstr->exchange = exchange;
}

uint64_t sub_2202853DC()
{
  v1 = 0x79546C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x65676E6168637865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_220285438@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220285C74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220285460(uint64_t a1)
{
  v2 = sub_2202856B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028549C(uint64_t a1)
{
  v2 = sub_2202856B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolData.encode(to:)(void *a1)
{
  sub_2202859B8(0, &qword_281261D18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v12 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11[1] = *(v1 + 32);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202856B4();
  sub_220370168();
  v16 = 0;
  v9 = v11[3];
  sub_22036FFB8();
  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    sub_220285708();
    sub_22036FFF8();
    v13 = 2;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202856B4()
{
  result = qword_281266108;
  if (!qword_281266108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266108);
  }

  return result;
}

unint64_t sub_220285708()
{
  result = qword_2812660E0;
  if (!qword_2812660E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660E0);
  }

  return result;
}

uint64_t SymbolData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2202859B8(0, &qword_27CF26EE8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202856B4();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v13 = v10;
  v23 = 1;
  sub_220285A1C();
  sub_22036FF28();
  v21 = v24;
  v22 = 2;
  v14 = sub_22036FEE8();
  v17 = v16;
  v18 = *(v7 + 8);
  v20 = v14;
  v18(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202859B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202856B4();
    v7 = a3(a1, &type metadata for SymbolData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220285A1C()
{
  result = qword_27CF26EF0;
  if (!qword_27CF26EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EF0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220285ABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_220285B04(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_220285B70()
{
  result = qword_27CF26EF8;
  if (!qword_27CF26EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26EF8);
  }

  return result;
}

unint64_t sub_220285BC8()
{
  result = qword_2812660F8;
  if (!qword_2812660F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660F8);
  }

  return result;
}

unint64_t sub_220285C20()
{
  result = qword_281266100;
  if (!qword_281266100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266100);
  }

  return result;
}

uint64_t sub_220285C74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546C6F626D7973 && a2 == 0xEA00000000006570 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000)
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

StocksAnalytics::OsInstallVariant_optional __swiftcall OsInstallVariant.init(rawValue:)(Swift::String rawValue)
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

uint64_t OsInstallVariant.rawValue.getter()
{
  v1 = 0x6C616E7265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
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

uint64_t sub_220285E3C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6C616E7265746E69;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 0x6C616E7265746E69;
  }

  else
  {
    v4 = 0x6C616E7265747865;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6C616E7265747865;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_220370048();
  }

  return v9 & 1;
}

unint64_t sub_220285F18()
{
  result = qword_27CF26F00;
  if (!qword_27CF26F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F00);
  }

  return result;
}

uint64_t sub_220285F6C()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220286004(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220286088(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220286204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546C6C6177796170 && a2 == 0xEB00000000657079)
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

uint64_t sub_220286290(uint64_t a1)
{
  v2 = sub_220286464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202862CC(uint64_t a1)
{
  v2 = sub_220286464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaywallData.encode(to:)(void *a1)
{
  sub_2202866A4(0, &qword_281261D00, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220286464();
  sub_220370168();
  v11 = v8;
  sub_2202864B8();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220286464()
{
  result = qword_281266030;
  if (!qword_281266030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266030);
  }

  return result;
}

unint64_t sub_2202864B8()
{
  result = qword_281266000;
  if (!qword_281266000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266000);
  }

  return result;
}

uint64_t PaywallData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202866A4(0, &qword_281261E10, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220286464();
  sub_220370148();
  if (!v2)
  {
    sub_220286708();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202866A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220286464();
    v7 = a3(a1, &type metadata for PaywallData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220286708()
{
  result = qword_281265FF0;
  if (!qword_281265FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265FF0);
  }

  return result;
}

unint64_t sub_2202867B8()
{
  result = qword_27CF26F08;
  if (!qword_27CF26F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F08);
  }

  return result;
}

unint64_t sub_220286810()
{
  result = qword_281266020;
  if (!qword_281266020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266020);
  }

  return result;
}

unint64_t sub_220286868()
{
  result = qword_281266028;
  if (!qword_281266028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266028);
  }

  return result;
}

uint64_t sub_220286914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_22028699C(uint64_t a1)
{
  v2 = sub_220286B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202869D8(uint64_t a1)
{
  v2 = sub_220286B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGroupPositionData.encode(to:)(void *a1)
{
  sub_220286D30(0, &qword_281261C38, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220286B5C();
  sub_220370168();
  sub_220370008();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220286B5C()
{
  result = qword_281264518[0];
  if (!qword_281264518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264518);
  }

  return result;
}

uint64_t InGroupPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_220286D30(0, &qword_281266ED0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220286B5C();
  sub_220370148();
  if (!v2)
  {
    v10 = sub_22036FF38();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220286D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220286B5C();
    v7 = a3(a1, &type metadata for InGroupPositionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220286DB4(void *a1)
{
  sub_220286D30(0, &qword_281261C38, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220286B5C();
  sub_220370168();
  sub_220370008();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220286F20()
{
  result = qword_27CF26F10;
  if (!qword_27CF26F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F10);
  }

  return result;
}

unint64_t sub_220286F78()
{
  result = qword_281264508;
  if (!qword_281264508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264508);
  }

  return result;
}

unint64_t sub_220286FD0()
{
  result = qword_281264510;
  if (!qword_281264510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264510);
  }

  return result;
}

uint64_t sub_22028708C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000220390BB0 == a2)
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

uint64_t sub_220287120(uint64_t a1)
{
  v2 = sub_2202872F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028715C(uint64_t a1)
{
  v2 = sub_2202872F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngagementOriginationData.encode(to:)(void *a1)
{
  sub_220287534(0, &qword_27CF26F18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202872F4();
  sub_220370168();
  v11 = v8;
  sub_220287348();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202872F4()
{
  result = qword_27CF26F20;
  if (!qword_27CF26F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F20);
  }

  return result;
}

unint64_t sub_220287348()
{
  result = qword_27CF26F28;
  if (!qword_27CF26F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F28);
  }

  return result;
}

uint64_t AudioEngagementOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220287534(0, &qword_27CF26F30, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202872F4();
  sub_220370148();
  if (!v2)
  {
    sub_220287598();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220287534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202872F4();
    v7 = a3(a1, &type metadata for AudioEngagementOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220287598()
{
  result = qword_27CF26F38;
  if (!qword_27CF26F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F38);
  }

  return result;
}

unint64_t sub_220287648()
{
  result = qword_27CF26F40;
  if (!qword_27CF26F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F40);
  }

  return result;
}

unint64_t sub_2202876A0()
{
  result = qword_27CF26F48;
  if (!qword_27CF26F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F48);
  }

  return result;
}

unint64_t sub_2202876F8()
{
  result = qword_27CF26F50;
  if (!qword_27CF26F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F50);
  }

  return result;
}

uint64_t sub_22028774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v40 = a3;
  v39 = a2;
  v41 = a1;
  v7 = sub_22036E5D8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22036E468();
  v9 = *(v35 - 8);
  v10 = MEMORY[0x28223BE20](v35);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  sub_220287C08(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22036ED58();
  MEMORY[0x28223BE20](v20);
  (*(v22 + 16))(&v34 - v21, v41, v20);
  if (swift_dynamicCast())
  {
    (*(v17 + 8))(v19, v16);
    sub_22036E458();
    v23 = v35;
    (*(v9 + 16))(v12, v14, v35);
    v24 = sub_220287E74(0, 1, 1, MEMORY[0x277D84F90], &qword_281266EE0, MEMORY[0x277CC8918], MEMORY[0x277CC8918]);
    v26 = v24[2];
    v25 = v24[3];
    v27 = v14;
    if (v26 >= v25 >> 1)
    {
      v24 = sub_220287E74((v25 > 1), v26 + 1, 1, v24, &qword_281266EE0, MEMORY[0x277CC8918], MEMORY[0x277CC8918]);
    }

    v24[2] = v26 + 1;
    (*(v9 + 32))(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v12, v23);
    v28 = v36;
    sub_22036E5C8();
    v29 = sub_22036E5B8();
    v31 = v30;
    (*(v37 + 8))(v28, v38);
    (*(v9 + 8))(v27, v23);
    *a6 = v24;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0;
    *(a6 + 80) = 3;
    v32 = v40;
    *(a6 + 88) = v39;
    *(a6 + 96) = v32;
    *(a6 + 104) = v29;
    *(a6 + 112) = v31;
  }

  else
  {
    sub_220287CC4();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_220287C08(uint64_t a1)
{
  if (!qword_2812668A8)
  {
    type metadata accessor for AppSessionStartEvent(255);
    sub_220287C6C();
    v1 = sub_22036ED58();
    if (!v2)
    {
      atomic_store(v1, &qword_2812668A8);
    }
  }
}

unint64_t sub_220287C6C()
{
  result = qword_281264200[0];
  if (!qword_281264200[0])
  {
    type metadata accessor for AppSessionStartEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264200);
  }

  return result;
}

unint64_t sub_220287CC4()
{
  result = qword_281266ED8;
  if (!qword_281266ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266ED8);
  }

  return result;
}

char *sub_220287D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_220288130(0, &qword_281261B00, MEMORY[0x277D837D0]);
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

void *sub_220287E74(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_220288054(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_220288054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220370038();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_2202880A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_220288130(0, &qword_281261B00, MEMORY[0x277D837D0]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_220288130(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_220370038();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FeedViewExperienceData.init(isNewsFreeExperience:numberOfArticles:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = a2;
  return result;
}

unint64_t sub_2202881F0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_22028822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000014 && 0x8000000220390C10 == a2;
  if (v5 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390C30 == a2)
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

uint64_t sub_220288310(uint64_t a1)
{
  v2 = sub_220288500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028834C(uint64_t a1)
{
  v2 = sub_220288500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedViewExperienceData.encode(to:)(void *a1)
{
  sub_220288710(0, &qword_281261BF0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220288500();
  sub_220370168();
  v13 = 0;
  sub_22036FFC8();
  if (!v2)
  {
    v12 = 1;
    sub_220370008();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_220288500()
{
  result = qword_281263660;
  if (!qword_281263660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263660);
  }

  return result;
}

uint64_t FeedViewExperienceData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220288710(0, &qword_281261D80, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220288500();
  sub_220370148();
  if (!v2)
  {
    v15 = 0;
    v13 = sub_22036FEF8() & 1;
    v14 = 1;
    v11 = sub_22036FF38();
    (*(v7 + 8))(v9, v6);
    *a2 = v13;
    *(a2 + 4) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220288710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220288500();
    v7 = a3(a1, &type metadata for FeedViewExperienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220288778()
{
  result = qword_281263640;
  if (!qword_281263640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263640);
  }

  return result;
}

unint64_t sub_2202887D0()
{
  result = qword_281263648;
  if (!qword_281263648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedViewExperienceData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedViewExperienceData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22028890C()
{
  result = qword_27CF26F58;
  if (!qword_27CF26F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F58);
  }

  return result;
}

unint64_t sub_220288964()
{
  result = qword_281263650;
  if (!qword_281263650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263650);
  }

  return result;
}

unint64_t sub_2202889BC()
{
  result = qword_281263658;
  if (!qword_281263658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263658);
  }

  return result;
}

uint64_t sub_220288AD8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26F60);
  __swift_project_value_buffer(v0, qword_27CF26F60);
  return sub_22036F108();
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.userSegmentationTreatmentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserSegmentationTreatmentIDsChangeEvent(0) + 20);
  sub_220288C98(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220288C98(uint64_t a1)
{
  if (!qword_281266748)
  {
    sub_220288D00();
    sub_220288D54();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_281266748);
    }
  }
}

unint64_t sub_220288D00()
{
  result = qword_2812628D8;
  if (!qword_2812628D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628D8);
  }

  return result;
}

unint64_t sub_220288D54()
{
  result = qword_2812628E0;
  if (!qword_2812628E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812628E0);
  }

  return result;
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.userSegmentationTreatmentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserSegmentationTreatmentIDsChangeEvent(0) + 20);
  sub_220288C98(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for UserSegmentationTreatmentIDsChangeEvent(0) + 20);
  sub_220288C98(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.Model.userSegmentationTreatmentData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for UserSegmentationTreatmentIDsChangeEvent.Model(0) + 20));
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.Model.init(eventData:userSegmentationTreatmentData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_22036F388();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for UserSegmentationTreatmentIDsChangeEvent.Model(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t sub_220289028()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22028906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220390C50 == a2)
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

uint64_t sub_220289158(uint64_t a1)
{
  v2 = sub_2202893B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220289194(uint64_t a1)
{
  v2 = sub_2202893B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22028975C(0, &qword_27CF26F78, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202893B0();
  sub_220370168();
  v13 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for UserSegmentationTreatmentIDsChangeEvent.Model(0) + 20));
    v11[15] = 1;
    sub_220288D54();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202893B0()
{
  result = qword_27CF26F80;
  if (!qword_27CF26F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26F80);
  }

  return result;
}

uint64_t UserSegmentationTreatmentIDsChangeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v24 = sub_22036F388();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22028975C(0, &qword_27CF26F88, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UserSegmentationTreatmentIDsChangeEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202893B0();
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
  sub_220288D00();
  sub_22036FF28();
  (*(v23 + 8))(v9, v15);
  *(v16 + *(v18 + 20)) = v25;
  sub_2202897C0(v16, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220289824(v16);
}

void sub_22028975C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202893B0();
    v7 = a3(a1, &type metadata for UserSegmentationTreatmentIDsChangeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202897C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSegmentationTreatmentIDsChangeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220289824(uint64_t a1)
{
  v2 = type metadata accessor for UserSegmentationTreatmentIDsChangeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220289958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_220288C98(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_220289A40(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220288C98(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220289AEC(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_220289B74()
{
  result = qword_27CF26FA0;
  if (!qword_27CF26FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26FA0);
  }

  return result;
}

unint64_t sub_220289BCC()
{
  result = qword_27CF26FA8;
  if (!qword_27CF26FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26FA8);
  }

  return result;
}

unint64_t sub_220289C24()
{
  result = qword_27CF26FB0;
  if (!qword_27CF26FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26FB0);
  }

  return result;
}

uint64_t sub_220289D40()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26FE8);
  __swift_project_value_buffer(v0, qword_27CF26FE8);
  return sub_22036F108();
}

uint64_t ReorderWatchlistEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReorderWatchlistEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ReorderWatchlistEvent.Model.init(eventData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22036F388();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_220289F5C(uint64_t a1)
{
  v2 = sub_22028A148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220289F98(uint64_t a1)
{
  v2 = sub_22028A148();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReorderWatchlistEvent.Model.encode(to:)(void *a1)
{
  sub_22028A434(0, &qword_27CF27000, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028A148();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22028A148()
{
  result = qword_27CF27008;
  if (!qword_27CF27008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27008);
  }

  return result;
}

uint64_t ReorderWatchlistEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22036F388();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22028A434(0, &qword_27CF27010, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ReorderWatchlistEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028A148();
  sub_220370148();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_22028A4B8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22028A434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22028A148();
    v7 = a3(a1, &type metadata for ReorderWatchlistEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22028A4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReorderWatchlistEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22028A534(void *a1)
{
  sub_22028A434(0, &qword_27CF27000, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028A148();
  sub_220370168();
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22028A7D4()
{
  result = qword_27CF27038;
  if (!qword_27CF27038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27038);
  }

  return result;
}

unint64_t sub_22028A82C()
{
  result = qword_27CF27040;
  if (!qword_27CF27040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27040);
  }

  return result;
}

unint64_t sub_22028A884()
{
  result = qword_27CF27048;
  if (!qword_27CF27048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27048);
  }

  return result;
}

StocksAnalytics::AdState_optional __swiftcall AdState.init(rawValue:)(Swift::String rawValue)
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

uint64_t AdState.rawValue.getter()
{
  v1 = 0x6C616974696E69;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x656C6C69666C7566;
  }

  if (*v0)
  {
    v1 = 0x676E69646E6570;
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

unint64_t sub_22028A9C0()
{
  result = qword_27CF27050;
  if (!qword_27CF27050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27050);
  }

  return result;
}

uint64_t sub_22028AA14()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22028AAD8(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22028AB88(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22028AC54(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (*v1 != 2)
  {
    v5 = 0x656C6C69666C7566;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x676E69646E6570;
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

unint64_t sub_22028AD94()
{
  result = qword_2812622C8;
  if (!qword_2812622C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622C8);
  }

  return result;
}

uint64_t sub_22028AE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654D6E6F69746361 && a2 == 0xEC000000646F6874)
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

uint64_t sub_22028AEE0(uint64_t a1)
{
  v2 = sub_22028B0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028AF1C(uint64_t a1)
{
  v2 = sub_22028B0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionData.encode(to:)(void *a1)
{
  sub_22028B2F4(0, &qword_27CF27058, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028B0B4();
  sub_220370168();
  v11 = v8;
  sub_22028B108();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22028B0B4()
{
  result = qword_27CF27060;
  if (!qword_27CF27060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27060);
  }

  return result;
}

unint64_t sub_22028B108()
{
  result = qword_27CF27068;
  if (!qword_27CF27068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27068);
  }

  return result;
}

uint64_t ActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22028B2F4(0, &qword_27CF27070, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028B0B4();
  sub_220370148();
  if (!v2)
  {
    sub_22028B358();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22028B2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22028B0B4();
    v7 = a3(a1, &type metadata for ActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22028B358()
{
  result = qword_27CF27078;
  if (!qword_27CF27078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27078);
  }

  return result;
}

unint64_t sub_22028B408()
{
  result = qword_27CF27080;
  if (!qword_27CF27080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27080);
  }

  return result;
}

unint64_t sub_22028B460()
{
  result = qword_27CF27088;
  if (!qword_27CF27088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27088);
  }

  return result;
}

unint64_t sub_22028B4B8()
{
  result = qword_27CF27090;
  if (!qword_27CF27090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27090);
  }

  return result;
}

uint64_t sub_22028B568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_22028B5F0(uint64_t a1)
{
  v2 = sub_22028B7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028B62C(uint64_t a1)
{
  v2 = sub_22028B7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdCreativeData.encode(to:)(void *a1)
{
  sub_22028BA04(0, &qword_281261CB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028B7C4();
  sub_220370168();
  v11 = v8;
  sub_22028B818();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22028B7C4()
{
  result = qword_281265950;
  if (!qword_281265950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265950);
  }

  return result;
}

unint64_t sub_22028B818()
{
  result = qword_281265928;
  if (!qword_281265928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265928);
  }

  return result;
}

uint64_t AdCreativeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22028BA04(0, &qword_27CF27098, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028B7C4();
  sub_220370148();
  if (!v2)
  {
    sub_22028BA68();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22028BA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22028B7C4();
    v7 = a3(a1, &type metadata for AdCreativeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22028BA68()
{
  result = qword_27CF270A0;
  if (!qword_27CF270A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF270A0);
  }

  return result;
}

unint64_t sub_22028BAC0()
{
  result = qword_281265930;
  if (!qword_281265930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265930);
  }

  return result;
}

unint64_t sub_22028BB18()
{
  result = qword_281265938;
  if (!qword_281265938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265938);
  }

  return result;
}

unint64_t sub_22028BBC0()
{
  result = qword_27CF270A8;
  if (!qword_27CF270A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF270A8);
  }

  return result;
}

unint64_t sub_22028BC18()
{
  result = qword_281265940;
  if (!qword_281265940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265940);
  }

  return result;
}

unint64_t sub_22028BC70()
{
  result = qword_281265948;
  if (!qword_281265948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265948);
  }

  return result;
}

uint64_t DebugData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DebugData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22028BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_22028BDF4(uint64_t a1)
{
  v2 = sub_22028BFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028BE30(uint64_t a1)
{
  v2 = sub_22028BFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DebugData.encode(to:)(void *a1)
{
  sub_22028C190(0, &qword_27CF270B0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028BFB8();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22028BFB8()
{
  result = qword_27CF270B8;
  if (!qword_27CF270B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF270B8);
  }

  return result;
}

uint64_t DebugData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22028C190(0, &qword_27CF270C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028BFB8();
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

void sub_22028C190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22028BFB8();
    v7 = a3(a1, &type metadata for DebugData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22028C20C(void *a1)
{
  sub_22028C190(0, &qword_27CF270B0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028BFB8();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22028C37C()
{
  result = qword_27CF270C8;
  if (!qword_27CF270C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF270C8);
  }

  return result;
}

unint64_t sub_22028C3D4()
{
  result = qword_27CF270D0;
  if (!qword_27CF270D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF270D0);
  }

  return result;
}

unint64_t sub_22028C42C()
{
  result = qword_27CF270D8;
  if (!qword_27CF270D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF270D8);
  }

  return result;
}

uint64_t sub_22028C548()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27110);
  __swift_project_value_buffer(v0, qword_27CF27110);
  return sub_22036F108();
}

uint64_t ShareEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ShareEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 20);
  sub_22028D568(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 20);
  sub_22028D568(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 24);
  sub_22028D568(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 24);
  sub_22028D568(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 28);
  sub_22028D568(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 28);
  sub_22028D568(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 32);
  sub_22028D568(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 32);
  sub_22028D568(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 36);
  sub_22028D568(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 36);
  sub_22028D568(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 40);
  sub_22028D568(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 40);
  sub_22028D568(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 44);
  sub_22028D568(0, &qword_281266EE8, sub_22028D160, sub_22028D1B4, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22028D160()
{
  result = qword_281266EF0;
  if (!qword_281266EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266EF0);
  }

  return result;
}

unint64_t sub_22028D1B4()
{
  result = qword_281266EF8[0];
  if (!qword_281266EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281266EF8);
  }

  return result;
}

uint64_t ShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 44);
  sub_22028D568(0, &qword_281266EE8, sub_22028D160, sub_22028D1B4, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 48);
  sub_22028D568(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 48);
  sub_22028D568(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 52);
  sub_22028D568(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22028D568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareEvent(0) + 52);
  sub_22028D568(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ShareEvent(0);
  v5 = v4[5];
  sub_22028D568(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22028D568(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22028D568(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22028D568(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_22028D568(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_22028D568(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_22028D568(0, &qword_281266EE8, sub_22028D160, sub_22028D1B4, &type metadata for ShareContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22028D568(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_22028D568(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t ShareEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShareEvent.Model(0) + 20);
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

uint64_t ShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShareEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

void ShareEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ShareEvent.Model(0) + 28));
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

uint64_t ShareEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShareEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t ShareEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ShareEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ShareEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ShareEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ShareEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ShareEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ShareEvent.Model(0) + 52));
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

__n128 ShareEvent.Model.init(eventData:newsArticleData:actionData:groupData:feedData:viewData:userArticleContextData:shareContextData:issueData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11)
{
  v15 = *a3;
  v16 = *(a4 + 4);
  v17 = *(a4 + 5);
  v35 = *a5;
  v18 = *(a5 + 2);
  v19 = a6[1];
  v36 = *a6;
  v20 = *(a6 + 8);
  v37 = *a7;
  v38 = a8[1];
  v39 = *a8;
  v40 = a10[1];
  v41 = *a10;
  v46 = *a11;
  v45 = a11[1].n128_u64[0];
  v44 = a11[1].n128_u64[1];
  v42 = a11[2].n128_u8[1];
  v43 = a11[2].n128_u8[0];
  v21 = sub_22036F388();
  v33 = a4[1];
  v34 = *a4;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ShareEvent.Model(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a2 + 64);
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(a9 + v22[6]) = v15;
  v26 = a9 + v22[7];
  *v26 = v34;
  *(v26 + 16) = v33;
  *(v26 + 32) = v16;
  *(v26 + 40) = v17;
  v27 = a9 + v22[8];
  *v27 = v35;
  *(v27 + 16) = v18;
  v28 = a9 + v22[9];
  *v28 = v36;
  *(v28 + 8) = v19;
  *(v28 + 16) = v20;
  *(a9 + v22[10]) = v37;
  v29 = (a9 + v22[11]);
  *v29 = v39;
  v29[1] = v38;
  v30 = (a9 + v22[12]);
  *v30 = v41;
  v30[1] = v40;
  v31 = (a9 + v22[13]);
  result = v46;
  *v31 = v46;
  v31[1].n128_u64[0] = v45;
  v31[1].n128_u64[1] = v44;
  v31[2].n128_u8[0] = v43;
  v31[2].n128_u8[1] = v42;
  return result;
}

unint64_t sub_22028E060(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7461446575737369;
    if (a1 != 8)
    {
      v5 = 0x446C656E6E616863;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000016;
    if (a1 == 5)
    {
      v6 = 0x6174614477656976;
    }

    if (a1 <= 6u)
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
    v1 = 0x746144746E657665;
    v2 = 0x61446E6F69746361;
    v3 = 0x74614470756F7267;
    if (a1 != 3)
    {
      v3 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22028E1BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22028FD20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22028E1E4(uint64_t a1)
{
  v2 = sub_22028E7D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028E220(uint64_t a1)
{
  v2 = sub_22028E7D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22028F070(0, &qword_27CF27128, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028E7D8();
  sub_220370168();
  v56 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for ShareEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v51 = *(v11 + 32);
    v52 = v13;
    v14 = *(v11 + 16);
    v50[0] = *v11;
    v50[1] = v14;
    v15 = *(v11 + 48);
    v47 = v51;
    v48 = v15;
    v53 = *(v11 + 64);
    v49 = *(v11 + 64);
    v45 = v50[0];
    v46 = v12;
    v55 = 1;
    sub_22022ECDC(v50, v43);
    sub_22022EDA0();
    sub_22036FFF8();
    v43[2] = v47;
    v43[3] = v48;
    v44 = v49;
    v43[0] = v45;
    v43[1] = v46;
    sub_22022ED14(v43);
    LOBYTE(v38) = *(v3 + v10[6]);
    v54 = 2;
    sub_22023B7F4();
    sub_22036FFF8();
    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    *&v38 = *v16;
    *(&v38 + 1) = v17;
    v39 = v18;
    v40 = v19;
    v41 = v20;
    v42 = v21;
    v54 = 3;
    sub_22023846C(v38, v17, v18, v19, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v38, *(&v38 + 1), v39, v40, v41, v42);
    v22 = (v3 + v10[8]);
    v23 = *(v22 + 2);
    v38 = *v22;
    v39 = v23;
    v54 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v24 = (v3 + v10[9]);
    v25 = *v24;
    v26 = v24[1];
    LOWORD(v24) = *(v24 + 8);
    *&v38 = v25;
    *(&v38 + 1) = v26;
    LOWORD(v39) = v24;
    v54 = 5;
    sub_220202110();

    sub_22036FF88();

    LOWORD(v38) = *(v3 + v10[10]);
    v54 = 6;
    sub_22025E918();
    sub_22036FFF8();
    v28 = (v3 + v10[11]);
    v29 = v28[1];
    *&v38 = *v28;
    *(&v38 + 1) = v29;
    v54 = 7;
    sub_22028D1B4();

    sub_22036FFF8();

    v30 = (v3 + v10[12]);
    v31 = v30[1];
    *&v38 = *v30;
    *(&v38 + 1) = v31;
    v54 = 8;
    sub_220237744();

    sub_22036FF88();

    v32 = (v3 + v10[13]);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v36 = v32[3];
    v37 = *(v32 + 32);
    LOBYTE(v32) = *(v32 + 33);
    *&v38 = v33;
    *(&v38 + 1) = v34;
    v39 = v35;
    v40 = v36;
    LOBYTE(v41) = v37;
    BYTE1(v41) = v32;
    v54 = 9;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22028E7D8()
{
  result = qword_27CF27130;
  if (!qword_27CF27130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27130);
  }

  return result;
}

void ShareEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_22036F388();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22028F070(0, &qword_27CF27138, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = v31 - v8;
  v10 = type metadata accessor for ShareEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22028E7D8();
  v39 = v9;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v33 = a1;
    v32 = v12;
    LOBYTE(v43) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v13 = v36;
    sub_22036FF28();
    v14 = v32;
    (*(v35 + 32))(v32, v13, v4);
    v49 = 1;
    sub_22022ED48();
    sub_22036FF28();
    v31[1] = v4;
    v36 = 0;
    v15 = &v14[v10[5]];
    v16 = v46;
    *(v15 + 2) = v45;
    *(v15 + 3) = v16;
    *(v15 + 16) = v47;
    v17 = v44;
    *v15 = v43;
    *(v15 + 1) = v17;
    v48 = 2;
    sub_22023B7A0();
    sub_22036FF28();
    v14[v10[6]] = v40;
    v48 = 3;
    sub_220236C88();
    sub_22036FEB8();
    v18 = &v14[v10[7]];
    v19 = v41;
    *v18 = v40;
    *(v18 + 1) = v19;
    *(v18 + 2) = v42;
    v48 = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v20 = v41;
    v21 = &v14[v10[8]];
    *v21 = v40;
    *(v21 + 2) = v20;
    v48 = 5;
    sub_2202020B8();
    sub_22036FEB8();
    v22 = v41;
    v23 = &v14[v10[9]];
    *v23 = v40;
    *(v23 + 8) = v22;
    v48 = 6;
    sub_22025E8C4();
    sub_22036FF28();
    *&v14[v10[10]] = v40;
    v48 = 7;
    sub_22028D160();
    sub_22036FF28();
    v24 = *(&v40 + 1);
    v25 = &v14[v10[11]];
    *v25 = v40;
    *(v25 + 1) = v24;
    v48 = 8;
    sub_2202376F0();
    sub_22036FEB8();
    *&v14[v10[12]] = v40;
    v48 = 9;
    sub_220236A30();
    sub_22036FF28();
    (*(v38 + 8))(v39, v37);
    v26 = v41;
    v27 = v42;
    v28 = BYTE1(v42);
    v29 = v32;
    v30 = &v32[v10[13]];
    *v30 = v40;
    *(v30 + 1) = v26;
    v30[32] = v27;
    v30[33] = v28;
    sub_22028F0D4(v29, v34);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_22028F138(v29);
  }
}

void sub_22028F070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22028E7D8();
    v7 = a3(a1, &type metadata for ShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22028F0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22028F138(uint64_t a1)
{
  v2 = type metadata accessor for ShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22028F26C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22028D568(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22028D568(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22028D568(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22028D568(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_22028D568(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_22028D568(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_22028D568(0, &qword_281266EE8, sub_22028D160, sub_22028D1B4, &type metadata for ShareContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_22028D568(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_22028D568(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_22028F760(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22028D568(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22028D568(319, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_22028D568(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_22028D568(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_22028D568(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_22028D568(319, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
              if (v7 <= 0x3F)
              {
                sub_22028D568(319, &qword_281266EE8, sub_22028D160, sub_22028D1B4, &type metadata for ShareContextData);
                if (v8 <= 0x3F)
                {
                  sub_22028D568(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                  if (v9 <= 0x3F)
                  {
                    sub_22028D568(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                    if (v10 <= 0x3F)
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

void sub_22028FAC4(uint64_t a1)
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
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_22028FC1C()
{
  result = qword_27CF27140;
  if (!qword_27CF27140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27140);
  }

  return result;
}

unint64_t sub_22028FC74()
{
  result = qword_27CF27148;
  if (!qword_27CF27148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27148);
  }

  return result;
}

unint64_t sub_22028FCCC()
{
  result = qword_27CF27150;
  if (!qword_27CF27150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27150);
  }

  return result;
}

uint64_t sub_22028FD20(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
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

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390C70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 9;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t ShareContextData.iosActivityType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShareContextData.iosActivityType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22029013C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7669746341736F69 && a2 == 0xEF65707954797469)
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

uint64_t sub_2202901CC(uint64_t a1)
{
  v2 = sub_220290390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220290208(uint64_t a1)
{
  v2 = sub_220290390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShareContextData.encode(to:)(void *a1)
{
  sub_220290568(0, &qword_27CF27158, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220290390();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_220290390()
{
  result = qword_27CF27160;
  if (!qword_27CF27160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27160);
  }

  return result;
}

uint64_t ShareContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220290568(0, &qword_27CF27168, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220290390();
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

void sub_220290568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220290390();
    v7 = a3(a1, &type metadata for ShareContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202905EC(void *a1)
{
  sub_220290568(0, &qword_27CF27158, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220290390();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22029075C()
{
  result = qword_27CF27170;
  if (!qword_27CF27170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27170);
  }

  return result;
}

unint64_t sub_2202907B4()
{
  result = qword_27CF27178;
  if (!qword_27CF27178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27178);
  }

  return result;
}

unint64_t sub_22029080C()
{
  result = qword_27CF27180;
  if (!qword_27CF27180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27180);
  }

  return result;
}

StocksAnalytics::OrientationData __swiftcall OrientationData.init(deviceOrientation:interfaceOrientation:)(StocksAnalytics::DeviceOrientation deviceOrientation, StocksAnalytics::InterfaceOrientation interfaceOrientation)
{
  v3 = *interfaceOrientation;
  *v2 = *deviceOrientation;
  v2[1] = v3;
  result.deviceOrientation = deviceOrientation;
  return result;
}

uint64_t sub_2202908EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000220390C90 == a2 || (sub_220370048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220390CB0 == a2)
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

uint64_t sub_2202909D0(uint64_t a1)
{
  v2 = sub_220203A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220290A0C(uint64_t a1)
{
  v2 = sub_220203A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OrientationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22020381C(0, &unk_281261DD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220203A44();
  sub_220370148();
  if (!v2)
  {
    v16 = 0;
    sub_220290C2C();
    sub_22036FF28();
    v10 = v17;
    v14 = 1;
    sub_220290C80();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220290C2C()
{
  result = qword_281264E30;
  if (!qword_281264E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E30);
  }

  return result;
}

unint64_t sub_220290C80()
{
  result = qword_281264060;
  if (!qword_281264060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264060);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrientationData(unsigned __int16 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrientationData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_220290E54()
{
  result = qword_27CF27188;
  if (!qword_27CF27188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27188);
  }

  return result;
}

StocksAnalytics::VideoAdEngagementType_optional __swiftcall VideoAdEngagementType.init(rawValue:)(Swift::String rawValue)
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

uint64_t VideoAdEngagementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 0x6D6F436863746177;
  v4 = 1885956979;
  if (v1 != 4)
  {
    v4 = 0x726F4D6E7261656CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 0x656D75736572;
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

unint64_t sub_220290FC8()
{
  result = qword_27CF27190;
  if (!qword_27CF27190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27190);
  }

  return result;
}

uint64_t sub_220291024(uint64_t a1)
{
  sub_22036FB08();
}

void sub_220291120(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xED00006574656C70;
  v6 = 0x6D6F436863746177;
  v7 = 0xE400000000000000;
  v8 = 1885956979;
  if (v2 != 4)
  {
    v8 = 0x726F4D6E7261656CLL;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6573756170;
  if (v2 != 1)
  {
    v10 = 0x656D75736572;
    v9 = 0xE600000000000000;
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

unint64_t sub_220291298()
{
  result = qword_27CF27198;
  if (!qword_27CF27198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27198);
  }

  return result;
}

uint64_t AdJournalEntryData.init(status:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = sub_22036F968();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22036F998();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D2D4F0])
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    v16 = sub_22036F958();
    sub_22029172C(v16, &v26);
    (*(v12 + 8))(a1, v11);
    result = (*(v8 + 8))(v10, v7);
    v18 = v26;
  }

  else
  {
    if (v15 == *MEMORY[0x277D2D508])
    {
      (*(v12 + 96))(v14, v11);
      (*(v4 + 32))(v6, v14, v3);
      v20 = sub_22036F958();
      sub_22029172C(v20, &v27);
      (*(v12 + 8))(a1, v11);
      result = (*(v4 + 8))(v6, v3);
      v18 = v27;
      v19 = 3;
      goto LABEL_11;
    }

    if (v15 == *MEMORY[0x277D2D4F8])
    {
      result = (*(v12 + 8))(a1, v11);
      v19 = 0;
      v18 = 4;
      goto LABEL_11;
    }

    if (v15 == *MEMORY[0x277D2D520] || v15 == *MEMORY[0x277D2D528])
    {
      result = (*(v12 + 8))(a1, v11);
      v18 = 4;
      v19 = 2;
      goto LABEL_11;
    }

    if (v15 == *MEMORY[0x277D2D510])
    {
      result = (*(v12 + 8))(a1, v11);
      v19 = 4;
      v18 = 4;
      goto LABEL_11;
    }

    v22 = *MEMORY[0x277D2D518];
    v23 = *(v12 + 8);
    v24 = v15;
    result = v23(a1, v11);
    if (v24 == v22)
    {
      v18 = 4;
      v19 = 5;
      goto LABEL_11;
    }

    result = v23(v14, v11);
    v18 = 4;
  }

  v19 = 1;
LABEL_11:
  v21 = v25;
  *v25 = v19;
  v21[1] = v18;
  return result;
}

void sub_22029172C(void *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = sub_22036F9B8();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036F908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22036F8F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v14 = a1;
  sub_220291B20();
  if (!swift_dynamicCast())
  {
LABEL_5:

    v27 = a1;
    v19 = a1;
    if (swift_dynamicCast())
    {
      v20 = (*(v7 + 88))(v9, v6);
      if (v20 == *MEMORY[0x277D2D1B0] || v20 == *MEMORY[0x277D2D1C0] || v20 == *MEMORY[0x277D2D1B8])
      {

        v18 = 2;
        goto LABEL_20;
      }

      (*(v7 + 8))(v9, v6);
    }

    v27 = a1;
    if (swift_dynamicCast())
    {
      v23 = v25;
      if ((*(v25 + 88))(v5, v3) == *MEMORY[0x277D2D678])
      {

        v18 = 1;
        goto LABEL_20;
      }

      (*(v23 + 8))(v5, v3);
    }

    v18 = 3;
    goto LABEL_20;
  }

  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x277D2D1A8])
  {
    (*(v11 + 8))(v13, v10);
    goto LABEL_5;
  }

  (*(v11 + 96))(v13, v10);

  sub_220291B84(0);
  v16 = *(v15 + 48);
  v17 = sub_22036F9A8();
  (*(*(v17 - 8) + 8))(&v13[v16], v17);

  v18 = 0;
LABEL_20:
  *v26 = v18;
}

unint64_t sub_220291B20()
{
  result = qword_281261AF0;
  if (!qword_281261AF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281261AF0);
  }

  return result;
}

void sub_220291B84(uint64_t a1)
{
  if (!qword_27CF271A0)
  {
    sub_22036F9A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF271A0);
    }
  }
}

uint64_t sub_220291C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000220390D60 == a2)
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

uint64_t sub_220291CEC(uint64_t a1)
{
  v2 = sub_220291EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220291D28(uint64_t a1)
{
  v2 = sub_220291EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddToCalendarResultData.encode(to:)(void *a1)
{
  sub_220292100(0, &qword_27CF271A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220291EC0();
  sub_220370168();
  v11 = v8;
  sub_220291F14();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220291EC0()
{
  result = qword_27CF271B0;
  if (!qword_27CF271B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271B0);
  }

  return result;
}

unint64_t sub_220291F14()
{
  result = qword_27CF271B8;
  if (!qword_27CF271B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271B8);
  }

  return result;
}

uint64_t AddToCalendarResultData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220292100(0, &qword_27CF271C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220291EC0();
  sub_220370148();
  if (!v2)
  {
    sub_220292164();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220292100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220291EC0();
    v7 = a3(a1, &type metadata for AddToCalendarResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220292164()
{
  result = qword_27CF271C8;
  if (!qword_27CF271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271C8);
  }

  return result;
}

unint64_t sub_2202921BC()
{
  result = qword_27CF271D0;
  if (!qword_27CF271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271D0);
  }

  return result;
}

unint64_t sub_220292214()
{
  result = qword_27CF271D8;
  if (!qword_27CF271D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271D8);
  }

  return result;
}

unint64_t sub_2202922BC()
{
  result = qword_27CF271E0;
  if (!qword_27CF271E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271E0);
  }

  return result;
}

unint64_t sub_220292314()
{
  result = qword_27CF271E8;
  if (!qword_27CF271E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271E8);
  }

  return result;
}

unint64_t sub_22029236C()
{
  result = qword_27CF271F0;
  if (!qword_27CF271F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF271F0);
  }

  return result;
}

uint64_t sub_220292488()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27228);
  __swift_project_value_buffer(v0, qword_27CF27228);
  return sub_22036F108();
}

uint64_t NonNewsHeadlineExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsHeadlineExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 24);
  sub_220292FE0(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsHeadlineExposureEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 24);
  sub_220292FE0(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 28);
  sub_220292FE0(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsHeadlineExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 28);
  sub_220292FE0(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 32);
  sub_220292FE0(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsHeadlineExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 32);
  sub_220292FE0(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 36);
  sub_220292FE0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsHeadlineExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 36);
  sub_220292FE0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 40);
  sub_220292FE0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsHeadlineExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 40);
  sub_220292FE0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 44);
  sub_220292FE0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220292FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t NonNewsHeadlineExposureEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsHeadlineExposureEvent(0) + 44);
  sub_220292FE0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsHeadlineExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsHeadlineExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220292FE0(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220292FE0(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_220292FE0(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_220292FE0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_220292FE0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v12, v17);
  v18 = v4[11];
  sub_220292FE0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v12, v19);
}

uint64_t sub_220293548@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NonNewsHeadlineExposureEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsHeadlineExposureEvent.Model(0) + 24));
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

uint64_t NonNewsHeadlineExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NonNewsHeadlineExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsHeadlineExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NonNewsHeadlineExposureEvent.Model(0) + 36);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

void NonNewsHeadlineExposureEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsHeadlineExposureEvent.Model(0) + 40));
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

uint64_t NonNewsHeadlineExposureEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

__n128 NonNewsHeadlineExposureEvent.Model.init(eventData:timedData:nonNewsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int *a4@<X3>, int *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a3[1];
  v31 = *a3;
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  v15 = *a4;
  v16 = *a5;
  v17 = *(a5 + 4);
  v33 = *a6;
  v18 = *(a6 + 2);
  v32 = *(a6 + 1);
  v34 = *(a7 + 40);
  v35 = *(a7 + 32);
  v36 = *a8;
  v19 = sub_22036F388();
  v28 = *(a7 + 16);
  v29 = *a7;
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  v21 = v20[5];
  v22 = sub_22036F3C8();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = a9 + v20[6];
  *v23 = v31;
  *(v23 + 16) = v30;
  *(v23 + 32) = v13;
  *(v23 + 40) = v14;
  *(a9 + v20[7]) = v15;
  v24 = a9 + v20[8];
  *v24 = v16;
  *(v24 + 4) = v17;
  v25 = a9 + v20[9];
  *v25 = v33;
  *(v25 + 8) = v32;
  *(v25 + 16) = v18;
  v26 = a9 + v20[10];
  result = v29;
  *v26 = v29;
  *(v26 + 16) = v28;
  *(v26 + 32) = v35;
  *(v26 + 40) = v34;
  *(a9 + v20[11]) = v36;
  return result;
}

unint64_t sub_220293938()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x74614470756F7267;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6174614464656566;
  if (v1 == 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220293A30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220295170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220293A64(uint64_t a1)
{
  v2 = sub_220293F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220293AA0(uint64_t a1)
{
  v2 = sub_220293F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsHeadlineExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202946E8(0, &qword_27CF27240, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220293F78();
  sub_220370168();
  LOBYTE(v29) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
    LOBYTE(v29) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v29 = *v11;
    v30 = v12;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v34 = v16;
    v35 = 2;
    sub_22026C27C();

    sub_22036FFF8();

    LODWORD(v29) = *(v3 + v10[7]);
    v35 = 3;
    sub_2202760D8();
    sub_22036FFF8();
    v17 = (v3 + v10[8]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    LODWORD(v29) = v18;
    BYTE4(v29) = v17;
    v35 = 4;
    sub_220276330();
    sub_22036FF88();
    v19 = v3 + v10[9];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    LOBYTE(v29) = *v19;
    v30 = v20;
    v31 = v21;
    v35 = 5;
    sub_2201FBD1C();

    sub_22036FFF8();

    v22 = (v3 + v10[10]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    v29 = *v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v34 = v27;
    v35 = 6;
    sub_22023846C(v29, v23, v24, v25, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v29, v30, v31, v32, v33, v34);
    LOBYTE(v29) = *(v3 + v10[11]);
    v35 = 7;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220293F78()
{
  result = qword_27CF27248;
  if (!qword_27CF27248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27248);
  }

  return result;
}

void NonNewsHeadlineExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_22036F3C8();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202946E8(0, &qword_27CF27250, MEMORY[0x277D844C8]);
  v37 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220293F78();
  v36 = v9;
  v13 = v38;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v4;
    v15 = v12;
    v16 = v32;
    v17 = v34;
    LOBYTE(v39) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    sub_22036FF28();
    (*(v31 + 32))(v15, v35, v5);
    LOBYTE(v39) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    sub_22036FF28();
    v29 = v5;
    (*(v16 + 32))(v15 + v10[5], v14, v17);
    v42 = 2;
    sub_22026C224();
    v38 = 0;
    sub_22036FF28();
    v18 = v33;
    v19 = v40;
    v20 = v41;
    v21 = (v15 + v10[6]);
    *v21 = v39;
    v21[1] = v19;
    v21[2] = v20;
    v42 = 3;
    sub_220276084();
    sub_22036FF28();
    *(v15 + v10[7]) = v39;
    v42 = 4;
    sub_2202762DC();
    sub_22036FEB8();
    v22 = BYTE4(v39);
    v23 = v15 + v10[8];
    *v23 = v39;
    *(v23 + 4) = v22;
    v42 = 5;
    sub_2201FBCC4();
    sub_22036FF28();
    v24 = *(&v39 + 1);
    v25 = v40;
    v26 = v15 + v10[9];
    *v26 = v39;
    *(v26 + 8) = v24;
    *(v26 + 16) = v25;
    v42 = 6;
    sub_220236C88();
    sub_22036FEB8();
    v27 = (v15 + v10[10]);
    v28 = v40;
    *v27 = v39;
    v27[1] = v28;
    v27[2] = v41;
    v42 = 7;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v18 + 8))(v36, v37);
    *(v15 + v10[11]) = v39;
    sub_22029474C(v15, v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2202947B0(v15);
  }
}

void sub_2202946E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220293F78();
    v7 = a3(a1, &type metadata for NonNewsHeadlineExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22029474C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2202947B0(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsHeadlineExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202948E4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220292FE0(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220292FE0(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_220292FE0(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_220292FE0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_220292FE0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v13, v18);
  v19 = a1[11];
  sub_220292FE0(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v13, v20);
}

void sub_220294CB0(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220292FE0(319, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_220292FE0(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
        if (v4 <= 0x3F)
        {
          sub_220292FE0(319, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
          if (v5 <= 0x3F)
          {
            sub_220292FE0(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_220292FE0(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_220292FE0(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
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

void sub_220294F3C(uint64_t a1)
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
          sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_22029506C()
{
  result = qword_27CF27278;
  if (!qword_27CF27278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27278);
  }

  return result;
}

unint64_t sub_2202950C4()
{
  result = qword_27CF27280;
  if (!qword_27CF27280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27280);
  }

  return result;
}

unint64_t sub_22029511C()
{
  result = qword_27CF27288;
  if (!qword_27CF27288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27288);
  }

  return result;
}

uint64_t sub_220295170(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000012 && 0x8000000220390A60 == a2 || (sub_220370048() & 1) != 0)
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

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
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

uint64_t sub_220295478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657079546B6E696CLL && a2 == 0xE800000000000000)
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

uint64_t sub_220295500(uint64_t a1)
{
  v2 = sub_2202956D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029553C(uint64_t a1)
{
  v2 = sub_2202956D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinkData.encode(to:)(void *a1)
{
  sub_220295914(0, &qword_27CF27290, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202956D4();
  sub_220370168();
  v11 = v8;
  sub_220295728();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2202956D4()
{
  result = qword_27CF27298;
  if (!qword_27CF27298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27298);
  }

  return result;
}

unint64_t sub_220295728()
{
  result = qword_27CF272A0;
  if (!qword_27CF272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272A0);
  }

  return result;
}

uint64_t LinkData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220295914(0, &qword_27CF272A8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202956D4();
  sub_220370148();
  if (!v2)
  {
    sub_220295978();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220295914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202956D4();
    v7 = a3(a1, &type metadata for LinkData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220295978()
{
  result = qword_27CF272B0;
  if (!qword_27CF272B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272B0);
  }

  return result;
}

unint64_t sub_2202959D0()
{
  result = qword_27CF272B8;
  if (!qword_27CF272B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272B8);
  }

  return result;
}

unint64_t sub_220295A28()
{
  result = qword_27CF272C0;
  if (!qword_27CF272C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272C0);
  }

  return result;
}

unint64_t sub_220295AD0()
{
  result = qword_27CF272C8;
  if (!qword_27CF272C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272C8);
  }

  return result;
}

unint64_t sub_220295B28()
{
  result = qword_27CF272D0;
  if (!qword_27CF272D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272D0);
  }

  return result;
}

unint64_t sub_220295B80()
{
  result = qword_27CF272D8;
  if (!qword_27CF272D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272D8);
  }

  return result;
}

StocksAnalytics::CacheState_optional __swiftcall CacheState.init(rawValue:)(Swift::String rawValue)
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

uint64_t CacheState.rawValue.getter()
{
  v1 = 7629160;
  if (*v0 != 1)
  {
    v1 = 1936943469;
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

uint64_t sub_220295C7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7629160;
  if (v2 != 1)
  {
    v4 = 1936943469;
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

  v7 = 0xE300000000000000;
  v8 = 7629160;
  if (*a2 != 1)
  {
    v8 = 1936943469;
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

unint64_t sub_220295D64()
{
  result = qword_27CF272E0;
  if (!qword_27CF272E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272E0);
  }

  return result;
}

uint64_t sub_220295DB8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220295E4C(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220295ECC(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220295F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7629160;
  if (v2 != 1)
  {
    v5 = 1936943469;
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

unint64_t sub_220296078()
{
  result = qword_281266168;
  if (!qword_281266168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266168);
  }

  return result;
}

_BYTE *PaidSubscriptionData.init(paidSubscriptionStatus:trialSubscriptionChannelIDs:paidSubscriptionChannelIDs:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t PaidSubscriptionData.trialSubscriptionChannelIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PaidSubscriptionData.paidSubscriptionChannelIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_2202961C4()
{
  v1 = 0xD00000000000001BLL;
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
    return 0xD000000000000016;
  }
}

uint64_t sub_22029621C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220296B84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220296244(uint64_t a1)
{
  v2 = sub_2202964D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220296280(uint64_t a1)
{
  v2 = sub_2202964D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaidSubscriptionData.encode(to:)(void *a1)
{
  sub_220296814(0, &qword_281261C18, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202964D0();
  sub_220370168();
  LOBYTE(v16) = v9;
  v17 = 0;
  sub_220296524();
  sub_22036FFF8();
  if (!v2)
  {
    v11 = v14;
    v16 = v15;
    v17 = 1;
    sub_220269D00();
    sub_22026A024(&qword_281261EF0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22036FF88();
    v16 = v11;
    v17 = 2;
    sub_22036FF88();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2202964D0()
{
  result = qword_281263E00[0];
  if (!qword_281263E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281263E00);
  }

  return result;
}

unint64_t sub_220296524()
{
  result = qword_281263638;
  if (!qword_281263638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263638);
  }

  return result;
}

uint64_t PaidSubscriptionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220296814(0, &qword_27CF272E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202964D0();
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = 0;
    sub_220296878();
    sub_22036FF28();
    v10 = v15;
    sub_220269D00();
    v17 = 1;
    v14 = sub_22026A024(&qword_281261EE0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22036FEB8();
    v16 = v10;
    v12 = v15;
    v17 = 2;
    sub_22036FEB8();
    (*(v7 + 8))(v9, v6);
    v13 = v15;
    *a2 = v16;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_220296814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202964D0();
    v7 = a3(a1, &type metadata for PaidSubscriptionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220296878()
{
  result = qword_27CF272F0;
  if (!qword_27CF272F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272F0);
  }

  return result;
}

unint64_t sub_2202968D0()
{
  result = qword_281263DD8;
  if (!qword_281263DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263DD8);
  }

  return result;
}

unint64_t sub_220296928()
{
  result = qword_281263DE0;
  if (!qword_281263DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263DE0);
  }

  return result;
}

uint64_t sub_2202969AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_220296A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_220296A80()
{
  result = qword_27CF272F8;
  if (!qword_27CF272F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF272F8);
  }

  return result;
}

unint64_t sub_220296AD8()
{
  result = qword_281263DF0;
  if (!qword_281263DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263DF0);
  }

  return result;
}

unint64_t sub_220296B30()
{
  result = qword_281263DF8;
  if (!qword_281263DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263DF8);
  }

  return result;
}

uint64_t sub_220296B84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x8000000220390D80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000220390DA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220390DC0 == a2)
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

uint64_t sub_220296D70()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF27330);
  __swift_project_value_buffer(v0, qword_27CF27330);
  return sub_22036F108();
}

uint64_t WebSubscriptionAuthenticationEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebSubscriptionAuthenticationEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 20);
  sub_2202980F0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 20);
  sub_2202980F0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 24);
  sub_2202980F0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 24);
  sub_2202980F0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 28);
  sub_2202980F0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 28);
  sub_2202980F0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 32);
  sub_2202980F0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 32);
  sub_2202980F0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 36);
  sub_2202980F0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 36);
  sub_2202980F0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 40);
  sub_2202980F0(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 40);
  sub_2202980F0(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 44);
  sub_2202980F0(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 44);
  sub_2202980F0(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 48);
  sub_2202980F0(0, &qword_27CF27348, sub_220297B38, sub_220297B8C, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220297B38()
{
  result = qword_27CF27350;
  if (!qword_27CF27350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27350);
  }

  return result;
}

unint64_t sub_220297B8C()
{
  result = qword_27CF27358;
  if (!qword_27CF27358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27358);
  }

  return result;
}

uint64_t WebSubscriptionAuthenticationEvent.resultData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 48);
  sub_2202980F0(0, &qword_27CF27348, sub_220297B38, sub_220297B8C, &type metadata for ResultData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.storeKitErrorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 52);
  sub_2202980F0(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.storeKitErrorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 52);
  sub_2202980F0(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.adReferralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 56);
  sub_2202980F0(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.adReferralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 56);
  sub_2202980F0(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 60);
  sub_2202980F0(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_2202980F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

unint64_t sub_22029816C()
{
  result = qword_281265DA8;
  if (!qword_281265DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DA8);
  }

  return result;
}

unint64_t sub_2202981C0()
{
  result = qword_281265DB0;
  if (!qword_281265DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265DB0);
  }

  return result;
}

uint64_t WebSubscriptionAuthenticationEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebSubscriptionAuthenticationEvent(0) + 60);
  sub_2202980F0(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebSubscriptionAuthenticationEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebSubscriptionAuthenticationEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_2202980F0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_2202980F0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_2202980F0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_2202980F0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_2202980F0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_2202980F0(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_2202980F0(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_2202980F0(0, &qword_27CF27348, sub_220297B38, sub_220297B8C, &type metadata for ResultData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_2202980F0(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  (*(*(v23 - 8) + 104))(a1 + v22, v6, v23);
  v24 = v4[14];
  sub_2202980F0(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  (*(*(v25 - 8) + 104))(a1 + v24, v6, v25);
  v26 = v4[15];
  sub_2202980F0(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v6, v27);
}

uint64_t WebSubscriptionAuthenticationEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 20);
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

uint64_t WebSubscriptionAuthenticationEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t WebSubscriptionAuthenticationEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 28));
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

uint64_t WebSubscriptionAuthenticationEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

void WebSubscriptionAuthenticationEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 36));
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

uint64_t WebSubscriptionAuthenticationEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebSubscriptionAuthenticationEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t WebSubscriptionAuthenticationEvent.Model.resultData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 48);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t WebSubscriptionAuthenticationEvent.Model.storeKitErrorData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t WebSubscriptionAuthenticationEvent.Model.adReferralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

void WebSubscriptionAuthenticationEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0) + 60));
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

void sub_220298C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

__n128 WebSubscriptionAuthenticationEvent.Model.init(eventData:newsArticleData:feedData:channelData:viewData:groupData:purchaseSessionData:paywallData:resultData:storeKitErrorData:adReferralData:campaignData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t *a12, uint64_t a13)
{
  v17 = *a3;
  v19 = *(a3 + 1);
  v18 = *(a3 + 2);
  v40 = *a4;
  v20 = *(a4 + 2);
  v39 = *(a4 + 3);
  v38 = *(a4 + 32);
  v21 = *(a4 + 33);
  v44 = *a5;
  v43 = a5[1];
  v42 = *(a5 + 8);
  v47 = *(a6 + 4);
  v46 = *(a6 + 5);
  v49 = *a7;
  v48 = a7[1];
  v50 = *a8;
  v53 = *a10;
  v51 = *(a10 + 2);
  v52 = *(a10 + 1);
  v54 = *a11;
  v55 = a12[1];
  v56 = *a12;
  v57 = *(a13 + 40);
  v58 = *(a13 + 32);
  v22 = sub_22036F388();
  v45 = *a13;
  v41 = *(a13 + 16);
  v36 = a6[1];
  v37 = *a6;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a2 + 64);
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  v27 = a9 + v23[6];
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v18;
  v28 = a9 + v23[7];
  *v28 = v40;
  *(v28 + 16) = v20;
  *(v28 + 24) = v39;
  *(v28 + 32) = v38;
  *(v28 + 33) = v21;
  v29 = a9 + v23[8];
  *v29 = v44;
  *(v29 + 8) = v43;
  *(v29 + 16) = v42;
  v30 = a9 + v23[9];
  *v30 = v37;
  *(v30 + 16) = v36;
  *(v30 + 32) = v47;
  *(v30 + 40) = v46;
  v31 = (a9 + v23[10]);
  *v31 = v49;
  v31[1] = v48;
  *(a9 + v23[11]) = v50;
  v32 = a9 + v23[12];
  *v32 = v53;
  *(v32 + 8) = v52;
  *(v32 + 16) = v51;
  *(a9 + v23[13]) = v54;
  v33 = (a9 + v23[14]);
  *v33 = v56;
  v33[1] = v55;
  v34 = a9 + v23[15];
  result = v45;
  *v34 = v45;
  *(v34 + 16) = v41;
  *(v34 + 32) = v58;
  *(v34 + 40) = v57;
  return result;
}

unint64_t sub_220298EF4(unsigned __int8 a1)
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

    v7 = 0xD000000000000013;
    v8 = 0x446C6C6177796170;
    if (a1 != 7)
    {
      v8 = 0x6144746C75736572;
    }

    if (a1 != 6)
    {
      v7 = v8;
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
    v2 = 0x446C656E6E616863;
    v3 = 0x6174614477656976;
    if (a1 != 4)
    {
      v3 = 0x74614470756F7267;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x697472417377656ELL;
    if (a1 != 1)
    {
      v4 = 0x6174614464656566;
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

uint64_t sub_2202990B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22029B0CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2202990D8(uint64_t a1)
{
  v2 = sub_2202997C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220299114(uint64_t a1)
{
  v2 = sub_2202997C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebSubscriptionAuthenticationEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22029A264(0, &qword_27CF27370, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202997C4();
  sub_220370168();
  v68 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v65 = *(v11 + 32);
    v66 = v13;
    v14 = *(v11 + 16);
    v64[0] = *v11;
    v64[1] = v14;
    v15 = *(v11 + 48);
    v61 = v65;
    v62 = v15;
    v67 = *(v11 + 64);
    v63 = *(v11 + 64);
    v59 = v64[0];
    v60 = v12;
    v58 = 1;
    sub_2202669E8(v64, v56);
    sub_22022EDA0();
    sub_22036FF88();
    v56[2] = v61;
    v56[3] = v62;
    v57 = v63;
    v56[0] = v59;
    v56[1] = v60;
    sub_220267640(v56);
    v16 = v3 + v10[6];
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    LOBYTE(v49) = *v16;
    v50 = v17;
    v51 = v18;
    v55 = 2;
    sub_2201FBD1C();

    sub_22036FFF8();

    v19 = v3 + v10[7];
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    LOBYTE(v19) = *(v19 + 33);
    v49 = v20;
    v50 = v21;
    v51 = v22;
    v52 = v23;
    LOBYTE(v53) = v24;
    BYTE1(v53) = v19;
    v55 = 3;
    sub_220236A84();

    sub_22036FFF8();

    v25 = v3 + v10[8];
    v26 = *v25;
    v27 = *(v25 + 8);
    LOWORD(v25) = *(v25 + 16);
    v49 = v26;
    v50 = v27;
    LOWORD(v51) = v25;
    v55 = 4;
    sub_220202110();

    sub_22036FFF8();

    v28 = (v3 + v10[9]);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    v32 = v28[4];
    v33 = v28[5];
    v49 = *v28;
    v50 = v29;
    v51 = v30;
    v52 = v31;
    v53 = v32;
    v54 = v33;
    v55 = 5;
    sub_22023846C(v49, v29, v30, v31, v32, v33);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v49, v50, v51, v52, v53, v54);
    v35 = (v3 + v10[10]);
    v36 = v35[1];
    v49 = *v35;
    v50 = v36;
    v55 = 6;
    sub_220265D28();

    sub_22036FFF8();

    LOBYTE(v49) = *(v3 + v10[11]);
    v55 = 7;
    sub_220266254();
    sub_22036FFF8();
    v37 = v3 + v10[12];
    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    LOBYTE(v49) = *v37;
    v50 = v38;
    v51 = v39;
    v55 = 8;
    sub_220297B8C();

    sub_22036FFF8();

    LOBYTE(v49) = *(v3 + v10[13]);
    v55 = 9;
    sub_22027FD84();
    sub_22036FF88();
    v40 = (v3 + v10[14]);
    v41 = v40[1];
    v49 = *v40;
    v50 = v41;
    v55 = 10;
    sub_22027C714(v49, v41);
    sub_220284228();
    sub_22036FF88();
    sub_22027D3B4(v49, v50);
    v42 = (v3 + v10[15]);
    v43 = v42[1];
    v44 = v42[2];
    v45 = v42[3];
    v46 = v42[4];
    v47 = v42[5];
    v49 = *v42;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = 11;
    sub_220298C74(v49, v43, v44, v45, v46, v47);
    sub_2202981C0();
    sub_22036FF88();
    sub_220299818(v49, v50, v51, v52, v53, v54);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202997C4()
{
  result = qword_27CF27378;
  if (!qword_27CF27378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27378);
  }

  return result;
}

void sub_220299818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void WebSubscriptionAuthenticationEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_22036F388();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22029A264(0, &qword_27CF27380, MEMORY[0x277D844C8]);
  v45 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202997C4();
  v46 = v8;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v43;
    v40 = a1;
    v38 = v9;
    v39 = v11;
    LOBYTE(v49) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v13 = v44;
    sub_22036FF28();
    v14 = v39;
    (*(v42 + 32))(v39, v13, v4);
    v55 = 1;
    sub_22022ED48();
    sub_22036FEB8();
    v37 = v4;
    v44 = 0;
    v15 = v38;
    v16 = &v14[v38[5]];
    v17 = v52;
    *(v16 + 2) = v51;
    *(v16 + 3) = v17;
    *(v16 + 16) = v53;
    v18 = v50;
    *v16 = v49;
    *(v16 + 1) = v18;
    v54 = 2;
    sub_2201FBCC4();
    sub_22036FF28();
    v19 = *&v47[8];
    v20 = *&v47[16];
    v21 = &v14[v15[6]];
    *v21 = v47[0];
    *(v21 + 1) = v19;
    *(v21 + 2) = v20;
    v54 = 3;
    sub_220236A30();
    sub_22036FF28();
    v22 = *&v47[16];
    v23 = v48;
    v24 = BYTE1(v48);
    v25 = &v14[v15[7]];
    *v25 = *v47;
    *(v25 + 1) = v22;
    v25[32] = v23;
    v25[33] = v24;
    v54 = 4;
    sub_2202020B8();
    sub_22036FF28();
    v26 = *&v47[8];
    v27 = *&v47[16];
    v28 = &v14[v15[8]];
    *v28 = *v47;
    *(v28 + 1) = v26;
    *(v28 + 8) = v27;
    v54 = 5;
    sub_220236C88();
    sub_22036FEB8();
    v29 = &v14[v15[9]];
    v30 = *&v47[16];
    *v29 = *v47;
    *(v29 + 1) = v30;
    *(v29 + 2) = v48;
    v54 = 6;
    sub_220265CD4();
    sub_22036FF28();
    v31 = *&v47[8];
    v32 = &v14[v15[10]];
    *v32 = *v47;
    *(v32 + 1) = v31;
    v54 = 7;
    sub_220266200();
    sub_22036FF28();
    v39[v15[11]] = v47[0];
    v54 = 8;
    sub_220297B38();
    sub_22036FF28();
    v33 = &v39[v15[12]];
    *v33 = v47[0];
    *(v33 + 8) = *&v47[8];
    v54 = 9;
    sub_22027FD2C();
    sub_22036FEB8();
    v39[v38[13]] = v47[0];
    v54 = 10;
    sub_2202841D0();
    sub_22036FEB8();
    *&v39[v38[14]] = *v47;
    v54 = 11;
    sub_22029816C();
    sub_22036FEB8();
    (*(v12 + 8))(v46, v45);
    v34 = v39;
    v35 = &v39[v38[15]];
    v36 = *&v47[16];
    *v35 = *v47;
    *(v35 + 1) = v36;
    *(v35 + 2) = v48;
    sub_22029A2C8(v34, v41);
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_22029A32C(v34);
  }
}

void sub_22029A264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202997C4();
    v7 = a3(a1, &type metadata for WebSubscriptionAuthenticationEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22029A2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22029A32C(uint64_t a1)
{
  v2 = type metadata accessor for WebSubscriptionAuthenticationEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22029A460@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_2202980F0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_2202980F0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v9, v4, v10);
  v11 = a1[7];
  sub_2202980F0(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_2202980F0(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_2202980F0(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v7, v16);
  v17 = a1[10];
  sub_2202980F0(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_2202980F0(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_2202980F0(0, &qword_27CF27348, sub_220297B38, sub_220297B8C, &type metadata for ResultData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_2202980F0(0, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
  (*(*(v24 - 8) + 104))(a2 + v23, v7, v24);
  v25 = a1[14];
  sub_2202980F0(0, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
  (*(*(v26 - 8) + 104))(a2 + v25, v7, v26);
  v27 = a1[15];
  sub_2202980F0(0, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v7, v28);
}

void sub_22029AA44(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_2202980F0(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_2202980F0(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_2202980F0(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_2202980F0(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            sub_2202980F0(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_2202980F0(319, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
              if (v7 <= 0x3F)
              {
                sub_2202980F0(319, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
                if (v8 <= 0x3F)
                {
                  sub_2202980F0(319, &qword_27CF27348, sub_220297B38, sub_220297B8C, &type metadata for ResultData);
                  if (v9 <= 0x3F)
                  {
                    sub_2202980F0(319, &qword_27CF27360, sub_22027FD2C, sub_22027FD84, &type metadata for StoreKitErrorData);
                    if (v10 <= 0x3F)
                    {
                      sub_2202980F0(319, &qword_27CF27368, sub_2202841D0, sub_220284228, &type metadata for AdReferralData);
                      if (v11 <= 0x3F)
                      {
                        sub_2202980F0(319, &qword_281266830, sub_22029816C, sub_2202981C0, &type metadata for CampaignData);
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

void sub_22029AE48(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_27CF26930, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF273A8, &type metadata for StoreKitErrorData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF273B0, &type metadata for AdReferralData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281265DA0, &type metadata for CampaignData);
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

unint64_t sub_22029AFC8()
{
  result = qword_27CF273B8;
  if (!qword_27CF273B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273B8);
  }

  return result;
}

unint64_t sub_22029B020()
{
  result = qword_27CF273C0;
  if (!qword_27CF273C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273C0);
  }

  return result;
}

unint64_t sub_22029B078()
{
  result = qword_27CF273C8;
  if (!qword_27CF273C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273C8);
  }

  return result;
}

uint64_t sub_22029B0CC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6144746C75736572 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
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

uint64_t IssueData.issueID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IssueData.issueID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22029B578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496575737369 && a2 == 0xE700000000000000)
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

uint64_t sub_22029B600(uint64_t a1)
{
  v2 = sub_22029B7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029B63C(uint64_t a1)
{
  v2 = sub_22029B7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueData.encode(to:)(void *a1)
{
  sub_22029B99C(0, &qword_281261B78, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029B7C4();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22029B7C4()
{
  result = qword_281262030;
  if (!qword_281262030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262030);
  }

  return result;
}

uint64_t IssueData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22029B99C(0, &qword_27CF273D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029B7C4();
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

void sub_22029B99C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029B7C4();
    v7 = a3(a1, &type metadata for IssueData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22029BA20(void *a1)
{
  sub_22029B99C(0, &qword_281261B78, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029B7C4();
  sub_220370168();
  sub_22036FFB8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22029BB90()
{
  result = qword_27CF273D8;
  if (!qword_27CF273D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273D8);
  }

  return result;
}

unint64_t sub_22029BBE8()
{
  result = qword_281262020;
  if (!qword_281262020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262020);
  }

  return result;
}

unint64_t sub_22029BC40()
{
  result = qword_281262028;
  if (!qword_281262028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262028);
  }

  return result;
}

void __swiftcall UserBundleSubscriptionContextData.init(bundleSubscriptionStatus:isBundlePurchaser:isAmplifyUser:bundleSubscriptionPurchaseID:sBundlePurchaseID:isPaidBundleViaOfferTrialist:)(StocksAnalytics::UserBundleSubscriptionContextData *__return_ptr retstr, StocksAnalytics::BundleSubscriptionStatus bundleSubscriptionStatus, Swift::Bool isBundlePurchaser, Swift::Bool isAmplifyUser, Swift::String_optional bundleSubscriptionPurchaseID, Swift::String_optional sBundlePurchaseID, Swift::Bool isPaidBundleViaOfferTrialist)
{
  retstr->bundleSubscriptionStatus = *bundleSubscriptionStatus;
  retstr->isBundlePurchaser = isBundlePurchaser;
  retstr->isAmplifyUser = isAmplifyUser;
  retstr->bundleSubscriptionPurchaseID = bundleSubscriptionPurchaseID;
  retstr->sBundlePurchaseID = sBundlePurchaseID;
  retstr->isPaidBundleViaOfferTrialist = isPaidBundleViaOfferTrialist;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.bundleSubscriptionPurchaseID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UserBundleSubscriptionContextData.sBundlePurchaseID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t sub_22029BE94()
{
  v1 = *v0;
  v2 = 0x66696C706D417369;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_22029BF6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22029C9A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22029BF94(uint64_t a1)
{
  v2 = sub_22029C248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029BFD0(uint64_t a1)
{
  v2 = sub_22029C248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserBundleSubscriptionContextData.encode(to:)(void *a1)
{
  sub_22029C670(0, &qword_281261BB8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = v1[2];
  v17 = v9;
  v10 = *(v1 + 1);
  v15[2] = *(v1 + 2);
  v15[3] = v10;
  v11 = *(v1 + 3);
  v15[0] = *(v1 + 4);
  v15[1] = v11;
  v12 = v1[40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029C248();
  sub_220370168();
  v25 = v8;
  v24 = 0;
  sub_22029C29C();
  v13 = v18;
  sub_22036FFF8();
  if (!v13)
  {
    LODWORD(v18) = v12;
    v23 = 1;
    sub_22036FFC8();
    v22 = 2;
    sub_22036FFC8();
    v21 = 3;
    sub_22036FF68();
    v20 = 4;
    sub_22036FF68();
    v19 = 5;
    sub_22036FFC8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22029C248()
{
  result = qword_281262860;
  if (!qword_281262860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262860);
  }

  return result;
}

unint64_t sub_22029C29C()
{
  result = qword_281263290;
  if (!qword_281263290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263290);
  }

  return result;
}

uint64_t UserBundleSubscriptionContextData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22029C670(0, &qword_281261D68, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029C248();
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_22029C6D4();
    sub_22036FF28();
    v10 = v34[0];
    v34[0] = 1;
    v31 = sub_22036FEF8();
    v34[0] = 2;
    v30 = sub_22036FEF8();
    v34[0] = 3;
    v11 = sub_22036FE98();
    v13 = v12;
    v28 = v10;
    v29 = v11;
    v34[0] = 4;
    v14 = sub_22036FE98();
    v16 = v15;
    v27 = v14;
    v42 = 5;
    v17 = sub_22036FEF8();
    v26 = v31 & 1;
    v31 = v30 & 1;
    (*(v7 + 8))(v9, v6);
    v30 = v17 & 1;
    v18 = v28;
    LOBYTE(v32) = v28;
    v19 = v26;
    BYTE1(v32) = v26;
    BYTE2(v32) = v31;
    *(&v32 + 3) = v43;
    BYTE7(v32) = v44;
    v20 = v29;
    *(&v32 + 1) = v29;
    *v33 = v13;
    v21 = v27;
    *&v33[8] = v27;
    *&v33[16] = v16;
    v33[24] = v30;
    v22 = *&v33[9];
    v23 = *v33;
    *a2 = v32;
    a2[1] = v23;
    *(a2 + 25) = v22;
    sub_22029C728(&v32, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34[0] = v18;
    v34[1] = v19;
    v34[2] = v31;
    v35 = v43;
    v36 = v44;
    v37 = v20;
    v38 = v13;
    v39 = v21;
    v40 = v16;
    v41 = v30;
    return sub_22029C760(v34);
  }
}

void sub_22029C670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029C248();
    v7 = a3(a1, &type metadata for UserBundleSubscriptionContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029C6D4()
{
  result = qword_281263280;
  if (!qword_281263280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263280);
  }

  return result;
}

uint64_t sub_22029C7C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22029C81C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_22029C8A0()
{
  result = qword_27CF273E0;
  if (!qword_27CF273E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273E0);
  }

  return result;
}

unint64_t sub_22029C8F8()
{
  result = qword_281262850;
  if (!qword_281262850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262850);
  }

  return result;
}

unint64_t sub_22029C950()
{
  result = qword_281262858;
  if (!qword_281262858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262858);
  }

  return result;
}

uint64_t sub_22029C9A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000220390E00 == a2;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390E20 == a2 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66696C706D417369 && a2 == 0xED00007265735579 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220390E40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390E60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220390E80 == a2)
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

uint64_t SearchSelectionData.selectedResult.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchSelectionData.selectedResult.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::SearchSelectionData __swiftcall SearchSelectionData.init(selectedResult:selectedResultActionType:)(StocksAnalytics::SearchSelectionData selectedResult, StocksAnalytics::SelectedResultActionType selectedResultActionType)
{
  v3 = *selectedResultActionType;
  *v2 = selectedResult.selectedResult;
  *(v2 + 16) = v3;
  selectedResult.selectedResultActionType = selectedResultActionType;
  return selectedResult;
}

uint64_t sub_22029CC88()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_22029CCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657463656C6573 && a2 == 0xEE00746C75736552;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220390EA0 == a2)
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

uint64_t sub_22029CDC0(uint64_t a1)
{
  v2 = sub_22029CFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22029CDFC(uint64_t a1)
{
  v2 = sub_22029CFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSelectionData.encode(to:)(void *a1)
{
  sub_22029D284(0, &qword_27CF273E8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v14 = *(v1 + 16);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_22029CFD8();
  sub_220370168();
  v17 = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_22029D02C();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_22029CFD8()
{
  result = qword_27CF273F0;
  if (!qword_27CF273F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273F0);
  }

  return result;
}

unint64_t sub_22029D02C()
{
  result = qword_27CF273F8;
  if (!qword_27CF273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF273F8);
  }

  return result;
}

uint64_t SearchSelectionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22029D284(0, &qword_27CF27400, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22029CFD8();
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
  sub_22029D2E8();
  sub_22036FF28();
  (*(v7 + 8))(v9, v6);
  v14 = v18;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22029D284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22029CFD8();
    v7 = a3(a1, &type metadata for SearchSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22029D2E8()
{
  result = qword_27CF27408;
  if (!qword_27CF27408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27408);
  }

  return result;
}

unint64_t sub_22029D398()
{
  result = qword_27CF27410;
  if (!qword_27CF27410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27410);
  }

  return result;
}

unint64_t sub_22029D3F0()
{
  result = qword_27CF27418;
  if (!qword_27CF27418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27418);
  }

  return result;
}

unint64_t sub_22029D448()
{
  result = qword_27CF27420;
  if (!qword_27CF27420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF27420);
  }

  return result;
}

StocksAnalytics::ArticleSource_optional __swiftcall ArticleSource.init(rawValue:)(Swift::String rawValue)
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

uint64_t ArticleSource.rawValue.getter()
{
  v1 = 0x656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6F6F686179;
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