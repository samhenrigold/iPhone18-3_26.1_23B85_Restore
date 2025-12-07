uint64_t sub_1CA57FD10@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = sub_1CA94AD08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CA588760(a3, a4, v12);
  sub_1CA57ABD8(v12, a3, a4, a6);
  return (*(v10 + 8))(v12, v9);
}

uint64_t static WFEmailTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v0 = OUTLINED_FUNCTION_14_24();
  *(v0 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_39_9();
  v6(v5);
  return v0;
}

uint64_t sub_1CA57FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CA94AED8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1CA94B5D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CA94ADC8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1CA5885BC(a2, a3, (v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v10 = MEMORY[0x1E69E7CC0];
  sub_1CA94B5C8();
  v12[1] = v10;
  sub_1CA589348(&qword_1EC4468C8, MEMORY[0x1E69DB100], MEMORY[0x1E69DB108]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA25C3BC(&qword_1EC4468D8, &qword_1EC4468D0, &qword_1CA98BEE8, MEMORY[0x1E69E6328]);
  sub_1CA94D2A8();
  return sub_1CA94AEB8();
}

char *sub_1CA580164(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_cancellable] = 0;
  v5 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  __swift_storeEnumTagSinglePayload(&v2[v5], 1, 1, v6);
  v7 = &v2[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E6996330]) init];
  v9 = [objc_allocWithZone(MEMORY[0x1E6996338]) init];
  sub_1CA588B04(a1, a2, v9);
  [v9 setSearchType_];
  [v9 setIncludeContacts_];
  [v9 setIncludePredictions_];
  [v9 setShouldIncludeGroupResults_];
  [v9 setIncludeRecents_];
  [v9 setIncludeSuggestions_];
  [v9 setIncludeLocalExtensions_];
  [v9 setIncludeDirectoryServers_];
  [v9 setIncludeCalendarServers_];
  [v9 setFetchContext_];
  *&v2[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_fetchRequest] = v9;
  v15.receiver = v2;
  v15.super_class = _s14AddressFetcherCMa(0);
  v10 = v9;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  v12 = sub_1CA580388(a1);

  if (v12)
  {
    v13 = &v11[OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue];
    *v13 = a1;
    *(v13 + 1) = a2;
  }

  else
  {
  }

  return v11;
}

id sub_1CA580388(uint64_t a1)
{
  sub_1CA25B3D0(0, &qword_1EC441AA8, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1CA282DB4();
  *(v1 + 32) = 0xD000000000000029;
  *(v1 + 40) = 0x80000001CA9CF460;
  v2 = sub_1CA94CBA8();
  v3 = sub_1CA94C368();
  v4 = [v2 evaluateWithObject_];

  return v4;
}

uint64_t sub_1CA5804B4()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
  *v3 = v0;
  v3[1] = sub_1CA5805AC;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA5805AC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5806D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA589228(v6, a2 + v8);
  swift_endAccess();
  if (qword_1EC442DA0 != -1)
  {
    swift_once();
  }

  v9 = [qword_1EC446600 scheduleFetchRequest:*(a2 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_fetchRequest) delegate:a2];
  *(a2 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_cancellable) = v9;
  return swift_unknownObjectRelease();
}

uint64_t sub_1CA580854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  if (!sub_1CA25B410(a2))
  {
    goto LABEL_9;
  }

  sub_1CA275D70(0, (a2 & 0xC000000000000001) == 0, a2);
  v18 = (a2 & 0xC000000000000001) != 0 ? MEMORY[0x1CCAA22D0](0, a2) : *(a2 + 32);
  v19 = v18;
  v20 = [v18 value];

  if (!v20)
  {
    goto LABEL_9;
  }

  if ([v20 addressType] != 1)
  {

LABEL_9:
    v23 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
    swift_beginAccess();
    sub_1CA5891B8(v3 + v23, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v5))
    {
      v22 = v15;
      goto LABEL_11;
    }

    (*(v6 + 16))(v8, v15, v5);
    sub_1CA2E9314(v15, &unk_1EC446860, &qword_1CA98BED0);
    v24 = *(v3 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue + 8);
    v28 = *(v3 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue);
    v29 = v24;
    sub_1CA94C218();
    sub_1CA94C7E8();
LABEL_13:
    (*(v6 + 8))(v8, v5);
    goto LABEL_14;
  }

  v21 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA5891B8(v3 + v21, v17);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v5))
  {
    (*(v6 + 16))(v8, v17, v5);
    sub_1CA2E9314(v17, &unk_1EC446860, &qword_1CA98BED0);
    v28 = sub_1CA3F132C(v20, &selRef_address);
    v29 = v27;
    sub_1CA94C7E8();

    goto LABEL_13;
  }

  v22 = v17;
LABEL_11:
  sub_1CA2E9314(v22, &unk_1EC446860, &qword_1CA98BED0);
LABEL_14:
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v5);
  v25 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA589228(v12, v3 + v25);
  return swift_endAccess();
}

uint64_t sub_1CA580C80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  v12 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA5891B8(v1 + v12, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2))
  {
    sub_1CA2E9314(v11, &unk_1EC446860, &qword_1CA98BED0);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1CA2E9314(v11, &unk_1EC446860, &qword_1CA98BED0);
    v13 = *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue + 8);
    v15[0] = *(v1 + OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_defaultValue);
    v15[1] = v13;
    sub_1CA94C218();
    sub_1CA94C7E8();
    (*(v3 + 8))(v5, v2);
  }

  __swift_storeEnumTagSinglePayload(v9, 1, 1, v2);
  swift_beginAccess();
  sub_1CA589228(v9, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_1CA580F20(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = sub_1CA949F78();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949C58();
  v16 = a2;
  v17 = sub_1CA949F68();
  v18 = sub_1CA94CC18();

  v19 = os_log_type_enabled(v17, v18);
  v39 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v36 = v2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35 = v5;
    v23 = v22;
    v42[0] = v22;
    *v21 = 136315138;
    swift_getErrorValue();
    v24 = sub_1CA94D8B8();
    v26 = sub_1CA26B54C(v24, v25, v42);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1CA256000, v17, v18, "Email trigger parameter resolution failed with: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    v5 = v35;
    MEMORY[0x1CCAA4BF0](v27, -1, -1);
    v28 = v21;
    v3 = v36;
    MEMORY[0x1CCAA4BF0](v28, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v29 = OBJC_IVAR____TtCE11WorkflowKitCSo14WFEmailTriggerP33_BA28016ABCB8D5DBDA7CD8DCCD70294014AddressFetcher_continuation;
  swift_beginAccess();
  sub_1CA5891B8(v3 + v29, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5))
  {
    sub_1CA2E9314(v11, &unk_1EC446860, &qword_1CA98BED0);
  }

  else
  {
    v30 = v37;
    v31 = v38;
    (*(v38 + 16))(v37, v11, v5);
    sub_1CA2E9314(v11, &unk_1EC446860, &qword_1CA98BED0);
    v41 = v39;
    v32 = v39;
    sub_1CA94C7D8();
    (*(v31 + 8))(v30, v5);
  }

  v33 = v40;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v5);
  swift_beginAccess();
  sub_1CA589228(v33, v3 + v29);
  return swift_endAccess();
}

id sub_1CA5813DC()
{
  v2.receiver = v0;
  v2.super_class = _s14AddressFetcherCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA581494()
{
  result = [objc_allocWithZone(MEMORY[0x1E6996378]) initWithDelegate_];
  qword_1EC446600 = result;
  return result;
}

uint64_t WFEmailTrigger.resolveParameter(withKey:searchTerm:)()
{
  OUTLINED_FUNCTION_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1CA58155C()
{
  v2 = *(v1 + 56) == 0x737265646E6573 && *(v1 + 64) == 0xE700000000000000;
  if (v2 || (sub_1CA94D7F8() & 1) != 0)
  {
    v3 = objc_allocWithZone(_s14AddressFetcherCMa(0));
    OUTLINED_FUNCTION_11();
    sub_1CA94C218();
    v4 = OUTLINED_FUNCTION_23();
    *(v1 + 96) = sub_1CA580164(v4, v5);
    v6 = swift_task_alloc();
    *(v1 + 104) = v6;
    *v6 = v1;
    v7 = sub_1CA581C48;
LABEL_7:
    v6[1] = v7;
    OUTLINED_FUNCTION_99();

    return sub_1CA580494();
  }

  v10 = *(v1 + 56) == 0x6E65697069636572 && *(v1 + 64) == 0xEA00000000007374;
  if (v10 || (sub_1CA94D7F8() & 1) != 0)
  {
    v11 = objc_allocWithZone(_s14AddressFetcherCMa(0));
    OUTLINED_FUNCTION_11();
    sub_1CA94C218();
    v12 = OUTLINED_FUNCTION_23();
    *(v1 + 136) = sub_1CA580164(v12, v13);
    v6 = swift_task_alloc();
    *(v1 + 144) = v6;
    *v6 = v1;
    v7 = sub_1CA581EC8;
    goto LABEL_7;
  }

  v14 = *(v1 + 56) == 0x73746E756F636361 && *(v1 + 64) == 0xE800000000000000;
  if (!v14 && (sub_1CA94D7F8() & 1) == 0)
  {
    goto LABEL_53;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CA981300;
  *(v16 + 32) = sub_1CA94C3A8();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1CA94C3A8();
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_1CA94C3A8();
  *(v16 + 72) = v19;
  *(v16 + 80) = sub_1CA94C3A8();
  *(v16 + 88) = v20;
  *(v16 + 96) = sub_1CA94C3A8();
  *(v16 + 104) = v21;
  *(v16 + 112) = sub_1CA94C3A8();
  *(v16 + 120) = v22;
  *(v16 + 128) = sub_1CA94C3A8();
  *(v16 + 136) = v23;
  *(v16 + 144) = sub_1CA94C3A8();
  *(v16 + 152) = v24;
  *(v1 + 48) = 0;
  v25 = sub_1CA588B5C(v16, v1 + 48, v15);
  v26 = *(v1 + 48);
  if (!v25)
  {
    v39 = v26;
    OUTLINED_FUNCTION_111_5();
    sub_1CA948AD8();

    swift_willThrow();
    OUTLINED_FUNCTION_5();
    goto LABEL_54;
  }

  v27 = v25;
  v72 = v15;
  sub_1CA25B3D0(0, &unk_1EC446730, 0x1E6959A28);
  v28 = sub_1CA94C658();
  v29 = v26;

  v30 = sub_1CA25B410(v28);
  v31 = 0;
  v32 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v30 == v31)
    {

      goto LABEL_53;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v38 = OUTLINED_FUNCTION_137();
      v33 = MEMORY[0x1CCAA22D0](v38);
    }

    else
    {
      if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v33 = *(v28 + 8 * v31 + 32);
    }

    v15 = v33;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_20_23();
      v49 = v68;
LABEL_41:
      v52 = *(v49 + 16);
      v51 = *(v49 + 24);
      v53 = (v52 + 1);
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_75_6(v51 > 1);
        v49 = v69;
      }

      v54 = *(v1 + 88);
      *(v49 + 16) = v53;
      v55 = v49 + 16 * v52;
      *(v55 + 32) = v28;
      *(v55 + 40) = v30;
      sub_1CA94C648();
      OUTLINED_FUNCTION_153_4();
      [v54 setSelectedAccountIdentifiers_];

LABEL_45:
      v56 = sub_1CA3F14BC(*(v1 + 88), &selRef_selectedAccountDescriptions);
      if (v56)
      {
        v57 = v56;
        result = sub_1CA3F132C(v15, &selRef_accountDescription);
        if (!v58)
        {
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_194();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_23();
          v57 = v70;
        }

        v60 = *(v57 + 16);
        v59 = *(v57 + 24);
        v61 = (v60 + 1);
        if (v60 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_75_6(v59 > 1);
          v57 = v71;
        }

        *(v57 + 16) = v61;
        v62 = v57 + 16 * v60;
        *(v62 + 32) = v28;
        *(v62 + 40) = v30;
        sub_1CA94C648();
        OUTLINED_FUNCTION_153_4();
        v63 = OUTLINED_FUNCTION_76_5();
        [v63 v64];
      }

      else
      {
        v65 = *(v1 + 88);

        [v65 setSelectedAccountDescriptions_];
      }

LABEL_53:
      OUTLINED_FUNCTION_5();
LABEL_54:
      OUTLINED_FUNCTION_99();

      __asm { BRAA            X1, X16 }
    }

    result = sub_1CA3F132C(v33, &selRef_accountDescription);
    if (!v34)
    {
      __break(1u);
      goto LABEL_61;
    }

    v36 = *(v1 + 72);
    v35 = *(v1 + 80);
    *(v1 + 16) = result;
    *(v1 + 24) = v34;
    *(v1 + 32) = v36;
    *(v1 + 40) = v35;
    sub_1CA27BAF0();
    v37 = sub_1CA94D208();

    if (v37)
    {
      break;
    }

    ++v31;
  }

  v40 = *(v1 + 88);

  if (sub_1CA3F14BC(v40, &selRef_selectedAccountIdentifiers) && (v41 = *(v1 + 88), , sub_1CA3F14BC(v41, &selRef_selectedAccountDescriptions)))
  {
  }

  else
  {
    v42 = OUTLINED_FUNCTION_23();
    sub_1CA588BC4(v42, v43, v44);
    v45 = OUTLINED_FUNCTION_23();
    sub_1CA588BC4(v45, v46, v47);
  }

  v32 = v72;
  v48 = sub_1CA3F14BC(*(v1 + 88), &selRef_selectedAccountIdentifiers);
  if (!v48)
  {
    [*(v1 + 88) setSelectedAccountIdentifiers_];
    goto LABEL_45;
  }

  v49 = v48;
  result = [v15 identifier];
  if (result)
  {
    v50 = result;
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_194();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1CA581C48()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v5;
  *(v2 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA581D94()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 120))
  {
    v1 = [*(v0 + 88) selectedSenders];
    v2 = sub_1CA94C658();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_23();
      v2 = v9;
    }

    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    if (v4 >= v3 >> 1)
    {
      OUTLINED_FUNCTION_75_6(v3 > 1);
    }

    OUTLINED_FUNCTION_136_4(*(v0 + 112));
    sub_1CA94C648();
    OUTLINED_FUNCTION_153_4();
    v5 = OUTLINED_FUNCTION_76_5();
    [v5 v6];
  }

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA581EC8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v5;
  *(v2 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA582014()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 160))
  {
    v1 = [*(v0 + 88) selectedRecipients];
    v2 = sub_1CA94C658();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_20_23();
      v2 = v9;
    }

    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    if (v4 >= v3 >> 1)
    {
      OUTLINED_FUNCTION_75_6(v3 > 1);
    }

    OUTLINED_FUNCTION_136_4(*(v0 + 152));
    sub_1CA94C648();
    OUTLINED_FUNCTION_153_4();
    v5 = OUTLINED_FUNCTION_76_5();
    [v5 v6];
  }

  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA582148()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA5821D0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA58228C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C99BC;

  return WFEmailTrigger.resolveParameter(withKey:searchTerm:)();
}

void static WFWorkoutTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_116_4(v2);
  v3 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_37_10();
  v7 = sub_1CA94B258();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_121_3();
  v17(v16);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v18, v19, v20);
  (*(v5 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_140_4(v22, xmmword_1CA981310);
  (*(v8 + 16))(v23 + v21, v11, v7);
  OUTLINED_FUNCTION_78_7();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    v24 = OUTLINED_FUNCTION_30_16();
    v25(v24);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v26 = swift_allocObject();
    v27 = OUTLINED_FUNCTION_5_37(v26);
    v28(v27);
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    OUTLINED_FUNCTION_89_2();
    v29 = swift_allocObject();
    v30 = OUTLINED_FUNCTION_5_37(v29);
    v31(v30);
    OUTLINED_FUNCTION_8_26();
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v32 = OUTLINED_FUNCTION_30_16();
    v33(v32);
  }

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFWorkoutTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v0 = OUTLINED_FUNCTION_14_24();
  *(v0 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_39_9();
  v6(v5);
  return v0;
}

Swift::Void __swiftcall WFWorkoutTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  if (withIdentifierSuffix._countAndFlagsBits == 0x7472617473 && withIdentifierSuffix._object == 0xE500000000000000)
  {
    goto LABEL_18;
  }

  object = withIdentifierSuffix._object;
  if (OUTLINED_FUNCTION_13_29(0x7472617473, 0xE500000000000000))
  {
    goto LABEL_18;
  }

  v4 = countAndFlagsBits == 1886352499 && object == 0xE400000000000000;
  if (v4 || (OUTLINED_FUNCTION_13_29(1886352499, 0xE400000000000000) & 1) != 0)
  {
    goto LABEL_18;
  }

  v5 = OUTLINED_FUNCTION_8_26();
  v6 = countAndFlagsBits == v5 && object == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_13_29(v5, 0xE600000000000000) & 1) != 0)
  {
    v7 = OUTLINED_FUNCTION_32_12();
    [v7 v8];
LABEL_18:
    v9 = OUTLINED_FUNCTION_17_17();

    [v9 v10];
  }
}

