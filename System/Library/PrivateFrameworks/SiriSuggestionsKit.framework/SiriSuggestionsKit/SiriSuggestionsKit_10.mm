uint64_t GenericSuggestionDetailsBuilder.deinit()
{

  sub_1BF960A50(v0 + 32);
  sub_1BF8DFBF0(v0 + 80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  sub_1BF980E40(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  sub_1BF8DFBF0(v0 + 224, &qword_1EBDEA288, &qword_1BF9C5060);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 264);
  sub_1BF8DFBF0(v0 + 304, &qword_1EBDEA290, &qword_1BF9C5068);

  sub_1BF8DFBF0(v0 + 416, &qword_1EBDE8E10, &qword_1BF9B9980);

  sub_1BF8DFBF0(v0 + 464, &qword_1EBDEA298, &qword_1BF9C9D00);
  return v0;
}

uint64_t GenericSuggestionDetailsBuilder.__deallocating_deinit()
{
  GenericSuggestionDetailsBuilder.deinit();
  OUTLINED_FUNCTION_60_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF97DAE8@<X0>(uint64_t *a1@<X8>)
{
  result = GenericSuggestionDetailsBuilder.__allocating_init(suggestionId:dialogDetails:)();
  *a1 = result;
  return result;
}

uint64_t sub_1BF97DB10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979B80(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DB3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979BCC(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF979C18(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979CB4(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DBC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979D00(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DBEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979D4C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DC18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979D98(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DC44@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979F18();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97DC70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979FD0(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DC9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979F78(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DCC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF979F28(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97A028(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97A070(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97A0B8(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97DD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = sub_1BF980D2C(v7, v4, v5, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DDC4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979DE4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97DDF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A19C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DE1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A158(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v8 = *v6;
  result = sub_1BF97A1F4(a1, a2, a3, a4, a5);
  *a6 = v8;
  return result;
}

uint64_t sub_1BF97DE74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A100(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DEC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97A440(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1BF97DF38()
{
  result = sub_1BF97DF60();
  qword_1EDC03438 = result;
  unk_1EDC03440 = v1;
  qword_1EDC03448 = v2;
  unk_1EDC03450 = v3;
  return result;
}

uint64_t sub_1BF97DF60()
{
  if (qword_1EDBF2FF0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDBF2FF8;
  v1 = *(off_1EDBF2FF8 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0748(0, v1, 0);
    v2 = v12;
    v3 = (v0 + 32);
    v4 = *(v12 + 16);
    v5 = 16 * v4;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v13 = v2;
      v8 = *(v2 + 24);
      v9 = v4 + 1;
      if (v4 >= v8 >> 1)
      {
        sub_1BF8D0748(v8 > 1, v4 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v9;
      v10 = v2 + v5;
      *(v10 + 32) = v6;
      *(v10 + 40) = 0x7FFFFFFFFFFFFFFFLL;
      v5 += 16;
      v4 = v9;
      --v1;
    }

    while (v1);
  }

  sub_1BF978D64(v2);
  sub_1BF9322AC();
  sub_1BF9B4988();
  return 3;
}

uint64_t SuggestionDefinitionBuildingErrors.hashValue.getter()
{
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF97E160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 40) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
  sub_1BF932404();
  *(v3 + 48) = sub_1BF9B4988();
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  sub_1BF9649CC(a3, &v7);
  type metadata accessor for GenericSuggestionDetailsBuilder();
  OUTLINED_FUNCTION_60_4();
  v5 = swift_allocObject();
  GenericSuggestionDetailsBuilder.init(suggestionId:dialogDetails:)();
  sub_1BF960A50(a3);
  *(v3 + 32) = v5;
  return v3;
}

uint64_t sub_1BF97E260(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_1BF97E2AC()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v2 = sub_1BF8C9288();
  if (!v2)
  {
LABEL_13:
    sub_1BF97E4F4();

    OUTLINED_FUNCTION_64();
    return;
  }

  v3 = v2;
  OUTLINED_FUNCTION_49_4(v2);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v1 & 0xC000000000000001;
    v27 = v1;
    v26 = v1 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v5 = MEMORY[0x1BFB5E5E0](0, v1);
      }

      else
      {
        v5 = *(v1 + 32);
      }

      v6 = OUTLINED_FUNCTION_63_3();
      sub_1BF8DFE40(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
      if (OUTLINED_FUNCTION_48_5(v8))
      {
        v9 = OUTLINED_FUNCTION_30_10();
        v10(v9);
        v11 = v31;
        v12 = v32;
        v13 = v33;
        v28 = v35;
        v29 = v34;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        OUTLINED_FUNCTION_2_0();
        MEMORY[0x1EEE9AC00](v14);
        OUTLINED_FUNCTION_17();
        v16 = OUTLINED_FUNCTION_36_9(v15);
        v17(v16);
        v18 = v3;
        v3 = v1;
        v19 = v12;
        v4 = v26;
        v1 = v27;
        AnySignalValue.init<A>(_:)(v18, v11, v19, v13, v29, v28, v37);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        __swift_destroy_boxed_opaque_existential_1Tm(&v36);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_61_5();
        sub_1BF8DFBF0(v20, &qword_1EBDE8CF8, qword_1BF9C2C00);
        v21 = OUTLINED_FUNCTION_63_3();
        sub_1BF8E0940(v21, v22);
      }

      sub_1BF8D2004(v5 + 16, &v39);

      memcpy(v38, v37, sizeof(v38));
      OUTLINED_FUNCTION_65_5();
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_11_3(v23);
        sub_1BF8D07C8(v25, v5, 1);
      }

      OUTLINED_FUNCTION_33_9();
    }

    while (v3);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1BF97E4F4()
{
  OUTLINED_FUNCTION_23(v0 + 40, v3);

  sub_1BF8D2464(v1);
  swift_endAccess();
}

void sub_1BF97E554()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = *v2;
  v4 = sub_1BF8C9288();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_49_4(v4);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v1 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v7 = MEMORY[0x1BFB5E5E0](0, v1);
        }

        else
        {
          v7 = *(v1 + 32);
        }

        v8 = OUTLINED_FUNCTION_63_3();
        sub_1BF8DFE40(v8, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
        if (OUTLINED_FUNCTION_48_5(v10))
        {
          v11 = OUTLINED_FUNCTION_30_10();
          v12(v11);
          v13 = v30;
          v14 = v32;
          v27 = v33;
          v28 = v31;
          v26 = v34;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          OUTLINED_FUNCTION_2_0();
          MEMORY[0x1EEE9AC00](v15);
          OUTLINED_FUNCTION_17();
          v17 = OUTLINED_FUNCTION_36_9(v16);
          v18(v17);
          v19 = v1;
          v1 = v6;
          AnySignalValue.init<A>(_:)(v19, v13, v28, v14, v27, v26, v36);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          __swift_destroy_boxed_opaque_existential_1Tm(&v35);
        }

        else
        {
          v20 = OUTLINED_FUNCTION_61_5();
          sub_1BF8DFBF0(v20, &qword_1EBDE8CF8, qword_1BF9C2C00);
          v21 = OUTLINED_FUNCTION_63_3();
          sub_1BF8E0940(v21, v22);
        }

        sub_1BF8D2004(v7 + 16, &v38);

        memcpy(v37, v36, sizeof(v37));
        OUTLINED_FUNCTION_65_5();
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_11_3(v23);
          sub_1BF8D07C8(v25, v7, 1);
        }

        OUTLINED_FUNCTION_33_9();
      }
    }

    __break(1u);
  }

  else
  {
    v37[0] = v3;
    sub_1BF97E7B4(MEMORY[0x1E69E7CC0], v37);

    OUTLINED_FUNCTION_64();
  }
}

uint64_t sub_1BF97E7B4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ActionIdentifier(0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = (v7 - v6);
  v9 = *a2;
  *v8 = sub_1BF978FA0();
  v8[1] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v12 = OUTLINED_FUNCTION_52_5(v11);
  sub_1BF960AA4(v8, v12 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier);

  v13 = sub_1BF980950(a1, v9, v12, v2);

  return v13;
}

uint64_t sub_1BF97E8B8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = sub_1BF978FA0();
  CandidateSuggestionConfiguratorFactory.create(suggestionId:)(v4, v5, v2, v3);

  OUTLINED_FUNCTION_11_2(v1 + 56, v6, v7, v8, v9, v10, v11, v12, v14);
  sub_1BF981A78(v15, v1 + 56, &qword_1EBDE99C8, qword_1BF9C2D00);
  swift_endAccess();
}

uint64_t sub_1BF97E9D0()
{
  OUTLINED_FUNCTION_32_11();
  sub_1BF979DE4();
}

uint64_t sub_1BF97EA40()
{
  OUTLINED_FUNCTION_32_11();
  sub_1BF979F18();
}

uint64_t sub_1BF97EB10()
{
  OUTLINED_FUNCTION_32_11();
  v0();
}

uint64_t sub_1BF97EB6C()
{
  OUTLINED_FUNCTION_32_11();
  v0();
}

uint64_t sub_1BF97EBE0()
{
  OUTLINED_FUNCTION_32_11();
  v0();
}

uint64_t sub_1BF97EC3C(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  a2(a1, v3);
  return sub_1BF8DFBF0(v3, &qword_1EBDE9E28, &qword_1BF9C2CE8);
}

uint64_t sub_1BF97EC8C()
{

  sub_1BF8DFBF0(v0 + 56, &qword_1EBDE99C8, qword_1BF9C2D00);
  return v0;
}

uint64_t sub_1BF97ECDC()
{
  sub_1BF97EC8C();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF97ED10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF978F54();
  *a1 = result;
  return result;
}

uint64_t sub_1BF97ED38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97ED78@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EDB8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EDF8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EE38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EE78@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EEB8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EEF8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EA40();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EF24@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EF64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EFA4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97EFE4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F024@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F064@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB10();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BF979258(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1BF97F0DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  result = sub_1BF980C24(v7, v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_1BF97F128@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97E9D0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F154@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F194@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F1D4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF979210();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F200@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EB6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F264@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97EBE0();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  result = sub_1BF97E260(a1, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1BF97F32C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF97E4F4();
  *a1 = v3;
  return result;
}

uint64_t sub_1BF97F358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BF97E7B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF97F384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1BF980AAC(a1, a2, v11, v8, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1BF97F3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  result = sub_1BF97E8B8(a1);
  *a2 = v4;
  return result;
}

void sub_1BF97F41C(void *a1@<X8>)
{
  v3 = *v1;
  sub_1BF97E2AC();
  *a1 = v3;
}

uint64_t sub_1BF97F474@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UtteranceAction();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  a1[3] = v2;
  result = sub_1BF981AC4(&qword_1EDBF32A8, type metadata accessor for UtteranceAction, &protocol conformance descriptor for UtteranceAction);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1BF97F52C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF97F550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BF9B56D8() & 1;
  }
}

void sub_1BF97F5EC(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1BF9B5758();
      __break(1u);
      goto LABEL_22;
    }

    v28 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_1BF8C2E64(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA2F0, &unk_1BF9C5570);
      sub_1BF9B53B8();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v18[2] = v23;
    v4 = v28 + 1;
    a2 = 1;
  }

  sub_1BF95BE84();
  v16 = sub_1BF8C2E64(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1BF9B5288();
  MEMORY[0x1BFB5DE90](0xD00000000000001BLL, 0x80000001BF9CDAF0);
  sub_1BF9B5378();
  MEMORY[0x1BFB5DE90](39, 0xE100000000000000);
  sub_1BF9B53F8();
  __break(1u);
}

void sub_1BF97FD64(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_98;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE98D0, &qword_1BF9C06F0);
  v2 = sub_1BF9B5258();
  v3 = v2;
  v71 = *(v1 + 16);
  if (!v71)
  {
    goto LABEL_98;
  }

  v4 = 0;
  v83 = v2 + 56;
  v73 = v2;
  v69 = v1 + 32;
  v70 = v1;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_100;
    }

    v5 = v69 + 40 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    sub_1BF9B57A8();
    sub_1BF8C0D00(v7, v6, v9, v8, v10);
    DeliveryVehicle.rawValue.getter(v11, v12);
    sub_1BF9B4B48();

    v13 = sub_1BF9B57E8();
    v14 = -1 << *(v3 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = *(v83 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    v79 = v8;
    v81 = v6;
    v84 = v7;
    if (((1 << v15) & v17) == 0)
    {
      break;
    }

    v72 = v4;
    v82 = ~v14;
    v74 = v9;
    v19 = v9 | v6 | v8;
    v20 = v19 | v7;
    v21 = v7 == 1;
    v25 = v19 == 0;
    v22 = v19 == 0;
    if (!v25)
    {
      v21 = 0;
    }

    v23 = v7 == 2;
    v24 = v7 == 4;
    v25 = v20 == 0;
    if (v20)
    {
      v26 = v21;
    }

    else
    {
      v26 = 1;
    }

    v78 = v26;
    v27 = "assistantSuggestions";
    if (v25)
    {
      v27 = "siriNotification";
    }

    v77 = v27 | 0x8000000000000000;
    v28 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2;
    v29 = !v23 || !v22;
    v30 = 0x706C654869726973;
    if (v23 && v22)
    {
      v30 = 0x696669746F4E736FLL;
    }

    v31 = 0xEE006E6F69746163;
    if (v29)
    {
      v31 = 0xE800000000000000;
    }

    v32 = !v24 || !v22;
    if (v24 && v22)
    {
      v33 = 0xD000000000000014;
    }

    else
    {
      v33 = 0xD000000000000010;
    }

    v34 = "siriAutoComplete";
    if (v32)
    {
      v34 = "actionWillExecute";
    }

    v35 = v34 | 0x8000000000000000;
    v36 = !v28 || !v22;
    if (v28 && v22)
    {
      v37 = v30;
    }

    else
    {
      v37 = v33;
    }

    if (v36)
    {
      v38 = v35;
    }

    else
    {
      v38 = v31;
    }

    v75 = v38;
    v76 = v37;
    v80 = v10;
    v39 = v6;
    while (1)
    {
      v40 = *(v3 + 48) + 40 * v15;
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      v44 = *(v40 + 24);
      v45 = *(v40 + 32);
      v85 = v43;
      v86 = v42;
      v87 = *v40;
      if (v45 == 2)
      {
        if (!(v43 | v42 | v41 | v44))
        {
          v47 = 0xD000000000000010;
          v48 = 0x80000001BF9CBC40;
LABEL_61:
          v46 = v84;
          goto LABEL_62;
        }

        v49 = v43 | v42 | v44;
        v50 = v41 == 1 && v49 == 0;
        v47 = 0xD000000000000010;
        v48 = 0x80000001BF9CBC20;
        v46 = v84;
        if (!v50)
        {
          v51 = v87 == 2 && v49 == 0;
          v47 = 0x696669746F4E736FLL;
          v48 = 0xEE006E6F69746163;
          if (!v51)
          {
            if (v87 == 3 && v49 == 0)
            {
              v48 = 0xE800000000000000;
              v47 = 0x706C654869726973;
            }

            else
            {
              v53 = v49 == 0;
              v54 = v87 == 4;
              v55 = !v54 || !v53;
              if (v54 && v53)
              {
                v47 = 0xD000000000000014;
              }

              else
              {
                v47 = 0xD000000000000010;
              }

              v56 = "siriAutoComplete";
              if (v55)
              {
                v56 = "actionWillExecute";
              }

              v46 = v84;
              v48 = v56 | 0x8000000000000000;
            }
          }
        }
      }

      else
      {
        if (v45 != 1)
        {

          MEMORY[0x1BFB5DE90](v87, v42);
          if (v44)
          {
            MEMORY[0x1BFB5DE90](v43, v44);
            v57 = 95;
            v58 = 0xE100000000000000;
          }

          else
          {
            v57 = 0;
            v58 = 0xE000000000000000;
          }

          MEMORY[0x1BFB5DE90](v57, v58);

          v47 = 0x5F7070416E69;
          v48 = 0xE600000000000000;
          v10 = v80;
          v39 = v81;
          goto LABEL_61;
        }

        v46 = v84;
        if (*v40)
        {
          if (*v40 == 1)
          {
            v47 = 0x746E694869726973;
            v48 = 0xEF6E656B6F705373;
          }

          else
          {
            v48 = 0xE700000000000000;
            v47 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          v47 = 0x746E694869726973;
          v48 = 0xE900000000000073;
        }
      }

LABEL_62:
      if (v10 == 2)
      {
        v59 = v78 ? 0xD000000000000010 : v76;
        v60 = v78 ? v77 : v75;
      }

      else if (v10 == 1)
      {
        if (v46)
        {
          v59 = v46 == 1 ? 0x746E694869726973 : 0x6E776F6E6B6E75;
          v60 = v46 == 1 ? 0xEF6E656B6F705373 : 0xE700000000000000;
        }

        else
        {
          v59 = 0x746E694869726973;
          v60 = 0xE900000000000073;
        }
      }

      else
      {
        MEMORY[0x1BFB5DE90](v46, v39);
        if (v79)
        {
          MEMORY[0x1BFB5DE90](v74);
          v62 = 95;
          v61 = 0xE100000000000000;
        }

        else
        {
          v62 = 0;
          v61 = 0xE000000000000000;
        }

        MEMORY[0x1BFB5DE90](v62, v61);

        v59 = 0x5F7070416E69;
        v60 = 0xE600000000000000;
        v3 = v73;
        v10 = v80;
        v39 = v81;
      }

      if (v47 == v59 && v48 == v60)
      {
        break;
      }

      v64 = sub_1BF9B56D8();
      sub_1BF8C0CB8(v87, v86, v85, v44, v45);

      if (v64)
      {
        goto LABEL_94;
      }

      v15 = (v15 + 1) & v82;
      v16 = v15 >> 6;
      v17 = *(v83 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if ((v17 & (1 << v15)) == 0)
      {
        v1 = v70;
        v4 = v72;
        v9 = v74;
        goto LABEL_95;
      }
    }

    sub_1BF8C0CB8(v87, v86, v85, v44, v45);

LABEL_94:
    sub_1BF8C0CB8(v84, v39, v74, v79, v10);
    v1 = v70;
    v4 = v72;
LABEL_97:
    if (++v4 == v71)
    {
LABEL_98:

      return;
    }
  }

  v1 = v70;
LABEL_95:
  *(v83 + 8 * v16) = v17 | v18;
  v65 = *(v3 + 48) + 40 * v15;
  *v65 = v84;
  *(v65 + 8) = v81;
  *(v65 + 16) = v9;
  *(v65 + 24) = v79;
  *(v65 + 32) = v10;
  v66 = *(v3 + 16);
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (!v67)
  {
    *(v3 + 16) = v68;
    goto LABEL_97;
  }

LABEL_100:
  __break(1u);
}

uint64_t (*sub_1BF980454(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1BF97F520(a3);
  sub_1BF97F52C(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1BFB5E5E0](a2, a3);
  }

  *a1 = v7;
  return j__OUTLINED_FUNCTION_25_12;
}

uint64_t sub_1BF9804E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BF97F594(v5, v7) & 1;
}

uint64_t sub_1BF980530(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
  (*(v9 + 16))(v11);
  swift_beginAccess();
  sub_1BF944C38();
  v12 = *(*(a3 + 40) + 16);
  sub_1BF944CF0(v12);
  v13 = *(a3 + 40);
  *(v13 + 16) = v12 + 1;
  sub_1BF932458(a1, v13 + 120 * v12 + 32);
  *(a3 + 40) = v13;
  swift_endAccess();
  v14 = sub_1BF978FA0();
  CandidateSuggestionConfiguratorFactory.create(suggestionId:)(v14, v15, a4, a5);

  swift_beginAccess();
  sub_1BF92523C(*(a3 + 48), &v25, a1);
  if (v26)
  {
    sub_1BF8C2C9C(&v25, v24);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF9B6380;
    sub_1BF8D2004(v24, inited + 32);
    sub_1BF8D2004(v27, inited + 72);
    static CandidateSuggestionConfigurators.merge(_:)(inited, &v25);
    swift_setDeallocating();
    sub_1BF906498();
    if (!v26)
    {
      sub_1BF8DFBF0(&v25, &qword_1EBDE99C8, qword_1BF9C2D00);
      if (qword_1EDBF57F0 != -1)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v19 = sub_1BF9B47C8();
        __swift_project_value_buffer(v19, qword_1EDBF57F8);
        v20 = sub_1BF9B47A8();
        v21 = sub_1BF9B5048();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1BF8B8000, v20, v21, "Unable to merge configurators. This shouldnt be happening", v22, 2u);
          MEMORY[0x1BFB5F320](v22, -1, -1);
        }

        __break(1u);
LABEL_10:
        swift_once();
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    sub_1BF8C2C9C(&v25, v27);
  }

  else
  {
    sub_1BF8DFBF0(&v25, &qword_1EBDE99C8, qword_1BF9C2D00);
    swift_endAccess();
  }

  sub_1BF932458(a1, v24);
  sub_1BF8D2004(v27, &v25);
  swift_beginAccess();
  sub_1BF932964(&v25, v24);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v17 = *(v9 + 8);

  v17(v11, a4);
  return a3;
}

uint64_t sub_1BF9808B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BF8C2C9C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BF980950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[3] = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v23[4] = &protocol witness table for DefaultCandidateSuggestionConfigurator;
  v23[0] = a3;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 32);

    do
    {
      *v10 = sub_1BF978FA0();
      v10[1] = v13;
      swift_storeEnumTagMultiPayload();
      v19 = a2;
      sub_1BF978E0C(v10, &v19, v23, v20);
      sub_1BF9651B0(v10);
      v14 = v21;
      v15 = v22;
      v16 = __swift_project_boxed_opaque_existential_1(v20, v21);
      sub_1BF980530(v12, v16, a4, v14, v15);

      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v12 += 15;
      --v11;
    }

    while (v11);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return a4;
}

uint64_t sub_1BF980AAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ActionIdentifier(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[3] = a5;
  v29[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a3, a5);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *a2;
    v18 = (a1 + 32);
    do
    {
      *v14 = sub_1BF978FA0();
      v14[1] = v19;
      swift_storeEnumTagMultiPayload();
      v25 = v17;
      sub_1BF978E0C(v14, &v25, v29, v26);
      sub_1BF9651B0(v14);
      v20 = v27;
      v21 = v28;
      v22 = __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_1BF980530(v18, v22, a4, v20, v21);

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v18 += 15;
      --v16;
    }

    while (v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return a4;
}

uint64_t sub_1BF980C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  sub_1BF980D2C(v9, *(a2 + 32), a3, a4);

  v10 = *(v7 + 8);

  v10(v9, a3);
  return a2;
}

uint64_t sub_1BF980D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF8D2004(v11, v10);
  OUTLINED_FUNCTION_23(a2 + 80, v9);
  sub_1BF981A78(v10, a2 + 80, &qword_1EBDEA2A0, &unk_1BF9C9CF0);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return a2;
}

uint64_t sub_1BF980DF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BF980E40(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BF8F5A94(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1BF980E58()
{
  result = qword_1EBDEA2B8;
  if (!qword_1EBDEA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA2B8);
  }

  return result;
}

uint64_t dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

uint64_t dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))(a1, a2, a3);
}

{
  return (*(a4 + 56))(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for SuggestionDefinitionBuildingErrors(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF981838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF981874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF9818C0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1BF9818F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1BF981934(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF981998(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1BF9819D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_25_12();
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1BF981A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

uint64_t sub_1BF981AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF981B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v20[3] = *a7;
  v20[4] = &off_1F3EF85D8;
  v20[0] = a7;
  type metadata accessor for InvocationTypePrerequisite();
  v13 = swift_allocObject();
  v19[3] = &unk_1F3EFDAF0;
  v19[4] = &off_1F3EFDB90;
  v14 = swift_allocObject();
  v19[0] = v14;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  *(v13 + 56) = a1;
  sub_1BF8D2004(v19, v13 + 64);
  *(v13 + 104) = a6;
  sub_1BF8D2004(v20, v13 + 112);
  v15 = qword_1EDBF1D10;

  if (v15 != -1)
  {
    swift_once();
  }

  *(v13 + 152) = byte_1EDC03418;
  *(v13 + 160) = unk_1EDC03420;
  v16 = type metadata accessor for OSFeatureFlagProvider();
  v17 = swift_allocObject();
  v17[2] = sub_1BF905224;
  v17[3] = 0;
  v17[4] = sub_1BF905228;
  v17[5] = 0;
  *(v13 + 40) = v16;
  *(v13 + 48) = &protocol witness table for OSFeatureFlagProvider;

  *(v13 + 16) = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v13;
}

uint64_t objectdestroy_106Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF981D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_16()
{

  return sub_1BF8C2C9C((v2 - 128), v0 + 40 * v1 + 32);
}

void OUTLINED_FUNCTION_31_12()
{

  sub_1BF8DE328();
}

void OUTLINED_FUNCTION_49_4(uint64_t a1)
{
  *(v2 - 96) = v1;

  sub_1BF8D07C8(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return sub_1BF8D2004(v1 - 200, v0 + 288);
}

void OUTLINED_FUNCTION_58_6()
{
  v1 = v0[7];
  v0[41] = v0[8];
  v0[19] = v1;
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return swift_allocObject();
}

const char *SiriSuggestionsFeatureFlags.domain.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return "Siri";
  }

  switch(v1)
  {
    case 33:
      return "IntelligenceFlow";
    case 29:
      return "SiriUI";
    case 30:
      return "IntelligenceFlow";
    case 19:
      return "ResponseFramework";
    default:
      return "SiriAssistantSuggestions";
  }
}

const char *SiriSuggestionsFeatureFlags.feature.getter()
{
  result = "suggestions";
  switch(*v0)
  {
    case 1:
      result = "conversationalContinuers";
      break;
    case 2:
      result = "conversationalContinuersCarPlay";
      break;
    case 3:
      result = "conversationalContinuersHomePod";
      break;
    case 4:
      result = "conversationalContinuersiPad";
      break;
    case 5:
      result = "conversationalContinuersVision";
      break;
    case 6:
      result = "inAppSuggestions";
      break;
    case 7:
      result = "siriHelp";
      break;
    case 8:
      result = "siriHelpCarPlay";
      break;
    case 9:
      result = "siriHelpHomePod";
      break;
    case 0xA:
      result = "siriHelpMac";
      break;
    case 0xB:
      result = "siriHelpThirdParty";
      break;
    case 0xC:
      result = "experimentService";
      break;
    case 0xD:
      result = "featureAnnouncement";
      break;
    case 0xE:
      result = "panIndiaFeatureAnnouncement";
      break;
    case 0xF:
      result = "crossDomainHint";
      break;
    case 0x10:
      result = "voxHint";
      break;
    case 0x11:
      result = "siriHelpUseResponseFramework2";
      break;
    case 0x12:
      result = "siriHelpUseSnippetModernization";
      break;
    case 0x13:
      result = "SMART";
      break;
    case 0x14:
      result = "featureExtraction";
      break;
    case 0x15:
      result = "SAESuggestions";
      break;
    case 0x16:
      result = "SAESuggestionsMac";
      break;
    case 0x17:
      result = "habitualActions";
      break;
    case 0x18:
      result = "contextualActions";
      break;
    case 0x19:
      result = "currentAppViewActions";
      break;
    case 0x1A:
      result = "firstUseSuggestions";
      break;
    case 0x1B:
      result = "handCraftedAppIntentSuggestions";
      break;
    case 0x1C:
      result = "appIntentSuggestions";
      break;
    case 0x1D:
      result = "sae";
      break;
    case 0x1E:
      result = "FullPlanner";
      break;
    case 0x1F:
      result = "SAEContinuers";
      break;
    case 0x20:
      result = "aytQueryOverXPC";
      break;
    case 0x21:
      result = "DisableAllActions";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriSuggestionsFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF982194(uint64_t a1)
{
  sub_1BF9B57A8();
  SiriSuggestionsFeatureFlags.hash(into:)();
  return sub_1BF9B57E8();
}

unint64_t sub_1BF9821E0()
{
  result = qword_1EBDEA2F8;
  if (!qword_1EBDEA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA2F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF9823D0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_5_1();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_2_24(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1BF9824B0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  (*(*(v3 + 8) + 16))(v2);
  OUTLINED_FUNCTION_4();

  return v4();
}

uint64_t InternalSuggestionsRepository.getAsyncPooledSuggestions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF982558, 0, 0);
}

uint64_t sub_1BF982558()
{
  OUTLINED_FUNCTION_7();
  (*(*(v0 + 24) + 16))(*(v0 + 16));
  OUTLINED_FUNCTION_4();

  return v1();
}

uint64_t dispatch thunk of InternalSuggestionsRepository.getAsyncPooledSuggestions()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 24) + **(a2 + 24));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_1BF95E930;

  return v8(a1, a2);
}

uint64_t sub_1BF9826FC()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_5_1();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_2_24(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1BF982780()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_5_1();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_2_24(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1BF982804(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95FA3C;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t sub_1BF9828E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = &type metadata for BridgeOwner;
  *(a4 + 32) = sub_1BF986624();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
}

uint64_t sub_1BF982944@<X0>(void *a1@<X8>, unint64_t *a2@<X0>, uint64_t (*a3)(void)@<X1>, uint64_t a4@<X2>)
{
  a1[3] = *v4;
  a1[4] = sub_1BF9865E0(a2, a3, a4);
  *a1 = v4;
}

uint64_t Owner.getOwner()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v3, a1);
}

uint64_t OwnerProviders.__allocating_init(owners:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t OwnerProviders.init(owners:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1BF982A9C(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = v2;
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 88) + **(a2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  *v6 = v3;
  v6[1] = sub_1BF982BCC;

  return v8(ObjectType, a2);
}

uint64_t sub_1BF982BCC()
{
  v1 = *(*v0 + 40);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v5 + 56) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BF982CDC, v1, 0);
}

uint64_t sub_1BF982CDC()
{
  v17 = v0;
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v1 = sub_1BF9B47C8();
  __swift_project_value_buffer(v1, qword_1EDBF57F8);

  v2 = sub_1BF9B47A8();
  v3 = sub_1BF9B5028();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    v8 = MEMORY[0x1BFB5E030](v4, v7);
    v10 = sub_1BF8DE810(v8, v9, &v16);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_24_10(&dword_1BF8B8000, v11, v12, "Initialised Owners are: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  v13 = *(v0 + 56);
  swift_beginAccess();
  sub_1BF8D2518(v13);
  swift_endAccess();
  OUTLINED_FUNCTION_77();

  return v14();
}

uint64_t sub_1BF982EA4()
{
  v18 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x1E69E7CC0];

  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDBF57F0);
  }

  v2 = sub_1BF9B47C8();
  __swift_project_value_buffer(v2, qword_1EDBF57F8);

  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5028();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 112);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8868, &unk_1BF9B8590);
    v9 = MEMORY[0x1BFB5E030](v7, v8);
    v11 = v10;

    v12 = sub_1BF8DE810(v9, v11, &v17);

    *(v5 + 4) = v12;
    OUTLINED_FUNCTION_24_10(&dword_1BF8B8000, v13, v14, "Destroyed Owners are: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  OUTLINED_FUNCTION_77();

  return v15();
}

uint64_t OwnerProviders.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t OwnerProviders.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BF9830C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF972D14;

  return sub_1BF982A9C(a1, a2);
}

uint64_t sub_1BF98316C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF972884;

  return sub_1BF982E84();
}

uint64_t DomainOwnerProvider.getOwner()@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  a2[3] = type metadata accessor for DomainOwner();
  result = sub_1BF9865E0(&qword_1EDBF3868, type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1BF983280(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1BF9B56D8();
  }
}

uint64_t static Owner.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_18();
  v6 = *(v5 + 40);
  (v6)(v35, v7, v5);
  v8 = v36;
  v9 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  OUTLINED_FUNCTION_8_13();
  v11 = v10(v8, v9);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_88();
  v6(v14);
  v15 = v33;
  v16 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_8_13();
  v18 = v17(v15, v16);
  if (v11 == v18 && v13 == v19)
  {

    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_16_15(v18);

    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v22 = 0;
    if ((v21 & 1) == 0)
    {
      return v22 & 1;
    }
  }

  v23 = *(a4 + 48);
  v24 = OUTLINED_FUNCTION_88();
  v25 = v23(v24);
  v27 = v26;
  v28 = OUTLINED_FUNCTION_88();
  if (v25 == v23(v28) && v27 == v29)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1BF9B56D8();
  }

  return v22 & 1;
}