uint64_t WFWorkoutTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5829C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v17 = v14[6] == 0x5474756F6B726F77 && v14[7] == 0xEC00000073657079;
  if (v17 || (sub_1CA94D7F8() & 1) != 0)
  {
    v18 = [objc_opt_self() allTypes];
    sub_1CA25B3D0(0, &qword_1EC446740, off_1E836F5D0);
    v19 = sub_1CA94C658();

    v20 = sub_1CA25B410(v19);
    v21 = 0;
    a9 = v19 & 0xFFFFFFFFFFFFFF8;
    a10 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v20 == v21)
      {

        goto LABEL_18;
      }

      if (a10)
      {
        v26 = OUTLINED_FUNCTION_68_3();
        v22 = MEMORY[0x1CCAA22D0](v26);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v18 = v22;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v23 = v14[8];
      v24 = v14[9];
      v25 = [v22 name];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_63_8();

      v14[2] = v15;
      v14[3] = v16;
      v14[4] = v23;
      v14[5] = v24;
      sub_1CA27BAF0();
      LOBYTE(v25) = sub_1CA94D208();

      if (v25)
      {
        break;
      }

      ++v21;
    }

    v27 = v14[10];

    v28 = [v18 activityType];
    v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v29 = [v27 selectedWorkoutTypes];
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    OUTLINED_FUNCTION_57_7();
    v30 = sub_1CA94C658();

    a11 = v30;
    MEMORY[0x1CCAA1490]();
    if (*((a11 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((a11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_1CA94C698();
LABEL_17:
    v31 = v14[10];
    OUTLINED_FUNCTION_68_3();
    sub_1CA94C6E8();
    sub_1CA94C648();
    OUTLINED_FUNCTION_11();

    [v31 setSelectedWorkoutTypes_];
  }

LABEL_18:
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1CA582CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFWorkoutTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFPredictedLocationTransitionTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v34 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = (v5 - v4);
  v33 = sub_1CA94AD48();
  OUTLINED_FUNCTION_4_12();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v13 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v13);
  OUTLINED_FUNCTION_45_9();
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_30();
  v14 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v14);
  v36 = *(v15 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v35 = OUTLINED_FUNCTION_107_3();
  *(v35 + 16) = xmmword_1CA97EDF0;
  v18 = v35 + v17;
  v31 = v35 + v17;
  v19 = *MEMORY[0x1E69DAFF0];
  sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1();
  (*(v20 + 104))(v12, v19);
  v21 = OUTLINED_FUNCTION_113_3();
  v22(v21);
  v23 = sub_1CA94ADC8();
  v24 = swift_allocBox();
  sub_1CA94AD38();
  *v6 = v24;
  v32 = *MEMORY[0x1E69DAF30];
  v25 = *(v2 + 104);
  v25(v6);
  sub_1CA57ABD8(v6, 0x4872656767697274, 0xEE00705573646165, v18);
  v30 = *(v2 + 8);
  v26 = OUTLINED_FUNCTION_130();
  v27(v26);
  v28 = *(v8 + 8);
  v28(v12, v33);
  sub_1CA5831B8(v12);
  swift_allocBox();
  OUTLINED_FUNCTION_99_4();
  sub_1CA94AD38();
  *v6 = v23;
  (v25)(v6, v32, v34);
  sub_1CA57ABD8(v6, 0x74616E6974736564, 0xEF657079546E6F69, v31 + v36);
  v29 = OUTLINED_FUNCTION_130();
  v30(v29);
  v28(v12, v33);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    OUTLINED_FUNCTION_69_8();
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA5831B8@<X0>(uint64_t a1@<X8>)
{
  sub_1CA583310();
  v2 = *MEMORY[0x1E69DAF80];
  v3 = sub_1CA94AD48();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static WFPredictedLocationTransitionTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  v0 = sub_1CA94AD48();
  OUTLINED_FUNCTION_12(v0);
  OUTLINED_FUNCTION_45_9();
  v3 = v2 & ~v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CA981310;
  sub_1CA5831B8(v4 + v3);
  return v4;
}

void sub_1CA583310()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37_10();
  v34 = sub_1CA94B5A8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  v13 = sub_1CA94B5D8();
  v14 = OUTLINED_FUNCTION_18_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_0();
  v15 = sub_1CA94B478();
  OUTLINED_FUNCTION_1_0();
  v32 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_0();
  v33 = v19 - v18;
  OUTLINED_FUNCTION_25_0();
  v20 = sub_1CA94ADC8();
  v21 = OUTLINED_FUNCTION_18_0(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  sub_1CA588438(v7, v5, (v23 - v22));
  v24 = *(v3 + 16);
  if (v24)
  {
    v31 = v15;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1CA2B90B0(0, v24, 0);
    v25 = sub_1CA94B458();
    v26 = v3 + 40;
    do
    {
      __swift_storeEnumTagSinglePayload(v0, 1, 1, v25);
      sub_1CA94C218();
      OUTLINED_FUNCTION_68_3();
      sub_1CA94B588();
      v28 = *(v35 + 16);
      v27 = *(v35 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1CA2B90B0(v27 > 1, v28 + 1, 1);
      }

      *(v35 + 16) = v28 + 1;
      OUTLINED_FUNCTION_118_3();
      (*(v11 + 32))(v35 + (v30 & ~v29) + *(v11 + 72) * v28, v1, v34);
      v26 += 16;
      --v24;
    }

    while (v24);

    v15 = v31;
  }

  else
  {
  }

  (*(v32 + 104))(v33, *MEMORY[0x1E69DB3B0], v15);
  sub_1CA94B5C8();
  sub_1CA94B468();
  OUTLINED_FUNCTION_36();
}

void static WFPredictedLocationTransitionTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_9_29();
  v1 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v2 = sub_1CA94AF78();
  v4 = v3;
  v5 = sub_1CA578CD0(v2, v3, &qword_1EC446680, off_1E836EE60);
  if (v0)
  {

    goto LABEL_24;
  }

  v6 = v5;

  OUTLINED_FUNCTION_141_4();
  sub_1CA579AE8();
  if (v7)
  {
    OUTLINED_FUNCTION_61_7();
    v9 = v9 && v4 == 0xEC000000656D6F68;
    if (v9 || (OUTLINED_FUNCTION_34_14(v8, 0xEC000000656D6F68) & 1) != 0)
    {
      v10 = 0;
LABEL_10:

LABEL_11:
      [v6 setDestinationType_];
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_106_4();
    if (v9 && v4 == v25)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v27 = OUTLINED_FUNCTION_34_14(v24, v25);

    if (v27)
    {
      v10 = 1;
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_141_4();
  sub_1CA579AE8();
  if (v11)
  {
    OUTLINED_FUNCTION_61_7();
    v13 = v9 && v4 == 0xEC000000656D6F68;
    if (v13 || (OUTLINED_FUNCTION_34_14(v12, 0xEC000000656D6F68) & 1) != 0)
    {
      v14 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_106_4();
      if (!v9 || v4 != v29)
      {
        v31 = OUTLINED_FUNCTION_34_14(v28, v29);

        if ((v31 & 1) == 0)
        {
          goto LABEL_21;
        }

        v14 = 1;
        goto LABEL_20;
      }

      v14 = 1;
    }

LABEL_20:
    [v6 setDestinationType_];
  }

LABEL_21:
  v15 = [v6 serializedData];
  if (v15)
  {
    sub_1CA948C08();
    OUTLINED_FUNCTION_63_8();

    OUTLINED_FUNCTION_72_0();
    v15 = sub_1CA948BF8();
    v16 = OUTLINED_FUNCTION_72_0();
    sub_1CA266F2C(v16, v17);
  }

  v18 = OUTLINED_FUNCTION_50_6();
  [v18 v19];

  v20 = sub_1CA294A78();
  v21 = OUTLINED_FUNCTION_93_4(v20, sel_setShouldPrompt_);
  v22 = OUTLINED_FUNCTION_65_5(v21, sel_setShouldNotify_);
  v23 = OUTLINED_FUNCTION_65_5(v22, sel_setEnabled_);
  OUTLINED_FUNCTION_95_6(v23, sel_setSource_);

LABEL_24:
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

void static WFBatteryLevelTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v3 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_19();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  v31 = sub_1CA94B258();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = *MEMORY[0x1E69DB050];
  sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1();
  (*(v12 + 104))(v0, v11);
  v13 = OUTLINED_FUNCTION_96_6();
  v14(v13);
  sub_1CA94ADC8();
  v15 = swift_allocBox();
  sub_1CA94AD38();
  *v2 = v15;
  v16 = OUTLINED_FUNCTION_113_3();
  v17(v16);
  sub_1CA57ABD8(v2, 0x6C6576656CLL, 0xE500000000000000, v10);
  (*(v5 + 8))(v2, v3);
  v18 = OUTLINED_FUNCTION_135_2();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_40();
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CA981310;
  (*(v30 + 16))(v21 + v20, v10, v31);
  OUTLINED_FUNCTION_87_4();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    (*(v30 + 8))(v10, v31);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v22 = swift_allocObject();
    v23 = OUTLINED_FUNCTION_56_7(v22);
    v24(v23);
    OUTLINED_FUNCTION_87_4();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v25 = swift_allocObject();
    v26 = OUTLINED_FUNCTION_56_7(v25);
    v27(v26);
    OUTLINED_FUNCTION_87_4();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v28 = OUTLINED_FUNCTION_88_2();
    v29(v28);
  }

  OUTLINED_FUNCTION_107();
}

Swift::Void __swiftcall WFBatteryLevelTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  v3 = withIdentifierSuffix._countAndFlagsBits == 0x6C61757165 && withIdentifierSuffix._object == 0xE500000000000000;
  if (v3 || (object = withIdentifierSuffix._object, (OUTLINED_FUNCTION_13_29(0x6C61757165, 0xE500000000000000) & 1) != 0))
  {
    v5 = 0;
LABEL_7:

    [v1 setSelection_];
    return;
  }

  v6 = countAndFlagsBits == 0x65766F6261 && object == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_13_29(0x65766F6261, 0xE500000000000000) & 1) != 0)
  {
    v5 = 1;
    goto LABEL_7;
  }

  v7 = countAndFlagsBits == 0x776F6C6562 && object == 0xE500000000000000;
  if (v7 || (OUTLINED_FUNCTION_13_29(0x776F6C6562, 0xE500000000000000) & 1) != 0)
  {
    v5 = 2;
    goto LABEL_7;
  }
}

uint64_t static WFBatteryLevelTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_9_29();
  v3 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v4 = sub_1CA94AF78();
  sub_1CA578AE4(v4, v5, &qword_1EC446688, off_1E836DEA8, WFBatteryLevelTrigger.updateVariant(withIdentifierSuffix:));
  if (v0)
  {

LABEL_11:
    *&result = COERCE_DOUBLE(OUTLINED_FUNCTION_44_8());
    return result;
  }

  OUTLINED_FUNCTION_57_7();

  *&result = COERCE_DOUBLE(sub_1CA57914C(0x6C6576656CLL, 0xE500000000000000, v2));
  if (v7)
  {
LABEL_8:
    v8 = [v1 serializedData];
    if (v8)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v8 = sub_1CA948BF8();
      v9 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v9, v10);
    }

    v11 = OUTLINED_FUNCTION_50_6();
    [v11 v12];

    v13 = OUTLINED_FUNCTION_152_3();
    v14 = OUTLINED_FUNCTION_93_4(v13, sel_setShouldPrompt_);
    v15 = OUTLINED_FUNCTION_65_5(v14, sel_setShouldNotify_);
    v16 = OUTLINED_FUNCTION_65_5(v15, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v16, sel_setSource_);

    goto LABEL_11;
  }

  if ((~result & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*&result <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*&result < 9.22337204e18)
  {
    [v1 setLevel_];
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t static WFSleepTrigger.toolkitTriggerDefinitions(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_107_3();
  *(v1 + 16) = xmmword_1CA9813C0;
  OUTLINED_FUNCTION_74_6();
  sub_1CA578170();
  if (v0)
  {
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_128_1();
    sub_1CA578170();
    OUTLINED_FUNCTION_123_4();
    sub_1CA578170();
  }

  return v1;
}

Swift::Void __swiftcall WFSleepTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  object = withIdentifierSuffix._object;
  v3 = withIdentifierSuffix._countAndFlagsBits == 0xD000000000000010 && 0x80000001CA9CF200 == withIdentifierSuffix._object;
  if (v3 || (countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits, v5 = OUTLINED_FUNCTION_74_6(), (OUTLINED_FUNCTION_13_29(v5, v6) & 1) != 0))
  {
    v7 = 0;
LABEL_7:

    [v1 setSelection_];
    return;
  }

  OUTLINED_FUNCTION_128_1();
  v8 = OUTLINED_FUNCTION_132_1();
  v10 = countAndFlagsBits == v8 && object == v9;
  if (v10 || (OUTLINED_FUNCTION_13_29(v8, v9) & 1) != 0)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v11 = OUTLINED_FUNCTION_123_4();
  v13 = countAndFlagsBits == v11 && object == v12;
  if (v13 || (OUTLINED_FUNCTION_13_29(v11, 0xE900000000000070) & 1) != 0)
  {
    v7 = 2;
    goto LABEL_7;
  }
}

void static WFNFCTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v21 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_85_5();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  v7 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v7);
  OUTLINED_FUNCTION_45_9();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v9 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v9);
  OUTLINED_FUNCTION_45_9();
  v12 = v11 & ~v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CA981310;
  v14 = *MEMORY[0x1E69DB060];
  sub_1CA94AD98();
  OUTLINED_FUNCTION_0_1();
  (*(v15 + 104))(v0, v14);
  v16 = OUTLINED_FUNCTION_96_6();
  v17(v16);
  sub_1CA94ADC8();
  v18 = swift_allocBox();
  sub_1CA94AD38();
  *v2 = v18;
  (*(v4 + 104))(v2, *MEMORY[0x1E69DAF30], v21);
  sub_1CA57ABD8(v2, 0x746E656449676174, 0xED00007265696669, v13 + v12);
  (*(v4 + 8))(v2, v21);
  v19 = OUTLINED_FUNCTION_119();
  v20(v19);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    *(v8 + 16) = 0;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFNFCTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_9_29();
  v3 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v4 = sub_1CA94AF78();
  sub_1CA578CD0(v4, v5, &qword_1EC446698, off_1E836EBF8);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_57_7();

    sub_1CA579460(0x746E656449676174, 0xED00007265696669, v2);
    if (v6)
    {
      v7 = sub_1CA94C368();
    }

    else
    {
      v7 = 0;
    }

    [v1 setTagIdentifier_];

    v8 = [v1 serializedData];
    if (v8)
    {
      sub_1CA948C08();
      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_72_0();
      v8 = sub_1CA948BF8();
      v9 = OUTLINED_FUNCTION_72_0();
      sub_1CA266F2C(v9, v10);
    }

    v11 = OUTLINED_FUNCTION_50_6();
    [v11 v12];

    v13 = OUTLINED_FUNCTION_152_3();
    v14 = OUTLINED_FUNCTION_93_4(v13, sel_setShouldPrompt_);
    v15 = OUTLINED_FUNCTION_65_5(v14, sel_setShouldNotify_);
    v16 = OUTLINED_FUNCTION_65_5(v15, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v16, sel_setSource_);
  }

  return OUTLINED_FUNCTION_44_8();
}

void static WFSoundRecognitionTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  v2 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v2);
  OUTLINED_FUNCTION_45_9();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v4 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v4);
  OUTLINED_FUNCTION_45_9();
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_23_15();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_101();
  v10(v9);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v11, 0xE600000000000000, v12);
  v13 = OUTLINED_FUNCTION_195();
  v14(v13);
  OUTLINED_FUNCTION_104_4();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v0)
  {
    *(v3 + 16) = 0;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFSoundRecognitionTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v0 = OUTLINED_FUNCTION_14_24();
  *(v0 + 16) = xmmword_1CA981310;
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_39_9();
  v6(v5);
  return v0;
}

uint64_t WFSoundRecognitionTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA584C60()
{
  OUTLINED_FUNCTION_189();
  v17 = v0;
  v1 = v0[8] == 0x73646E756F73 && v0[9] == 0xE600000000000000;
  if (v1 || (sub_1CA94D7F8() & 1) != 0)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 16) = 0;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v2;
    v6[4] = v4;
    v0[6] = sub_1CA588C84;
    v0[7] = v6;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CA584F70;
    v0[5] = &block_descriptor_31_1;
    v7 = _Block_copy(v0 + 2);
    sub_1CA94C218();

    v8 = [v5 mapLocalizedSupportedSoundDetectionTypesUsingBlock_];
    _Block_release(v7);

    swift_beginAccess();
    v9 = *(v4 + 24);
    if (v9)
    {
      v10 = v0[12];
      v11 = *(v4 + 16);
      sub_1CA94C218();
      v12 = [v10 soundDetectionTypes];
      v13 = sub_1CA94C8F8();

      v16[2] = v13;
      sub_1CA368948(v16, v11, v9);

      OUTLINED_FUNCTION_119();
      sub_1CA94C8E8();
      OUTLINED_FUNCTION_57_7();

      [v10 setSoundDetectionTypes_];
    }
  }

  OUTLINED_FUNCTION_3_6();

  return v14();
}

uint64_t sub_1CA584EC4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1CA27BAF0();
  result = sub_1CA94D208();
  if (result)
  {
    swift_beginAccess();
    *(a7 + 16) = a3;
    *(a7 + 24) = a4;

    result = sub_1CA94C218();
  }

  *(a8 + 24) = MEMORY[0x1E69E7CA8] + 8;
  return result;
}

id sub_1CA584F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = sub_1CA94C3A8();
  v9 = v8;

  v3(v12, v4, v6, v7, v9);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v10 = sub_1CA94D7D8();
  __swift_destroy_boxed_opaque_existential_0(v12);

  return v10;
}

uint64_t sub_1CA585074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA2C99BC;

  return WFSoundRecognitionTrigger.resolveParameter(withKey:searchTerm:)(a1, a2, a3, a4);
}

void static WFAlarmTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  v3 = v0;
  OUTLINED_FUNCTION_116_4(v4);
  v5 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_85_5();
  v55 = sub_1CA94B258();
  v54 = *(v55 - 8);
  v53 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_19();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v43 - v13;
  OUTLINED_FUNCTION_46_8();
  sub_1CA57FEF8(v3, v15, v16, v3);
  v17 = *(v7 + 104);
  v17(v2, *MEMORY[0x1E69DAF98], v5);
  v52 = v14;
  OUTLINED_FUNCTION_137();
  sub_1CA57FD10(v18, 0xE800000000000000, v19);
  v20 = *(v7 + 8);
  v21 = OUTLINED_FUNCTION_204();
  v20(v21);
  OUTLINED_FUNCTION_10_27();
  sub_1CA583310();
  v17(v2, *MEMORY[0x1E69DAF80], v5);
  OUTLINED_FUNCTION_137();
  sub_1CA57FD10(v22, 0xEA00000000006574, v23);
  v24 = OUTLINED_FUNCTION_204();
  v20(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  v43[1] = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v26 = v25;
  OUTLINED_FUNCTION_105_5();
  v48 = v27;
  OUTLINED_FUNCTION_22_17();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1CA9813C0;
  v51 = v28;
  v29 = v28 + v7 + 104;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v31 = v53;
  v32 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v47 = *(v54 + 72);
  v45 = v30;
  v33 = swift_allocObject();
  v44 = xmmword_1CA981310;
  *(v33 + 16) = xmmword_1CA981310;
  v34 = v31;
  v36 = *(v31 + 16);
  v35 = (v31 + 16);
  v54 = v11;
  v46 = v36;
  (v36)(v33 + v32, v11, v55);
  OUTLINED_FUNCTION_145_2();
  v49 = v29;
  OUTLINED_FUNCTION_84_1();
  sub_1CA578170();
  if (v1)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v37 = *(v34 + 8);
    OUTLINED_FUNCTION_24_16();
    v37();
    (v37)(v52, v33);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    v50 = v26;
    swift_setDeallocating();
    sub_1CA32E40C();
    *(swift_allocObject() + 16) = v44;
    OUTLINED_FUNCTION_49_6();
    v46();
    OUTLINED_FUNCTION_124_5();
    OUTLINED_FUNCTION_84_1();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    *&v44 = v49 + 2 * v48;
    v38 = v47;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1CA97EDF0;
    v40 = v46;
    (v46)(v39 + v32, v54, v55);
    (v40)(v39 + v32 + v38, v52, v55);
    OUTLINED_FUNCTION_139_5();
    OUTLINED_FUNCTION_84_1();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v41 = OUTLINED_FUNCTION_7_34();
    v35(v41);
    v42 = OUTLINED_FUNCTION_176();
    v35(v42);
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_107();
}

void static WFAlarmTrigger.toolkitParameters(context:)()
{
  OUTLINED_FUNCTION_108();
  v1 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = (v6 - v5);
  v23 = sub_1CA94AD48();
  OUTLINED_FUNCTION_4_12();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_97_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_30();
  v11 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v11);
  v27 = *(v12 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v28 = OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_134_4(v28, xmmword_1CA97EDF0);
  OUTLINED_FUNCTION_53_10();
  sub_1CA583310();
  v26 = *MEMORY[0x1E69DAF80];
  v15 = *(v9 + 104);
  v15(v0);
  sub_1CA94ADC8();
  v16 = swift_allocBox();
  sub_1CA94AD38();
  *v7 = v16;
  v25 = *MEMORY[0x1E69DAF30];
  v24 = *(v3 + 104);
  v24(v7);
  v17 = v14;
  OUTLINED_FUNCTION_151_4(v7, 0x7079546D72616C61, v14);
  v18 = *(v3 + 8);
  v18(v7, v1);
  v19 = *(v9 + 8);
  v19(v0, v23);
  OUTLINED_FUNCTION_10_27();
  sub_1CA583310();
  (v15)(v0, v26, v23);
  v20 = swift_allocBox();
  sub_1CA94AD38();
  *v7 = v20;
  (v24)(v7, v25, v1);
  sub_1CA57ABD8(v7, 0x6174536D72616C61, 0xEA00000000006574, v17 + v27);
  v21 = OUTLINED_FUNCTION_130();
  (v18)(v21);
  v22 = OUTLINED_FUNCTION_135_2();
  (v19)(v22);
  OUTLINED_FUNCTION_107();
}

__n128 *static WFAlarmTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  v1 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_134_4(v6, xmmword_1CA9813C0);
  OUTLINED_FUNCTION_53_10();
  sub_1CA583310();
  v7 = *MEMORY[0x1E69DAF80];
  v8 = *(v3 + 104);
  v9 = OUTLINED_FUNCTION_90_5();
  v8(v9);
  OUTLINED_FUNCTION_10_27();
  sub_1CA583310();
  (v8)(v0 + v5, v7, v1);
  OUTLINED_FUNCTION_46_8();
  v10 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v10, v11, v12, v13);
  (v8)(v0 + 2 * v5, *MEMORY[0x1E69DAF98], v1);
  return v6;
}

Swift::Void __swiftcall WFAlarmTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  countAndFlagsBits = withIdentifierSuffix._countAndFlagsBits;
  v3 = OUTLINED_FUNCTION_145_2();
  v6 = countAndFlagsBits == v3 && v4 == v5;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_13_29(v3, 0xE90000000000006DLL) & 1) != 0))
  {
    v8 = 0;
LABEL_7:

    [v1 setAlarmType_];
    return;
  }

  v9 = OUTLINED_FUNCTION_124_5();
  v10 = countAndFlagsBits == v9 && v7 == 0xED00006D72616C61;
  if (v10 || (OUTLINED_FUNCTION_13_29(v9, 0xED00006D72616C61) & 1) != 0)
  {
    v8 = 2;
    goto LABEL_7;
  }

  v11 = OUTLINED_FUNCTION_139_5();
  v12 = countAndFlagsBits == v11 && v7 == 0xED00006D72616C61;
  if (v12 || (OUTLINED_FUNCTION_13_29(v11, 0xED00006D72616C61) & 1) != 0)
  {
    v8 = 1;
    goto LABEL_7;
  }
}

uint64_t static WFAlarmTrigger.configuredTriggerRecord(triggerDefinition:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_9_29();
  v2 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v3 = sub_1CA94AF78();
  sub_1CA578AE4(v3, v4, &qword_1EC4466A8, off_1E836DDF8, WFAlarmTrigger.updateVariant(withIdentifierSuffix:));
  if (v0)
  {

    return OUTLINED_FUNCTION_44_8();
  }

  OUTLINED_FUNCTION_57_7();

  sub_1CA579AE8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = v5 == 0x676E69726966 && v6 == 0xE600000000000000;
    if (v9 || (OUTLINED_FUNCTION_109_3(0x676E69726966, 0xE600000000000000) & 1) != 0)
    {
      v10 = 0;
    }

    else
    {
      v21 = v7 == 0x64657A6F6F6E73 && v8 == 0xE700000000000000;
      if (v21 || (OUTLINED_FUNCTION_109_3(0x64657A6F6F6E73, 0xE700000000000000) & 1) != 0)
      {
        v10 = 1;
      }

      else
      {
        if (v7 != 0x646570706F7473 || v8 != 0xE700000000000000)
        {
          v23 = OUTLINED_FUNCTION_109_3(0x646570706F7473, 0xE700000000000000);

          if ((v23 & 1) == 0)
          {
            goto LABEL_12;
          }

          v10 = 2;
          goto LABEL_11;
        }

        v10 = 2;
      }
    }

LABEL_11:
    [v1 setAlarmState_];
  }

LABEL_12:
  v11 = [v1 serializedData];
  if (v11)
  {
    sub_1CA948C08();
    OUTLINED_FUNCTION_63_8();

    OUTLINED_FUNCTION_72_0();
    v11 = sub_1CA948BF8();
    v12 = OUTLINED_FUNCTION_72_0();
    sub_1CA266F2C(v12, v13);
  }

  v14 = OUTLINED_FUNCTION_50_6();
  [v14 v15];

  v16 = OUTLINED_FUNCTION_152_3();
  v17 = OUTLINED_FUNCTION_93_4(v16, sel_setShouldPrompt_);
  v18 = OUTLINED_FUNCTION_65_5(v17, sel_setShouldNotify_);
  v19 = OUTLINED_FUNCTION_65_5(v18, sel_setEnabled_);
  OUTLINED_FUNCTION_95_6(v19, sel_setSource_);

  return OUTLINED_FUNCTION_44_8();
}

void static WFWalletTransactionTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  v5 = sub_1CA94AF88();
  OUTLINED_FUNCTION_12(v5);
  OUTLINED_FUNCTION_45_9();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CA981310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v6 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v6);
  OUTLINED_FUNCTION_105_5();
  OUTLINED_FUNCTION_22_17();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  v7 = OUTLINED_FUNCTION_23_15();
  sub_1CA57FEF8(v7, v8, v9, v0);
  v10 = v3;
  v11 = *(v3 + 104);
  v12 = OUTLINED_FUNCTION_86_3();
  v11(v12);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v13, v14, v15);
  v33 = *(v10 + 8);
  v16 = OUTLINED_FUNCTION_195();
  v17(v16);
  v18 = OUTLINED_FUNCTION_23_15();
  sub_1CA57FEF8(v18, v19, v20, v0);
  v21 = OUTLINED_FUNCTION_86_3();
  v11(v21);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(0xD000000000000011, v22, v23);
  v24 = OUTLINED_FUNCTION_195();
  v33(v24);
  v25 = OUTLINED_FUNCTION_23_15();
  sub_1CA57FEF8(v25, v26, v27, v0);
  v28 = OUTLINED_FUNCTION_86_3();
  v11(v28);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_195();
  v33(v32);
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    *(v34 + 16) = 0;
  }

  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_107();
}

void static WFWalletTransactionTrigger.toolkitTypes(context:)()
{
  OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  v1 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_134_4(v6, xmmword_1CA9813C0);
  OUTLINED_FUNCTION_80_6();
  sub_1CA57FEF8(v7, v8, v9, v10);
  v11 = *MEMORY[0x1E69DAF98];
  v12 = *(v3 + 104);
  v13 = OUTLINED_FUNCTION_90_5();
  v12(v13);
  v14 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v14, v15, v16, v17);
  (v12)(v0 + v5, v11, v1);
  v18 = OUTLINED_FUNCTION_52_9();
  sub_1CA57FEF8(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_90_5();
  v12(v22);
  OUTLINED_FUNCTION_36();
}

void sub_1CA5863D4()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v10 = sub_1CA94AF78();
  sub_1CA578CD0(v10, v11, v6, v4);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_57_7();

    v12 = [v6 serializedData];
    if (v12)
    {
      sub_1CA948C08();

      OUTLINED_FUNCTION_177();
      v12 = sub_1CA948BF8();
      v13 = OUTLINED_FUNCTION_177();
      sub_1CA266F2C(v13, v14);
    }

    v15 = OUTLINED_FUNCTION_50_6();
    [v15 v16];

    v17 = v2(v8);
    v18 = OUTLINED_FUNCTION_93_4(v17, sel_setShouldPrompt_);
    v19 = OUTLINED_FUNCTION_65_5(v18, sel_setShouldNotify_);
    v20 = OUTLINED_FUNCTION_65_5(v19, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v20, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

void static WFUserFocusActivityTrigger.toolkitTriggerDefinitions(context:)()
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_116_4(v3);
  v4 = sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_37_10();
  v29 = sub_1CA94B258();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  sub_1CA57FEF8(v0, 0x7375636F46, 0xE500000000000000, v0);
  v12 = OUTLINED_FUNCTION_121_3();
  v13(v12);
  OUTLINED_FUNCTION_25_15();
  sub_1CA57FD10(v14, 0xE900000000000065, v15);
  (*(v6 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_102_3();
  sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_140_4(v17, xmmword_1CA981310);
  (*(v8 + 16))(v18 + v16, v11, v29);
  OUTLINED_FUNCTION_104_4();
  OUTLINED_FUNCTION_78_7();
  sub_1CA578170();
  swift_setDeallocating();
  sub_1CA32E40C();
  if (v1)
  {
    v19 = OUTLINED_FUNCTION_30_16();
    v20(v19);
    OUTLINED_FUNCTION_69_8();
  }

  else
  {
    OUTLINED_FUNCTION_89_2();
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_5_37(v21);
    v23(v22);
    OUTLINED_FUNCTION_41_11();
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    OUTLINED_FUNCTION_89_2();
    v24 = swift_allocObject();
    v25 = OUTLINED_FUNCTION_5_37(v24);
    v26(v25);
    OUTLINED_FUNCTION_8_26();
    OUTLINED_FUNCTION_78_7();
    sub_1CA578170();
    swift_setDeallocating();
    sub_1CA32E40C();
    v27 = OUTLINED_FUNCTION_30_16();
    v28(v27);
  }

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_107();
}

uint64_t static WFUserFocusActivityTrigger.toolkitTypes(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446728, &qword_1CA98B860);
  OUTLINED_FUNCTION_30();
  sub_1CA94AD48();
  OUTLINED_FUNCTION_1_0();
  v1 = OUTLINED_FUNCTION_14_24();
  *(v1 + 16) = xmmword_1CA981310;
  sub_1CA57FEF8(v0, 0x7375636F46, 0xE500000000000000, v0);
  v2 = OUTLINED_FUNCTION_39_9();
  v3(v2);
  return v1;
}

uint64_t _sSo12WFDNDTriggerC11WorkflowKitE13updateVariant20withIdentifierSuffixySS_tF_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 28271 && a2 == 0xE200000000000000)
  {
    goto LABEL_18;
  }

  v5 = OUTLINED_FUNCTION_104_4();
  if (OUTLINED_FUNCTION_13_29(v5, v6))
  {
    goto LABEL_18;
  }

  if (a1 == 6710895 && a2 == 0xE300000000000000)
  {
    goto LABEL_18;
  }

  v8 = OUTLINED_FUNCTION_41_11();
  if (OUTLINED_FUNCTION_13_29(v8, v9))
  {
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_8_26();
  v11 = a1 == v10 && a2 == 0xE600000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_13_29(v10, 0xE600000000000000), (result & 1) != 0))
  {
    v13 = OUTLINED_FUNCTION_32_12();
    [v13 v14];
LABEL_18:
    v15 = OUTLINED_FUNCTION_17_17();

    return [v15 v16];
  }

  return result;
}

uint64_t WFUserFocusActivityTrigger.resolveParameter(withKey:searchTerm:)()
{
  OUTLINED_FUNCTION_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v1[9] = swift_getObjectType();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA586C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v15 = *(v14 + 32) == 0x646F4D7375636F66 && *(v14 + 40) == 0xE900000000000065;
  if (v15 || (sub_1CA94D7F8() & 1) != 0)
  {
    v16 = *(v14 + 72);
    v18 = *(v14 + 48);
    v17 = *(v14 + 56);
    HIBYTE(a10) = 8;
    *(v14 + 24) = WFTriggerCategory.triggers()();
    *(swift_task_alloc() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443FA0, &qword_1CA9825F0);
    sub_1CA25C3BC(&qword_1EC446748, &qword_1EC443FA0, &qword_1CA9825F0, MEMORY[0x1E69E6328]);
    v19 = sub_1CA94C5B8();

    *(v14 + 24) = v19;
    v20 = swift_task_alloc();
    v20[2] = v18;
    v20[3] = v17;
    v20[4] = v16;
    sub_1CA94C758();
    OUTLINED_FUNCTION_130();
    swift_getWitnessTable();
    sub_1CA94C5F8();

    v21 = *(v14 + 16);
    if (v21)
    {
      v22 = [*(v14 + 16) activitySemanticIdentifier];
      if (!v22)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      [*(v14 + 64) setActivitySemanticIdentifier_];

      v23 = [v21 activityGlyphName];
      if (!v23)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      [*(v14 + 64) setActivityGlyphName_];

      v24 = [v21 activityName];
      if (!v24)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      v25 = OUTLINED_FUNCTION_76_5();
      [v25 v26];

      v27 = [v21 activityTintColor];
      v28 = OUTLINED_FUNCTION_76_5();
      [v28 v29];

      v30 = [v21 activityUniqueIdentifier];
      if (!v30)
      {
        sub_1CA94C3A8();
        sub_1CA94C368();
        OUTLINED_FUNCTION_111_5();
      }

      [*(v14 + 64) setActivityUniqueIdentifier_];
    }
  }

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

id sub_1CA586F24@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastUnknownClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1CA586F70(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = [*a1 activityName];
  sub_1CA94C3A8();

  sub_1CA27BAF0();
  v4 = sub_1CA94D208();

  return v4 & 1;
}

uint64_t sub_1CA587050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2C99BC;

  return WFUserFocusActivityTrigger.resolveParameter(withKey:searchTerm:)();
}

void static WFTimeOfDayTrigger.toolkitTriggerDefinitions(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  a19 = v22;
  a20 = v23;
  v214 = v21;
  a10 = v20;
  v218 = v24;
  v219 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v221 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v29 = (v28 - v27);
  v30 = sub_1CA94AD48();
  v216 = v30;
  OUTLINED_FUNCTION_4_12();
  v32 = v31;
  v220 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_0();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4466C0, &unk_1CA98B810);
  OUTLINED_FUNCTION_30();
  v206 = sub_1CA94AF88();
  OUTLINED_FUNCTION_1_0();
  v205 = v38;
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v207 = *(v37 + 72);
  v40 = OUTLINED_FUNCTION_107_3();
  *(v40 + 16) = xmmword_1CA981380;
  v215 = v40;
  v217 = v40 + v39;
  v213 = "selectedMerchantTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  OUTLINED_FUNCTION_40();
  v41 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v41);
  v43 = *(v42 + 72);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v208[1] = v39;
  v46 = swift_allocObject();
  v212 = v46;
  *(v46 + 16) = xmmword_1CA97EDF0;
  v208[0] = v45;
  v47 = v46 + v45;
  OUTLINED_FUNCTION_15_19();
  (*(v32 + 104))(v36);
  v203 = sub_1CA94ADC8();
  swift_allocBox();
  OUTLINED_FUNCTION_99_4();
  sub_1CA94AD38();
  *v29 = v30;
  v202 = *MEMORY[0x1E69DAF30];
  v204 = *(v221 + 104);
  v204(v29);
  OUTLINED_FUNCTION_67_7(v29, v47);
  v48 = *(v221 + 8);
  v48(v29, v219);
  v49 = *(v220 + 8);
  v220 += 8;
  v201 = v49;
  (v49)(v36, v216);
  sub_1CA587F18(MEMORY[0x1E69DB188], v50, v51, v52, v53, v54, v55, v56, v160, v167, v174, v182);
  v211 = v43;
  OUTLINED_FUNCTION_66_5(v29, v47 + v43);
  v209 = v29;
  v210 = v48;
  v221 += 8;
  v48(v29, v219);
  v57 = v217;
  OUTLINED_FUNCTION_81_6();
  v58 = v218;
  sub_1CA578170();
  if (v214)
  {
    swift_setDeallocating();
    sub_1CA32E40C();
  }

  else
  {
    swift_setDeallocating();
    sub_1CA32E40C();
    v59 = v208[0];
    OUTLINED_FUNCTION_47_11();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1CA981310;
    sub_1CA587F18(MEMORY[0x1E69DB188], v61, v62, v63, v64, v65, v66, v67, v161, v168, v175, v183);
    OUTLINED_FUNCTION_110_4(v209, v60 + v59);
    v210(v209, v219);
    OUTLINED_FUNCTION_138_5();
    sub_1CA578170();
    v200 = 2 * v211;
    swift_setDeallocating();
    sub_1CA32E40C();
    v212 = v57 + 2 * v207;
    v68 = v208[0];
    OUTLINED_FUNCTION_47_11();
    v184 = v69;
    v198 = swift_allocObject();
    *(v198 + 16) = xmmword_1CA9813C0;
    v213 = v198 + v68;
    v214 = 0;
    v70 = v219;
    v195 = swift_allocBox();
    v72 = v71;
    swift_allocBox();
    OUTLINED_FUNCTION_194();
    v73 = sub_1CA94AD98();
    v74 = swift_allocBox();
    OUTLINED_FUNCTION_39();
    v193 = v76;
    v194 = v73;
    v192 = *(v75 + 104);
    v192();
    *v58 = v74;
    OUTLINED_FUNCTION_39();
    v191 = v78;
    v190 = *(v77 + 104);
    v190(v58);
    *v72 = v60;
    (v204)(v72, v202, v70);
    v79 = v209;
    *v209 = v195;
    v196 = *MEMORY[0x1E69DAF18];
    v204(v79);
    sub_1CA57ABD8(v79, 1937334628, 0xE400000000000000, v213);
    v80 = OUTLINED_FUNCTION_177();
    (v210)(v80);
    OUTLINED_FUNCTION_15_19();
    OUTLINED_FUNCTION_133_3();
    v81();
    swift_allocBox();
    OUTLINED_FUNCTION_99_4();
    sub_1CA94AD38();
    *v79 = v72;
    (v204)(v79, v202, v70);
    OUTLINED_FUNCTION_67_7(v79, v213 + v211);
    v82 = OUTLINED_FUNCTION_177();
    (v210)(v82);
    v83 = OUTLINED_FUNCTION_119();
    v201(v83);
    sub_1CA587F18(MEMORY[0x1E69DB188], v84, v85, v86, v87, v88, v89, v90, 3, 6, v176, v184);
    OUTLINED_FUNCTION_66_5(v79, v213 + v200);
    v91 = OUTLINED_FUNCTION_177();
    (v210)(v91);
    OUTLINED_FUNCTION_138_5();
    sub_1CA578170();
    if (v214)
    {
      swift_setDeallocating();
      sub_1CA32E40C();
      v92 = v206;
      v93 = *(v205 + 8);
      v94 = v217;
      v93(v217 + v207, v206);
    }

    else
    {
      swift_setDeallocating();
      sub_1CA32E40C();
      v213 = 3 * v207;
      OUTLINED_FUNCTION_38_10();
      v95 = swift_allocObject();
      OUTLINED_FUNCTION_42_8(v95, &a9);
      v98 = v96 + v97;
      v214 = 0;
      v99 = v219;
      v100 = swift_allocBox();
      v102 = v101;
      v199 = swift_allocBox();
      v104 = v103;
      v105 = swift_allocBox();
      (v192)(v106, v193, v194);
      *v104 = v105;
      (v190)(v104, v191, v203);
      *v102 = v199;
      (v204)(v102, v202, v99);
      v107 = v209;
      *v209 = v100;
      (v204)(v107, v196, v99);
      sub_1CA57ABD8(v107, 1937334628, 0xE400000000000000, v98);
      v210(v107, v99);
      sub_1CA587F18(MEMORY[0x1E69DB188], v108, v109, v110, v111, v112, v113, v114, v162, v169, v177, v185);
      OUTLINED_FUNCTION_110_4(v107, v98 + v211);
      v210(v107, v99);
      OUTLINED_FUNCTION_138_5();
      v94 = v217;
      sub_1CA578170();
      if (v214)
      {
        swift_setDeallocating();
        sub_1CA32E40C();
        v92 = v206;
        v93 = *(v205 + 8);
        v93(v212, v206);
      }

      else
      {
        swift_setDeallocating();
        sub_1CA32E40C();
        OUTLINED_FUNCTION_38_10();
        v115 = swift_allocObject();
        OUTLINED_FUNCTION_42_8(v115, v208);
        v118 = v116 + v117;
        v197 = v116 + v117;
        v119 = v209;
        sub_1CA587F18(MEMORY[0x1E69DB180], v120, v121, v122, v123, v124, v125, v126, v163, v170, v178, v186);
        OUTLINED_FUNCTION_151_4(v119, 0x7461447472617473, v118);
        v214 = 0;
        v127 = v219;
        v128 = v210;
        v210(v119, v219);
        OUTLINED_FUNCTION_15_19();
        OUTLINED_FUNCTION_133_3();
        v129();
        swift_allocBox();
        OUTLINED_FUNCTION_99_4();
        sub_1CA94AD38();
        *v119 = v94;
        (v204)(v119, v202, v127);
        OUTLINED_FUNCTION_67_7(v119, v197 + v211);
        v128(v119, v127);
        v130 = OUTLINED_FUNCTION_135_2();
        v201(v130);
        sub_1CA587F18(MEMORY[0x1E69DB188], v131, v132, v133, v134, v135, v136, v137, v164, v171, v179, v187);
        OUTLINED_FUNCTION_66_5(v119, v197 + v200);
        v128(v119, v127);
        OUTLINED_FUNCTION_138_5();
        v138 = v214;
        sub_1CA578170();
        if (!v138)
        {
          swift_setDeallocating();
          sub_1CA32E40C();
          v220 = 5 * v207;
          OUTLINED_FUNCTION_38_10();
          v139 = swift_allocObject();
          OUTLINED_FUNCTION_42_8(v139, &a9);
          v142 = v140 + v141;
          v143 = v209;
          sub_1CA587F18(MEMORY[0x1E69DB180], v144, v145, v146, v147, v148, v149, v150, v165, v172, v180, v188);
          OUTLINED_FUNCTION_151_4(v143, 0x7461447472617473, v142);
          v151 = v219;
          v152 = v210;
          v210(v143, v219);
          sub_1CA587F18(MEMORY[0x1E69DB188], v153, v154, v155, v156, v157, v158, v159, v166, v173, v181, v189);
          OUTLINED_FUNCTION_110_4(v143, v142 + v211);
          v152(v143, v151);
          OUTLINED_FUNCTION_81_6();
          sub_1CA578170();
          swift_setDeallocating();
          sub_1CA32E40C();
          goto LABEL_12;
        }

        swift_setDeallocating();
        sub_1CA32E40C();
        v92 = v206;
        v93 = *(v205 + 8);
        v94 = v217;
        v93(v217 + v213, v206);
        v93(v212, v206);
      }

      v93(v94 + v207, v92);
    }

    v93(v94, v92);
  }

  OUTLINED_FUNCTION_69_8();
LABEL_12:
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA587F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v17 + 48);
  sub_1CA94AD98();
  v22 = swift_allocBox();
  OUTLINED_FUNCTION_39();
  (*(v23 + 104))();
  *v20 = v22;
  v24 = *MEMORY[0x1E69DB0B0];
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_0_1();
  (*(v25 + 104))(v20, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B0, qword_1CA98AD80);
  v26 = sub_1CA94B008();
  OUTLINED_FUNCTION_1_0();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_149_2();
  *(v29 + 16) = xmmword_1CA981310;
  v30 = *v14;
  sub_1CA94AFE8();
  OUTLINED_FUNCTION_0_1();
  (*(v31 + 104))(v29 + v12, v30);
  (*(v28 + 104))(v29 + v12, *MEMORY[0x1E69DB148], v26);
  *(v20 + v21) = v29;
  *v16 = v18;
  sub_1CA94AD08();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_36();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

Swift::Void __swiftcall WFTimeOfDayTrigger.updateVariant(withIdentifierSuffix:)(Swift::String withIdentifierSuffix)
{
  object = withIdentifierSuffix._object;
  OUTLINED_FUNCTION_55();
  v5 = v3 == 0xD000000000000016 && v4 == object;
  if (v5 || (v6 = v3, v7 = OUTLINED_FUNCTION_81_6(), (OUTLINED_FUNCTION_13_29(v7, v8) & 1) != 0) || ((OUTLINED_FUNCTION_55(), v6 == 0xD000000000000014) ? (v10 = v9 == object) : (v10 = 0), v10 || (OUTLINED_FUNCTION_13_29(0xD000000000000014, v9) & 1) != 0))
  {
    v11 = 0;
LABEL_12:

    [v1 setMode_];
    return;
  }

  OUTLINED_FUNCTION_55();
  v13 = v6 == 0xD000000000000017 && v12 == object;
  if (!v13 && (OUTLINED_FUNCTION_13_29(0xD000000000000017, v12) & 1) == 0)
  {
    OUTLINED_FUNCTION_55();
    v15 = v6 == 0xD000000000000015 && v14 == object;
    if (!v15 && (OUTLINED_FUNCTION_13_29(0xD000000000000015, v14) & 1) == 0)
    {
      OUTLINED_FUNCTION_55();
      v17 = v6 == 0xD000000000000018 && v16 == object;
      if (v17 || (OUTLINED_FUNCTION_13_29(0xD000000000000018, v16) & 1) != 0 || ((OUTLINED_FUNCTION_55(), v6 == 0xD000000000000016) ? (v19 = v18 == object) : (v19 = 0), v19 || (v20 = OUTLINED_FUNCTION_81_6(), (OUTLINED_FUNCTION_13_29(v20, v21) & 1) != 0)))
      {
        v11 = 1;
        goto LABEL_12;
      }
    }
  }
}

void sub_1CA5882BC()
{
  OUTLINED_FUNCTION_108();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_allocWithZone(WFConfiguredTriggerRecord) init];
  v12 = sub_1CA94AF78();
  sub_1CA578AE4(v12, v13, v8, v6, v4);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_57_7();

    v14 = [v6 serializedData];
    if (v14)
    {
      sub_1CA948C08();

      OUTLINED_FUNCTION_177();
      v14 = sub_1CA948BF8();
      v15 = OUTLINED_FUNCTION_177();
      sub_1CA266F2C(v15, v16);
    }

    v17 = OUTLINED_FUNCTION_50_6();
    [v17 v18];

    v19 = v2(v10);
    v20 = OUTLINED_FUNCTION_93_4(v19, sel_setShouldPrompt_);
    v21 = OUTLINED_FUNCTION_65_5(v20, sel_setShouldNotify_);
    v22 = OUTLINED_FUNCTION_65_5(v21, sel_setEnabled_);
    OUTLINED_FUNCTION_95_6(v22, sel_setSource_);
  }

  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_1CA588438@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_123();
  v6 = swift_allocObject();
  v6[2] = sub_1CA94C3A8();
  v6[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA97EDF0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  v11 = sub_1CA94C3A8();
  v13 = v12;

  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  OUTLINED_FUNCTION_33_12();
  sub_1CA25C3BC(v14, &qword_1EC443E20, &qword_1CA986220, v15);
  v16 = sub_1CA94C308();
  v18 = v17;

  v6[4] = v16;
  v6[5] = v18;
  *a3 = v6;
  v19 = *MEMORY[0x1E69DB098];
  sub_1CA94ADC8();
  OUTLINED_FUNCTION_0_1();
  return (*(v20 + 104))(a3, v19);
}

uint64_t sub_1CA5885BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  v6[2] = sub_1CA94C3A8();
  v6[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA97EDF0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  v11 = sub_1CA94C3A8();
  v13 = v12;

  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  sub_1CA94C218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA25C3BC(&qword_1EC441B20, &qword_1EC443E20, &qword_1CA986220, MEMORY[0x1E69E6310]);
  v14 = sub_1CA94C308();
  v16 = v15;

  v6[4] = v14;
  v6[5] = v16;
  *a3 = v6;
  v17 = *MEMORY[0x1E69DB098];
  v18 = sub_1CA94ADC8();
  return (*(*(v18 - 8) + 104))(a3, v17, v18);
}

uint64_t sub_1CA588760@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v32 = a3;
  v26 = sub_1CA94AFB8();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445FD0, &qword_1CA989E10);
  v7 = swift_allocBox();
  v27 = v8;
  v30 = *(v6 + 48);
  v31 = v7;
  sub_1CA94AD38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4439B0, qword_1CA98AD80);
  v9 = sub_1CA94B008();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA981310;
  v13 = v12 + v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4462F0, &qword_1CA989EB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  v16 = sub_1CA94C3A8();
  v18 = v17;

  *v5 = v16;
  v5[1] = v18;
  v19 = v29;
  v5[2] = v28;
  v5[3] = v19;
  (*(v3 + 104))(v5, *MEMORY[0x1E69DB168], v26);
  sub_1CA94C3A8();
  sub_1CA94C218();
  sub_1CA94AFC8();
  sub_1CA94AE38();
  (*(v10 + 104))(v13, *MEMORY[0x1E69DB1C0], v9);
  v20 = v31;
  *(v27 + v30) = v12;
  v21 = v32;
  *v32 = v20;
  v22 = *MEMORY[0x1E69DAF20];
  v23 = sub_1CA94AD08();
  return (*(*(v23 - 8) + 104))(v21, v22, v23);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA588A78(void *a1)
{
  v1 = [a1 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C1C8();

  return v3;
}

void sub_1CA588B04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA94C368();
  [a3 setSearchString_];
}

id sub_1CA588B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C648();
  v6 = [a3 accountsWithAccountTypeIdentifiers:v5 error:a2];

  return v6;
}

void sub_1CA588BC4(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_1CA94C648();

  [a2 *a3];
}

uint64_t _s14AddressFetcherCMa(uint64_t a1)
{
  result = qword_1EC4467E0;
  if (!qword_1EC4467E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CA588CD4()
{
  result = qword_1EC446750;
  if (!qword_1EC446750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriggerConfigurationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ToolKitRepresentableTrigger.resolveParameter(withKey:searchTerm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a6 + 48) + **(a6 + 48));
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_1CA2C756C;
  v8 = OUTLINED_FUNCTION_204();

  return v10(v8);
}

uint64_t _s22ToolKitConversionErrorOwet_0(uint64_t *a1, unsigned int a2)
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

uint64_t _s22ToolKitConversionErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1CA5890A4(uint64_t a1)
{
  sub_1CA589154(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CA589154(uint64_t a1)
{
  if (!qword_1EC4467F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4467F8, &qword_1CA98BEA8);
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC4467F0);
    }
  }
}

uint64_t sub_1CA5891B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA589228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446860, &qword_1CA98BED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA589298()
{
  result = qword_1EC446890;
  if (!qword_1EC446890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446890);
  }

  return result;
}