uint64_t Owner.hash(into:)()
{
  OUTLINED_FUNCTION_10_18();
  v5 = OUTLINED_FUNCTION_20_16(v3, v4);
  v6(v5);
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  SuggestionGroup.hash(into:)(v2, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v10);
  (*(v0 + 48))(v1, v0);
  sub_1BF9B4B48();
}

BOOL Owner.equals(other:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_20_16(a1, a2);
  v8 = v7(v6);
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 48))(v11, v12);
  if (v8 == v13 && v10 == v14)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_16_15(v13);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  (*(a3 + 40))(v36, a2, a3);
  v17 = v37;
  v18 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  OUTLINED_FUNCTION_8_13();
  v20 = v19(v17, v18);
  v22 = v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 40))(v33, v23, v24);
  v25 = v34;
  v26 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  OUTLINED_FUNCTION_8_13();
  if (v20 == v27(v25, v26) && v22 == v28)
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v30 = sub_1BF9B56D8();

    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return DynamicType == swift_getDynamicType();
}

unint64_t sub_1BF983790(uint64_t a1)
{
  type metadata accessor for DefaultOwner();
  v1 = swift_allocObject();
  *(v1 + 40) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(v1 + 16) = 4;
  *(v1 + 48) = result;
  *(v1 + 56) = 0x72656E774F6F4ELL;
  *(v1 + 64) = 0xE700000000000000;
  *(v1 + 72) = 0x72656E774F6F4ELL;
  *(v1 + 80) = 0xE700000000000000;
  qword_1EDBF4B48 = v1;
  return result;
}