unint64_t sub_1CA5892EC()
{
  result = qword_1EC4468B8;
  if (!qword_1EC4468B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4468B8);
  }

  return result;
}

uint64_t sub_1CA589348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id OUTLINED_FUNCTION_93_4(char a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_107_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_111_5()
{
}

uint64_t OUTLINED_FUNCTION_152_3()
{

  return sub_1CA294A78();
}

id sub_1CA589650()
{
  v124 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9CF530;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("installed|downloaded|workflow", 29);
  v6 = v5;
  v7 = sub_1CA94C438("installed|downloaded|workflow", 29);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v130 = v11;
  v131 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v118 - v131;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v129 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v127 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v128 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v118 - v128;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v125 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v123 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438("When saved as a file, shortcuts will be exported using the “For People Who Know Me” setting.", 96);
  v120 = v27;
  v121 = v26;
  v28 = sub_1CA94C438("When saved as a file, shortcuts will be exported using the “For People Who Know Me” setting.", 96);
  v30 = v29;
  v122 = &v118;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v118 - v131;
  sub_1CA948D98();
  v32 = v129;
  v33 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v126 = inited;
  v34 = v128;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v121, v120, v28, v30, 0, 0, v31, &v118 - v34);
  v36 = v125;
  *(v23 + 64) = v125;
  *(v23 + 72) = @"DescriptionSummary";
  v37 = @"DescriptionSummary";
  v38 = sub_1CA94C438("Gets the shortcuts stored on this device.", 41);
  v120 = v39;
  v121 = v38;
  v40 = sub_1CA94C438("Gets the shortcuts stored on this device.", 41);
  v42 = v41;
  v122 = &v118;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v118 - v131;
  sub_1CA948D98();
  v44 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v121, v120, v40, v42, 0, 0, v43, &v118 - v34);
  *(v23 + 104) = v36;
  *(v23 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v47 = sub_1CA94C1E8();
  v48 = v123;
  v49 = sub_1CA6B3784(v47);
  v50 = v126;
  v126[20] = v49;
  v50[23] = v48;
  v50[24] = @"LocallyProcessesData";
  v51 = MEMORY[0x1E69E6370];
  *(v50 + 200) = 1;
  v50[28] = v51;
  v50[29] = @"Name";
  v52 = @"LocallyProcessesData";
  v53 = @"Name";
  v54 = sub_1CA94C438("Get My Shortcuts (Action Name)", 30);
  v56 = v55;
  v57 = sub_1CA94C438("Get My Shortcuts", 16);
  v59 = v58;
  v123 = &v118;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v118 - v131;
  sub_1CA948D98();
  v61 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v118 - v128;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v64 = sub_1CA2F9F14(v54, v56, v57, v59, 0, 0, v60, v62);
  v65 = v126;
  v126[30] = v64;
  v65[33] = v125;
  v65[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1CA981350;
  *(v66 + 32) = 0x75736F6C63736944;
  *(v66 + 40) = 0xEF6C6576654C6572;
  *(v66 + 48) = 0x63696C627550;
  *(v66 + 56) = 0xE600000000000000;
  *(v66 + 72) = MEMORY[0x1E69E6158];
  *(v66 + 80) = 0x656C7069746C754DLL;
  *(v66 + 88) = 0xE800000000000000;
  *(v66 + 96) = 1;
  *(v66 + 120) = MEMORY[0x1E69E6370];
  *(v66 + 128) = 0x614E74757074754FLL;
  *(v66 + 136) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438("My Shortcuts (Default Output Name)", 34);
  v122 = v69;
  v70 = sub_1CA94C438("My Shortcuts", 12);
  v72 = v71;
  v123 = &v118;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v118 - v131;
  sub_1CA948D98();
  v74 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v118 - v128;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 144) = sub_1CA2F9F14(v68, v122, v70, v72, 0, 0, v73, v75);
  *(v66 + 168) = v125;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 184) = 0xE500000000000000;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v66 + 216) = v123;
  *(v66 + 192) = &unk_1F4A073F8;
  v77 = MEMORY[0x1E69E6158];
  v78 = sub_1CA94C1E8();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v80 = v126;
  v126[35] = v78;
  v80[38] = v79;
  v80[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v122 = swift_allocObject();
  *(v122 + 1) = xmmword_1CA9813B0;
  v121 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_1CA9813C0;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD00000000000001FLL;
  *(v81 + 48) = 0x80000001CA9CF680;
  *(v81 + 64) = v77;
  *(v81 + 72) = @"Key";
  *(v81 + 80) = 0x7265646C6F46;
  *(v81 + 88) = 0xE600000000000000;
  *(v81 + 104) = v77;
  *(v81 + 112) = @"Label";
  v82 = @"Parameters";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = sub_1CA94C438("Folder (Folder)", 15);
  v119 = v87;
  v88 = sub_1CA94C438("Folder", 6);
  v90 = v89;
  v120 = &v118;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v118 - v131;
  sub_1CA948D98();
  v92 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v118 - v128;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v86, v119, v88, v90, 0, 0, v91, v93);
  *(v81 + 144) = v125;
  *(v81 + 120) = v95;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  v98 = v122;
  v122[4] = v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v100 = v126;
  v126[40] = v98;
  v100[43] = v99;
  v100[44] = @"ParameterSummary";
  v101 = @"ParameterSummary";
  v102 = sub_1CA94C438("Get shortcuts from ${Folder} (Parameter Summary)", 48);
  v104 = v103;
  v105 = sub_1CA94C438("Get shortcuts from ${Folder}", 28);
  v107 = v106;
  v125 = &v118;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v118 - v131;
  sub_1CA948D98();
  v109 = [v129 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v118 - v128;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v102, v104, v105, v107, 0, 0, v108, v110);
  v113 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v114 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115 = v126;
  v126[45] = v113;
  v115[48] = v114;
  v115[49] = @"RequiredResources";
  v115[53] = v123;
  v115[50] = &unk_1F4A07428;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v116 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA58A43C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
    sub_1CA25C3BC(&qword_1EC441BC8, &unk_1EC443950, &unk_1CA982580, MEMORY[0x1E6995218]);
    if (sub_1CA94C358())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

uint64_t sub_1CA58A568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1CA94D7F8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void sub_1CA58A5F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA25B410(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1CA3A2F84();
    v7 = sub_1CA94CFD8();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1CA58A6D0(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1CA58A714(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627894();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA58D30C(v6);
  *a1 = v2;
  return result;
}

Swift::Void __swiftcall WFWorkflowRecord.importLocalizedStrings(table:bundle:)(Swift::String table, NSBundle bundle)
{
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v2 actions];
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
  sub_1CA94C658();

  sub_1CA3611E0();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  v7 = sub_1CA94C648();

  v8 = [objc_opt_self() sharedRegistry];
  v9 = [v4 actionsFromSerializedRepresentations:v7 actionRegistry:v8];

  v185 = v9;
  if (!v9)
  {
    sub_1CA3A2F84();
    sub_1CA94C658();
    v185 = sub_1CA94C648();
  }

  sub_1CA3A2F84();
  v10 = sub_1CA94C658();
  v207 = v3;
  v11 = [v3 importQuestions];
  v12 = sub_1CA94C658();

  v13 = 0;
  v178 = MEMORY[0x1E69E7CC0];
  v222 = MEMORY[0x1E69E7CC0];
  v14 = *(v12 + 16);
LABEL_4:
  v15 = v13;
  while (v14 != v15)
  {
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_110;
    }

    v13 = v15 + 1;
    v16 = *(v12 + 8 * v15 + 32);
    objc_allocWithZone(WFWorkflowImportQuestion);
    sub_1CA94C218();
    sub_1CA94C218();
    v17 = sub_1CA58D1CC(v16, v10);
    v15 = v13;
    if (v17)
    {
      MEMORY[0x1CCAA1490]();
      v18 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18 >> 1)
      {
        OUTLINED_FUNCTION_64(v18);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v178 = v222;
      goto LABEL_4;
    }
  }

  v193 = v6;

  v19 = sub_1CA25B410(v178);
  v20 = 0;
  v21 = v178 & 0xC000000000000001;
  v22 = v178 & 0xFFFFFFFFFFFFFF8;
  v23 = v178 + 32;
  v203 = 0x80000001CA9CF720;
  v206 = v10;
  v183 = v178 & 0xC000000000000001;
  v184 = v19;
  v197 = v178 & 0xFFFFFFFFFFFFFF8;
  v182 = v178 + 32;
  while (v20 != v19)
  {
    if (v21)
    {
      v24 = MEMORY[0x1CCAA22D0](v20, v178);
    }

    else
    {
      if (v20 >= *(v22 + 16))
      {
        goto LABEL_112;
      }

      v24 = *(v23 + 8 * v20);
    }

    v25 = v24;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_111;
    }

    v26 = sub_1CA58DD54(v24);
    if (v27)
    {
      v28 = v27;
      v208 = v26;
      v29 = [v25 action];
      if (!v29)
      {

        goto LABEL_24;
      }

      v30 = v29;
      v213 = [v25 parameter];
      if (!v213)
      {

        goto LABEL_24;
      }

      sub_1CA58A5F4(v30, v10);
      v209 = v31;
      if (v32)
      {

        ++v20;
      }

      else
      {
        v190 = v28;
        v33 = [v25 defaultState];
        v186 = v25;
        v188 = v20 + 1;
        v191 = v30;
        if (v33)
        {
          v34 = v33;
          v35 = type metadata accessor for WFUserVisibleString();
          OUTLINED_FUNCTION_0_57();
          v37 = sub_1CA58DDB8(&qword_1EC4463C0, v36, MEMORY[0x1E69E81B8]);
          swift_unknownObjectRetain();
          v38 = sub_1CA94C1E8();
          v39 = v213;
          v181 = v34;
          v40 = [v213 userVisibleStringsInParameterState:v34 forUseCase:0];
          OUTLINED_FUNCTION_14_0();
          v41 = sub_1CA94C8F8();

          v195 = v35;
          v180 = v37;
          if ((v41 & 0xC000000000000001) != 0)
          {
            sub_1CA94D2F8();
            OUTLINED_FUNCTION_14_0();
            sub_1CA94C948();
            v41 = v217;
            v42 = v218;
            v43 = v219;
            v44 = v220;
            v45 = v221;
          }

          else
          {
            v44 = 0;
            OUTLINED_FUNCTION_2_49();
            v45 = v47 & v48;
          }

          v179 = v43;
          v49 = (v43 + 64) >> 6;
          v200 = v42;
          v202 = v41;
          v198 = v49;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          while (1)
          {
            v50 = sub_1CA94D358();
            if (!v50)
            {
              break;
            }

            v216 = v50;
            swift_dynamicCast();
            v51 = v222;
            v52 = v44;
            v53 = v45;
            if (!v222)
            {
              break;
            }

            while (1)
            {
              v211 = v53;
              sub_1CA94D408();

              OUTLINED_FUNCTION_3_44(v58, v59, v60, v61, v62, v63, v64, v65, v178, v179, v180, v181, v182, v183, v184, v185, v186, v188, v190, v191, v193, v195, v197, v198, v200, v202, v203, v205, v206, v207, v208, v209);
              v66 = MEMORY[0x1E69E6530];
              v67 = sub_1CA94D798();
              MEMORY[0x1CCAA1300](v67);

              OUTLINED_FUNCTION_12_26();
              v68 = [v39 key];
              v69 = sub_1CA94C3A8();
              v71 = v70;

              MEMORY[0x1CCAA1300](v69, v71);

              OUTLINED_FUNCTION_10_28();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
              v72 = swift_allocObject();
              *(v72 + 16) = xmmword_1CA981310;
              v73 = [v51 hash];
              *(v72 + 56) = v66;
              *(v72 + 64) = MEMORY[0x1E69E65A8];
              *(v72 + 32) = v73;
              OUTLINED_FUNCTION_14_0();
              sub_1CA94C3C8();

              v74 = sub_1CA94C368();

              v75 = [v51 content];
              if (!v75)
              {
                sub_1CA94C3A8();
                v75 = sub_1CA94C368();
              }

              v76 = sub_1CA94C368();
              v77 = [(objc_class *)bundle.super.isa localizedStringForKey:v74 value:v75 table:v76];

              v78 = sub_1CA94C3A8();
              v80 = v79;

              swift_isUniquelyReferenced_nonNull_native();
              v222 = v38;
              v81 = sub_1CA3210B4();
              if (__OFADD__(v38[2], (v82 & 1) == 0))
              {
                goto LABEL_116;
              }

              v83 = v81;
              v84 = v82;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446920, &qword_1CA98BF08);
              if (sub_1CA94D588())
              {
                v85 = sub_1CA3210B4();
                v22 = v197;
                if ((v84 & 1) != (v86 & 1))
                {
                  goto LABEL_121;
                }

                v83 = v85;
              }

              else
              {
                v22 = v197;
              }

              if (v84)
              {
                v87 = (v38[7] + 16 * v83);
                *v87 = v78;
                v87[1] = v80;
              }

              else
              {
                v38[(v83 >> 6) + 8] |= 1 << v83;
                *(v38[6] + 8 * v83) = v51;
                v88 = (v38[7] + 16 * v83);
                *v88 = v78;
                v88[1] = v80;
                v89 = v38[2];
                v90 = __OFADD__(v89, 1);
                v91 = v89 + 1;
                if (v90)
                {
                  goto LABEL_117;
                }

                v38[2] = v91;
              }

              v44 = v52;
              v45 = v211;
              v39 = v213;
              v10 = v206;
              v42 = v200;
              v49 = v198;
              if (v202 < 0)
              {
                break;
              }

LABEL_34:
              v54 = v44;
              v52 = v44;
              if (!v45)
              {
                while (1)
                {
                  v52 = v54 + 1;
                  if (__OFADD__(v54, 1))
                  {
                    break;
                  }

                  if (v52 >= v49)
                  {
                    goto LABEL_52;
                  }

                  ++v54;
                  if (*(v42 + 8 * v52))
                  {
                    goto LABEL_38;
                  }
                }

LABEL_108:
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
LABEL_119:
                __break(1u);
                goto LABEL_120;
              }

LABEL_38:
              OUTLINED_FUNCTION_1_41();
              v53 = v56 & v55;
              v51 = OUTLINED_FUNCTION_11_29(v57);
              if (!v51)
              {
                goto LABEL_52;
              }
            }
          }

LABEL_52:
          sub_1CA28A224(v202);
          v92 = sub_1CA94C1A8();

          v46 = [v39 rewriteParameterState:v181 withStrings:v92];

          swift_unknownObjectRelease_n();
          goto LABEL_53;
        }

        v46 = 0;
        v39 = v213;
LABEL_53:
        v222 = 0;
        v223 = 0xE000000000000000;
        sub_1CA94D408();

        OUTLINED_FUNCTION_3_44(v93, v94, v95, v96, v97, v98, v99, v100, v178, v179, v180, v181, v182, v183, v184, v185, v186, v188, v190, v191, v193, v195, v197, v198, v200, v202, v203, v205, v206, v207, v208, v209);
        v101 = sub_1CA94D798();
        MEMORY[0x1CCAA1300](v101);

        OUTLINED_FUNCTION_12_26();
        v102 = [v39 key];
        v103 = sub_1CA94C3A8();
        v105 = v104;

        MEMORY[0x1CCAA1300](v103, v105);

        v106 = sub_1CA94C368();

        v107 = sub_1CA94C368();

        v108 = sub_1CA94C368();
        v109 = [(objc_class *)bundle.super.isa localizedStringForKey:v106 value:v107 table:v108];

        v110 = sub_1CA94C3A8();
        v112 = v111;

        objc_allocWithZone(WFWorkflowImportQuestion);
        swift_unknownObjectRetain();
        v113 = v192;
        v114 = v39;
        v115 = sub_1CA58D26C(v113, v114, v110, v112, v46);
        if (v115 && (v116 = v115, v117 = [v115 serializedRepresentationWithWorkflowActions_], v116, v117))
        {
          v118 = sub_1CA94C1C8();
        }

        else
        {
          v118 = sub_1CA94C1E8();
        }

        v119 = [v207 importQuestions];
        v120 = sub_1CA94C658();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA42B2D4();
          v120 = v122;
        }

        if (v20 >= *(v120 + 16))
        {
          goto LABEL_118;
        }

        *(v120 + 8 * v20 + 32) = v118;

        v121 = sub_1CA94C648();

        [v207 setImportQuestions_];

        swift_unknownObjectRelease();
        v20 = v189;
        v21 = v183;
        v19 = v184;
        v23 = v182;
      }
    }

    else
    {
LABEL_24:

      ++v20;
    }
  }

  type metadata accessor for WFUserVisibleString();
  OUTLINED_FUNCTION_0_57();
  sub_1CA58DDB8(v123, v124, MEMORY[0x1E69E81B8]);
  v125 = sub_1CA94C1E8();
  v204 = v10 & 0xC000000000000001;
  v196 = sub_1CA25B410(v10);
  if (v196)
  {
    v126 = 0;
    v194 = v10 + 32;
    while (1)
    {
      sub_1CA275D70(v126, v204 == 0, v10);
      if (v204)
      {
        v127 = MEMORY[0x1CCAA22D0](v126, v10);
      }

      else
      {
        v127 = *(v194 + 8 * v126);
      }

      v201 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        goto LABEL_115;
      }

      v199 = v127;
      v128 = [v127 userVisibleStringsForUseCase_];
      v129 = sub_1CA94C8F8();

      if ((v129 & 0xC000000000000001) != 0)
      {
        sub_1CA94D2F8();
        sub_1CA94C948();
        v129 = v222;
        v130 = v223;
        v131 = v224;
        v132 = v225;
        v133 = v226;
      }

      else
      {
        v132 = 0;
        v130 = v129 + 56;
        OUTLINED_FUNCTION_2_49();
        v133 = v134 & v135;
      }

      v136 = (v131 + 64) >> 6;
      v210 = v136;
      v212 = v130;
      v214 = v129;
      if (v129 < 0)
      {
        break;
      }

      while (1)
      {
        v140 = v132;
        v138 = v132;
        if (!v133)
        {
          while (1)
          {
            v138 = (v140 + 1);
            if (__OFADD__(v140, 1))
            {
              break;
            }

            if (v138 >= v136)
            {
              goto LABEL_94;
            }

            ++v140;
            if (*(v130 + 8 * v138))
            {
              goto LABEL_79;
            }
          }

          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

LABEL_79:
        OUTLINED_FUNCTION_1_41();
        v139 = v142 & v141;
        v137 = OUTLINED_FUNCTION_11_29(v143);
        if (!v137)
        {
          break;
        }

LABEL_80:
        v144 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];

        v145 = [v137 content];
        if (!v145)
        {
          goto LABEL_119;
        }

        v146 = [v137 localizationComment];
        if (!v146)
        {
LABEL_120:
          __break(1u);
          while (1)
          {
LABEL_121:
            sub_1CA94D878();
            __break(1u);
          }
        }

        v147 = [v144 finalize];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_1CA981310;
        *(v148 + 56) = MEMORY[0x1E69E76D8];
        *(v148 + 64) = MEMORY[0x1E69E7738];
        *(v148 + 32) = v147;
        sub_1CA94C3C8();

        v149 = sub_1CA94C368();

        v150 = [v137 content];
        if (!v150)
        {
          sub_1CA94C3A8();
          v150 = sub_1CA94C368();
        }

        v151 = sub_1CA94C368();
        v152 = [(objc_class *)bundle.super.isa localizedStringForKey:v149 value:v150 table:v151];

        v153 = sub_1CA94C3A8();
        v155 = v154;

        swift_isUniquelyReferenced_nonNull_native();
        v216 = v125;
        v156 = sub_1CA3210B4();
        if (__OFADD__(v125[2], (v157 & 1) == 0))
        {
          goto LABEL_107;
        }

        v158 = v156;
        v159 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446920, &qword_1CA98BF08);
        if (sub_1CA94D588())
        {
          v160 = sub_1CA3210B4();
          if ((v159 & 1) != (v161 & 1))
          {
            goto LABEL_121;
          }

          v158 = v160;
        }

        if (v159)
        {
          v162 = (v125[7] + 16 * v158);
          *v162 = v153;
          v162[1] = v155;
        }

        else
        {
          v125[(v158 >> 6) + 8] |= 1 << v158;
          *(v125[6] + 8 * v158) = v137;
          v163 = (v125[7] + 16 * v158);
          *v163 = v153;
          v163[1] = v155;
          v164 = v125[2];
          v90 = __OFADD__(v164, 1);
          v165 = v164 + 1;
          if (v90)
          {
            goto LABEL_109;
          }

          v125[2] = v165;
        }

        v132 = v138;
        v133 = v139;
        v130 = v212;
        v129 = v214;
        v136 = v210;
        if ((v214 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }
      }

LABEL_94:
      sub_1CA28A224(v129);

      v126 = v201;
      v10 = v206;
      if (v201 == v196)
      {
        goto LABEL_95;
      }
    }

LABEL_72:
    if (!sub_1CA94D358())
    {
      goto LABEL_94;
    }

    swift_dynamicCast();
    v137 = v216;
    v138 = v132;
    v139 = v133;
    if (!v216)
    {
      goto LABEL_94;
    }

    goto LABEL_80;
  }

LABEL_95:
  v166 = v10 & 0xFFFFFFFFFFFFFF8;
  for (i = 4; i - v196 != 4; ++i)
  {
    v168 = i - 4;
    if (v204)
    {
      v169 = MEMORY[0x1CCAA22D0](i - 4, v206);
    }

    else
    {
      if (v168 >= *(v166 + 16))
      {
        goto LABEL_114;
      }

      v169 = *(v206 + 8 * i);
    }

    v170 = v169;
    v171 = sub_1CA94C1A8();
    [v170 rewriteWithStrings_];

    v172 = [v170 serializedRepresentation];
    type metadata accessor for WFWorkflowActionKey(0);
    sub_1CA58DDB8(&qword_1EC4433B8, type metadata accessor for WFWorkflowActionKey, &unk_1CA980484);
    v173 = sub_1CA94C1C8();

    v174 = [v207 actions];
    v175 = sub_1CA94C658();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA42B2BC();
      v175 = v177;
    }

    if (v168 >= *(v175 + 16))
    {
      goto LABEL_113;
    }

    *(v175 + 8 * i) = v173;

    v176 = sub_1CA94C648();

    [v207 setActions_];
  }
}

void sub_1CA58BA10(uint64_t a1)
{
  *&v33[0] = a1;
  sub_1CA94C218();
  sub_1CA58A714(v33);
  v5 = *(*&v33[0] + 16);
  if (v5)
  {
    v37 = MEMORY[0x1E69E7CC0];
    v32 = *&v33[0];
    sub_1CA271524(0, v5, 0, v1, v2, v3, v4);
    v6 = v32;
    v7 = 0;
    v8 = v37;
    v9 = (v32 + 72);
    while (v7 < *(v6 + 16))
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 1);
      v12 = *v9;
      v33[0] = *(v9 - 5);
      v33[1] = v10;
      v34 = v11;
      v35 = v12;
      sub_1CA58BBF4(v36);
      v13 = v36[0];
      v14 = v36[1];
      v37 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = OUTLINED_FUNCTION_64(v15);
        sub_1CA271524(v18, v16 + 1, 1, v19, v20, v21, v22);
        v6 = v32;
        v8 = v37;
      }

      ++v7;
      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v9 += 6;
      if (v5 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *&v33[0] = v8;
    v23 = OUTLINED_FUNCTION_52_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_14_0();
    sub_1CA25C3BC(v25, v26, v27, v28);
    v29 = sub_1CA94C308();
    v31 = v30;

    *&v33[0] = v29;
    *(&v33[0] + 1) = v31;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](10, 0xE100000000000000);
  }
}

uint64_t sub_1CA58BBF4@<X0>(uint64_t *a2@<X8>)
{
  sub_1CA94D408();

  sub_1CA27BAF0();
  sub_1CA94D1B8();
  v2 = sub_1CA94D1B8();
  v4 = v3;

  MEMORY[0x1CCAA1300](v2, v4);

  MEMORY[0x1CCAA1300](0x220A2F2A20, 0xE500000000000000);
  sub_1CA94D1B8();
  v5 = sub_1CA94D1B8();
  v7 = v6;

  MEMORY[0x1CCAA1300](v5, v7);

  MEMORY[0x1CCAA1300](0x22203D2022, 0xE500000000000000);
  sub_1CA94D1B8();
  v8 = sub_1CA94D1B8();
  v10 = v9;

  MEMORY[0x1CCAA1300](v8, v10);

  result = MEMORY[0x1CCAA1300](15138, 0xE200000000000000);
  *a2 = 2107951;
  a2[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_1CA58BF00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702129518 && a2 == 0xE400000000000000;
    if (v6 || (sub_1CA94D7F8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1CA94D7F8();

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

uint64_t sub_1CA58C014(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 1702129518;
  }

  return 0x65756C6176;
}

uint64_t sub_1CA58C058(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446928, &qword_1CA98BF80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA58DE10();
  sub_1CA94D9B8();
  v9 = *v3;
  v10 = v3[1];
  v19 = 0;
  OUTLINED_FUNCTION_7_35(v9, v10, &v19);
  if (!v2)
  {
    v11 = v3[2];
    v12 = v3[3];
    v18 = 1;
    OUTLINED_FUNCTION_7_35(v11, v12, &v18);
    v13 = v3[4];
    v14 = v3[5];
    v17 = 2;
    OUTLINED_FUNCTION_7_35(v13, v14, &v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CA58C1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA58BF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA58C1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA58C00C();
  *a1 = result;
  return result;
}

uint64_t sub_1CA58C218(uint64_t a1)
{
  v2 = sub_1CA58DE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA58C254(uint64_t a1)
{
  v2 = sub_1CA58DE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::String __swiftcall WFWorkflowRecord.exportLocalizedStringsFile()()
{
  sub_1CA58C2EC();
  sub_1CA58BA10(v0);

  v1 = OUTLINED_FUNCTION_52_0();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void sub_1CA58C2EC()
{
  v1 = sub_1CA4FC8DC(v0);
  if (v2)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (v2)
  {
    v4 = v2;
  }

  v185 = v3;
  v186 = v4;
  v5 = objc_opt_self();
  v6 = [v0 actions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444050, &unk_1CA9842E0);
  sub_1CA94C658();

  sub_1CA3611E0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  v7 = sub_1CA94C648();

  v8 = [objc_opt_self() sharedRegistry];
  v9 = [v5 actionsFromSerializedRepresentations:v7 actionRegistry:v8];

  sub_1CA3A2F84();
  v10 = sub_1CA94C658();

  v11 = [v0 importQuestions];
  v12 = sub_1CA94C658();

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v199 = MEMORY[0x1E69E7CC0];
  v15 = *(v12 + 16);
LABEL_7:
  v16 = v13;
  while (v15 != v16)
  {
    if (v16 >= *(v12 + 16))
    {
      goto LABEL_91;
    }

    v13 = v16 + 1;
    v17 = *(v12 + 8 * v16 + 32);
    objc_allocWithZone(WFWorkflowImportQuestion);
    sub_1CA94C218();
    sub_1CA94C218();
    v18 = sub_1CA58D1CC(v17, v10);
    v16 = v13;
    if (v18)
    {
      MEMORY[0x1CCAA1490]();
      v19 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        OUTLINED_FUNCTION_64(v19);
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v14 = v199;
      goto LABEL_7;
    }
  }

  v20 = sub_1CA25B410(v14);
  if (!v20)
  {

    v191 = MEMORY[0x1E69E7CC0];
LABEL_56:
    if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      sub_1CA2E85F8();
      v108 = v107;
    }

    else
    {
      v108 = MEMORY[0x1E69E7CD0];
    }

    v193 = v108;
    v109 = sub_1CA25B410(v10);
    if (v109)
    {
      v110 = v109;
      if (v109 < 1)
      {
        goto LABEL_95;
      }

      v111 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v112 = MEMORY[0x1CCAA22D0](v111, v10);
        }

        else
        {
          v112 = *(v10 + 8 * v111 + 32);
        }

        v113 = v112;
        ++v111;
        v114 = [v112 userVisibleStringsForUseCase_];
        type metadata accessor for WFUserVisibleString();
        OUTLINED_FUNCTION_0_57();
        sub_1CA58DDB8(&qword_1EC4463C0, v115, MEMORY[0x1E69E81B8]);
        OUTLINED_FUNCTION_52_0();
        v116 = sub_1CA94C8F8();

        sub_1CA342840(v116);
      }

      while (v110 != v111);

      v108 = v193;
    }

    else
    {
    }

    if ((v108 & 0xC000000000000001) != 0)
    {
      sub_1CA94D2F8();
      type metadata accessor for WFUserVisibleString();
      OUTLINED_FUNCTION_0_57();
      sub_1CA58DDB8(v117, v118, MEMORY[0x1E69E81B8]);
      sub_1CA94C948();
      v108 = v199;
      v119 = v200;
      v120 = v201;
      v121 = v202;
      v122 = v203;
    }

    else
    {
      v121 = 0;
      v123 = -1 << *(v108 + 32);
      v119 = v108 + 56;
      v120 = ~v123;
      v124 = -v123;
      if (v124 < 64)
      {
        v125 = ~(-1 << v124);
      }

      else
      {
        v125 = -1;
      }

      v122 = (v125 & *(v108 + 56));
    }

    v179 = v120;
    v181 = v119;
    v126 = (v120 + 64) >> 6;
    v184 = v108;
    if (v108 < 0)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v127 = v121;
      v128 = v121;
      if (!v122)
      {
        break;
      }

LABEL_79:
      OUTLINED_FUNCTION_1_41();
      v131 = (v130 & v129);
      v133 = OUTLINED_FUNCTION_11_29(v132);
      if (!v133)
      {
LABEL_89:
        sub_1CA28A224(v108);

        return;
      }

      while (1)
      {
        v190 = v131;
        v134 = sub_1CA58D04C(v133);
        v188 = v135;
        v192 = v185;
        sub_1CA94C218();
        MEMORY[0x1CCAA1300](2108704, 0xE300000000000000);
        v136 = [v133 localizationComment];
        v137 = sub_1CA94C3A8();
        v139 = v138;

        MEMORY[0x1CCAA1300](v137, v139);

        v140 = v185;
        v141 = v186;
        v142 = [v133 content];
        v143 = sub_1CA94C3A8();
        v145 = v144;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_6_39(isUniquelyReferenced_nonNull_native, v147, v148, v149, v150, v151, v152, v153, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, *(&v170 + 1), v171, v172, v173, v174, v175, v176, v177, v179, v181, v184, v185, v186, v188, v190, v191);
          v191 = v157;
        }

        v155 = *(v191 + 16);
        v154 = *(v191 + 24);
        if (v155 >= v154 >> 1)
        {
          v158 = OUTLINED_FUNCTION_64(v154);
          sub_1CA2E702C(v158, v155 + 1, 1, v191);
          v191 = v159;
        }

        *(v191 + 16) = v155 + 1;
        v156 = (v191 + 48 * v155);
        v122 = v190;
        v156[4] = v134;
        v156[5] = v188;
        v156[6] = v140;
        v156[7] = v141;
        v156[8] = v143;
        v156[9] = v145;
        v121 = v128;
        v119 = v181;
        v108 = v184;
        if ((v184 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_81:
        if (sub_1CA94D358())
        {
          type metadata accessor for WFUserVisibleString();
          swift_dynamicCast();
          v133 = v192;
          v128 = v121;
          v131 = v122;
          if (v192)
          {
            continue;
          }
        }

        goto LABEL_89;
      }
    }

    while (1)
    {
      v128 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_92;
      }

      if (v128 >= v126)
      {
        goto LABEL_89;
      }

      ++v127;
      if (*(v119 + 8 * v128))
      {
        goto LABEL_79;
      }
    }
  }

  v21 = v20;
  v22 = 0;
  v23 = v14 & 0xC000000000000001;
  v24 = v14 & 0xFFFFFFFFFFFFFF8;
  v25 = v14 + 32;
  v176 = "import-question-";
  v177 = 0x80000001CA9CF720;
  v191 = MEMORY[0x1E69E7CC0];
  v170 = xmmword_1CA981310;
  v167 = v14;
  v168 = v10;
  v165 = v14 & 0xC000000000000001;
  v166 = v20;
  v163 = v14 + 32;
  v164 = v14 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v23)
    {
      v26 = MEMORY[0x1CCAA22D0](v22, v14);
    }

    else
    {
      if (v22 >= *(v24 + 16))
      {
        goto LABEL_94;
      }

      v26 = *(v25 + 8 * v22);
    }

    v27 = v26;
    if (__OFADD__(v22++, 1))
    {
      goto LABEL_93;
    }

    v29 = sub_1CA58DD54(v26);
    if (!v30)
    {
      goto LABEL_28;
    }

    v31 = v29;
    v32 = v30;
    v33 = [v27 action];
    if (!v33)
    {

LABEL_28:

      goto LABEL_29;
    }

    v187 = v33;
    v189 = [v27 parameter];
    if (!v189)
    {

      goto LABEL_28;
    }

    v182 = v31;
    sub_1CA58A5F4(v187, v10);
    if ((v35 & 1) == 0)
    {
      break;
    }

LABEL_29:
    if (v22 == v21)
    {

      goto LABEL_56;
    }
  }

  v178 = v27;
  v36 = v34;
  v37 = [v187 localizedName];
  v38 = sub_1CA94C3A8();
  v40 = v39;

  sub_1CA94D408();

  v175 = v36;
  v192 = v36;
  v41 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v41);

  OUTLINED_FUNCTION_12_26();
  v42 = [v189 key];
  v43 = sub_1CA94C3A8();
  v45 = v44;

  MEMORY[0x1CCAA1300](v43, v45);

  v46 = v177;
  sub_1CA94D408();
  sub_1CA94C218();

  v199 = v185;
  v200 = v186;
  MEMORY[0x1CCAA1300](0xD000000000000015, v176 | 0x8000000000000000);
  MEMORY[0x1CCAA1300](v38, v40);

  v47 = v185;
  v48 = v186;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_39(v49, v50, v51, v52, v53, v54, v55, v56, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, *(&v170 + 1), v171, v172, v173, v174, v175, v176, v177, v27, v180, v31, v185, v186, v187, v189, v191);
    v191 = v104;
  }

  v58 = *(v191 + 16);
  v57 = *(v191 + 24);
  v59 = v178;
  if (v58 >= v57 >> 1)
  {
    v105 = OUTLINED_FUNCTION_64(v57);
    sub_1CA2E702C(v105, v58 + 1, 1, v191);
    v191 = v106;
  }

  *(v191 + 16) = v58 + 1;
  v60 = (v191 + 48 * v58);
  v60[4] = 0xD000000000000010;
  v60[5] = v46;
  v60[6] = v47;
  v60[7] = v48;
  v60[8] = v182;
  v60[9] = v32;
  v61 = [v178 defaultState];
  if (!v61)
  {

LABEL_54:
    v14 = v167;
    v10 = v168;
    v23 = v165;
    v21 = v166;
    v25 = v163;
    v24 = v164;
    goto LABEL_29;
  }

  v162 = v61;
  v62 = [v189 userVisibleStringsInParameterState:v61 forUseCase:0];
  v63 = type metadata accessor for WFUserVisibleString();
  OUTLINED_FUNCTION_0_57();
  sub_1CA58DDB8(&qword_1EC4463C0, v64, MEMORY[0x1E69E81B8]);
  OUTLINED_FUNCTION_52_0();
  v65 = sub_1CA94C8F8();

  v169 = v63;
  if ((v65 & 0xC000000000000001) != 0)
  {
    sub_1CA94D2F8();
    sub_1CA94C948();
    v65 = v194;
    v66 = v195;
    v67 = v196;
    v68 = v197;
    v69 = v198;
  }

  else
  {
    v68 = 0;
    v66 = v65 + 56;
    OUTLINED_FUNCTION_2_49();
    v69 = v70 & v71;
  }

  v161 = v67;
  v72 = (v67 + 64) >> 6;
  v173 = v66;
  v174 = v65;
  v172 = v72;
  if (v65 < 0)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v73 = v68;
    v74 = v68;
    if (!v69)
    {
      break;
    }

LABEL_45:
    OUTLINED_FUNCTION_1_41();
    v77 = v76 & v75;
    v79 = OUTLINED_FUNCTION_11_29(v78);
    if (!v79)
    {
LABEL_53:
      sub_1CA28A224(v65);

      swift_unknownObjectRelease();
      goto LABEL_54;
    }

    while (1)
    {
      v183 = v77;
      sub_1CA94D408();

      v192 = v175;
      v81 = MEMORY[0x1E69E6530];
      v82 = sub_1CA94D798();
      MEMORY[0x1CCAA1300](v82);

      OUTLINED_FUNCTION_12_26();
      v83 = [v189 key];
      v84 = sub_1CA94C3A8();
      v86 = v85;

      MEMORY[0x1CCAA1300](v84, v86);

      OUTLINED_FUNCTION_10_28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
      v87 = swift_allocObject();
      *(v87 + 16) = v170;
      v88 = [v79 hash];
      *(v87 + 56) = v81;
      *(v87 + 64) = MEMORY[0x1E69E65A8];
      *(v87 + 32) = v88;
      OUTLINED_FUNCTION_52_0();
      v180 = sub_1CA94C3C8();
      v90 = v89;

      sub_1CA94D408();
      sub_1CA94C218();

      v199 = v185;
      v200 = v186;
      MEMORY[0x1CCAA1300](0xD000000000000015, v176 | 0x8000000000000000);
      v91 = [v79 localizationComment];
      v92 = sub_1CA94C3A8();
      v94 = v93;

      MEMORY[0x1CCAA1300](v92, v94);

      v95 = [v79 content];
      v96 = sub_1CA94C3A8();
      v98 = v97;

      v100 = *(v191 + 16);
      v99 = *(v191 + 24);
      if (v100 >= v99 >> 1)
      {
        v102 = OUTLINED_FUNCTION_64(v99);
        sub_1CA2E702C(v102, v100 + 1, 1, v191);
        v191 = v103;
      }

      *(v191 + 16) = v100 + 1;
      v101 = (v191 + 48 * v100);
      v101[4] = v180;
      v101[5] = v90;
      v101[6] = v185;
      v101[7] = v186;
      v101[8] = v96;
      v101[9] = v98;
      v68 = v74;
      v69 = v183;
      v59 = v178;
      v66 = v173;
      v65 = v174;
      v72 = v172;
      if ((v174 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_47:
      v80 = sub_1CA94D358();
      if (v80)
      {
        v192 = v80;
        swift_dynamicCast();
        v79 = v199;
        v74 = v68;
        v77 = v69;
        if (v199)
        {
          continue;
        }
      }

      goto LABEL_53;
    }
  }

  while (1)
  {
    v74 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v74 >= v72)
    {
      goto LABEL_53;
    }

    ++v73;
    if (*(v66 + 8 * v74))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
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
}

id sub_1CA58D04C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];

  result = [a1 content];
  if (result)
  {
    v4 = result;

    result = [a1 localizationComment];
    if (result)
    {
      v5 = result;

      v6 = [v2 finalize];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
      v7 = swift_allocObject();
      v8 = MEMORY[0x1E69E76D8];
      *(v7 + 16) = xmmword_1CA981310;
      v9 = MEMORY[0x1E69E7738];
      *(v7 + 56) = v8;
      *(v7 + 64) = v9;
      *(v7 + 32) = v6;
      v10 = sub_1CA94C3C8();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CA58D1CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CA94C1A8();

  sub_1CA3A2F84();
  v4 = sub_1CA94C648();

  v5 = [v2 initWithSerializedRepresentation:v3 workflowActions:v4];

  return v5;
}

id sub_1CA58D26C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a4)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithAction:a1 parameter:a2 question:v10 defaultState:a5];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1CA58D30C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
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
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA58D4E4(v7, v8, a1, v4);
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
    return sub_1CA58D400(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA58D400(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 48 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1CA94D7F8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v14 = *(v12 + 64);
        v15 = *(v12 + 80);
        v16 = *(v12 + 88);
        v17 = *(v12 + 16);
        *(v12 + 48) = *v12;
        *(v12 + 64) = v17;
        *(v12 + 80) = *(v12 + 32);
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 32) = v15;
        *(v12 + 40) = v16;
        v12 -= 48;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 48;
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

void sub_1CA58D4E4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 48 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 48 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1CA94D7F8();
        }

        v7 = v9 + 2;
        v17 = (v10 + 48 * v9 + 104);
        while (v7 < v6)
        {
          if (*(v17 - 1) == *(v17 - 7) && *v17 == *(v17 - 6))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1CA94D7F8()))
          {
            break;
          }

          ++v7;
          v17 += 6;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v19 = 48 * v7 - 24;
          v20 = 48 * v9 + 40;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = (v23 + v20);
              v25 = *(v23 + v20 - 40);
              v26 = v23 + v19;
              v27 = *(v24 - 3);
              v28 = *(v24 - 1);
              v29 = *v24;
              v30 = *(v26 + 8);
              v31 = *(v26 - 8);
              *(v24 - 5) = *(v26 - 24);
              *(v24 - 3) = v31;
              *(v24 - 1) = v30;
              *(v26 - 24) = v25;
              *(v26 - 8) = v27;
              *(v26 + 8) = v28;
              *(v26 + 16) = v29;
            }

            ++v22;
            v19 -= 48;
            v20 += 48;
          }

          while (v22 < v21);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v7 < v32)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v9 + a4;
          }

          if (v33 < v9)
          {
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
            return;
          }

          if (v7 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 48 * v7 - 48;
            v98 = v9;
            v36 = v9 - v7;
            do
            {
              v37 = (v34 + 48 * v7);
              v38 = *v37;
              v39 = v37[1];
              v40 = v36;
              v41 = v35;
              do
              {
                v42 = v38 == *v41 && v39 == *(v41 + 8);
                if (v42 || (sub_1CA94D7F8() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v38 = *(v41 + 48);
                v39 = *(v41 + 56);
                v43 = *(v41 + 64);
                v44 = *(v41 + 80);
                v45 = *(v41 + 88);
                v46 = *(v41 + 16);
                *(v41 + 48) = *v41;
                *(v41 + 64) = v46;
                *(v41 + 80) = *(v41 + 32);
                *v41 = v38;
                *(v41 + 8) = v39;
                *(v41 + 16) = v43;
                *(v41 + 32) = v44;
                *(v41 + 40) = v45;
                v41 -= 48;
              }

              while (!__CFADD__(v40++, 1));
              ++v7;
              v35 += 48;
              --v36;
            }

            while (v7 != v33);
            v7 = v33;
            v9 = v98;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E49C0(0, v8[2] + 1, 1, v8);
        v8 = v93;
      }

      v49 = v8[2];
      v48 = v8[3];
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        sub_1CA2E49C0(v48 > 1, v49 + 1, 1, v8);
        v8 = v94;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v7;
      v99 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v49)
      {
        v97 = v8 + 4;
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_70:
            if (v59)
            {
              goto LABEL_110;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_113;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_118;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v50 < 2)
          {
            goto LABEL_112;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_85:
          if (v74)
          {
            goto LABEL_115;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_117;
          }

          if (v81 < v73)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = v53;
          v88 = &v51[2 * v53];
          v89 = v88[1];
          sub_1CA58DB8C((*a3 + 48 * *v85), (*a3 + 48 * *v88), (*a3 + 48 * v89), v99);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v89 < v86)
          {
            goto LABEL_105;
          }

          v90 = v8;
          v91 = v8[2];
          if (v87 > v91)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v89;
          if (v87 >= v91)
          {
            goto LABEL_107;
          }

          v50 = v91 - 1;
          memmove(v88, v88 + 2, 16 * (v91 - 1 - v87));
          v90[2] = v91 - 1;
          v92 = v91 > 2;
          v8 = v90;
          v5 = 0;
          v51 = v97;
          if (!v92)
          {
            goto LABEL_99;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_108;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_109;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_111;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_114;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_119;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1CA58DA54(&v101, *result, a3);
LABEL_103:
}

uint64_t sub_1CA58DA54(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1CA58DB8C((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1CA58DB8C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1CA278E64(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 48;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1CA278E64(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_19:
  v16 = v6 - 48;
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    v18 = *(v10 - 6) == *(v6 - 6) && *(v10 - 5) == *(v6 - 5);
    if (!v18 && (sub_1CA94D7F8() & 1) != 0)
    {
      v12 = v5 + 48 == v6;
      v6 -= 48;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 2);
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 48)
    {
      v19 = *(v10 - 3);
      v20 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v20;
      *v5 = v19;
    }

    v10 -= 48;
  }

LABEL_36:
  v23 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v23])
  {
    memmove(v6, v4, 48 * v23);
  }

  return 1;
}

uint64_t sub_1CA58DD54(void *a1)
{
  v1 = [a1 question];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA58DDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CA58DE10()
{
  result = qword_1EC446930;
  if (!qword_1EC446930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446930);
  }

  return result;
}

_BYTE *_s17LocalizableStringV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA58DF44()
{
  result = qword_1EC446938;
  if (!qword_1EC446938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446938);
  }

  return result;
}

unint64_t sub_1CA58DF9C()
{
  result = qword_1EC446940;
  if (!qword_1EC446940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446940);
  }

  return result;
}

unint64_t sub_1CA58DFF4()
{
  result = qword_1EC446948;
  if (!qword_1EC446948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446948);
  }

  return result;
}

id WFVariableStringParameterState.variableString.getter@<X0>(void *a1@<X8>)
{
  result = [v1 variableString];
  *a1 = result;
  return result;
}