uint64_t static Owners.SIRIHELPOWNER.getter(uint64_t a1)
{
  type metadata accessor for SiriHelpOwner();

  return swift_initStaticObject();
}

unint64_t sub_1BF983854(uint64_t a1)
{
  type metadata accessor for DefaultOwner();
  v1 = swift_allocObject();
  *(v1 + 40) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(v1 + 16) = 4;
  *(v1 + 48) = result;
  *(v1 + 56) = 0xD000000000000011;
  *(v1 + 64) = 0x80000001BF9CDF90;
  *(v1 + 72) = 0xD000000000000011;
  *(v1 + 80) = 0x80000001BF9CDF90;
  qword_1EDBF0860 = v1;
  return result;
}

uint64_t static Owners.createMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  OUTLINED_FUNCTION_14_15(255, v2);
  sub_1BF9B4E08();
  v3 = OUTLINED_FUNCTION_14_15(0, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_25();
  v4 = OUTLINED_FUNCTION_21_15();
  sub_1BF9094A0(v4, v5, v6, v3, v7, v8, v9, v10);
  sub_1BF9B4E08();
  swift_getWitnessTable();
  return sub_1BF9B4998();
}

uint64_t sub_1BF9839FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v14 - v8;
  v15 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  *a3 = (*(v11 + 48))(v10, v11);
  *(a3 + 1) = v12;
  (*(v7 + 16))(v9, a1, TupleTypeMetadata2);
  (*(*(a2 - 8) + 32))(&a3[v15], &v9[*(TupleTypeMetadata2 + 48)], a2);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t static Owners.createOwnerArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_1BF9B4E08();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  v3 = OUTLINED_FUNCTION_14_15(0, v2);
  OUTLINED_FUNCTION_4_25();
  v4 = OUTLINED_FUNCTION_21_15();
  return sub_1BF9094A0(v4, v5, v6, v3, v7, v8, v9, v10);
}

uint64_t sub_1BF983C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8868, &unk_1BF9B8590);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(a3 + 8))(a2, a3);
  return (*(*(a2 - 8) + 16))(a4 + v8, a1, a2);
}

void *DomainOwner.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  v2[5] = a2;

  return v2;
}

Swift::String __swiftcall DomainOwner.getIdentifier()()
{

  v0 = OUTLINED_FUNCTION_43();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1BF983D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1BF983E58(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1BF983EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF983D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF983EDC(uint64_t a1)
{
  v2 = sub_1BF985704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF983F18(uint64_t a1)
{
  v2 = sub_1BF985704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DomainOwner.__deallocating_deinit()
{
  DomainOwner.deinit();
  v0 = OUTLINED_FUNCTION_7_17();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DomainOwner.__allocating_init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17();
  v1 = swift_allocObject();
  DomainOwner.init(from:)();
  return v1;
}

uint64_t sub_1BF98408C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DomainOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *_s18SiriSuggestionsKit11DomainOwnerCyACSScfC_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_17();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  v4[5] = a2;

  return v4;
}

unint64_t AppOwner.getSuggestionGroup()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(a1 + 32) = result;
  *a1 = 2;
  return result;
}

uint64_t sub_1BF984164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1BF984234(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF98427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9842D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF984164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9842F8(uint64_t a1)
{
  v2 = sub_1BF985758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF984334(uint64_t a1)
{
  v2 = sub_1BF985758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF9843A4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_20_16(a1, a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BF9B5898();
  v19 = 0;
  v15 = v17[1];
  sub_1BF9B55F8();
  if (!v15)
  {
    v18 = 1;
    sub_1BF9B55F8();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t AppOwner.__allocating_init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_17();
  v1 = swift_allocObject();
  AppOwner.init(from:)();
  return v1;
}

void *sub_1BF984578(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = v5;
  v9 = OUTLINED_FUNCTION_20_16(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BF9B5868();
  if (v19)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 16) = sub_1BF9B5518();
    *(v5 + 24) = v12;
    v14 = sub_1BF9B5518();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_12_16();
    v18(v17);
    *(v7 + 32) = v14;
    *(v7 + 40) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1BF9847C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BF984858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_10_18();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_23_15();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = a4(v14, v6, v5, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v16;
}

void *DefaultOwner.__allocating_init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A78, &unk_1BF9B8570);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8DF554();
  sub_1BF9B5868();
  if (!v1)
  {
    LOBYTE(v21) = 1;
    v5 = sub_1BF9B5518();
    v7 = v6;
    sub_1BF8D9A54();
    v9 = OUTLINED_FUNCTION_9_18();
    v10(v9);
    sub_1BF8D5C74(&v21, v18);
    v11 = swift_allocObject();
    v12 = v19;
    v13 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    OUTLINED_FUNCTION_23_15();
    MEMORY[0x1EEE9AC00](v14);
    v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v4 = sub_1BF9857AC(v16, v5, v7, v11, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

Swift::String __swiftcall DefaultOwner.getIdentifier()()
{

  v0 = OUTLINED_FUNCTION_43();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static DefaultOwner.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[7] == a2[7] && a1[8] == a2[8];
  if (v4 || (v5 = 0, (sub_1BF9B56D8() & 1) != 0))
  {
    v6 = a1[5];
    v7 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
    OUTLINED_FUNCTION_8_13();
    v9 = v8(v6, v7);
    v11 = v10;
    v12 = a2[5];
    v13 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
    OUTLINED_FUNCTION_8_13();
    if (v9 == v14(v12, v13) && v11 == v15)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BF9B56D8();
    }
  }

  return v5 & 1;
}

uint64_t DefaultOwner.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A70, &qword_1BF9C57E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8DF554();
  sub_1BF9B5898();
  LOBYTE(v17[0]) = 1;
  sub_1BF9B55F8();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  v12 = v3[5];
  v13 = v3[6];
  v14 = __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v17[3] = v12;
  v17[4] = *(v13 + 16);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v12);
  sub_1BF8DA9D4(v10, 0, v17);
  (*(v7 + 8))(v10, v5);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1BF984ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_70(0x70756F7267, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (OUTLINED_FUNCTION_70(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70(0x7470697263736564, 0xEB000000006E6F69);

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

uint64_t sub_1BF984FC8(char a1)
{
  if (!a1)
  {
    return 0x70756F7267;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0x7470697263736564;
}

uint64_t sub_1BF985030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF984ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF985058(uint64_t a1)
{
  v2 = sub_1BF8DF554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF985094(uint64_t a1)
{
  v2 = sub_1BF8DF554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefaultOwner.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t DefaultOwner.__deallocating_deinit()
{
  DefaultOwner.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

void *sub_1BF9851F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = DefaultOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t SiriHelpOwner.getSuggestionGroup()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for CoreSuggestionGroups;
  result = sub_1BF937F68();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_1BF985294(uint64_t a1)
{
  v2 = sub_1BF98583C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9852D0(uint64_t a1)
{
  v2 = sub_1BF98583C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriHelpOwner.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA320, &qword_1BF9C57E8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF98583C();
  sub_1BF9B5898();
  return (*(v4 + 8))(v7, v2);
}

uint64_t SiriHelpOwner.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1BF985510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriHelpOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1BF985554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  v15 = sub_1BF9857AC(v13, a2, a3, v14, a5, a6);
  (*(v11 + 8))(a1, a5);
  return v15;
}

unint64_t sub_1BF985704()
{
  result = qword_1EDBF52C8;
  if (!qword_1EDBF52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52C8);
  }

  return result;
}

unint64_t sub_1BF985758()
{
  result = qword_1EDBF4080;
  if (!qword_1EDBF4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4080);
  }

  return result;
}

void *sub_1BF9857AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[5] = a5;
  a4[6] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  a4[7] = a2;
  a4[8] = a3;
  a4[9] = a2;
  a4[10] = a3;

  return a4;
}

unint64_t sub_1BF98583C()
{
  result = qword_1EDBF3C88[0];
  if (!qword_1EDBF3C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF3C88);
  }

  return result;
}

uint64_t sub_1BF985890(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF52A0, type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF52A8, type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  result = sub_1BF9865E0(&qword_1EDBF52B0, type metadata accessor for DomainOwner, &protocol conformance descriptor for DomainOwner);
  a1[4] = result;
  return result;
}

uint64_t sub_1BF98593C(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF4058, type metadata accessor for AppOwner, &protocol conformance descriptor for AppOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF4060, type metadata accessor for AppOwner, &protocol conformance descriptor for AppOwner);
  result = sub_1BF9865E0(&qword_1EDBF4068, type metadata accessor for AppOwner, &protocol conformance descriptor for AppOwner);
  a1[4] = result;
  return result;
}

uint64_t sub_1BF985A0C(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF51A8, type metadata accessor for DefaultOwner, &protocol conformance descriptor for DefaultOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF51B0, type metadata accessor for DefaultOwner, &protocol conformance descriptor for DefaultOwner);
  result = sub_1BF9865E0(&qword_1EDBF51B8, type metadata accessor for DefaultOwner, &protocol conformance descriptor for DefaultOwner);
  a1[4] = result;
  return result;
}

uint64_t sub_1BF985ADC(void *a1)
{
  a1[2] = sub_1BF9865E0(&qword_1EDBF4718, type metadata accessor for SiriHelpOwner, &protocol conformance descriptor for SiriHelpOwner);
  a1[3] = sub_1BF9865E0(&qword_1EDBF4720, type metadata accessor for SiriHelpOwner, &protocol conformance descriptor for SiriHelpOwner);
  result = sub_1BF9865E0(&qword_1EDBF4728, type metadata accessor for SiriHelpOwner, &protocol conformance descriptor for SiriHelpOwner);
  a1[4] = result;
  return result;
}

uint64_t dispatch thunk of OwnerProviders.start(container:)()
{
  v5 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BF972884;
  v3 = OUTLINED_FUNCTION_88();

  return v5(v3);
}

uint64_t dispatch thunk of OwnerProviders.destroy()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BF972D14;

  return v4();
}

_BYTE *storeEnumTagSinglePayload for Owners(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1BF986054(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF98613C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF98621C()
{
  result = qword_1EBDEA328;
  if (!qword_1EBDEA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA328);
  }

  return result;
}

unint64_t sub_1BF986274()
{
  result = qword_1EBDEA330;
  if (!qword_1EBDEA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA330);
  }

  return result;
}

unint64_t sub_1BF9862CC()
{
  result = qword_1EBDEA338;
  if (!qword_1EBDEA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA338);
  }

  return result;
}

unint64_t sub_1BF986324()
{
  result = qword_1EDBF3C78;
  if (!qword_1EDBF3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3C78);
  }

  return result;
}

unint64_t sub_1BF98637C()
{
  result = qword_1EDBF3C80;
  if (!qword_1EDBF3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3C80);
  }

  return result;
}

unint64_t sub_1BF9863D4()
{
  result = qword_1EDBF51C0;
  if (!qword_1EDBF51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51C0);
  }

  return result;
}

unint64_t sub_1BF98642C()
{
  result = qword_1EDBF51C8;
  if (!qword_1EDBF51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51C8);
  }

  return result;
}

unint64_t sub_1BF986484()
{
  result = qword_1EDBF4070;
  if (!qword_1EDBF4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4070);
  }

  return result;
}