WFVariableStringParameterState __swiftcall WFVariableStringParameterState.init(variableString:)(WorkflowKit::WFVariableString variableString)
{
  v1 = *variableString.variableString.super.isa;
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariableString_];

  v6 = v2;
  result._variable = v5;
  result._userInputInsertionIndex = v4;
  result._variableString = v3;
  result.super.isa = v6;
  return result;
}

id static WFVariableStringParameterState.from(variableString:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithVariableString_];
}

id sub_1CA58E148()
{
  v312 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CF770;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v319 = inited;
  v323 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA97EDF0;
  *(v6 + 32) = @"DescriptionInput";
  v7 = @"Description";
  v8 = @"DescriptionInput";
  v9 = sub_1CA94C438("The window(s) to resize", 23);
  v324 = v10;
  v325 = v9;
  v11 = sub_1CA94C438("The window(s) to resize", 23);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v328 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v329 = v15;
  v16 = &v302 - v328;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v327 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v330 = v20;
  v326 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v302 - v326;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v325, v324, v11, v13, 0, 0, v16, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 40) = v23;
  *(v6 + 64) = v24;
  *(v6 + 72) = @"DescriptionSummary";
  v325 = v24;
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Resizes one or more windows to the specified width and height.", 62);
  v322 = v27;
  v28 = sub_1CA94C438("Resizes one or more windows to the specified width and height.", 62);
  v30 = v29;
  v324 = &v302;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v302 - v328;
  sub_1CA948D98();
  v32 = [v17 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v302 - v326;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v322, v28, v30, 0, 0, v31, v33);
  *(v6 + 104) = v24;
  *(v6 + 80) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v323;
  v38 = sub_1CA6B3784(v36);
  v39 = v319;
  v319[15] = v38;
  v39[18] = v37;
  v39[19] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v317 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x776F646E69574657;
  *(v40 + 104) = 0xE800000000000000;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  *(v40 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 192) = &unk_1F4A07498;
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v39[20] = v43;
  v39[23] = v44;
  v39[24] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Resize Window (Action Name)", 27);
  v48 = v47;
  v49 = sub_1CA94C438("Resize Window", 13);
  v51 = v50;
  v324 = &v302;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v302 - v328;
  sub_1CA948D98();
  v53 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v302 - v326;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39[25] = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v39[28] = v325;
  v39[29] = @"Parameters";
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v323 = swift_allocObject();
  *(v323 + 16) = xmmword_1CA981560;
  v322 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *&v315 = v56;
  *(v56 + 16) = xmmword_1CA981370;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000016;
  *(v56 + 48) = 0x80000001CA99C4A0;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"DefaultValue";
  *(v56 + 80) = 0x6572635320746946;
  *(v56 + 88) = 0xEA00000000006E65;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Items";
  v324 = swift_allocObject();
  *(v324 + 1) = xmmword_1CA983CF0;
  v58 = @"Class";
  v59 = @"DefaultValue";
  v316 = v58;
  v311 = v59;
  v60 = @"Parameters";
  v61 = @"Items";
  v320 = sub_1CA94C438("Fit Screen (WFConfiguration)", 28);
  v314 = v62;
  v63 = sub_1CA94C438("Fit Screen", 10);
  v313 = v64;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v328;
  sub_1CA948D98();
  v66 = v327;
  v67 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v302 - v326;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v320, v314, v63, v313, 0, 0, &v302 - v65, v68);
  v71 = v324;
  v324[4] = v70;
  v72 = sub_1CA94C438("Top Half (WFConfiguration)", 26);
  v313 = v73;
  v314 = v72;
  v310 = sub_1CA94C438("Top Half", 8);
  v75 = v74;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v310);
  sub_1CA948D98();
  v76 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = v326;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 40) = sub_1CA2F9F14(v314, v313, v310, v75, 0, 0, &v302 - v65, &v302 - v77);
  v79 = sub_1CA94C438("Bottom Half (WFConfiguration)", 29);
  v313 = v80;
  v314 = v79;
  v81 = sub_1CA94C438("Bottom Half", 11);
  v310 = v82;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v81);
  v83 = v328;
  sub_1CA948D98();
  v84 = v327;
  v85 = [v327 bundleURL];
  v309 = &v302;
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v314, v313, v81, v310, 0, 0, &v302 - v83, &v302 - v77);
  v88 = v324;
  v324[6] = v87;
  v89 = sub_1CA94C438("Left Half (WFConfiguration)", 27);
  v313 = v90;
  v314 = v89;
  v91 = sub_1CA94C438("Left Half", 9);
  v310 = v92;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948D98();
  v93 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v326;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 56) = sub_1CA2F9F14(v314, v313, v91, v310, 0, 0, &v302 - v83, &v302 - v94);
  v96 = sub_1CA94C438("Right Half (WFConfiguration)", 28);
  v313 = v97;
  v314 = v96;
  v98 = sub_1CA94C438("Right Half", 10);
  v310 = v99;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v98);
  v100 = v328;
  sub_1CA948D98();
  v101 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 64) = sub_1CA2F9F14(v314, v313, v98, v310, 0, 0, &v302 - v100, &v302 - v94);
  v103 = sub_1CA94C438("Top Left Quarter (WFConfiguration)", 34);
  v313 = v104;
  v314 = v103;
  v105 = sub_1CA94C438("Top Left Quarter", 16);
  v310 = v106;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v302 - v100;
  sub_1CA948D98();
  v108 = v327;
  v109 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v314, v313, v105, v310, 0, 0, v107, &v302 - v94);
  v324[9] = v111;
  v112 = sub_1CA94C438("Top Right Quarter (WFConfiguration)", 35);
  v313 = v113;
  v314 = v112;
  v114 = sub_1CA94C438("Top Right Quarter", 17);
  v310 = v115;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v328;
  sub_1CA948D98();
  v117 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v314, v313, v114, v310, 0, 0, &v302 - v116, &v302 - v94);
  v120 = v324;
  v324[10] = v119;
  v121 = sub_1CA94C438("Bottom Left Quarter (WFConfiguration)", 37);
  v313 = v122;
  v314 = v121;
  v123 = sub_1CA94C438("Bottom Left Quarter", 19);
  v310 = v124;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v302 - v116;
  sub_1CA948D98();
  v126 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v326;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v120 + 88) = sub_1CA2F9F14(v314, v313, v123, v310, 0, 0, v125, &v302 - v127);
  v129 = sub_1CA94C438("Bottom Right Quarter (WFConfiguration)", 38);
  v313 = v130;
  v314 = v129;
  v131 = sub_1CA94C438("Bottom Right Quarter", 20);
  v310 = v132;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v328;
  sub_1CA948D98();
  v134 = v327;
  v135 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v314, v313, v131, v310, 0, 0, &v302 - v133, &v302 - v127);
  v324[12] = v137;
  v138 = sub_1CA94C438("Dimensions (WFConfiguration)", 28);
  v313 = v139;
  v314 = v138;
  v310 = sub_1CA94C438("Dimensions", 10);
  v141 = v140;
  v320 = &v302;
  MEMORY[0x1EEE9AC00](v310);
  sub_1CA948D98();
  v142 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v314, v313, v310, v141, 0, 0, &v302 - v133, &v302 - v127);
  v145 = v324;
  v324[13] = v144;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v147 = v315;
  *(v315 + 120) = v145;
  v147[18] = v146;
  v147[19] = @"Key";
  v147[20] = 0x6769666E6F434657;
  v147[21] = 0xEF6E6F6974617275;
  v147[23] = MEMORY[0x1E69E6158];
  v147[24] = @"Label";
  v148 = @"Key";
  v149 = @"Label";
  v150 = v148;
  v151 = v149;
  v309 = v150;
  v310 = v151;
  v152 = sub_1CA94C438("Configuration (WFConfiguration)", 31);
  v154 = v153;
  v155 = sub_1CA94C438("Configuration", 13);
  v157 = v156;
  v324 = &v302;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v302 - v328;
  sub_1CA948D98();
  v159 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v302 - v326;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v162 = sub_1CA2F9F14(v152, v154, v155, v157, 0, 0, v158, v160);
  v147[28] = v325;
  v147[25] = v162;
  _s3__C3KeyVMa_0(0);
  v324 = v163;
  v320 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v164 = sub_1CA94C1E8();
  v165 = sub_1CA2F864C(v164);
  *(v323 + 32) = v165;
  v166 = swift_allocObject();
  v315 = xmmword_1CA981380;
  *(v166 + 16) = xmmword_1CA981380;
  *(v166 + 32) = @"AllowsDecimalNumbers";
  *(v166 + 40) = 0;
  v167 = v316;
  *(v166 + 64) = MEMORY[0x1E69E6370];
  *(v166 + 72) = v167;
  v314 = 0x80000001CA99C180;
  *(v166 + 80) = 0xD000000000000016;
  *(v166 + 88) = 0x80000001CA99C180;
  v168 = MEMORY[0x1E69E6158];
  v169 = v309;
  v170 = v310;
  *(v166 + 104) = MEMORY[0x1E69E6158];
  *(v166 + 112) = v169;
  *(v166 + 120) = 0x68746469574657;
  *(v166 + 128) = 0xE700000000000000;
  *(v166 + 144) = v168;
  *(v166 + 152) = v170;
  v171 = @"AllowsDecimalNumbers";
  v313 = v167;
  v309 = v169;
  v310 = v170;
  v308 = v171;
  v307 = sub_1CA94C438("Width (WFWidth)", 15);
  *&v306 = v172;
  v173 = sub_1CA94C438("Width", 5);
  v175 = v174;
  v316 = &v302;
  MEMORY[0x1EEE9AC00](v173);
  v176 = &v302 - v328;
  sub_1CA948D98();
  v177 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v177);
  v178 = v326;
  sub_1CA948B68();

  v179 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 160) = sub_1CA2F9F14(v307, v306, v173, v175, 0, 0, v176, &v302 - v178);
  v180 = v325;
  *(v166 + 184) = v325;
  *(v166 + 192) = @"Placeholder";
  v316 = @"Placeholder";
  v181 = sub_1CA94C438("Width (WFWidth)", 15);
  v305 = v182;
  *&v306 = v181;
  v183 = sub_1CA94C438("Width", 5);
  v185 = v184;
  v307 = &v302;
  MEMORY[0x1EEE9AC00](v183);
  v186 = &v302 - v328;
  sub_1CA948D98();
  v187 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 200) = sub_1CA2F9F14(v306, v305, v183, v185, 0, 0, v186, &v302 - v178);
  *(v166 + 224) = v180;
  *(v166 + 232) = @"RequiredResources";
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v189 = swift_allocObject();
  v306 = xmmword_1CA981310;
  *(v189 + 16) = xmmword_1CA981310;
  v305 = @"RequiredResources";
  v190 = MEMORY[0x1E69E6158];
  *(v189 + 32) = sub_1CA94C1E8();
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v166 + 264) = v304;
  *(v166 + 240) = v189;
  v191 = sub_1CA94C1E8();
  v192 = sub_1CA2F864C(v191);
  *(v323 + 40) = v192;
  v193 = swift_allocObject();
  *(v193 + 16) = v315;
  v194 = v309;
  *(v193 + 32) = v308;
  *(v193 + 40) = 0;
  v195 = v313;
  *(v193 + 64) = MEMORY[0x1E69E6370];
  *(v193 + 72) = v195;
  *(v193 + 80) = 0xD000000000000016;
  *(v193 + 88) = v314;
  *(v193 + 104) = v190;
  *(v193 + 112) = v194;
  *(v193 + 120) = 0x7468676965484657;
  *(v193 + 128) = 0xE800000000000000;
  *(v193 + 144) = v190;
  v196 = v310;
  *(v193 + 152) = v310;
  v313 = v195;
  v314 = v194;
  *&v315 = v196;
  v197 = sub_1CA94C438("Height (WFHeight)", 17);
  v308 = v198;
  v309 = v197;
  v199 = sub_1CA94C438("Height", 6);
  v303 = v200;
  v310 = &v302;
  MEMORY[0x1EEE9AC00](v199);
  v201 = v328;
  sub_1CA948D98();
  v202 = v327;
  v203 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = v326;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v193 + 160) = sub_1CA2F9F14(v309, v308, v199, v303, 0, 0, &v302 - v201, &v302 - v204);
  v206 = v325;
  v207 = v316;
  *(v193 + 184) = v325;
  *(v193 + 192) = v207;
  v208 = sub_1CA94C438("Height (WFHeight)", 17);
  v308 = v209;
  v309 = v208;
  v210 = sub_1CA94C438("Height", 6);
  v212 = v211;
  v310 = &v302;
  MEMORY[0x1EEE9AC00](v210);
  v213 = &v302 - v201;
  sub_1CA948D98();
  v214 = [v202 bundleURL];
  MEMORY[0x1EEE9AC00](v214);
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v193 + 200) = sub_1CA2F9F14(v309, v308, v210, v212, 0, 0, v213, &v302 - v204);
  v216 = v305;
  *(v193 + 224) = v206;
  *(v193 + 232) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = v306;
  v218 = MEMORY[0x1E69E6158];
  *(v217 + 32) = sub_1CA94C1E8();
  *(v193 + 264) = v304;
  *(v193 + 240) = v217;
  v219 = sub_1CA94C1E8();
  v220 = sub_1CA2F864C(v219);
  *(v323 + 48) = v220;
  v221 = swift_allocObject();
  *(v221 + 16) = v317;
  *(v221 + 32) = v313;
  *(v221 + 40) = 0xD000000000000019;
  *(v221 + 48) = 0x80000001CA99B030;
  v222 = v314;
  *(v221 + 64) = v218;
  *(v221 + 72) = v222;
  *(v221 + 80) = 0x776F646E69574657;
  *(v221 + 88) = 0xE800000000000000;
  v223 = v315;
  *(v221 + 104) = v218;
  *(v221 + 112) = v223;
  v224 = sub_1CA94C438("Window (WFWindow)", 17);
  v308 = v225;
  v309 = v224;
  v226 = sub_1CA94C438("Window", 6);
  v307 = v227;
  v310 = &v302;
  MEMORY[0x1EEE9AC00](v226);
  v228 = &v302 - v328;
  sub_1CA948D98();
  v229 = v327;
  v230 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v230);
  v231 = v326;
  sub_1CA948B68();

  v232 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v221 + 120) = sub_1CA2F9F14(v309, v308, v226, v307, 0, 0, v228, &v302 - v231);
  v233 = v325;
  v234 = v316;
  *(v221 + 144) = v325;
  *(v221 + 152) = v234;
  v235 = sub_1CA94C438("Window (WFWindow)", 17);
  v309 = v236;
  v310 = v235;
  v237 = sub_1CA94C438("Window", 6);
  v239 = v238;
  v316 = &v302;
  MEMORY[0x1EEE9AC00](v237);
  v240 = &v302 - v328;
  sub_1CA948D98();
  v241 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v241);
  sub_1CA948B68();

  v242 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v243 = sub_1CA2F9F14(v310, v309, v237, v239, 0, 0, v240, &v302 - v231);
  *(v221 + 184) = v233;
  *(v221 + 160) = v243;
  v244 = sub_1CA94C1E8();
  v245 = sub_1CA2F864C(v244);
  *(v323 + 56) = v245;
  v246 = swift_allocObject();
  *(v246 + 16) = v317;
  *(v246 + 32) = v313;
  *(v246 + 40) = 0xD000000000000011;
  *(v246 + 48) = 0x80000001CA99E620;
  v247 = MEMORY[0x1E69E6158];
  v248 = v311;
  *(v246 + 64) = MEMORY[0x1E69E6158];
  *(v246 + 72) = v248;
  *(v246 + 80) = 1;
  v249 = v314;
  *(v246 + 104) = MEMORY[0x1E69E6370];
  *(v246 + 112) = v249;
  strcpy((v246 + 120), "WFBringToFront");
  *(v246 + 135) = -18;
  v250 = v315;
  *(v246 + 144) = v247;
  *(v246 + 152) = v250;
  v251 = sub_1CA94C438("Bring to Front (WFBringToFront)", 31);
  v253 = v252;
  v254 = sub_1CA94C438("Bring to Front", 14);
  v256 = v255;
  v321 = &v302;
  MEMORY[0x1EEE9AC00](v254);
  v257 = &v302 - v328;
  sub_1CA948D98();
  v258 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v258);
  v259 = &v302 - v326;
  sub_1CA948B68();

  v260 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v261 = sub_1CA2F9F14(v251, v253, v254, v256, 0, 0, v257, v259);
  *(v246 + 184) = v325;
  *(v246 + 160) = v261;
  v262 = sub_1CA94C1E8();
  v263 = sub_1CA2F864C(v262);
  v264 = v323;
  *(v323 + 64) = v263;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v266 = v319;
  v319[30] = v264;
  v266[33] = v265;
  v266[34] = @"ParameterSummary";
  v324 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v325 = swift_allocObject();
  *(v325 + 16) = xmmword_1CA981360;
  v323 = "FConfiguration)";
  v267 = @"ParameterSummary";
  v268 = sub_1CA94C438("Resize ${WFWindow} to ${WFConfiguration}", 40);
  v270 = v269;
  v271 = sub_1CA94C438("Resize ${WFWindow} to ${WFConfiguration}", 40);
  v273 = v272;
  v322 = &v302;
  MEMORY[0x1EEE9AC00](v271);
  v274 = v328;
  sub_1CA948D98();
  v275 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v275);
  v276 = &v302 - v326;
  sub_1CA948B68();

  v277 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v278 = sub_1CA2F9F14(v268, v270, v271, v273, 0, 0, &v302 - v274, v276);
  v279 = objc_allocWithZone(WFActionParameterSummaryValue);
  v280 = sub_1CA65DD78(0xD000000000000027, v323 | 0x8000000000000000, v278);
  *(v325 + 32) = v280;
  v323 = "w} to ${WFConfiguration}";
  v281 = sub_1CA94C438("Resize ${WFWindow} to ${WFConfiguration} ${WFWidth} × ${WFHeight}", 66);
  v283 = v282;
  v284 = sub_1CA94C438("Resize ${WFWindow} to ${WFConfiguration} ${WFWidth} × ${WFHeight}", 66);
  v286 = v285;
  v322 = &v302;
  MEMORY[0x1EEE9AC00](v284);
  sub_1CA948D98();
  v287 = [v327 bundleURL];
  MEMORY[0x1EEE9AC00](v287);
  v288 = &v302 - v326;
  sub_1CA948B68();

  v289 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v290 = sub_1CA2F9F14(v281, v283, v284, v286, 0, 0, &v302 - v274, v288);
  v291 = objc_allocWithZone(WFActionParameterSummaryValue);
  v292 = sub_1CA65DD78(0xD000000000000044, v323 | 0x8000000000000000, v290);
  v294 = v324;
  v293 = v325;
  *(v325 + 40) = v292;
  v295 = sub_1CA65AF90(v293);
  v296 = v319;
  v319[35] = v295;
  v296[38] = v294;
  v296[39] = @"RequiredResources";
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_1CA9813B0;
  v331 = 2;
  v332 = 0;
  v298 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v299 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v331);
  *(v297 + 32) = v300;
  v296[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v296[40] = v297;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA5904CC(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  sub_1CA4F3484();
  v3 = sub_1CA94C658();

  v4 = sub_1CA25B410(v3);
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCAA22D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = sub_1CA94D158();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E575C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v12;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1CA2E575C(v10 > 1, v11 + 1, 1, v6);
      v6 = v13;
    }

    *(v6 + 16) = v11 + 1;
    *(v6 + 8 * v11 + 32) = v9;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1CA59068C(uint64_t (*a1)(void), uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v3 = a1();
  sub_1CA4F3484();
  v4 = sub_1CA94C658();

  result = sub_1CA25B410(v4);
  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v7)
    {

      return v8;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCAA22D0](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v4 + 8 * v7 + 32);
    }

    v9 = result;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = sub_1CA94D158();

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = a2(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      result = a2(v11 > 1, v12 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + 8 * v12 + 32) = v10;
    ++v7;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t WFVariableString.userVisibleStrings(for:)(uint64_t a1)
{
  v2 = [*v1 userVisibleStringsForUseCase_];
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v3 = sub_1CA94C8F8();

  return v3;
}

{
  v2 = v1;
  v15 = MEMORY[0x1E69E7CD0];
  v4 = [v1 variables];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  v5 = sub_1CA94C658();

  result = sub_1CA25B410(v5);
  if (result)
  {
    v7 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAA22D0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 userVisibleStringsForUseCase_];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v12 = sub_1CA94C8F8();

      sub_1CA342840(v12);
    }

    while (v7 != v8);
  }

  v13 = [v2 computeUserVisibleString];
  if ([v13 isEmpty])
  {
  }

  else
  {
    sub_1CA368D08(&v14);
  }

  return v15;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.rewritten(withStrings:)(Swift::OpaquePointer withStrings)
{
  v3 = v1;
  v4 = *v2;
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C1A8();
  v6 = [v4 rewrittenWithStrings_];

  *v3 = v6;
  result.variableString._stringsAndVariables = v8;
  result.variableString.super.isa = v7;
  return result;
}

unint64_t sub_1CA5908E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1CA94C588();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA590930(uint64_t a1, uint64_t a2)
{
  sub_1CA27BAF0();
  sub_1CA94D1B8();
  sub_1CA94D1B8();

  sub_1CA94D1B8();

  v2 = sub_1CA94D1B8();

  return v2;
}

uint64_t sub_1CA590AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CA435BD4();
  sub_1CA27BAF0();
  sub_1CA94D1B8();
  sub_1CA94D1B8();

  sub_1CA94D1B8();

  v4 = sub_1CA94D1B8();

  return v4;
}

uint64_t WFVariableString.computeUserVisibleString()()
{
  v1 = v0;
  v59 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0;
  v68 = 0xE000000000000000;
  v7 = [v1 stringsAndVariables];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446360, &qword_1CA98AFF8);
  v8 = sub_1CA94C658();

  result = sub_1CA25B410(v8);
  v11 = result;
  if (!result)
  {

    v14 = MEMORY[0x1E69E7CC0];
    v49 = 0xE000000000000000;
LABEL_24:
    if (*(v14 + 16))
    {
      v64 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA25C3BC(&qword_1EC441B20, &qword_1EC443E20, &qword_1CA986220, MEMORY[0x1E69E6310]);
      v50 = sub_1CA94C308();
      v52 = v51;
    }

    else
    {

      v50 = 0;
      v52 = 0;
    }

    v53 = objc_allocWithZone(WFUserVisibleString);
    return sub_1CA5920A8(v11, v49, 2, v50, v52);
  }

  if (result < 1)
  {
    goto LABEL_29;
  }

  v12 = 0;
  v62 = 0;
  v63 = v8 & 0xC000000000000001;
  v13 = *MEMORY[0x1E69E10B0];
  v57 = (v3 + 8);
  v58 = v13;
  v14 = MEMORY[0x1E69E7CC0];
  *&v10 = 136315138;
  v54 = v10;
  v60 = v8;
  v61 = result;
  while (1)
  {
    if (v63)
    {
      v15 = MEMORY[0x1CCAA22D0](v12, v8);
    }

    else
    {
      v15 = *(v8 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      if ([v17 length] >= 1)
      {
        v18 = sub_1CA94C3A8();
        v20 = sub_1CA590930(v18, v19);
        v22 = v21;

        MEMORY[0x1CCAA1300](v20, v22);
        v11 = v61;
      }

      swift_unknownObjectRelease_n();
      goto LABEL_21;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {
      sub_1CA949C58();
      swift_unknownObjectRetain();
      v38 = sub_1CA949F68();
      v39 = sub_1CA94CC28();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v64 = v56;
        *v40 = v54;
        v66 = v15;
        swift_unknownObjectRetain();
        v41 = sub_1CA94C408();
        v43 = v6;
        v44 = v14;
        v45 = v1;
        v46 = sub_1CA26B54C(v41, v42, &v64);
        v8 = v60;

        *(v40 + 4) = v46;
        v1 = v45;
        v14 = v44;
        v6 = v43;
        _os_log_impl(&dword_1CA256000, v38, v39, "Invalid content in WFVariableString: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        OUTLINED_FUNCTION_26();
        v11 = v61;
        OUTLINED_FUNCTION_26();
      }

      swift_unknownObjectRelease();

      (*v57)(v6, v59);
      goto LABEL_21;
    }

    v24 = v23;
    v64 = 0x6261697261767B24;
    v65 = 0xEB000000002D656CLL;
    v66 = v62;
    v25 = sub_1CA94D798();
    MEMORY[0x1CCAA1300](v25);

    MEMORY[0x1CCAA1300](125, 0xE100000000000000);
    v26 = v64;
    v27 = v65;
    MEMORY[0x1CCAA1300](v64, v65);
    v64 = v26;
    v65 = v27;
    MEMORY[0x1CCAA1300](656424224, 0xE400000000000000);
    v28 = [v24 name];
    v29 = sub_1CA94C3A8();
    v31 = v30;

    MEMORY[0x1CCAA1300](v29, v31);

    MEMORY[0x1CCAA1300](39, 0xE100000000000000);
    v32 = v64;
    v33 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA26DADC();
      v14 = v47;
    }

    v35 = *(v14 + 16);
    v34 = *(v14 + 24);
    if (v35 >= v34 >> 1)
    {
      OUTLINED_FUNCTION_64(v34);
      sub_1CA26DADC();
      v14 = v48;
    }

    result = swift_unknownObjectRelease();
    *(v14 + 16) = v35 + 1;
    v36 = v14 + 16 * v35;
    *(v36 + 32) = v32;
    *(v36 + 40) = v33;
    if (__OFADD__(v62++, 1))
    {
      break;
    }

    v8 = v60;
    v11 = v61;
LABEL_21:
    if (v11 == ++v12)
    {

      v11 = v67;
      v49 = v68;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

WFVariableString __swiftcall WFVariableString.rewritten(withStrings:)(Swift::OpaquePointer withStrings)
{
  v2 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v102 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446950, &unk_1CA98C0A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v102 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A58, &qword_1CA988490);
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  v23 = [v118 computeUserVisibleString];
  if ([v23 isEmpty])
  {
    v24 = v118;

LABEL_38:
    v99 = v24;
  }

  else
  {
    v104 = v4;
    v116 = sub_1CA311D98(v23, withStrings._rawValue);
    v117 = v26;
    if (v26)
    {
      v111 = v16;
      v102 = v2;
      v103 = v23;
      v115 = 0;
      v114 = MEMORY[0x1E69E7CC0];
      v121 = MEMORY[0x1E69E7CC0];
      v109 = (v11 + 8);
      v110 = "th} × ${WFHeight}";
      v108 = (v19 + 32);
      v106 = v19 + 8;
      v27 = 15;
      v107 = v17;
      while (1)
      {
        v28 = sub_1CA5908E4(v27, v116, v117);
        v30 = v29;
        v32 = v31;
        v34 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
        v35 = v112;
        sub_1CA949648();
        v36 = v111;
        sub_1CA591E28(v35, v28, v30, v32, v34);

        (*v109)(v35, v113);
        if (__swift_getEnumTagSinglePayload(v36, 1, v17) == 1)
        {
          break;
        }

        (*v108)(v22, v36, v17);
        if (sub_1CA949688() >> 14 < v27 >> 14)
        {
          __break(1u);
LABEL_40:

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          OUTLINED_FUNCTION_64(v60);
          sub_1CA94C698();
LABEL_36:
          sub_1CA94C6E8();
          v90 = v103;
          goto LABEL_37;
        }

        v37 = sub_1CA94C588();
        if ((v37 ^ v38) >= 0x4000)
        {
          sub_1CA590AD0(v37, v38, v39, v40);
          sub_1CA94C368();

          MEMORY[0x1CCAA1490](v41);
          v42 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v42 >> 1)
          {
            OUTLINED_FUNCTION_64(v42);
            sub_1CA94C698();
          }

          sub_1CA94C6E8();
          v114 = v121;
        }

        sub_1CA949698();

        if (!((v120 ^ v119) >> 14))
        {
          goto LABEL_40;
        }

        v43 = v22;
        rawValue = withStrings._rawValue;
        v45 = OUTLINED_FUNCTION_2_50();
        v46 = v115;
        v51 = sub_1CA592B64(v45, v47, v48, v49, v50);
        v115 = v46;
        if ((v52 & 0x100) != 0)
        {
          v53 = OUTLINED_FUNCTION_2_50();
          v51 = sub_1CA5925D0(v53, v54, v55, v56, v57);
        }

        v58 = v51;
        v59 = v52;

        if (v59)
        {
          goto LABEL_41;
        }

        withStrings._rawValue = rawValue;
        v22 = v43;

        v61 = [v118 variables];
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        v62 = sub_1CA94C658();

        v63 = sub_1CA25B410(v62);

        v60 = &v122;
        v17 = v107;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if ((v58 & 0x8000000000000000) != 0 || v58 >= v63)
        {

          v91 = v105;
          sub_1CA949C58();
          v92 = sub_1CA949F68();
          v93 = sub_1CA94CC28();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_1CA256000, v92, v93, "Variable string count does not match", v94, 2u);
            OUTLINED_FUNCTION_26();
          }

          (*(v104 + 8))(v91, v102);
          v95 = OUTLINED_FUNCTION_1_42();
          v97(v95, v96);
          goto LABEL_32;
        }

        v64 = [v118 variables];
        v65 = sub_1CA94C658();

        sub_1CA275D70(v58, (v65 & 0xC000000000000001) == 0, v65);
        if ((v65 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1CCAA22D0](v58, v65);
        }

        else
        {
          v66 = *(v65 + 8 * v58 + 32);
        }

        v67 = v66;

        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        v68 = sub_1CA94C1A8();
        v69 = [v67 rewrittenWithStrings_];

        v70 = v69;
        MEMORY[0x1CCAA1490]();
        v71 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v71 >> 1)
        {
          OUTLINED_FUNCTION_64(v71);
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        v114 = v121;
        sub_1CA949688();
        v27 = v72;

        v73 = OUTLINED_FUNCTION_1_42();
        v74(v73);
      }

      sub_1CA30F7DC(v36, &unk_1EC446950, &unk_1CA98C0A8);
      v83 = sub_1CA5908E4(v27, v116, v117);
      v85 = v84;
      v87 = v86;
      v89 = v88;

      if ((v83 ^ v85) >= 0x4000)
      {
        sub_1CA590AD0(v83, v85, v87, v89);

        sub_1CA94C368();

        MEMORY[0x1CCAA1490](v100);
        v60 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v60 >> 1)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v90 = v103;
LABEL_37:
      sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
      v24 = sub_1CA538154();

      goto LABEL_38;
    }

    sub_1CA949C58();
    v118 = v118;
    v75 = sub_1CA949F68();
    v76 = sub_1CA94CC28();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = v23;
      v78 = swift_slowAlloc();
      v79 = v2;
      v80 = swift_slowAlloc();
      *v78 = 138412290;
      v81 = v118;
      *(v78 + 4) = v118;
      *v80 = v81;
      v82 = v81;
      _os_log_impl(&dword_1CA256000, v75, v76, "Missing string for %@", v78, 0xCu);
      sub_1CA30F7DC(v80, &qword_1EC444AE0, &qword_1CA985B70);
      v2 = v79;
      OUTLINED_FUNCTION_26();
      v23 = v77;
      OUTLINED_FUNCTION_26();
    }

    (*(v104 + 8))(v8, v2);
LABEL_32:
    v98 = v118;

    v99 = v98;
  }

  result._stringsAndVariables = v25;
  result.super.isa = v99;
  return result;
}