unint64_t sub_1BF9864DC()
{
  result = qword_1EDBF4078;
  if (!qword_1EDBF4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4078);
  }

  return result;
}

unint64_t sub_1BF986534()
{
  result = qword_1EDBF52B8;
  if (!qword_1EDBF52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52B8);
  }

  return result;
}

unint64_t sub_1BF98658C()
{
  result = qword_1EDBF52C0;
  if (!qword_1EDBF52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF52C0);
  }

  return result;
}

uint64_t sub_1BF9865E0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF986624()
{
  result = qword_1EBDEA340;
  if (!qword_1EBDEA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA340);
  }

  return result;
}

uint64_t sub_1BF9866D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DB8, &unk_1BF9C6710);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF98C3F4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

SiriSuggestionsKit::AppIdDetails_optional __swiftcall IntentType.getAppIdDetails()()
{
  v3 = *v2;
  v4 = *(v2 + 40);
  v5 = v1;
  switch(v4)
  {
    case 1:
      v0 = [*v2 launchId];
      if (!v0)
      {
        goto LABEL_10;
      }

      v13 = v0;
      v3 = sub_1BF9B4AA8();
      v8 = v14;

      goto LABEL_6;
    case 2:
    case 3:
      v7 = *(v2 + 24);
      v6 = *(v2 + 32);
      v8 = *(v2 + 8);
      v9 = *(v2 + 16);

      sub_1BF944F20(v3, v8, v9, v7, v6, v4);

      if (!v8)
      {
        goto LABEL_10;
      }

LABEL_6:
      OUTLINED_FUNCTION_10();
      v0 = sub_1BF9B4C08();
      if (v0)
      {
        v15 = 0;
      }

      else
      {
        v15 = 2;
      }

      *v5 = v3;
      *(v5 + 8) = v8;
      *(v5 + 16) = v15;
      break;
    default:
LABEL_10:
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      break;
  }

  result.value.appId._object = v10;
  result.value.appId._countAndFlagsBits = v0;
  result.is_nil = v12;
  result.value.party = v11;
  return result;
}

uint64_t static AppIntentFilter.builder()(uint64_t a1)
{
  type metadata accessor for AppIntentFilter.Builder();
  v1 = swift_allocObject();
  sub_1BF988CD4();
  return v1;
}

uint64_t IntentType.toV2Reprensentation()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v70 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  switch(*(v1 + 40))
  {
    case 1:
      v35 = [*v1 typeName];
      v36 = sub_1BF9B4AA8();
      v38 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v25 = sub_1BF9B4988();
      v39 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) + 32);
      v40 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(a1 + v39, v41, v42, v40);
      result = sub_1BF9B4508();
      *(a1 + 8) = v36;
      *(a1 + 16) = v38;
      *(a1 + 24) = 1;
      goto LABEL_22;
    case 2:
    case 3:
      v78 = a1;
      v79 = v5;
      v12 = *(v10 + 16);
      v76 = v7;
      v77 = v6;
      v74 = v10;
      v75 = v9;
      v72 = v11;
      v73 = v8;
      if (v12)
      {
        v13 = v10 + 32;
        v14 = OUTLINED_FUNCTION_24();
        sub_1BF944F20(v14, v15, v16, v17, v18, v19);
        v20 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BF8D1F54(v13, &v86);
          sub_1BF8E69C4(&v87, &v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9640, &qword_1BF9BF1F8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            memset(__dst, 0, 56);
          }

          sub_1BF98CF44();
          if (v82)
          {
            sub_1BF8C17FC(&v81, v80);
            v84[0] = v86;
            sub_1BF8C17FC(v80, &v84[1]);
          }

          else
          {
            memset(v84, 0, 72);
          }

          sub_1BF8E8118(__dst, &qword_1EBDEA348, &qword_1BF9C6050);
          sub_1BF8D1FB0(&v86);
          if (*(&v84[0] + 1))
          {
            memcpy(__dst, v84, 0x48uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_28_0();
              sub_1BF8DE044();
              v20 = v23;
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              OUTLINED_FUNCTION_11_3(v21);
              sub_1BF8DE044();
              v20 = v24;
            }

            *(v20 + 16) = v22 + 1;
            memcpy((v20 + 72 * v22 + 32), __dst, 0x48uLL);
          }

          else
          {
            sub_1BF8E8118(v84, &qword_1EBDEA350, &unk_1BF9C6058);
          }

          v13 += 56;
          --v12;
        }

        while (v12);
      }

      else
      {
        v43 = OUTLINED_FUNCTION_24();
        sub_1BF944F20(v43, v44, v45, v46, v47, v48);
        v20 = MEMORY[0x1E69E7CC0];
      }

      v49 = sub_1BF987328(v20);

      sub_1BF9866D4(v49);
      v50 = v74;

      v51 = v73;
      v52 = v73;
      v53 = v75;
      v54 = v75;
      if (!v75)
      {

        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v71 = v52;
      v55 = v76;

      sub_1BF91C8BC();
      v70 = v56;

      v57 = v77;
      v58 = 0;
      v59 = 0;
      switch(v72)
      {
        case 1:
          v60 = [v77 launchId];
          if (v60)
          {
            v61 = v60;
            v58 = sub_1BF9B4AA8();
            v59 = v62;
          }

          else
          {
            v58 = 0;
            v59 = 0;
          }

          break;
        case 2:
        case 3:
          sub_1BF944F20(v77, v55, v51, v53, v50, v72);

          v58 = v57;
          v59 = v55;
          break;
        default:
          break;
      }

      v63 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(v79, v64, v65, v63);
      if (v59)
      {
        OUTLINED_FUNCTION_10();
        if (sub_1BF9B4C08())
        {
          v66 = 0;
        }

        else
        {
          v66 = 2;
        }
      }

      else
      {
        v58 = 0;
        v66 = 0;
      }

      type metadata accessor for SiriSuggestions.IntentQuery(0);
      v67 = v78;
      v68 = v79;
      sub_1BF98CF44();
      sub_1BF9B4508();
      result = sub_1BF8E8118(v68, &qword_1EBDE8E78, &unk_1BF9B9DD0);
      *(v67 + 24) = 0;
      v69 = v70;
      *(v67 + 8) = v71;
      *(v67 + 16) = v54;
      *v67 = v69;
      *(v67 + 32) = v58;
      *(v67 + 40) = v59;
      *(v67 + 48) = v66;
      return result;
    case 4:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v25 = sub_1BF9B4988();
      v26 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) + 32);
      v27 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(a1 + v26, v28, v29, v27);
      result = sub_1BF9B4508();
      *(a1 + 16) = v7;
      *(a1 + 24) = 2;
      goto LABEL_20;
    default:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v25 = sub_1BF9B4988();
      v31 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) + 32);
      v32 = type metadata accessor for SiriSuggestions.Intent(0);
      OUTLINED_FUNCTION_58_7(a1 + v31, v33, v34, v32);
      result = sub_1BF9B4508();
      *(a1 + 16) = v7;
      *(a1 + 24) = 1;
LABEL_20:
      *(a1 + 8) = v6;
LABEL_22:
      *a1 = v25;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
  }
}

uint64_t static IntentType.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_55_7();
  v2 = v1;
  v3 = IntentType.toString()();
  if (v0 == v3._countAndFlagsBits && v2 == v3._object)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_88();
    v5 = sub_1BF9B56D8();
  }

  return v5 & 1;
}

uint64_t sub_1BF986FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_13_14();
    sub_1BF8D0220(v4, v5, v6);
    v2 = v14;
    v7 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
      swift_dynamicCast();
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1BF8D0220(v8 > 1, v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 32 * v9;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      v7 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF9870D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BF8D0588(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_1BF98C714(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BF8D0588(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &unk_1F3EFE570;
      v10 = sub_1BF98CE64();
      *&v8 = swift_allocObject();
      sub_1BF98C714(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_1BF8C2C9C(&v8, v2 + 40 * v6 + 32);
      sub_1BF98CEB8(v11);
      v4 += 64;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF9871F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v4 = OUTLINED_FUNCTION_13_14();
    sub_1BF8D05A8(v4, v5, v6);
    v7 = a1 + 56;
    v2 = v16;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A10, &qword_1BF9B8508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D20, qword_1BF9C66E0);
      swift_dynamicCast();
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1BF8D05A8(v8 > 1, v9 + 1, 1);
      }

      *(v16 + 16) = v9 + 1;
      v10 = (v16 + 32 * v9);
      v10[4] = v12;
      v10[5] = v13;
      v10[6] = v14;
      v10[7] = v15;
      v7 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF987328(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1BF8D06A8(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1BF98CF44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B00, &qword_1BF9B8618);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DC8, &qword_1BF9C2BA8);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BF8D06A8(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      memcpy((v2 + 72 * v6 + 32), __src, 0x48uLL);
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1BF98746C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v5 = OUTLINED_FUNCTION_13_14();
    sub_1BF8D0788(v5, v6, v7);
    v3 = v21;
    v8 = a1 + 32;
    do
    {
      sub_1BF8E69C4(v8, v19);
      v9 = OUTLINED_FUNCTION_22_0();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      v12 = OUTLINED_FUNCTION_24();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      OUTLINED_FUNCTION_41_7(v14, v15);
      OUTLINED_FUNCTION_52_6();
      if (v17)
      {
        sub_1BF8D0788(v16 > 1, v11, 1);
        v3 = v21;
      }

      *(v3 + 16) = v11;
      sub_1BF8C2C9C(&v20, v3 + 40 * v1 + 32);
      v8 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1BF987574(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    v7 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v8 = sub_1BF9B4D88();
      *(v8 + 16) = v6;
      v9 = v8 + 32;
      do
      {
        sub_1BF98CF44();
        v9 += 48;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF8E8118(v7, a3, a4);
    return v8;
  }

  return result;
}

uint64_t sub_1BF987620(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A60, &qword_1BF9B8558);
      v4 = sub_1BF9B4D88();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1BF98CF44();
        v5 += 64;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF8E8118(v3, &qword_1EBDE8A60, &qword_1BF9B8558);
    return v4;
  }

  return result;
}

uint64_t sub_1BF9876DC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v4 = sub_1BF9B4D88();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1BF98CF44();
        v5 += 56;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF8E8118(v3, &qword_1EBDE95F0, &qword_1BF9B85D0);
    return v4;
  }

  return result;
}

Swift::String __swiftcall IntentType.toString()()
{
  v1 = *(v0 + 40);
  switch(v1)
  {
    case 1:
      v10 = [*v0 typeName];
      sub_1BF9B4AA8();

      OUTLINED_FUNCTION_4_26();
      v11 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1BFB5DE90](v11);
      goto LABEL_12;
    case 2:
    case 3:
      v3 = *(v0 + 24);
      v2 = *(v0 + 32);
      v4 = *(v0 + 16);
      if (v3)
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      if (v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0xE000000000000000;
      }

      v7 = OUTLINED_FUNCTION_88();
      sub_1BF944F20(v7, v8, v4, v3, v2, v1);

      OUTLINED_FUNCTION_45_7();
      MEMORY[0x1BFB5DE90](v5, v6);
LABEL_12:

      break;
    case 4:

      break;
    default:
      OUTLINED_FUNCTION_4_26();
      v9 = OUTLINED_FUNCTION_88();
      MEMORY[0x1BFB5DE90](v9);
      break;
  }

  v12 = OUTLINED_FUNCTION_88();
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t IntentType.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_55_7();
  sub_1BF9B4B48();
}

id IntentType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  switch(*(v0 + 40))
  {
    case 1:
      v10 = [*v0 typeName];
      sub_1BF9B4AA8();

      strcpy(v15, "InIntentFull#");
      HIWORD(v15[1]) = -4864;
      v11 = OUTLINED_FUNCTION_22_0();
      MEMORY[0x1BFB5DE90](v11);
      goto LABEL_6;
    case 2:
    case 3:
      OUTLINED_FUNCTION_45_7();
      v15[0] = v4;
      v15[1] = 0xEA00000000005F74;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
      v13 = sub_1BF9B4B08();
      v14 = v5;
      OUTLINED_FUNCTION_27_9();
      v6 = sub_1BF9B4B08();
      MEMORY[0x1BFB5DE90](v6);

      OUTLINED_FUNCTION_27_9();
      v7 = MEMORY[0x1BFB5E030](v3, &type metadata for AppIntentFilter.AppIntentParameter);
      MEMORY[0x1BFB5DE90](v7);

      MEMORY[0x1BFB5DE90](v13, v14);
LABEL_6:

      return v15[0];
    case 4:

      return v2;
    default:
      OUTLINED_FUNCTION_4_26();
      v15[0] = v8;
      v15[1] = v9;
      MEMORY[0x1BFB5DE90](v2, v1);
      return v15[0];
  }
}

uint64_t AppIntentFilter.description.getter()
{
  v1 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  v5 = sub_1BF9B4B08();
  OUTLINED_FUNCTION_27_9();
  v2 = sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](v2);

  OUTLINED_FUNCTION_27_9();
  v3 = MEMORY[0x1BFB5E030](v1, &type metadata for AppIntentFilter.AppIntentParameter);
  MEMORY[0x1BFB5DE90](v3);

  return v5;
}