uint64_t sub_1CA591E28(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v12 - v10;
  if (a3 >> 14 < a2 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1CA94D128();
    sub_1CA25C3BC(&qword_1EC4458A8, &qword_1EC445890, &qword_1CA988360, MEMORY[0x1E69E9290]);
    sub_1CA949618();
    sub_1CA949668();
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

id sub_1CA5920A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CA94C368();

  if (a5)
  {
    v9 = sub_1CA94C368();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithContent:v8 ofKind:a3 comment:v9];

  return v10;
}

uint64_t sub_1CA592144(uint64_t a1, unint64_t a2)
{
  v2 = sub_1CA5921B0(sub_1CA5921AC, 0, a1, a2);
  v6 = sub_1CA5921E4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1CA5921E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1CA94D0E8();
    if (!v9 || (v10 = v9, v11 = sub_1CA26B874(v9, 0), v12 = sub_1CA592344(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1CA94C218(), , v12 == v10))
    {
      v13 = sub_1CA94C448();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CA94C448();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1CA94D4B8();
LABEL_4:

  return sub_1CA94C448();
}

unint64_t sub_1CA592344(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1CA592554(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CA94C508();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CA94D4B8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1CA592554(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1CA94C4D8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1CA592554(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CA94C518();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCAA1340](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1CA5925D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1CA435C28();
  sub_1CA94C218();
  result = sub_1CA94C578();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1CA592144(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CA94D4B8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1CA592B64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1CA94D4B8();
  }

  result = sub_1CA592C40(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1CA592C40(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1CA592554(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1CA94C4F8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1CA592554(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1CA592554(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1CA94C4F8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

id sub_1CA5930B0()
{
  v317 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9CFC20;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("health|workout|sport|fitness|activity", 37);
  v6 = v5;
  v7 = sub_1CA94C438("health|workout|sport|fitness|activity", 37);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v336 = v11;
  v333 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v306 - v333;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v337 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v335 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v334 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v306 - v334;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v332 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v330 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Adds a workout into the Health app. You can log all kinds of activities, from running and cycling to playing a sport.", 117);
  v28 = v27;
  v29 = sub_1CA94C438("Adds a workout into the Health app. You can log all kinds of activities, from running and cycling to playing a sport.", 117);
  v31 = v30;
  v329 = &v306;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v306 - v333;
  sub_1CA948D98();
  v33 = [v337 bundleURL];
  v331 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v306 - v334;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v332;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v330;
  v40 = sub_1CA6B3784(v38);
  v41 = v331;
  v331[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconName";
  v41[25] = 0x68746C616548;
  v41[26] = 0xE600000000000000;
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"Name";
  v42 = @"IconName";
  v43 = @"Name";
  v44 = sub_1CA94C438("Log Workout (Action Name)", 25);
  v46 = v45;
  v47 = sub_1CA94C438("Log Workout", 11);
  v49 = v48;
  v330 = &v306;
  MEMORY[0x1EEE9AC00](v47);
  v50 = v333;
  sub_1CA948D98();
  v51 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v306 - v334;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, &v306 - v50, v52);
  v55 = v331;
  v331[30] = v54;
  v56 = v332;
  v55[33] = v332;
  v55[34] = @"Output";
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v57 = swift_initStackObject();
  v325 = xmmword_1CA9813C0;
  *(v57 + 16) = xmmword_1CA9813C0;
  *(v57 + 32) = 0x656C7069746C754DLL;
  *(v57 + 40) = 0xE800000000000000;
  v58 = MEMORY[0x1E69E6370];
  *(v57 + 48) = 0;
  *(v57 + 72) = v58;
  *(v57 + 80) = 0x614E74757074754FLL;
  *(v57 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438("Workout (Default Output Name)", 29);
  v329 = v61;
  v62 = sub_1CA94C438("Workout", 7);
  v64 = v63;
  v330 = &v306;
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v306 - v50;
  sub_1CA948D98();
  v66 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v306 - v334;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 96) = sub_1CA2F9F14(v60, v329, v62, v64, 0, 0, v65, v67);
  *(v57 + 120) = v56;
  *(v57 + 128) = 0x7365707954;
  *(v57 + 136) = 0xE500000000000000;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v57 + 168) = v319;
  *(v57 + 144) = &unk_1F4A07608;
  v69 = MEMORY[0x1E69E6158];
  v70 = sub_1CA94C1E8();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v315 = v71;
  v72 = v331;
  v331[35] = v70;
  v72[38] = v71;
  v72[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v330 = swift_allocObject();
  *(v330 + 1) = xmmword_1CA981560;
  v329 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_initStackObject();
  *(v73 + 16) = xmmword_1CA981350;
  *(v73 + 32) = @"Class";
  *(v73 + 40) = 0xD00000000000001CLL;
  *(v73 + 48) = 0x80000001CA9CFD50;
  *(v73 + 64) = v69;
  *(v73 + 72) = @"Key";
  *(v73 + 80) = 0xD00000000000001DLL;
  *(v73 + 88) = 0x80000001CA9CFD70;
  *(v73 + 104) = v69;
  *(v73 + 112) = @"Label";
  v74 = @"Class";
  v75 = @"Key";
  v76 = @"Label";
  v77 = v74;
  v78 = v75;
  v79 = v76;
  v323 = v77;
  v322 = v78;
  v324 = v79;
  v80 = @"Parameters";
  v327 = sub_1CA94C438("Type (WFWorkoutReadableActivityType)", 36);
  v321 = v81;
  v82 = sub_1CA94C438("Type", 4);
  v84 = v83;
  v328 = &v306;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v306 - v333;
  sub_1CA948D98();
  v86 = v337;
  v87 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v334;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 120) = sub_1CA2F9F14(v327, v321, v82, v84, 0, 0, v85, &v306 - v88);
  v90 = v332;
  *(v73 + 144) = v332;
  *(v73 + 152) = @"Prompt";
  v318 = @"Prompt";
  v327 = sub_1CA94C438("What type of workout was it? (WFWorkoutReadableActivityType)", 60);
  v321 = v91;
  v92 = sub_1CA94C438("What type of workout was it?", 28);
  v320 = v93;
  v328 = &v306;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v306 - v333;
  sub_1CA948D98();
  v95 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v327, v321, v92, v320, 0, 0, v94, &v306 - v88);
  *(v73 + 184) = v90;
  *(v73 + 160) = v97;
  _s3__C3KeyVMa_0(0);
  v328 = v98;
  v327 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v99 = sub_1CA94C1E8();
  v100 = sub_1CA2F864C(v99);
  v330[4] = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1CA981400;
  v102 = v323;
  *(v101 + 32) = v323;
  *(v101 + 40) = 0xD000000000000014;
  *(v101 + 48) = 0x80000001CA9AB710;
  *(v101 + 64) = MEMORY[0x1E69E6158];
  *(v101 + 72) = @"Description";
  v103 = @"Description";
  v320 = v102;
  v323 = v103;
  v104 = sub_1CA94C438("The date and time of the start of the workout (WFWorkoutDate)", 61);
  v313 = v105;
  *&v314 = v104;
  v106 = sub_1CA94C438("The date and time of the start of the workout", 45);
  v312 = v107;
  v321 = &v306;
  MEMORY[0x1EEE9AC00](v106);
  v108 = v333;
  sub_1CA948D98();
  v109 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v306 - v334;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v314, v313, v106, v312, 0, 0, &v306 - v108, v110);
  v113 = v322;
  *(v101 + 80) = v112;
  *(v101 + 104) = v332;
  *(v101 + 112) = v113;
  strcpy((v101 + 120), "WFWorkoutDate");
  *(v101 + 134) = -4864;
  v114 = v324;
  *(v101 + 144) = MEMORY[0x1E69E6158];
  *(v101 + 152) = v114;
  v321 = v113;
  v322 = v114;
  v115 = sub_1CA94C438("Date (WFWorkoutDate)", 20);
  v313 = v116;
  *&v314 = v115;
  v117 = sub_1CA94C438("Date", 4);
  v312 = v118;
  v324 = &v306;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v306 - v108;
  sub_1CA948D98();
  v120 = v337;
  v121 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v334;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 160) = sub_1CA2F9F14(v314, v313, v117, v312, 0, 0, v119, &v306 - v122);
  v124 = v332;
  *(v101 + 184) = v332;
  *(v101 + 192) = @"Placeholder";
  v312 = @"Placeholder";
  v125 = sub_1CA94C438("optional (WFWorkoutDate)", 24);
  v313 = v126;
  *&v314 = v125;
  v127 = sub_1CA94C438("optional", 8);
  v129 = v128;
  v324 = &v306;
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v306 - v333;
  sub_1CA948D98();
  v131 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v101 + 200) = sub_1CA2F9F14(v314, v313, v127, v129, 0, 0, v130, &v306 - v122);
  *(v101 + 224) = v124;
  *(v101 + 232) = @"ResultType";
  *(v101 + 240) = 0x676E69727453;
  *(v101 + 248) = 0xE600000000000000;
  v133 = MEMORY[0x1E69E6158];
  *(v101 + 264) = MEMORY[0x1E69E6158];
  *(v101 + 272) = @"TextAlignment";
  *(v101 + 304) = v133;
  v134 = v133;
  *(v101 + 280) = 0x7468676952;
  *(v101 + 288) = 0xE500000000000000;
  v313 = @"TextAlignment";
  v135 = @"ResultType";
  v136 = sub_1CA94C1E8();
  v137 = sub_1CA2F864C(v136);
  v330[5] = v137;
  v138 = swift_allocObject();
  v314 = xmmword_1CA9813E0;
  *(v138 + 16) = xmmword_1CA9813E0;
  *(v138 + 32) = @"AllowsDecimalNumbers";
  *(v138 + 40) = 0;
  v139 = v320;
  *(v138 + 64) = MEMORY[0x1E69E6370];
  *(v138 + 72) = v139;
  *(v138 + 80) = 0xD000000000000020;
  *(v138 + 88) = 0x80000001CA9A44A0;
  *(v138 + 104) = v134;
  v140 = v323;
  *(v138 + 112) = v323;
  v324 = v139;
  v323 = v140;
  v141 = @"AllowsDecimalNumbers";
  v311 = sub_1CA94C438("The duration of the workout (optional) (WFWorkoutDuration)", 58);
  v143 = v142;
  v144 = sub_1CA94C438("The duration of the workout (optional)", 38);
  v146 = v145;
  v320 = &v306;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v333;
  sub_1CA948D98();
  v148 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v306 - v334;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v311, v143, v144, v146, 0, 0, &v306 - v147, v149);
  v152 = v321;
  *(v138 + 120) = v151;
  *(v138 + 144) = v332;
  *(v138 + 152) = v152;
  *(v138 + 160) = 0xD000000000000011;
  *(v138 + 168) = 0x80000001CA9CFF40;
  v153 = v322;
  *(v138 + 184) = MEMORY[0x1E69E6158];
  *(v138 + 192) = v153;
  v321 = v152;
  v322 = v153;
  v154 = sub_1CA94C438("Duration (WFWorkoutDuration)", 28);
  v310 = v155;
  v311 = v154;
  v156 = sub_1CA94C438("Duration", 8);
  v309 = v157;
  v320 = &v306;
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v306 - v147;
  sub_1CA948D98();
  v159 = v337;
  v160 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v160);
  v161 = &v306 - v334;
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v138 + 200) = sub_1CA2F9F14(v311, v310, v156, v309, 0, 0, v158, v161);
  v163 = v332;
  v164 = v312;
  *(v138 + 224) = v332;
  *(v138 + 232) = v164;
  v320 = v164;
  v165 = sub_1CA94C438("30 (WFWorkoutDuration)", 22);
  v310 = v166;
  v311 = v165;
  v167 = sub_1CA94C438("30", 2);
  v309 = v168;
  v312 = &v306;
  MEMORY[0x1EEE9AC00](v167);
  v169 = &v306 - v333;
  sub_1CA948D98();
  v170 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v334;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v138 + 240) = sub_1CA2F9F14(v311, v310, v167, v309, 0, 0, v169, &v306 - v171);
  *(v138 + 264) = v163;
  *(v138 + 272) = @"PossibleUnits";
  *(v138 + 280) = &unk_1F4A07638;
  v173 = v318;
  *(v138 + 304) = v319;
  *(v138 + 312) = v173;
  v318 = v173;
  v174 = @"PossibleUnits";
  v312 = sub_1CA94C438("How long was the workout? (WFWorkoutDuration)", 45);
  v176 = v175;
  v177 = sub_1CA94C438("How long was the workout?", 25);
  v179 = v178;
  v319 = &v306;
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v306 - v333;
  sub_1CA948D98();
  v181 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v138 + 320) = sub_1CA2F9F14(v312, v176, v177, v179, 0, 0, v180, &v306 - v171);
  v183 = v313;
  *(v138 + 344) = v332;
  *(v138 + 352) = v183;
  v184 = MEMORY[0x1E69E6158];
  *(v138 + 384) = MEMORY[0x1E69E6158];
  *(v138 + 360) = 0x7468676952;
  *(v138 + 368) = 0xE500000000000000;
  v319 = v183;
  v185 = sub_1CA94C1E8();
  v186 = sub_1CA2F864C(v185);
  v330[6] = v186;
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_1CA981300;
  v312 = 0xD00000000000001ELL;
  v313 = 0x80000001CA9AAD70;
  v188 = v323;
  *(v187 + 32) = v324;
  *(v187 + 40) = 0xD00000000000001ELL;
  *(v187 + 48) = 0x80000001CA9AAD70;
  *(v187 + 64) = v184;
  *(v187 + 72) = v188;
  v189 = sub_1CA94C438("The calories burned during the activity (optional) (WFWorkoutCaloriesQuantity)", 78);
  v309 = v190;
  v310 = v189;
  v308 = sub_1CA94C438("The calories burned during the activity (optional)", 50);
  v192 = v191;
  v311 = &v306;
  MEMORY[0x1EEE9AC00](v308);
  v193 = v333;
  sub_1CA948D98();
  v194 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = v334;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 80) = sub_1CA2F9F14(v310, v309, v308, v192, 0, 0, &v306 - v193, &v306 - v195);
  v197 = v332;
  v198 = v321;
  *(v187 + 104) = v332;
  *(v187 + 112) = v198;
  *(v187 + 120) = 0xD000000000000019;
  *(v187 + 128) = 0x80000001CA9D0080;
  v199 = v322;
  *(v187 + 144) = MEMORY[0x1E69E6158];
  *(v187 + 152) = v199;
  v200 = sub_1CA94C438("Calories (WFWorkoutCaloriesQuantity)", 36);
  v309 = v201;
  v310 = v200;
  v202 = sub_1CA94C438("Calories", 8);
  v308 = v203;
  v311 = &v306;
  MEMORY[0x1EEE9AC00](v202);
  sub_1CA948D98();
  v204 = v337;
  v205 = [v337 bundleURL];
  v307 = &v306;
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 160) = sub_1CA2F9F14(v310, v309, v202, v308, 0, 0, &v306 - v193, &v306 - v195);
  v207 = v320;
  *(v187 + 184) = v197;
  *(v187 + 192) = v207;
  v208 = sub_1CA94C438("400 (WFWorkoutCaloriesQuantity)", 31);
  v309 = v209;
  v310 = v208;
  v308 = sub_1CA94C438("400", 3);
  v211 = v210;
  v311 = &v306;
  MEMORY[0x1EEE9AC00](v308);
  v212 = v333;
  sub_1CA948D98();
  v213 = [v204 bundleURL];
  v307 = &v306;
  MEMORY[0x1EEE9AC00](v213);
  v214 = v334;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v187 + 200) = sub_1CA2F9F14(v310, v309, v308, v211, 0, 0, &v306 - v212, &v306 - v214);
  v216 = v332;
  v217 = v318;
  *(v187 + 224) = v332;
  *(v187 + 232) = v217;
  v218 = sub_1CA94C438("How many calories did you burn? (WFWorkoutCaloriesQuantity)", 59);
  v309 = v219;
  v310 = v218;
  v220 = sub_1CA94C438("How many calories did you burn?", 31);
  v308 = v221;
  v311 = &v306;
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948D98();
  v222 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948B68();

  v223 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v224 = sub_1CA2F9F14(v310, v309, v220, v308, 0, 0, &v306 - v212, &v306 - v214);
  *(v187 + 264) = v216;
  *(v187 + 240) = v224;
  *(v187 + 272) = sub_1CA94C368();
  *(v187 + 280) = 0x4320657669746341;
  *(v187 + 288) = 0xEF736569726F6C61;
  v225 = MEMORY[0x1E69E6158];
  v226 = v319;
  *(v187 + 304) = MEMORY[0x1E69E6158];
  *(v187 + 312) = v226;
  *(v187 + 344) = v225;
  v227 = v225;
  *(v187 + 320) = 0x7468676952;
  *(v187 + 328) = 0xE500000000000000;
  v228 = sub_1CA94C1E8();
  v229 = sub_1CA2F864C(v228);
  v330[7] = v229;
  v230 = swift_allocObject();
  *(v230 + 16) = v314;
  *(v230 + 32) = @"AutocapitalizationType";
  *(v230 + 40) = 1701736270;
  *(v230 + 48) = 0xE400000000000000;
  v231 = v324;
  *(v230 + 64) = v227;
  *(v230 + 72) = v231;
  v232 = v313;
  *(v230 + 80) = v312;
  *(v230 + 88) = v232;
  v233 = v323;
  *(v230 + 104) = v227;
  *(v230 + 112) = v233;
  v234 = @"AutocapitalizationType";
  v235 = sub_1CA94C438("The distance covered during the activity. Only provide this if it makes sense for the activity. (optional) (WFWorkoutDistanceQuantity)", 134);
  v323 = v236;
  v324 = v235;
  v237 = sub_1CA94C438("The distance covered during the activity. Only provide this if it makes sense for the activity. (optional)", 106);
  *&v314 = v238;
  v326 = &v306;
  MEMORY[0x1EEE9AC00](v237);
  v239 = &v306 - v212;
  sub_1CA948D98();
  v240 = v337;
  v241 = [v337 bundleURL];
  v313 = &v306;
  MEMORY[0x1EEE9AC00](v241);
  v242 = v334;
  sub_1CA948B68();

  v243 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v230 + 120) = sub_1CA2F9F14(v324, v323, v237, v314, 0, 0, v239, &v306 - v242);
  v244 = v321;
  *(v230 + 144) = v332;
  *(v230 + 152) = v244;
  *(v230 + 160) = 0xD000000000000019;
  *(v230 + 168) = 0x80000001CA9D0260;
  v245 = v322;
  *(v230 + 184) = MEMORY[0x1E69E6158];
  *(v230 + 192) = v245;
  v246 = sub_1CA94C438("Distance (WFWorkoutDistanceQuantity)", 36);
  v323 = v247;
  v324 = v246;
  v248 = sub_1CA94C438("Distance", 8);
  v322 = v249;
  v326 = &v306;
  MEMORY[0x1EEE9AC00](v248);
  v250 = &v306 - v333;
  sub_1CA948D98();
  v251 = [v240 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v230 + 200) = sub_1CA2F9F14(v324, v323, v248, v322, 0, 0, v250, &v306 - v242);
  v253 = v332;
  v254 = v320;
  *(v230 + 224) = v332;
  *(v230 + 232) = v254;
  v255 = sub_1CA94C438("10 (WFWorkoutDistanceQuantity)", 30);
  v323 = v256;
  v324 = v255;
  v257 = sub_1CA94C438("10", 2);
  v322 = v258;
  v326 = &v306;
  MEMORY[0x1EEE9AC00](v257);
  v259 = v333;
  sub_1CA948D98();
  v260 = [v337 bundleURL];
  v321 = &v306;
  MEMORY[0x1EEE9AC00](v260);
  v261 = &v306 - v334;
  sub_1CA948B68();

  v262 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v230 + 240) = sub_1CA2F9F14(v324, v323, v257, v322, 0, 0, &v306 - v259, v261);
  v263 = v318;
  *(v230 + 264) = v253;
  *(v230 + 272) = v263;
  v264 = sub_1CA94C438("How far was the workout? (WFWorkoutDistanceQuantity)", 52);
  v323 = v265;
  v324 = v264;
  v266 = sub_1CA94C438("How far was the workout?", 24);
  v268 = v267;
  v326 = &v306;
  MEMORY[0x1EEE9AC00](v266);
  sub_1CA948D98();
  v269 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v269);
  v270 = &v306 - v334;
  sub_1CA948B68();

  v271 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v272 = sub_1CA2F9F14(v324, v323, v266, v268, 0, 0, &v306 - v259, v270);
  *(v230 + 304) = v332;
  *(v230 + 280) = v272;
  *(v230 + 312) = sub_1CA94C368();
  *(v230 + 320) = 0xD00000000000001ALL;
  *(v230 + 328) = 0x80000001CA9981B0;
  v273 = MEMORY[0x1E69E6158];
  v274 = v319;
  *(v230 + 344) = MEMORY[0x1E69E6158];
  *(v230 + 352) = v274;
  *(v230 + 384) = v273;
  *(v230 + 360) = 0x7468676952;
  *(v230 + 368) = 0xE500000000000000;
  v275 = sub_1CA94C1E8();
  v276 = sub_1CA2F864C(v275);
  v277 = v330;
  v330[8] = v276;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v279 = v331;
  v331[40] = v277;
  v279[43] = v278;
  v279[44] = @"ParameterSummary";
  v280 = @"ParameterSummary";
  v281 = sub_1CA94C438("Log ${WFWorkoutReadableActivityType} workout (Parameter Summary)", 64);
  v283 = v282;
  v284 = sub_1CA94C438("Log ${WFWorkoutReadableActivityType} workout", 44);
  v286 = v285;
  MEMORY[0x1EEE9AC00](v284);
  v287 = &v306 - v333;
  sub_1CA948D98();
  v288 = [v337 bundleURL];
  MEMORY[0x1EEE9AC00](v288);
  v289 = &v306 - v334;
  sub_1CA948B68();

  v290 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v291 = sub_1CA2F9F14(v281, v283, v284, v286, 0, 0, v287, v289);
  v292 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v293 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v294 = v331;
  v331[45] = v292;
  v294[48] = v293;
  v294[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v295 = swift_allocObject();
  *(v295 + 16) = v325;
  v296 = MEMORY[0x1E69E6158];
  *(v295 + 56) = MEMORY[0x1E69E6158];
  *(v295 + 32) = 0xD000000000000013;
  *(v295 + 40) = 0x80000001CA99A9A0;
  v297 = swift_initStackObject();
  *(v297 + 16) = xmmword_1CA97EDF0;
  *(v297 + 32) = 0x656372756F736552;
  *(v297 + 40) = 0xE900000000000073;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v298 = swift_allocObject();
  *(v298 + 16) = v325;
  v299 = @"RequiredResources";
  *(v298 + 32) = sub_1CA94C1E8();
  *(v298 + 40) = sub_1CA94C1E8();
  *(v298 + 48) = sub_1CA94C1E8();
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v297 + 48) = v298;
  *(v297 + 72) = v300;
  *(v297 + 80) = 0x72756F7365524657;
  *(v297 + 120) = v296;
  *(v297 + 88) = 0xEF7373616C436563;
  *(v297 + 96) = 0xD000000000000019;
  *(v297 + 104) = 0x80000001CA9CC580;
  v301 = sub_1CA94C1E8();
  *(v295 + 88) = v315;
  *(v295 + 64) = v301;
  v338 = 2;
  v339 = 1;
  v302 = type metadata accessor for WFDeviceIdiomResource();
  v303 = objc_allocWithZone(v302);
  WFDeviceIdiomResource.init(requirement:)(&v338);
  *(v295 + 120) = v302;
  *(v295 + 96) = v304;
  v294[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v294[50] = v295;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA595508()
{
  v238 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9D03C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("audio|import|music|itunes|sound|save|rip", 40);
  v6 = v5;
  v7 = sub_1CA94C438("audio|import|music|itunes|sound|save|rip", 40);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v255 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v256 = v11;
  v12 = &v230 - v255;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v252 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v253 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v254 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v230 - v254;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v250 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v249 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v237 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Imports audio files into Music and compresses them with the chosen encoder.", 75);
  v28 = v27;
  v29 = sub_1CA94C438("Imports audio files into Music and compresses them with the chosen encoder.", 75);
  v31 = v30;
  v248 = &v230;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v230 - v255;
  sub_1CA948D98();
  v33 = [v252 bundleURL];
  v251 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v230 - v254;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v250;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v249;
  v40 = sub_1CA6B3784(v38);
  v41 = v251;
  v251[20] = v40;
  v41[23] = v39;
  v41[24] = @"DisabledOnPlatforms";
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v41[25] = &unk_1F4A07828;
  v41[28] = v42;
  v41[29] = @"Input";
  v43 = v42;
  v248 = v42;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v249 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = MEMORY[0x1E69E6158];
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 216) = v43;
  *(v44 + 184) = 0xE500000000000000;
  *(v44 + 192) = &unk_1F4A07878;
  v46 = @"DisabledOnPlatforms";
  v47 = @"Input";
  v48 = sub_1CA94C1E8();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v247 = v49;
  v41[30] = v48;
  v41[33] = v49;
  v41[34] = @"Name";
  v50 = @"Name";
  v51 = sub_1CA94C438("Import Audio Files into Music (Action Name)", 43);
  v243 = v52;
  v244 = v51;
  v53 = sub_1CA94C438("Import Audio Files into Music", 29);
  v55 = v54;
  v246 = &v230;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v230 - v255;
  sub_1CA948D98();
  v57 = v252;
  v58 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v254;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v244, v243, v53, v55, 0, 0, v56, &v230 - v59);
  v63 = v250;
  v62 = v251;
  v251[35] = v61;
  v62[38] = v63;
  v62[39] = @"Output";
  v64 = swift_initStackObject();
  v236 = xmmword_1CA9813C0;
  *(v64 + 16) = xmmword_1CA9813C0;
  *(v64 + 32) = 0x656C7069746C754DLL;
  *(v64 + 40) = 0xE800000000000000;
  *(v64 + 48) = 1;
  *(v64 + 72) = MEMORY[0x1E69E6370];
  *(v64 + 80) = 0x614E74757074754FLL;
  *(v64 + 88) = 0xEA0000000000656DLL;
  v65 = @"Output";
  v66 = sub_1CA94C438("Imported Items (Default Output Name)", 36);
  v243 = v67;
  v244 = v66;
  v68 = sub_1CA94C438("Imported Items", 14);
  v242 = v69;
  v246 = &v230;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v230 - v255;
  sub_1CA948D98();
  v71 = [v57 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 96) = sub_1CA2F9F14(v244, v243, v68, v242, 0, 0, v70, &v230 - v59);
  *(v64 + 120) = v63;
  *(v64 + 128) = 0x7365707954;
  *(v64 + 168) = v248;
  *(v64 + 136) = 0xE500000000000000;
  *(v64 + 144) = &unk_1F4A078A8;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v251;
  v251[40] = v74;
  v75[43] = v247;
  v75[44] = @"Parameters";
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v248 = swift_allocObject();
  *(v248 + 1) = xmmword_1CA981470;
  v247 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  *(v76 + 16) = v249;
  *(v76 + 32) = @"Class";
  *(v76 + 40) = 0xD000000000000015;
  *(v76 + 48) = 0x80000001CA99B1E0;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Key";
  *(v76 + 80) = 0x7475706E494657;
  *(v76 + 88) = 0xE700000000000000;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v239 = v80;
  v240 = v81;
  v241 = v82;
  v83 = @"Parameters";
  v242 = sub_1CA94C438("Audio Files (WFInput)", 21);
  v235 = v84;
  v85 = sub_1CA94C438("Audio Files", 11);
  v234 = v86;
  v243 = &v230;
  MEMORY[0x1EEE9AC00](v85);
  v87 = v255;
  sub_1CA948D98();
  v88 = v252;
  v89 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v230 - v254;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 120) = sub_1CA2F9F14(v242, v235, v85, v234, 0, 0, &v230 - v87, v90);
  v92 = v250;
  *(v76 + 144) = v250;
  *(v76 + 152) = @"Placeholder";
  v235 = @"Placeholder";
  v242 = sub_1CA94C438("Audio Files (WFInput)", 21);
  v234 = v93;
  v94 = sub_1CA94C438("Audio Files", 11);
  v233 = v95;
  v243 = &v230;
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948D98();
  v96 = [v88 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v230 - v254;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99 = sub_1CA2F9F14(v242, v234, v94, v233, 0, 0, &v230 - v87, v97);
  *(v76 + 184) = v92;
  *(v76 + 160) = v99;
  _s3__C3KeyVMa_0(0);
  v243 = v100;
  v242 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v101 = sub_1CA94C1E8();
  v102 = sub_1CA2F864C(v101);
  v248[4] = v102;
  v103 = swift_allocObject();
  *(v103 + 16) = v249;
  *(v103 + 32) = v239;
  *(v103 + 40) = 0xD000000000000011;
  *(v103 + 48) = 0x80000001CA99E620;
  v104 = MEMORY[0x1E69E6158];
  *(v103 + 64) = MEMORY[0x1E69E6158];
  *(v103 + 72) = @"DefaultValue";
  *(v103 + 80) = 0;
  *(v103 + 104) = MEMORY[0x1E69E6370];
  *(v103 + 112) = v240;
  *(v103 + 120) = 0xD00000000000001ALL;
  v234 = 0x80000001CA9D0520;
  *(v103 + 128) = 0x80000001CA9D0520;
  v105 = v241;
  *(v103 + 144) = v104;
  *(v103 + 152) = v105;
  *&v249 = @"DefaultValue";
  v106 = sub_1CA94C438("Re-encode (WFImportAudioFilesReencode)", 38);
  v108 = v107;
  v109 = sub_1CA94C438("Re-encode", 9);
  v111 = v110;
  v233 = &v230;
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v230 - v255;
  sub_1CA948D98();
  v113 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v230 - v254;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v106, v108, v109, v111, 0, 0, v112, v114);
  *(v103 + 184) = v250;
  *(v103 + 160) = v116;
  v117 = sub_1CA94C1E8();
  v118 = sub_1CA2F864C(v117);
  v248[5] = v118;
  v119 = swift_allocObject();
  v246 = v119;
  *(v119 + 16) = xmmword_1CA981400;
  *(v119 + 32) = v239;
  *(v119 + 40) = 0xD000000000000016;
  *(v119 + 48) = 0x80000001CA99C4A0;
  v120 = MEMORY[0x1E69E6158];
  v121 = v249;
  *(v119 + 64) = MEMORY[0x1E69E6158];
  *(v119 + 72) = v121;
  *(v119 + 80) = 0x746C7561666544;
  *(v119 + 88) = 0xE700000000000000;
  *(v119 + 104) = v120;
  *(v119 + 112) = @"Items";
  *&v249 = swift_allocObject();
  *(v249 + 16) = xmmword_1CA981410;
  v122 = @"Items";
  v123 = sub_1CA94C438("Default (WFImportAudioFilesEncoder)", 35);
  v232 = v124;
  v233 = v123;
  v125 = sub_1CA94C438("Default", 7);
  v231 = v126;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v255;
  sub_1CA948D98();
  v128 = v252;
  v129 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v254;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v233, v232, v125, v231, 0, 0, &v230 - v127, &v230 - v130);
  *(v249 + 32) = v132;
  v133 = sub_1CA94C438("AAC (WFImportAudioFilesEncoder)", 31);
  v232 = v134;
  v233 = v133;
  v135 = sub_1CA94C438("AAC", 3);
  v231 = v136;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948D98();
  v137 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v233, v232, v135, v231, 0, 0, &v230 - v127, &v230 - v130);
  v140 = v249;
  *(v249 + 40) = v139;
  v141 = sub_1CA94C438("AIFF (WFImportAudioFilesEncoder)", 32);
  v232 = v142;
  v233 = v141;
  v143 = sub_1CA94C438("AIFF", 4);
  v231 = v144;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v255;
  sub_1CA948D98();
  v146 = v252;
  v147 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v230 - v254;
  sub_1CA948B68();

  v149 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v140 + 48) = sub_1CA2F9F14(v233, v232, v143, v231, 0, 0, &v230 - v145, v148);
  v150 = sub_1CA94C438("Lossless (WFImportAudioFilesEncoder)", 36);
  v232 = v151;
  v233 = v150;
  v152 = sub_1CA94C438("Lossless", 8);
  v231 = v153;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v154 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = v254;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v233, v232, v152, v231, 0, 0, &v230 - v145, &v230 - v155);
  v158 = v249;
  *(v249 + 56) = v157;
  v159 = sub_1CA94C438("MP3 (WFImportAudioFilesEncoder)", 31);
  v232 = v160;
  v233 = v159;
  v161 = sub_1CA94C438("MP3", 3);
  v231 = v162;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v163 = v252;
  v164 = [v252 bundleURL];
  v230 = &v230;
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v158 + 64) = sub_1CA2F9F14(v233, v232, v161, v231, 0, 0, &v230 - v145, &v230 - v155);
  v166 = sub_1CA94C438("WAV (WFImportAudioFilesEncoder)", 31);
  v232 = v167;
  v233 = v166;
  v231 = sub_1CA94C438("WAV", 3);
  v169 = v168;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v231);
  v170 = v255;
  sub_1CA948D98();
  v171 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v233, v232, v231, v169, 0, 0, &v230 - v170, &v230 - v155);
  v174 = v249;
  *(v249 + 72) = v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v176 = v246;
  v246[15] = v174;
  v177 = v240;
  v176[18] = v175;
  v176[19] = v177;
  v176[20] = 0xD000000000000019;
  v176[21] = 0x80000001CA9D06A0;
  v178 = v241;
  v176[23] = MEMORY[0x1E69E6158];
  v176[24] = v178;
  v179 = sub_1CA94C438("Encoder (WFImportAudioFilesEncoder)", 35);
  v240 = v180;
  v241 = v179;
  v181 = sub_1CA94C438("Encoder", 7);
  v239 = v182;
  *&v249 = &v230;
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948D98();
  v183 = v252;
  v184 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = v254;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v241, v240, v181, v239, 0, 0, &v230 - v170, &v230 - v185);
  v188 = v246;
  v246[25] = v187;
  v189 = v250;
  v190 = v235;
  v188[28] = v250;
  v188[29] = v190;
  v191 = sub_1CA94C438("Encoder (WFImportAudioFilesEncoder)", 35);
  v240 = v192;
  v241 = v191;
  v193 = sub_1CA94C438("Encoder", 7);
  v239 = v194;
  *&v249 = &v230;
  MEMORY[0x1EEE9AC00](v193);
  v195 = &v230 - v255;
  sub_1CA948D98();
  v196 = [v183 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v198 = sub_1CA2F9F14(v241, v240, v193, v239, 0, 0, v195, &v230 - v185);
  v199 = v246;
  v246[30] = v198;
  v199[33] = v189;
  v199[34] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v200 = swift_allocObject();
  *(v200 + 16) = v237;
  v201 = swift_allocObject();
  *(v201 + 16) = v236;
  strcpy((v201 + 32), "WFParameterKey");
  *(v201 + 47) = -18;
  v202 = v234;
  *(v201 + 48) = 0xD00000000000001ALL;
  *(v201 + 56) = v202;
  v203 = MEMORY[0x1E69E6158];
  *(v201 + 72) = MEMORY[0x1E69E6158];
  *(v201 + 80) = 0xD000000000000010;
  *(v201 + 88) = 0x80000001CA993570;
  *(v201 + 96) = 1;
  *(v201 + 120) = MEMORY[0x1E69E6370];
  *(v201 + 128) = 0x72756F7365524657;
  *(v201 + 168) = v203;
  *(v201 + 136) = 0xEF7373616C436563;
  *(v201 + 144) = 0xD00000000000001BLL;
  *(v201 + 152) = 0x80000001CA993590;
  v204 = @"RequiredResources";
  *(v200 + 32) = sub_1CA94C1E8();
  v199[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v199[35] = v200;
  v205 = sub_1CA94C1E8();
  v206 = sub_1CA2F864C(v205);
  v207 = v248;
  v248[6] = v206;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v209 = v251;
  v251[45] = v207;
  v209[48] = v208;
  v209[49] = @"ParameterSummary";
  v210 = @"ParameterSummary";
  v211 = sub_1CA94C438("Import ${WFInput} into Music (Parameter Summary)", 48);
  v213 = v212;
  v214 = sub_1CA94C438("Import ${WFInput} into Music", 28);
  v216 = v215;
  MEMORY[0x1EEE9AC00](v214);
  v217 = &v230 - v255;
  sub_1CA948D98();
  v218 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v230 - v254;
  sub_1CA948B68();

  v220 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v221 = sub_1CA2F9F14(v211, v213, v214, v216, 0, 0, v217, v219);
  v222 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v223 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v224 = v251;
  v251[50] = v222;
  v224[53] = v223;
  v224[54] = @"RequiredResources";
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_1CA9813B0;
  v257 = 2;
  v258 = 0;
  v226 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v227 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v257);
  *(v225 + 32) = v228;
  v224[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v224[55] = v225;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}