void IntentType.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA358, &qword_1BF9C6068);
  OUTLINED_FUNCTION_1();
  v11 = v5;
  v12 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  v7 = *v0;
  v8 = *(v0 + 16);
  v9 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF98B72C();
  sub_1BF9B5898();
  switch(v9)
  {
    case 1:
      sub_1BF920C90();
      v10 = v7;
      OUTLINED_FUNCTION_49_5();
      sub_1BF9B5638();
      swift_unknownObjectRelease();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_51_7();
      sub_1BF98B780();
      OUTLINED_FUNCTION_49_5();
      sub_1BF9B5638();
      break;
    default:
      v8 = v12;
      sub_1BF9B55F8();
      break;
  }

  (*(v11 + 8))(v1, v8);
  OUTLINED_FUNCTION_37();
}

void IntentType.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA368, &qword_1BF9C6070);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  sub_1BF98B72C();
  sub_1BF9B5868();
  if (!v0)
  {
    v7 = sub_1BF9B5568();
    if (*(v7 + 16))
    {
      v1 = *(v7 + 32);

      switch(v1)
      {
        case 1:
          sub_1BF920BE8();
          OUTLINED_FUNCTION_6_18(&type metadata for NSCodingAdaptor);
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            v9 = v20;
            v21 = OUTLINED_FUNCTION_5_17();
            v22(v21);
            v11 = 0;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          sub_1BF9B5308();
          swift_allocError();
          OUTLINED_FUNCTION_54_6();
          goto LABEL_5;
        case 2:
        case 3:
          sub_1BF98B7D4();
          OUTLINED_FUNCTION_6_18(&type metadata for AppIntentFilter);
          v14 = OUTLINED_FUNCTION_5_17();
          v15(v14);
          v9 = v23;
          v11 = v24;
          v16 = v25;
          v17 = v26;
          break;
        default:
          v9 = sub_1BF9B5518();
          v11 = v10;
          v12 = OUTLINED_FUNCTION_5_17();
          v13(v12);
LABEL_10:
          v17 = 0;
          v16 = 0uLL;
          break;
      }

      *v5 = v9;
      *(v5 + 8) = v11;
      *(v5 + 16) = v16;
      *(v5 + 32) = v17;
      *(v5 + 40) = v1;
    }

    else
    {

      sub_1BF9B5308();
      swift_allocError();
      OUTLINED_FUNCTION_54_6();
LABEL_5:
      sub_1BF9B52F8();
      OUTLINED_FUNCTION_11();
      (*(v8 + 104))(v1);
      swift_willThrow();
      v18 = OUTLINED_FUNCTION_5_17();
      v19(v18);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF98810C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746E65746E496E69 && a2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_70(0x746E65746E496E69, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E65746E496E69 && a2 == 0xEC0000006C6C7546;
    if (v6 || (OUTLINED_FUNCTION_70(0x746E65746E496E69, 0xEC0000006C6C7546) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
      if (v7 || (OUTLINED_FUNCTION_70(0x6E65746E49707061, 0xE900000000000074) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65746E49707061 && a2 == 0xEB00000000325674;
        if (v8 || (OUTLINED_FUNCTION_70(0x6E65746E49707061, 0xEB00000000325674) & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_70(0x6E6F69746361, 0xE600000000000000);

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BF988274(char a1)
{
  result = 0x746E65746E496E69;
  switch(a1)
  {
    case 2:
    case 3:
      result = 0x6E65746E49707061;
      break;
    case 4:
      result = 0x6E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF988308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98810C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF988330(uint64_t a1)
{
  v2 = sub_1BF98B72C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98836C(uint64_t a1)
{
  v2 = sub_1BF98B72C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentType.hashValue.getter()
{
  sub_1BF9B57A8();
  IntentType.toString()();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF98846C(uint64_t a1)
{
  sub_1BF9B57A8();
  IntentType.toString()();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t static AppIntentFilter.AppIntentParameter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_34_3();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (v4 = 0, (sub_1BF9B56D8() & 1) != 0))
  {
    sub_1BF8E69C4(v1 + 16, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    v5 = sub_1BF9B4B08();
    v7 = v6;
    sub_1BF8E69C4((v0 + 2), v11);
    if (v5 == sub_1BF9B4B08() && v7 == v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1BF9B56D8();
    }
  }

  return v4 & 1;
}

uint64_t AppIntentFilter.parameters.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1BF9886D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BF988720(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1BF988768(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[3];
  v4 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3, v3);
  v7[3] = v3;
  v7[4] = v4;
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_11();
  (*(v5 + 16))();
  swift_beginAccess();

  sub_1BF932778();
  swift_endAccess();
}

uint64_t sub_1BF988874(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a2(a1);
  swift_beginAccess();
  *(v2 + 48) = v3;
}

uint64_t sub_1BF9888CC@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v7 + 16);
  if (v8)
  {
    v41 = v5;
    v43 = v3;
    v44 = a1;
    v64 = MEMORY[0x1E69E7CC0];
    v42 = v4;

    v40 = v6;

    sub_1BF8D0688(0, v8, 0);
    v9 = v64;
    v12 = sub_1BF95FA38();
    v13 = 0;
    v14 = v7 + 64;
    v46 = v10;
    v47 = v8;
    v45 = v7 + 72;
    v48 = v7 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v7 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v7 + 36) != v10)
      {
        goto LABEL_25;
      }

      v50 = v10;
      v49 = v11;
      v16 = (*(v7 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];
      sub_1BF8E69C4(*(v7 + 56) + 40 * v12, v60);
      v56 = v17;
      v57 = v18;
      sub_1BF8C2C9C(v60, v58);
      sub_1BF98CF44();
      v19 = v7;
      v7 = v9;
      v21 = v53;
      v20 = v54;
      v51[0] = v58[0];
      v51[1] = v58[1];
      v52 = v59;

      *&v61 = v21;
      *(&v61 + 1) = v20;
      v9 = v7;
      sub_1BF8C2C9C(v51, v62);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v64 = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        v37 = OUTLINED_FUNCTION_11_3(v22);
        sub_1BF8D0688(v37, v23 + 1, 1);
        v9 = v64;
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 56 * v23;
      v25 = v61;
      v26 = v62[0];
      v27 = v62[1];
      *(v24 + 80) = v63;
      *(v24 + 48) = v26;
      *(v24 + 64) = v27;
      *(v24 + 32) = v25;
      v28 = 1 << *(v19 + 32);
      if (v12 >= v28)
      {
        goto LABEL_26;
      }

      v7 = v19;
      v14 = v48;
      v29 = *(v48 + 8 * v15);
      if ((v29 & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v7 + 36) != v50)
      {
        goto LABEL_28;
      }

      v30 = v29 & (-2 << (v12 & 0x3F));
      if (v30)
      {
        v28 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v31 = v47;
      }

      else
      {
        v32 = v15 << 6;
        v33 = v15 + 1;
        v34 = (v45 + 8 * v15);
        v31 = v47;
        while (v33 < (v28 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1BF90E758(v12, v50, v49 & 1);
            v28 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        sub_1BF90E758(v12, v50, v49 & 1);
      }

LABEL_19:
      v11 = 0;
      ++v13;
      v12 = v28;
      v10 = v46;
      if (v13 == v31)
      {

        v3 = v43;
        a1 = v44;
        v5 = v41;
        v4 = v42;
        v6 = v40;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *&v61 = v9;

    sub_1BF98B828(&v61);

    v39 = v61;
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
    a1[4] = v39;
  }

  return result;
}

uint64_t AppIntentFilter.Builder.deinit()
{

  return v0;
}

uint64_t AppIntentFilter.Builder.__deallocating_deinit()
{
  AppIntentFilter.Builder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1BF988CD4()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
  *(v0 + 48) = sub_1BF9B4988();
  return v0;
}

uint64_t static AppIntentFilter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1BF9B56D8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_1BF9B56D8() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_17:
  v11 = OUTLINED_FUNCTION_43();

  return sub_1BF8CEE50(v11, v12);
}

void AppIntentFilter.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DB8, &unk_1BF9C81C0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_11_0();
  v4 = *v0;
  v5 = v0[1];
  v32 = *(v0 + 1);
  v31 = v0[4];
  v6 = OUTLINED_FUNCTION_24();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = sub_1BF8E8064();
  OUTLINED_FUNCTION_30_9(&type metadata for AppIntentFilter.CodingKeys, v9, v8);
  if (v5)
  {
    v10 = MEMORY[0x1E69E6160];
    v11 = MEMORY[0x1E69E6158];
    v12 = v5;
    v13 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_44_8();
  }

  *&v37 = v13;
  *(&v37 + 1) = v12;
  *(&v38 + 1) = v11;
  *&v39 = v10;

  sub_1BF8E2B70(v2, 0, &v37);
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_43_9();
    v19(v18, v41);
    sub_1BF8E8118(&v37, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }

  else
  {
    sub_1BF8E8118(&v37, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    v14 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v15 = MEMORY[0x1E69E6160];
      v16 = MEMORY[0x1E69E6158];
      v17 = v32;
    }

    else
    {
      OUTLINED_FUNCTION_44_8();
    }

    *&v37 = v17;
    *(&v37 + 1) = v14;
    *(&v38 + 1) = v16;
    *&v39 = v15;

    sub_1BF8E2B70(v2, 1, &v37);
    sub_1BF8E8118(&v37, &qword_1EBDE8AB8, &qword_1BF9B85C0);
    *&v37 = v4;
    *(&v37 + 1) = v5;
    v38 = v32;
    *&v39 = v31;
    v20 = sub_1BF98B314();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BF98C714(v22, &v37);
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v36 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_28_0();
          sub_1BF8DD49C();
          v23 = v27;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v24);
          sub_1BF8DD49C();
          v23 = v28;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (v23 + (v25 << 6));
        v26[4] = v35;
        v26[5] = v36;
        v26[2] = v33;
        v26[3] = v34;
        v22 += 64;
        --v21;
      }

      while (v21);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    sub_1BF9870D0(v23);

    sub_1BF99614C();
    v29 = OUTLINED_FUNCTION_43_9();
    v30(v29, v41);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t static IntentType.inIntent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  return OUTLINED_FUNCTION_17_6(a1, a2);
}

double static IntentType.appIntent(intentIdentifier:appId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for AppIntentFilter.Builder();
  swift_initStackObject();
  sub_1BF988CD4();
  sub_1BF988720(a1, a2);

  v6 = OUTLINED_FUNCTION_88();
  sub_1BF9886D8(v6, v7);

  sub_1BF9888CC(v11);

  v8 = v12;
  result = *v11;
  v10 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v10;
  *(a3 + 32) = v8;
  *(a3 + 40) = 2;
  return result;
}

double static IntentType.appIntent(_:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppIntentFilter.Builder();
  swift_initStackObject();
  sub_1BF988CD4();
  v2 = OUTLINED_FUNCTION_88();
  sub_1BF988720(v2, v3);

  sub_1BF9888CC(v7);

  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = 2;
  return result;
}

uint64_t static IntentType.action(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 4;
  return OUTLINED_FUNCTION_17_6(a1, a2);
}

uint64_t sub_1BF9895F0(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D8, &qword_1BF9B84D8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1BF8DF458();
  OUTLINED_FUNCTION_30_9(&unk_1F3EFE6C0, v9, v8);
  LOBYTE(v24[0]) = 0;
  sub_1BF9B55F8();
  if (v2)
  {
    v10 = OUTLINED_FUNCTION_43_9();
    return v11(v10, v6);
  }

  else
  {
    v13 = v4[5];
    v14 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v13);
    v25 = v13;
    v26 = v14;
    __swift_allocate_boxed_opaque_existential_1Tm(v24);
    OUTLINED_FUNCTION_11();
    (*(v15 + 16))();
    sub_1BF8DA81C(v3, 1, v24, v16, v17, v18, v19, v20, v23, v24[0], SWORD2(v24[0]), SBYTE6(v24[0]), SHIBYTE(v24[0]), v24[1], v24[2], v25, v26, v27, v28, v29, v30, v31, v32);
    v21 = OUTLINED_FUNCTION_43_9();
    v22(v21, v6);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

uint64_t sub_1BF98978C()
{
  OUTLINED_FUNCTION_34_3();
  v2 = OUTLINED_FUNCTION_46_5();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_70(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x65756C6176 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_70(0x65756C6176, 0xE500000000000000);

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

uint64_t sub_1BF989830(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1BF989878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF98978C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF9898A0(uint64_t a1)
{
  v2 = sub_1BF8DF458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9898DC(uint64_t a1)
{
  v2 = sub_1BF8DF458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

SiriSuggestionsKit::AppIntentFilter::CodingKeys_optional __swiftcall AppIntentFilter.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6449707061 && stringValue._object == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_42_10(0x6449707061, 0xE500000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0xD000000000000010 && 0x80000001BF9CE040 == object;
    if (v8 || (OUTLINED_FUNCTION_42_10(0xD000000000000010, 0x80000001BF9CE040) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_46_5();
      if (countAndFlagsBits == v9 && object == v10)
      {

        v7 = 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_42_10(v9, 0xEA00000000007372);

        if (v12)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t AppIntentFilter.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

unint64_t AppIntentFilter.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449707061;
  }
}

uint64_t sub_1BF989B54(uint64_t a1)
{
  v2 = sub_1BF8E8064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF989B90(uint64_t a1)
{
  v2 = sub_1BF8E8064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF989BCC()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_40_4(&type metadata for CodableWrapper.ArrayKeys);
  if (!v0)
  {
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_38_7();
    sub_1BF987574(&v53, v9, &qword_1EBDE89F8, &qword_1BF9B84F0);
    OUTLINED_FUNCTION_47_6();
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_103:
        sub_1BF98C624();
        v7 = v48;
      }

      OUTLINED_FUNCTION_7_18();
      while (1)
      {
        if (v5 >= *(v3 + 2))
        {
          __break(1u);
LABEL_95:

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_18_13();
        if (!v12)
        {
          goto LABEL_95;
        }

        if ((v1 & 0x1000000000000000) == 0)
        {
          break;
        }

        swift_bridgeObjectRetain_n();
        v34 = OUTLINED_FUNCTION_23_16();
        v3 = sub_1BF99854C(v34, v35, 10);
        v54 = v36;

        if (v54)
        {
          goto LABEL_96;
        }

LABEL_73:
        OUTLINED_FUNCTION_20_17();
        sub_1BF8D8520();
        if (v0)
        {
          v46 = OUTLINED_FUNCTION_2_26();
          v47(v46);

          goto LABEL_92;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        if (v3 >= *(v7 + 16))
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_22_9();
        sub_1BF98CEE8();
        v3 = v49;
        if (v5 == v50)
        {
          goto LABEL_81;
        }
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_48_6();
        if (v16)
        {
          if (!v20)
          {
            goto LABEL_99;
          }

          if (v20 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v16 & v15)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v16)
              {
                break;
              }

              v3 = (v27 + v26);
              if (__OFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v21 == 45)
        {
          if (!v20)
          {
            goto LABEL_102;
          }

          if (v20 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v16 & v15)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v16)
              {
                break;
              }

              v3 = (v23 - v22);
              if (__OFSUB__(v23, v22))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v16 & v15)
            {
              break;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v16)
            {
              break;
            }

            v3 = (v33 + v32);
            if (__OFADD__(v33, v32))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if ((v2 & 0x1000000000000000) != 0)
      {
        v13 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_23_16();
        v13 = sub_1BF9B5318();
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 < 1)
        {
          goto LABEL_101;
        }

        if (v11 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v13)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v16 & v15)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v16)
            {
              goto LABEL_71;
            }

            v3 = (v25 + v24);
            if (__OFADD__(v25, v24))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else if (v14 == 45)
      {
        if (v11 < 1)
        {
          goto LABEL_100;
        }

        if (v11 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v13)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v16 & v15)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v16)
            {
              goto LABEL_71;
            }

            v3 = (v18 - v17);
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (!v11)
        {
LABEL_71:
          v3 = 0;
          v19 = 1;
LABEL_72:
          v52.n128_u8[0] = v19;
          v0 = v19;

          if (v0)
          {
            goto LABEL_96;
          }

          goto LABEL_73;
        }

        v3 = 0;
        if (v13)
        {
          while (*v13 - 48 <= 9)
          {
            OUTLINED_FUNCTION_34_9();
            if (!v16)
            {
              break;
            }

            v3 = (v31 + v30);
            if (__OFADD__(v31, v30))
            {
              break;
            }

            v13 = (v28 + 1);
            if (v29 == 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_71;
        }
      }

LABEL_62:
      v19 = 0;
      goto LABEL_72;
    }

LABEL_81:

    v37 = *(v7 + 16);
    v38 = MEMORY[0x1E69E7CC0];
    if (v37)
    {
      v39 = v7 + 32;
      do
      {
        OUTLINED_FUNCTION_57_8();
        OUTLINED_FUNCTION_39_7();
        if (v40)
        {
          sub_1BF8BAFC8(v51, &v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_0();
            sub_1BF8DD194();
            v38 = v42;
          }

          v41 = *(v38 + 24);
          if (*(v38 + 16) >= v41 >> 1)
          {
            OUTLINED_FUNCTION_11_3(v41);
            sub_1BF8DD194();
            v38 = v43;
          }

          OUTLINED_FUNCTION_59_8();
        }

        else
        {
          sub_1BF8E8118(v51, &qword_1EBDE89F8, &qword_1BF9B84F0);
        }

        v39 += 48;
        --v37;
      }

      while (v37);
    }

    v44 = OUTLINED_FUNCTION_2_26();
    v45(v44);
  }

LABEL_92:
  OUTLINED_FUNCTION_37();
}

void sub_1BF98A098()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  sub_1BF8DF500();
  OUTLINED_FUNCTION_40_4(&type metadata for CodableWrapper.ArrayKeys);
  if (!v0)
  {
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_38_7();
    sub_1BF987574(&v53, v9, &qword_1EBDE89C8, &qword_1BF9B98D0);
    OUTLINED_FUNCTION_47_6();
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_103:
        sub_1BF98C638();
        v7 = v48;
      }

      OUTLINED_FUNCTION_7_18();
      while (1)
      {
        if (v5 >= *(v3 + 2))
        {
          __break(1u);
LABEL_95:

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_18_13();
        if (!v12)
        {
          goto LABEL_95;
        }

        if ((v1 & 0x1000000000000000) == 0)
        {
          break;
        }

        swift_bridgeObjectRetain_n();
        v34 = OUTLINED_FUNCTION_23_16();
        v3 = sub_1BF99854C(v34, v35, 10);
        v54 = v36;

        if (v54)
        {
          goto LABEL_96;
        }

LABEL_73:
        OUTLINED_FUNCTION_20_17();
        sub_1BF8D889C();
        if (v0)
        {
          v46 = OUTLINED_FUNCTION_2_26();
          v47(v46);

          goto LABEL_92;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        if (v3 >= *(v7 + 16))
        {
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_22_9();
        sub_1BF98CEE8();
        v3 = v49;
        if (v5 == v50)
        {
          goto LABEL_81;
        }
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_48_6();
        if (v16)
        {
          if (!v20)
          {
            goto LABEL_99;
          }

          if (v20 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v16 & v15)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v16)
              {
                break;
              }

              v3 = (v27 + v26);
              if (__OFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v21 == 45)
        {
          if (!v20)
          {
            goto LABEL_102;
          }

          if (v20 != 1)
          {
            OUTLINED_FUNCTION_15_20();
            while (1)
            {
              OUTLINED_FUNCTION_3_27();
              if (!v16 & v15)
              {
                break;
              }

              OUTLINED_FUNCTION_0_24();
              if (!v16)
              {
                break;
              }

              v3 = (v23 - v22);
              if (__OFSUB__(v23, v22))
              {
                break;
              }

              OUTLINED_FUNCTION_10_2();
              if (v16)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v16 & v15)
            {
              break;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v16)
            {
              break;
            }

            v3 = (v33 + v32);
            if (__OFADD__(v33, v32))
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if ((v2 & 0x1000000000000000) != 0)
      {
        v13 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        OUTLINED_FUNCTION_23_16();
        v13 = sub_1BF9B5318();
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 < 1)
        {
          goto LABEL_101;
        }

        if (v11 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v13)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v16 & v15)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v16)
            {
              goto LABEL_71;
            }

            v3 = (v25 + v24);
            if (__OFADD__(v25, v24))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else if (v14 == 45)
      {
        if (v11 < 1)
        {
          goto LABEL_100;
        }

        if (v11 == 1)
        {
          goto LABEL_71;
        }

        v3 = 0;
        if (v13)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_27();
            if (!v16 & v15)
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_0_24();
            if (!v16)
            {
              goto LABEL_71;
            }

            v3 = (v18 - v17);
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_71;
            }

            OUTLINED_FUNCTION_10_2();
            if (v16)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if (!v11)
        {
LABEL_71:
          v3 = 0;
          v19 = 1;
LABEL_72:
          v52.n128_u8[0] = v19;
          v0 = v19;

          if (v0)
          {
            goto LABEL_96;
          }

          goto LABEL_73;
        }

        v3 = 0;
        if (v13)
        {
          while (*v13 - 48 <= 9)
          {
            OUTLINED_FUNCTION_34_9();
            if (!v16)
            {
              break;
            }

            v3 = (v31 + v30);
            if (__OFADD__(v31, v30))
            {
              break;
            }

            v13 = (v28 + 1);
            if (v29 == 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_71;
        }
      }

LABEL_62:
      v19 = 0;
      goto LABEL_72;
    }

LABEL_81:

    v37 = *(v7 + 16);
    v38 = MEMORY[0x1E69E7CC0];
    if (v37)
    {
      v39 = v7 + 32;
      do
      {
        OUTLINED_FUNCTION_57_8();
        OUTLINED_FUNCTION_39_7();
        if (v40)
        {
          sub_1BF8BAFC8(v51, &v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_0();
            sub_1BF8DD314();
            v38 = v42;
          }

          v41 = *(v38 + 24);
          if (*(v38 + 16) >= v41 >> 1)
          {
            OUTLINED_FUNCTION_11_3(v41);
            sub_1BF8DD314();
            v38 = v43;
          }

          OUTLINED_FUNCTION_59_8();
        }

        else
        {
          sub_1BF8E8118(v51, &qword_1EBDE89C8, &qword_1BF9B98D0);
        }

        v39 += 48;
        --v37;
      }

      while (v37);
    }

    v44 = OUTLINED_FUNCTION_2_26();
    v45(v44);
  }

LABEL_92:
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF98A564(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - v6;
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DC0, &qword_1BF9C6080);
  sub_1BF8DF500();
  sub_1BF9B54A8();
  if (!v1)
  {
    v58 = v4;
    v8 = sub_1BF9B5568();
    v9 = *(v8 + 16);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v10 = sub_1BF987620(&v72, v9);
    v11 = *(v8 + 16);
    v57 = v5;
    v63 = v11;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_98;
      }

      while (1)
      {
        v12 = 0;
        v62 = v8 + 32;
        v59 = &v72 + 1;
        v60 = v10 + 32;
        v61 = v8;
        while (v12 < *(v8 + 16))
        {
          v13 = v62 + 32 * v12;
          v15 = *v13;
          v14 = *(v13 + 8);
          v16 = HIBYTE(v14) & 0xF;
          v17 = *v13 & 0xFFFFFFFFFFFFLL;
          if ((v14 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v14) & 0xF;
          }

          else
          {
            v18 = *v13 & 0xFFFFFFFFFFFFLL;
          }

          if (!v18)
          {
            goto LABEL_90;
          }

          v19 = *(v13 + 16);
          v20 = *(v13 + 24);
          if ((v14 & 0x1000000000000000) == 0)
          {
            if ((v14 & 0x2000000000000000) != 0)
            {
              *&v72 = *v13;
              *(&v72 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
              if (v15 == 43)
              {
                if (!v16)
                {
                  goto LABEL_94;
                }

                if (--v16)
                {
                  v8 = 0;
                  v32 = v59;
                  while (1)
                  {
                    v33 = *v32 - 48;
                    if (v33 > 9)
                    {
                      break;
                    }

                    v34 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      break;
                    }

                    v8 = v34 + v33;
                    if (__OFADD__(v34, v33))
                    {
                      break;
                    }

                    ++v32;
                    if (!--v16)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v15 == 45)
              {
                if (!v16)
                {
                  goto LABEL_97;
                }

                if (--v16)
                {
                  v8 = 0;
                  v26 = v59;
                  while (1)
                  {
                    v27 = *v26 - 48;
                    if (v27 > 9)
                    {
                      break;
                    }

                    v28 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      break;
                    }

                    v8 = v28 - v27;
                    if (__OFSUB__(v28, v27))
                    {
                      break;
                    }

                    ++v26;
                    if (!--v16)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v16)
              {
                v8 = 0;
                v37 = &v72;
                while (1)
                {
                  v38 = *v37 - 48;
                  if (v38 > 9)
                  {
                    break;
                  }

                  v39 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    break;
                  }

                  v8 = v39 + v38;
                  if (__OFADD__(v39, v38))
                  {
                    break;
                  }

                  ++v37;
                  if (!--v16)
                  {
                    goto LABEL_67;
                  }
                }
              }
            }

            else
            {
              if ((v15 & 0x1000000000000000) != 0)
              {
                v21 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v21 = sub_1BF9B5318();
              }

              v22 = *v21;
              if (v22 == 43)
              {
                if (v17 < 1)
                {
                  goto LABEL_96;
                }

                v16 = v17 - 1;
                if (v17 != 1)
                {
                  v8 = 0;
                  if (!v21)
                  {
                    goto LABEL_58;
                  }

                  v29 = v21 + 1;
                  while (1)
                  {
                    v30 = *v29 - 48;
                    if (v30 > 9)
                    {
                      break;
                    }

                    v31 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      break;
                    }

                    v8 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      break;
                    }

                    ++v29;
                    if (!--v16)
                    {
                      goto LABEL_67;
                    }
                  }
                }
              }

              else if (v22 == 45)
              {
                if (v17 < 1)
                {
                  goto LABEL_95;
                }

                v16 = v17 - 1;
                if (v17 != 1)
                {
                  v8 = 0;
                  if (v21)
                  {
                    v23 = v21 + 1;
                    while (1)
                    {
                      v24 = *v23 - 48;
                      if (v24 > 9)
                      {
                        goto LABEL_66;
                      }

                      v25 = 10 * v8;
                      if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                      {
                        goto LABEL_66;
                      }

                      v8 = v25 - v24;
                      if (__OFSUB__(v25, v24))
                      {
                        goto LABEL_66;
                      }

                      ++v23;
                      if (!--v16)
                      {
                        goto LABEL_67;
                      }
                    }
                  }

LABEL_58:
                  LOBYTE(v16) = 0;
LABEL_67:
                  LOBYTE(v68) = v16;
                  v40 = v16;

                  if (v40)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_68;
                }
              }

              else
              {
                if (!v17)
                {
                  goto LABEL_66;
                }

                v8 = 0;
                if (!v21)
                {
                  goto LABEL_58;
                }

                while (1)
                {
                  v35 = *v21 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    break;
                  }

                  v8 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v21;
                  if (!--v17)
                  {
                    goto LABEL_58;
                  }
                }
              }
            }

LABEL_66:
            v8 = 0;
            LOBYTE(v16) = 1;
            goto LABEL_67;
          }

          swift_bridgeObjectRetain_n();
          v8 = sub_1BF99854C(v15, v14, 10);
          v76 = v44;

          if (v76)
          {
            goto LABEL_91;
          }

LABEL_68:
          sub_1BF8D8F70(v15, v14, v19, v20, v7, v41, v42, v43, v56, v57, SWORD2(v57), SBYTE6(v57), SHIBYTE(v57), v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, *(&v65 + 1));

          if (v8 < 0)
          {
            goto LABEL_92;
          }

          if (v8 >= *(v10 + 16))
          {
            goto LABEL_93;
          }

          ++v12;
          sub_1BF98CEE8();
          v8 = v61;
          if (v12 == v63)
          {
            goto LABEL_75;
          }
        }

        __break(1u);
LABEL_90:

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        sub_1BF98C64C();
        v10 = v55;
      }
    }

LABEL_75:

    v45 = *(v10 + 16);
    v63 = v10;
    if (v45)
    {
      v46 = v10 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1BF98CF44();
        v64 = v72;
        v65 = v73;
        v66 = v74;
        v67 = v75;
        if (*(&v72 + 1))
        {
          v68 = v72;
          v69 = v73;
          v70 = v74;
          v71 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF8DD49C();
            v2 = v52;
          }

          v47 = *(v2 + 16);
          if (v47 >= *(v2 + 24) >> 1)
          {
            sub_1BF8DD49C();
            v2 = v53;
          }

          *(v2 + 16) = v47 + 1;
          v48 = (v2 + (v47 << 6));
          v49 = v68;
          v50 = v69;
          v51 = v71;
          v48[4] = v70;
          v48[5] = v51;
          v48[2] = v49;
          v48[3] = v50;
        }

        else
        {
          sub_1BF8E8118(&v64, &qword_1EBDE8A60, &qword_1BF9B8558);
        }

        v46 += 64;
        --v45;
      }

      while (v45);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    (*(v57 + 8))(v7, v58);
  }

  return v2;
}

uint64_t sub_1BF98AC4C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 32;
  while (1)
  {
    v5 = ~v1;
    v6 = (v4 + (v1 << 6));
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      sub_1BF98ADA8(v6, v17);
      if (*(&v17[0] + 1))
      {
        break;
      }

      sub_1BF8E8118(v17, &qword_1EBDEA1E8, &qword_1BF9C4820);
      --v5;
      v6 += 8;
      if (!--v7)
      {
        return v3;
      }
    }

    v13 = v17[0];
    v14 = v17[1];
    v15 = v17[2];
    v16 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF8DD020();
      v3 = v10;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1BF8DD020();
      v3 = v11;
    }

    v1 = -v5;
    *(v3 + 16) = v8 + 1;
    v9 = v3 + 56 * v8;
    *(v9 + 80) = v16;
    *(v9 + 48) = v14;
    *(v9 + 64) = v15;
    *(v9 + 32) = v13;
  }

  return v3;
}

void sub_1BF98ADA8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_1BF8D7914((a1 + 2), &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
  v6 = swift_dynamicCast();
  v36 = v4;
  if (v6)
  {
    *&v31[0] = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
    if (swift_dynamicCast())
    {
      sub_1BF8E8118(&v33, &qword_1EBDE99E0, &unk_1BF9C6700);
      swift_unknownObjectRelease();
      sub_1BF8C2C9C(&v25, &v28);
      v7 = &v28;
LABEL_6:
      sub_1BF8C2C9C(v7, &v33);
      goto LABEL_18;
    }

    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1BF8E8118(&v25, &qword_1EBDE99E0, &unk_1BF9C6700);
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF5570);
    swift_unknownObjectRetain();

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5048();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v28 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1BF8DE810(v4, v5, &v28);
      *(v11 + 12) = 2080;
      swift_getObjectType();
      v13 = sub_1BF9B58D8();
      v15 = sub_1BF8DE810(v13, v14, &v28);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1BF8B8000, v9, v10, "Parameter %s is an NSCodingAdaptor but the data type is not DisplayRepresentable. It is %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5F320](v12, -1, -1);
      MEMORY[0x1BFB5F320](v11, -1, -1);

      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  sub_1BF8D7914((a1 + 2), &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
  if (swift_dynamicCast())
  {
    sub_1BF8E8118(&v33, &qword_1EBDE99E0, &unk_1BF9C6700);
    sub_1BF8C2C9C(v31, &v25);
    v7 = &v25;
    goto LABEL_6;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_1BF8E8118(v31, &qword_1EBDE99E0, &unk_1BF9C6700);
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v16 = sub_1BF9B47C8();
  __swift_project_value_buffer(v16, qword_1EDBF5570);
  sub_1BF98C714(a1, &v28);

  v9 = sub_1BF9B47A8();
  v17 = sub_1BF9B5048();

  if (os_log_type_enabled(v9, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v31[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1BF8DE810(v36, v5, v31);
    *(v18 + 12) = 2080;
    sub_1BF8D7914(&v29, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v20 = sub_1BF9B58D8();
    v22 = v21;
    sub_1BF98CEB8(&v28);
    v23 = sub_1BF8DE810(v20, v22, v31);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1BF8B8000, v9, v17, "Parameter %s is not DisplayRepresentable. It is %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5F320](v19, -1, -1);
    MEMORY[0x1BFB5F320](v18, -1, -1);
LABEL_16:

    goto LABEL_18;
  }

  sub_1BF98CEB8(&v28);
LABEL_18:
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v24 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    sub_1BF8C2C9C(&v28, a2 + 16);

    v24 = v36;
  }

  else
  {
    v5 = 0;
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  *a2 = v24;
  *(a2 + 8) = v5;
}

uint64_t sub_1BF98B314()
{
  v1 = *(v0 + 4);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *v0;
  v14 = v0[1];
  v3 = v1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BF8D1F54(v3, v20);
    v16 = v13;
    v17 = v14;
    *&v18 = v1;
    sub_1BF98B474(v20, v15);
    sub_1BF8D1FB0(v20);
    if (*(&v15[0] + 1))
    {
      v16 = v15[0];
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF8DD49C();
        v4 = v10;
      }

      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_1BF8DD49C();
        v4 = v11;
      }

      *(v4 + 16) = v5 + 1;
      v6 = (v4 + (v5 << 6));
      v7 = v16;
      v8 = v17;
      v9 = v19;
      v6[4] = v18;
      v6[5] = v9;
      v6[2] = v7;
      v6[3] = v8;
    }

    else
    {
      sub_1BF8E8118(v15, &qword_1EBDE8A60, &qword_1BF9B8558);
    }

    v3 += 56;
    --v2;
  }

  while (v2);
  return v4;
}

__n128 *sub_1BF98B474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  sub_1BF8E69C4((a1 + 2), v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96D8, &unk_1BF9BF240);
  if (swift_dynamicCast())
  {
    v18[1] = &type metadata for NSCodingAdaptor;
    v18[2] = sub_1BF920BE8();
    v18[3] = sub_1BF920C90();
    v17.n128_u64[0] = v19.n128_u64[0];
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_1BF8BAFC8(&v17, (a2 + 16));
    *a2 = v5;
    *(a2 + 8) = v4;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
  if (swift_dynamicCast())
  {
    sub_1BF8BAFC8(&v19, &v17);
    goto LABEL_5;
  }

  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF9B47C8();
  __swift_project_value_buffer(v7, qword_1EDBF5570);
  sub_1BF8D1F54(a1, &v17);
  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5048();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_1BF8E69C4(v18, &v19);
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v19);
    v12 = sub_1BF9B58D8();
    v14 = v13;
    sub_1BF8D1FB0(&v17);
    v15 = sub_1BF8DE810(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BF8B8000, v8, v9, "Unknown type to serialise of: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB5F320](v11, -1, -1);
    MEMORY[0x1BFB5F320](v10, -1, -1);
  }

  else
  {

    sub_1BF8D1FB0(&v17);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1BF98B72C()
{
  result = qword_1EDBF44E8;
  if (!qword_1EDBF44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44E8);
  }

  return result;
}

unint64_t sub_1BF98B780()
{
  result = qword_1EBDEA360;
  if (!qword_1EBDEA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA360);
  }

  return result;
}

unint64_t sub_1BF98B7D4()
{
  result = qword_1EBDEA370;
  if (!qword_1EBDEA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA370);
  }

  return result;
}

uint64_t sub_1BF98B828(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF95DCE8();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF98B894(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF98B894(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF98BAB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF98B988(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF98B988(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      while (1)
      {
        sub_1BF8D1F54(v10, v21);
        v11 = v10 - 56;
        sub_1BF8D1F54(v10 - 56, v20);
        if (v21[0] == v20[0] && v21[1] == v20[1])
        {
          break;
        }

        v13 = sub_1BF9B56D8();
        sub_1BF8D1FB0(v20);
        result = sub_1BF8D1FB0(v21);
        if (v13)
        {
          if (!v6)
          {
            __break(1u);
            return result;
          }

          v14 = *(v10 + 48);
          v16 = *(v10 + 16);
          v15 = *(v10 + 32);
          v17 = *v10;
          v18 = *(v10 - 40);
          *v10 = *v11;
          *(v10 + 16) = v18;
          *(v10 + 32) = *(v10 - 24);
          *(v10 + 48) = *(v10 - 8);
          *v11 = v17;
          *(v10 - 40) = v16;
          *(v10 - 24) = v15;
          v10 -= 56;
          *(v11 + 48) = v14;
          if (!__CFADD__(v9++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1BF8D1FB0(v20);
      result = sub_1BF8D1FB0(v21);
LABEL_14:
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF98BAB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v95 = v6;
      v96 = (v6 + 16);
      for (i = *(v6 + 16); ; *v96 = i)
      {
        v6 = i - 2;
        if (i < 2)
        {
          break;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v98 = (v95 + 16 * i);
        v99 = *v98;
        v100 = &v96[2 * i];
        v101 = *(v100 + 1);
        v102 = v114;
        sub_1BF98C18C((*a3 + 56 * *v98), (*a3 + 56 * *v100), *a3 + 56 * v101, v108);
        v114 = v102;
        if (v102)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_132;
        }

        if (v6 >= *v96)
        {
          goto LABEL_133;
        }

        *v98 = v99;
        v98[1] = v101;
        v103 = *v96 - i;
        if (*v96 < i)
        {
          goto LABEL_134;
        }

        i = *v96 - 1;
        sub_1BF95E3AC(v100 + 16, v103, v100);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_1BF95B0FC(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v105 = v6;
      v8 = *a3;
      sub_1BF8D1F54(*a3 + 56 * v5, &v112);
      sub_1BF8D1F54(v8 + 56 * v7, &v110);
      if (v112 == v110 && v113 == v111)
      {
        v6 = 0;
      }

      else
      {
        v6 = sub_1BF9B56D8();
      }

      sub_1BF8D1FB0(&v110);
      sub_1BF8D1FB0(&v112);
      v10 = v7 + 2;
      v108 = v7;
      v11 = 56 * v7;
      v12 = v8 + 56 * v7 + 112;
      v13 = 56 * v7 + 56;
      v14 = v5;
      do
      {
        v15 = v10;
        v16 = v14;
        v17 = v13;
        if (v10 >= v4)
        {
          break;
        }

        sub_1BF8D1F54(v12, &v112);
        sub_1BF8D1F54(v12 - 56, &v110);
        v18 = v112 == v110 && v113 == v111;
        v19 = v18 ? 0 : sub_1BF9B56D8();
        sub_1BF8D1FB0(&v110);
        sub_1BF8D1FB0(&v112);
        v10 = v15 + 1;
        v12 += 56;
        v14 = (v16 + 1);
        v13 = v17 + 56;
      }

      while (((v6 ^ v19) & 1) == 0);
      if (v6)
      {
        v20 = v108;
        if (v15 < v108)
        {
          goto LABEL_138;
        }

        if (v108 >= v15)
        {
          v5 = v15;
          v6 = v105;
          v7 = v108;
          goto LABEL_31;
        }

        v6 = v105;
        do
        {
          if (v20 != v16)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v22 = (v21 + v11);
            v23 = *(v21 + v11 + 48);
            v24 = (v21 + v17);
            v26 = v22[1];
            v25 = v22[2];
            v27 = *v22;
            v29 = v24[1];
            v28 = v24[2];
            v30 = *v24;
            *(v22 + 6) = *(v24 + 6);
            v22[1] = v29;
            v22[2] = v28;
            *v22 = v30;
            *v24 = v27;
            v24[1] = v26;
            v24[2] = v25;
            *(v24 + 6) = v23;
          }

          ++v20;
          v17 -= 56;
          v11 += 56;
          v31 = v20 < v16--;
        }

        while (v31);
        v5 = v15;
      }

      else
      {
        v5 = v15;
        v6 = v105;
      }

      v7 = v108;
    }

LABEL_31:
    v32 = a3[1];
    if (v5 < v32)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_137;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v5 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF8DCF6C();
      v6 = v93;
    }

    v48 = *(v6 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v6 + 24) >> 1)
    {
      sub_1BF8DCF6C();
      v6 = v94;
    }

    *(v6 + 16) = v49;
    v50 = v6 + 32;
    v51 = (v6 + 32 + 16 * v48);
    *v51 = v7;
    v51[1] = v5;
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v6 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v6 + 32);
          v56 = *(v6 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_74:
          if (v58)
          {
            goto LABEL_123;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_126;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_131;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v49 < 2)
        {
          goto LABEL_125;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_89:
        if (v73)
        {
          goto LABEL_128;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_130;
        }

        if (v80 < v72)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v84 = (v50 + 16 * (v52 - 1));
        v85 = *v84;
        v86 = v52;
        v87 = v50 + 16 * v52;
        v88 = *(v87 + 8);
        v89 = v114;
        sub_1BF98C18C((*a3 + 56 * *v84), (*a3 + 56 * *v87), *a3 + 56 * v88, v108);
        v114 = v89;
        if (v89)
        {
          goto LABEL_116;
        }

        if (v88 < v85)
        {
          goto LABEL_118;
        }

        v90 = v5;
        v91 = v6;
        v6 = *(v6 + 16);
        if (v86 > v6)
        {
          goto LABEL_119;
        }

        *v84 = v85;
        v84[1] = v88;
        if (v86 >= v6)
        {
          goto LABEL_120;
        }

        v92 = v86;
        v49 = v6 - 1;
        sub_1BF95E3AC((v87 + 16), v6 - 1 - v92, v87);
        *(v91 + 16) = v6 - 1;
        v31 = v6 > 2;
        v6 = v91;
        v5 = v90;
        if (!v31)
        {
          goto LABEL_103;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_121;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_122;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_124;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_127;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_135;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v7 + a4 >= v32)
  {
    v33 = a3[1];
  }

  else
  {
    v33 = v7 + a4;
  }

  if (v33 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v5 == v33)
  {
    goto LABEL_54;
  }

  v106 = v6;
  v34 = *a3;
  v35 = *a3 + 56 * v5;
  v108 = v7;
  v36 = (v7 - v5);
LABEL_41:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_1BF8D1F54(v38, &v112);
    v39 = v38 - 56;
    sub_1BF8D1F54(v38 - 56, &v110);
    if (v112 == v110 && v113 == v111)
    {
      sub_1BF8D1FB0(&v110);
      sub_1BF8D1FB0(&v112);
LABEL_52:
      ++v5;
      v35 += 56;
      --v36;
      if (v5 == v33)
      {
        v5 = v33;
        v6 = v106;
        v7 = v108;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v41 = sub_1BF9B56D8();
    sub_1BF8D1FB0(&v110);
    sub_1BF8D1FB0(&v112);
    if ((v41 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 48);
    v44 = *(v38 + 16);
    v43 = *(v38 + 32);
    v45 = *v38;
    v46 = *(v38 - 40);
    *v38 = *v39;
    *(v38 + 16) = v46;
    *(v38 + 32) = *(v38 - 24);
    *(v38 + 48) = *(v38 - 8);
    *v39 = v45;
    *(v38 - 40) = v44;
    *(v38 - 24) = v43;
    v38 -= 56;
    *(v39 + 48) = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_1BF98C18C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1BF958CA0(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      sub_1BF8D1F54(v6, &v35);
      sub_1BF8D1F54(v4, &v33);
      v12 = v35 == v33 && v36 == v34;
      if (v12)
      {
        break;
      }

      v13 = sub_1BF9B56D8();
      sub_1BF8D1FB0(&v33);
      sub_1BF8D1FB0(&v35);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = v6;
      v12 = v7 == v6;
      v6 += 56;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 56;
    }

    sub_1BF8D1FB0(&v33);
    sub_1BF8D1FB0(&v35);
LABEL_16:
    v14 = v4;
    v12 = v7 == v4;
    v4 += 56;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    *(v7 + 6) = *(v14 + 6);
    *(v7 + 1) = v16;
    *(v7 + 2) = v17;
    *v7 = v15;
    goto LABEL_18;
  }

  sub_1BF958CA0(a2, (a3 - a2) / 56, a4);
  v18 = &v4[56 * v9];
LABEL_20:
  v19 = v6 - 56;
  v5 -= 56;
  for (i = (v18 - 56); ; i -= 56)
  {
    v10 = (i + 56);
    if (i + 56 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_1BF8D1F54(i, &v35);
    sub_1BF8D1F54((v6 - 56), &v33);
    if (v35 == v33 && v36 == v34)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_1BF9B56D8();
    }

    sub_1BF8D1FB0(&v33);
    sub_1BF8D1FB0(&v35);
    if (v23)
    {
      v18 = (i + 56);
      v12 = v5 + 56 == v6;
      v6 -= 56;
      if (!v12)
      {
        v27 = *v19;
        v28 = *(v19 + 1);
        v29 = *(v19 + 2);
        *(v5 + 48) = *(v19 + 6);
        *(v5 + 16) = v28;
        *(v5 + 32) = v29;
        *v5 = v27;
        v6 = v19;
      }

      goto LABEL_20;
    }

    if (v10 != (v5 + 56))
    {
      v24 = *i;
      v25 = *(i + 16);
      v26 = *(i + 32);
      *(v5 + 48) = *(i + 48);
      *(v5 + 16) = v25;
      *(v5 + 32) = v26;
      *v5 = v24;
    }

    v5 -= 56;
  }

LABEL_39:
  v30 = (v10 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v30])
  {
    memmove(v6, v4, 56 * v30);
  }

  return 1;
}

uint64_t sub_1BF98C3F4(uint64_t a1, char a2, void *a3)
{
  v31 = a3;
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF98CF44();
    v8 = v28;
    v7 = v29;
    sub_1BF8C17FC(v30, v27);
    v9 = *v31;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3B0, &qword_1BF9C6720);
        sub_1BF9B53B8();
        if (v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1BF95C1AC();
      v15 = sub_1BF8C2E64(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v11 = v15;
      if (v14)
      {
LABEL_11:
        v17 = *v31;
        sub_1BF95E2E4(v27, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);

        v18 = (v17[7] + 56 * v11);
        __swift_destroy_boxed_opaque_existential_1(v18);
        sub_1BF8C17FC(v26, v18);
        goto LABEL_15;
      }
    }

    v19 = *v31;
    v19[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1BF8C17FC(v27, (v19[7] + 56 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v19[2] = v23;
LABEL_15:
    ++v5;
    v6 += 72;
    a2 = 1;
    if (v25 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF98C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  swift_beginAccess();

  swift_unknownObjectRetain();
  sub_1BF932778();
  swift_endAccess();
}

unint64_t sub_1BF98C750()
{
  result = qword_1EBDEA380;
  if (!qword_1EBDEA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA380);
  }

  return result;
}

unint64_t sub_1BF98C7A8()
{
  result = qword_1EBDEA388;
  if (!qword_1EBDEA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA388);
  }

  return result;
}

unint64_t sub_1BF98C800()
{
  result = qword_1EBDEA390;
  if (!qword_1EBDEA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA390);
  }

  return result;
}

unint64_t sub_1BF98C858()
{
  result = qword_1EBDEA398;
  if (!qword_1EBDEA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA398);
  }

  return result;
}

uint64_t sub_1BF98C8B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 41))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 4)
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

uint64_t sub_1BF98C8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BF98C95C(uint64_t a1, int a2)
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

uint64_t sub_1BF98C99C(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of AppIntentFilter.Builder.withParameter(paramName:value:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t dispatch thunk of AppIntentFilter.Builder.withParameters(_:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

_BYTE *storeEnumTagSinglePayload for AppIntentFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF98CBE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BF98CC28(uint64_t result, int a2, int a3)
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

_BYTE *sub_1BF98CC84(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF98CD60()
{
  result = qword_1EBDEA3A0;
  if (!qword_1EBDEA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3A0);
  }

  return result;
}

unint64_t sub_1BF98CDB8()
{
  result = qword_1EDBF44D8;
  if (!qword_1EDBF44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44D8);
  }

  return result;
}

unint64_t sub_1BF98CE10()
{
  result = qword_1EDBF44E0;
  if (!qword_1EDBF44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF44E0);
  }

  return result;
}

unint64_t sub_1BF98CE64()
{
  result = qword_1EBDEA3A8;
  if (!qword_1EBDEA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3A8);
  }

  return result;
}

uint64_t sub_1BF98CEE8()
{
  OUTLINED_FUNCTION_34_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_11();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

uint64_t sub_1BF98CF44()
{
  OUTLINED_FUNCTION_34_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_11();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  return v0;
}

_BYTE *sub_1BF98CFA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF98D07C()
{
  result = qword_1EBDEA3B8;
  if (!qword_1EBDEA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3B8);
  }

  return result;
}

unint64_t sub_1BF98D0D4()
{
  result = qword_1EBDEA3C0;
  if (!qword_1EBDEA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3C0);
  }

  return result;
}

unint64_t sub_1BF98D12C()
{
  result = qword_1EBDEA3C8;
  if (!qword_1EBDEA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1)
{

  return sub_1BF9B5558();
}

double OUTLINED_FUNCTION_38_7()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void OUTLINED_FUNCTION_51_7()
{
  v4 = *(v3 - 160);
  v5 = *(v3 - 152);
  *(v3 - 120) = v1;
  *(v3 - 112) = v5;
  *(v3 - 104) = v0;
  *(v3 - 96) = v2;
  *(v3 - 88) = v4;
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.assistantTurnState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.init(inputOrigin:assistantTurnState:isFirstInvocationSinceOSInstalled:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_1BF8BADBC(a1, a4);
  result = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1BF98D2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF98D338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001BF9CE120 == a2;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x80000001BF9CE140 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF98D458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98D338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF98D480(uint64_t a1)
{
  v2 = sub_1BF8BE2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98D4BC(uint64_t a1)
{
  v2 = sub_1BF8BE2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SiriRuntimeRequestState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3D0, &unk_1BF9C6830);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA3F0, &qword_1BF9C6858);
  OUTLINED_FUNCTION_1();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF8BE2D4();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v10;
  sub_1BF9B4588();
  v27 = 0;
  OUTLINED_FUNCTION_0_25();
  sub_1BF8BAE78(v13, v14, &protocol conformance descriptor for InputOrigin);
  sub_1BF9B5508();
  sub_1BF8BADBC(v6, v12);
  v25 = 1;
  sub_1BF8D0B2C();
  sub_1BF9B5508();
  v15 = v20;
  v12[*(v20 + 20)] = v26;
  v24 = 2;
  v16 = sub_1BF9B54E8();
  v17 = OUTLINED_FUNCTION_1_26();
  v18(v17);
  v12[*(v15 + 24)] = v16;
  sub_1BF98D7F8(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BF98D85C(v12);
}

uint64_t sub_1BF98D7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF98D85C(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.SiriRuntimeRequestState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF98D9D0(uint64_t a1)
{
  sub_1BF98DA8C(319);
  if (v1 <= 0x3F)
  {
    sub_1BF98DAE4(319, &unk_1EDBF5080, &type metadata for AssistantTurnState);
    if (v2 <= 0x3F)
    {
      sub_1BF98DAE4(319, &qword_1EDBF4E40, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF98DA8C(uint64_t a1)
{
  if (!qword_1EDBF54D8[0])
  {
    sub_1BF9B4588();
    v1 = sub_1BF9B50F8();
    if (!v2)
    {
      atomic_store(v1, qword_1EDBF54D8);
    }
  }
}

void sub_1BF98DAE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BF9B50F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BF98DB44()
{
  result = qword_1EBDEA3F8;
  if (!qword_1EBDEA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA3F8);
  }

  return result;
}

unint64_t sub_1BF98DB9C()
{
  result = qword_1EDBF4A80;
  if (!qword_1EDBF4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A80);
  }

  return result;
}

unint64_t sub_1BF98DBF4()
{
  result = qword_1EDBF4A88;
  if (!qword_1EDBF4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4A88);
  }

  return result;
}

uint64_t DeviceType.rawValue.getter()
{
  result = 0x656E6F685069;
  switch(*v0)
  {
    case 1:
      result = 0x72506E6F69736976;
      break;
    case 2:
      result = 1684099177;
      break;
    case 3:
      result = 0x79616C50726163;
      break;
    case 4:
      result = 0x6863746177;
      break;
    case 5:
      result = 0x5654656C707061;
      break;
    case 6:
      result = 0x646F70656D6F68;
      break;
    case 7:
      result = 6513005;
      break;
    case 8:
      result = 6582128;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t EnvironmentSnapshot.openAppIds.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))(a1);
  v3 = Array<A>.getAppInViewIds()(v2);

  return v3;
}

Swift::Bool __swiftcall EnvironmentSnapshot.shouldPresentDialog()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 88);
  v4(&v9);
  switch(v9)
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_5_2();
      break;
    default:
      break;
  }

  v5 = sub_1BF9B56D8();

  if (v5)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    (v4)(&v9, v3, v2);
    v6 = 1;
    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 4:
        v6 = sub_1BF9B56D8();
        break;
      case 3:
        break;
      default:
        JUMPOUT(0);
    }
  }

  v9 = (*(v2 + 72))(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA408, &unk_1BF9C6B10);
  sub_1BF991690(&qword_1EBDEA410, &qword_1EBDEA408, &unk_1BF9C6B10, MEMORY[0x1E69E6340]);
  sub_1BF9900C0();
  v7 = sub_1BF9B4FD8();

  return (v7 | v6) & 1;
}

uint64_t EnvironmentSnapshot.getValidOpenAppIds()(uint64_t a1, uint64_t a2)
{
  EnvironmentSnapshot.getValidOpenApps()(a1, a2);
  v3 = Array<A>.getAppInViewIds()(v2);

  return v3;
}

void EnvironmentSnapshot.getValidOpenApps()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))(a1);
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_17();
  v27 = v7;
  while (1)
  {
LABEL_2:
    if (v3 == v4)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_1BF8DC030(v5 + (v3++ << 6), v34);
    switch(v35)
    {
      case 1:
      case 2:
        goto LABEL_7;
      case 3:
        OUTLINED_FUNCTION_5_2();
LABEL_7:
        v8 = sub_1BF9B56D8();

        if (v8)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      default:

LABEL_8:
        sub_1BF8D7914(v34, &v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
        if (swift_dynamicCast())
        {
          v9 = v4;
          v10 = v5;
          v12 = v32;
          v11 = v33;
          if (qword_1EDBF28A0 != -1)
          {
            swift_once();
          }

          v13 = qword_1EDC03430;
          if (*(qword_1EDC03430 + 16))
          {
            sub_1BF9B57A8();
            sub_1BF9B4B48();
            v14 = sub_1BF9B57E8();
            v15 = ~(-1 << *(v13 + 32));
            while (1)
            {
              v16 = v14 & v15;
              if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
              {
                break;
              }

              v17 = (*(v13 + 48) + 16 * v16);
              if (*v17 != v12 || v17[1] != v11)
              {
                v19 = sub_1BF9B56D8();
                v14 = v16 + 1;
                if ((v19 & 1) == 0)
                {
                  continue;
                }
              }

              sub_1BF8DC068(v34);
              v5 = v10;
              v4 = v9;
              v2 = v27;
              OUTLINED_FUNCTION_12_17();
              goto LABEL_2;
            }
          }

          v28 = v34[0];
          v29 = v34[1];
          v30 = v34[2];
          v31 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BF8D0808(0, *(v6 + 16) + 1, 1);
            v6 = v36;
          }

          v5 = v10;
          v4 = v9;
          v2 = v27;
          OUTLINED_FUNCTION_12_17();
          v22 = *(v6 + 16);
          v21 = *(v6 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1BF8D0808(v21 > 1, v22 + 1, 1);
            v6 = v36;
          }

          *(v6 + 16) = v22 + 1;
          v23 = (v6 + (v22 << 6));
          v24 = v28;
          v25 = v29;
          v26 = v31;
          v23[4] = v30;
          v23[5] = v26;
          v23[2] = v24;
          v23[3] = v25;
        }

        else
        {
LABEL_20:
          sub_1BF8DC068(v34);
        }

        break;
    }
  }

  __break(1u);
}

SiriSuggestionsKit::NetworkConnectivity __swiftcall NetworkConnectivity.init(networkAvailable:airplaneMode:)(Swift::Bool networkAvailable, Swift::Bool airplaneMode)
{
  *v2 = networkAvailable;
  v2[1] = airplaneMode;
  result.networkAvailable = networkAvailable;
  return result;
}

uint64_t static NetworkConnectivity.unknownConnectivity.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDBF2B30 != -1)
  {
    result = OUTLINED_FUNCTION_3_28(&qword_1EDBF2B30);
  }

  v2 = HIBYTE(word_1EDBF2B38);
  *a1 = word_1EDBF2B38;
  a1[1] = v2;
  return result;
}

double sub_1BF98E550()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA4A0, &qword_1BF9C74C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9C6AE0;
  *&result = 0x101000101;
  *(v0 + 32) = 0x101000101;
  qword_1EBDEA400 = v0;
  return result;
}

uint64_t static NetworkConnectivity.allCases.getter()
{
  if (qword_1EBDE81D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF98E600(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001BF9CE190 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E616C70726961 && a2 == 0xEC00000065646F4DLL)
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

uint64_t sub_1BF98E6D4(char a1)
{
  if (a1)
  {
    return 0x656E616C70726961;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1BF98E720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF98E600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF98E748(uint64_t a1)
{
  v2 = sub_1BF990F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF98E784(uint64_t a1)
{
  v2 = sub_1BF990F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void NetworkConnectivity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA418, &qword_1BF9C6B20);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1BF990F38();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  sub_1BF9B5608();
  if (!v23)
  {
    sub_1BF9B5608();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_37();
}

void NetworkConnectivity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_39();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA420, &qword_1BF9C6B28);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1BF990F38();
  sub_1BF9B5868();
  if (!v23)
  {
    a13 = 0;
    v36 = sub_1BF9B5528();
    a12 = 1;
    v37 = sub_1BF9B5528();
    (*(v32 + 8))(v35, v30);
    *v29 = v36 & 1;
    v29[1] = v37 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF98EAC0()
{
  result = sub_1BF927940(&unk_1F3EF6058);
  qword_1EDC03430 = result;
  return result;
}

uint64_t SiriSuggestions.SystemDeviceState.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SiriSuggestions.SystemDeviceState.init(deviceLockState:deviceTypes:networkConnectivity:siriLocale:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_21_16();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 17) = v7;
  v8 = *(type metadata accessor for SiriSuggestions.SystemDeviceState(0) + 28);
  sub_1BF9B4558();
  OUTLINED_FUNCTION_13();
  v10 = *(v9 + 32);

  return v10(a2 + v8, a1);
}