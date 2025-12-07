uint64_t sub_26B949880()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 92);
  [v1 setScaleFactor_];
  [v1 setDeviceAuthenticationState_];
  [v1 setQueryIdent_];
  [v1 setRetainBackendData_];

  return MEMORY[0x2822009F8](sub_26B949950, v2, 0);
}

uint64_t sub_26B949950()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 352)) + 0xF8))(*(v0 + 440));
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 440);
    v4 = *(v0 + 408);
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    v10 = *(v0 + 328);

    v11 = sub_26B9A7568();
    (*(v8 + 16))(v6, v11, v7);
    v12 = sub_26B948BC8();
    SignpostIntervals.init(with:log:)(v4, v6, &type metadata for SpotlightSignpostInterval, v12, v5);
    v13 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_signpostState;
    swift_beginAccess();
    sub_26B949F7C(v5, v9 + v13, &qword_280426768, &qword_26B9B2A50);
    swift_endAccess();
    [v2 setDelegate_];
    v14 = *(v9 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask);
    *(v9 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask) = v2;
    v15 = v2;

    sub_26B907F08(v10, v0 + 16);
    v16 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery;
    swift_beginAccess();
    sub_26B949F7C(v0 + 16, v9 + v16, &qword_280426770, qword_26B9B2A58);
    swift_endAccess();
    [v15 start];

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 336);
    static SearchResults.empty(queryID:)(*(v0 + 408), v0 + 136);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    v22 = *(v0 + 153);
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);
    *(v0 + 176) = *(v0 + 136);
    *(v0 + 184) = v20;
    *(v0 + 192) = v21;
    *(v0 + 193) = v22;
    *(v0 + 200) = v23;
    *(v0 + 208) = v24;
    v26 = (v19 + *v19);
    v25 = swift_task_alloc();
    *(v0 + 448) = v25;
    *v25 = v0;
    v25[1] = sub_26B949C64;

    return v26(v0 + 176);
  }
}

uint64_t sub_26B949C64()
{
  v1 = *(*v0 + 424);

  return MEMORY[0x2822009F8](sub_26B949DB4, v1, 0);
}

uint64_t sub_26B949DB4()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B949E2C()
{
  v1 = *(*v0 + 424);

  return MEMORY[0x2822009F8](sub_26B94CF90, v1, 0);
}

uint64_t sub_26B949F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B949FE4()
{
  *(v1 + 104) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;

  return MEMORY[0x2822009F8](sub_26B94A060, v3, 0);
}

uint64_t sub_26B94A060()
{
  v1 = *(v0 + 104);
  v2 = (v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v3 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v4 = *(v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_26B9353FC(v3, v4);
  v5 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask;
  [*(v1 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask) cancel];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426768, &qword_26B9B2A50);
  SignpostIntervals.finishAll()();
  swift_endAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = 0;

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v7 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery;
  swift_beginAccess();
  sub_26B949F7C(v0 + 16, v1 + v7, &qword_280426770, qword_26B9B2A58);
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26B94A2FC()
{
  v1 = (v0 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v2 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  v3 = *(v0 + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler + 8);
  *v1 = 0;
  v1[1] = 0;
  return sub_26B9353FC(v2, v3);
}

uint64_t sub_26B94A314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  v5 = sub_26B92A538();
  swift_beginAccess();
  v6 = *v5;
  v4[8] = v6;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B94A3A8, v6, 0);
}

uint64_t sub_26B94A3A8()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask);
  v0[9] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = v1;
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_26B94A4F8;

    return v7(v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26B94A4F8()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_26B94A608, v1, 0);
}

uint64_t sub_26B94A608()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

id sub_26B94A66C(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_26B9AAE74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  sub_26B9AAE54();
  sub_26B92C070();
  v11 = sub_26B9ACA84();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (!v13)
  {
    v13 = 0xE000000000000000;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_26B9ACBF4();

  v21 = 0xD000000000000023;
  v22 = 0x800000026B9B91C0;
  MEMORY[0x26D686470](v14, v13);

  v15 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
  sub_26B9AB0E4();

  v16 = sub_26B9AB104();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v6, 1, v16) != 1)
  {
    v18 = sub_26B9AB0A4();
    (*(v17 + 8))(v6, v16);
  }

  v19 = [objc_opt_self() punchoutWithURL_];

  [v15 setPunchout_];
  return v15;
}

id sub_26B94A910(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D659F8];
  result = SSAppNameForBundleId();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = objc_opt_self();
  v9 = v5;
  v10 = sub_26B9AC4C4();
  v11 = [v8 buildResultWithAppName:v7 appBundleId:v9 searchString:v10 searchInAppType:0];

  v12 = v11;
  result = [v12 inlineCard];
  if (result)
  {
    v13 = result;
    v14 = [result cardSections];

    if (!v14)
    {
LABEL_12:
      v19 = [objc_allocWithZone(MEMORY[0x277D4C588]) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26B9B1290;
      *(v20 + 32) = v12;
      sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
      v21 = v12;
      v22 = sub_26B9AC6E4();

      [v19 setResults_];

      v23 = [v21 sectionBundleIdentifier];
      [v19 setBundleIdentifier_];

      return v19;
    }

    sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
    v15 = sub_26B9AC6F4();

    if (v15 >> 62)
    {
      result = sub_26B9ACB44();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D686B00](0, v15);
          goto LABEL_9;
        }

        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v15 + 32);
LABEL_9:
          v17 = v16;

          v18 = (*((*MEMORY[0x277D85000] & *v2) + 0x160))(a1, a2);
          [v17 setCommand_];

          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_26B94AC00()
{
  v1 = v0;
  sub_26B9294B8(0, &qword_280426780, 0x277CCA8D8);
  v2 = sub_26B9AC9A4();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v4 = sub_26B9AAF14();
  v6 = v5;

  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x180))(v4, v6);

  return v7;
}

uint64_t sub_26B94AD3C()
{
  v1 = v0;
  sub_26B9294B8(0, &qword_280426780, 0x277CCA8D8);
  v2 = sub_26B9AC9A4();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v4 = sub_26B9AAF14();
  v6 = v5;

  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x180))(v4, v6);

  return v7;
}

id sub_26B94AE74(uint64_t a1, uint64_t a2)
{
  v30 = sub_26B9AAE74();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D4C5A0]) init];
  [v7 setIsCentered_];
  v34 = 10;
  v35 = 0xE100000000000000;
  MEMORY[0x26D686470](a1, a2);
  v8 = sub_26B9AC4C4();
  v31 = [objc_opt_self() textWithString_];

  v9 = sub_26B9AC4C4();

  [v7 setTitle_];

  v10 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v11 = swift_allocObject();
  v29 = xmmword_26B9B1290;
  *(v11 + 16) = xmmword_26B9B1290;
  *(v11 + 32) = v7;
  sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
  v12 = v7;
  v13 = sub_26B9AC6E4();

  [v10 setCardSections_];

  v14 = [objc_allocWithZone(MEMORY[0x277D65850]) init];
  v34 = 0;
  v35 = 0xE000000000000000;
  v15 = v14;
  sub_26B9ACBF4();

  v34 = 0xD000000000000014;
  v35 = 0x800000026B9B9270;
  v32 = a1;
  v33 = a2;
  sub_26B9AAE44();
  sub_26B92C070();
  v16 = sub_26B9ACA54();
  (*(v4 + 8))(v6, v30);
  v32 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426788, &qword_26B9B2A70);
  sub_26B94B300();
  v17 = sub_26B9AC484();
  v19 = v18;

  MEMORY[0x26D686470](v17, v19);

  v20 = sub_26B9AC4C4();

  [v15 setSectionBundleIdentifier_];

  v21 = [v15 sectionBundleIdentifier];
  [v15 setResultBundleId_];

  v22 = v31;
  [v15 setTitle_];
  [v15 setInlineCard_];
  v23 = [objc_allocWithZone(MEMORY[0x277D4C588]) init];
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  *(v24 + 32) = v15;
  sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
  v25 = v15;
  v26 = sub_26B9AC6E4();

  [v23 setResults_];

  v27 = [v25 sectionBundleIdentifier];
  [v23 setBundleIdentifier_];

  return v23;
}

unint64_t sub_26B94B300()
{
  result = qword_280426790;
  if (!qword_280426790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426788, &qword_26B9B2A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426790);
  }

  return result;
}

id sub_26B94B420@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

uint64_t sub_26B94B458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & **v4) + 0x128);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_26B94B5B4()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x130);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

uint64_t sub_26B94B6E0()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x110);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

uint64_t sub_26B94B80C()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

uint64_t sub_26B94B938()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x108);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return v5();
}

uint64_t sub_26B94BA64()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x118);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

id sub_26B94BB90(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) queryTaskWithContext_];

  return v2;
}

uint64_t sub_26B94BBD4()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;

  return MEMORY[0x2822009F8](sub_26B94BC50, v3, 0);
}

uint64_t sub_26B94BC50()
{
  [*(*(v0 + 40) + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) preheat];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B94BCC4()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;

  return MEMORY[0x2822009F8](sub_26B94BD40, v3, 0);
}

uint64_t sub_26B94BD40()
{
  [*(*(v0 + 40) + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) activate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B94BDB4()
{
  *(v1 + 40) = v0;
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  *(v1 + 48) = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B94BE44, v3, 0);
}

uint64_t sub_26B94BE44()
{
  v1 = *(v0 + 40);
  [*(v1 + OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession) deactivate];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_26B94BF98;

  return v5();
}

uint64_t sub_26B94BF98()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_26B94C0A8, v1, 0);
}

uint64_t sub_26B94C0A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B94C108()
{
  v2 = sub_26B92A538();
  swift_beginAccess();
  *(v1 + 40) = *v2;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  sub_26B9AAAE4();
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v1;
  v4[1] = sub_26B94C26C;

  return v6();
}

uint64_t sub_26B94C26C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_26B905DD8, v1, 0);
}

id SpotlightIndexQueryDataSource.init()()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared29SpotlightIndexQueryDataSource_clientSession;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D65728]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpotlightIndexQueryDataSource(0);
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26B94C404(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_26B94C4D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_26B94C528(uint64_t a1)
{
  sub_26B94CE64(319);
  if (v1 <= 0x3F)
  {
    sub_26B94CEC8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SpotlightQueryDataSource.activate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.deactivate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EB6C8;

  return v5();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.preheat()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.reset()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
}

uint64_t dispatch thunk of SpotlightQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x128);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SpotlightQueryDataSource.stop()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x130);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26B8EC52C;

  return v5();
}

void sub_26B94CE64(uint64_t a1)
{
  if (!qword_280426800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280426748, qword_26B9B2A20);
    v1 = sub_26B9ACA34();
    if (!v2)
    {
      atomic_store(v1, &qword_280426800);
    }
  }
}

void sub_26B94CEC8(uint64_t a1)
{
  if (!qword_280426808)
  {
    v2 = sub_26B948BC8();
    v4 = type metadata accessor for SignpostIntervals(a1, &type metadata for SpotlightSignpostInterval, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_280426808);
    }
  }
}

uint64_t SpotlightQuery.request.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

void sub_26B94D008(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    [a2 setShouldAllowMoreResults_];
    v4 = [v3 filterQueries];
    if (!v4)
    {
      sub_26B9AC6F4();
      v4 = sub_26B9AC6E4();
    }

    [a2 setFilterQueries_];

    v5 = [v3 enabledDomains];
    if (!v5)
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      sub_26B9AC6F4();
      v6 = sub_26B9AC6E4();

      v5 = v6;
    }

    v7 = v5;
    [a2 setSearchDomains_];
  }
}

void *sub_26B94D148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 104))(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_26B94D1A4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v4 = *(*v3 + 112);
  v5 = v2;

  return v4(v7);
}

id sub_26B94D260()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v3 = *(*v0 + 104);
  v3(&v18);
  v4 = v19;
  v16 = v18;
  v17 = v19;
  QueryRepresentation.rawQuery.getter();
  v5 = sub_26B9AC4C4();

  [v2 setSearchString_];
  [v2 setQueryKind_];
  if (SPQueryKindIsCommittedSearch(v0[4]))
  {
    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  (v3)(&v18, [v2 setWhyQuery_]);
  v7 = v19;

  if (v7)
  {
    v8 = v7;
    [v2 setShouldAllowMoreResults_];
    v9 = [v8 filterQueries];
    if (!v9)
    {
      sub_26B9AC6F4();
      v9 = sub_26B9AC6E4();
    }

    [v2 setFilterQueries_];

    v10 = [v8 enabledDomains];
    if (!v10)
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      sub_26B9AC6F4();
      v10 = sub_26B9AC6E4();
    }

    [v2 setSearchDomains_];
  }

  if (v1[5])
  {
    v11 = v1[5];
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = [v2 filterQueries];
  v13 = sub_26B9AC6F4();

  v18 = v13;
  sub_26B94F598(v11);
  v14 = sub_26B9AC6E4();

  [v2 setFilterQueries_];

  return v2;
}

void *DefaultSpotlightQuery.__allocating_init(representation:queryKind:queryFilters:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = a1[1];
  result[2] = *a1;
  result[3] = v7;
  result[4] = a2;
  result[5] = a3;
  return result;
}

void *DefaultSpotlightQuery.init(representation:queryKind:queryFilters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v3[2] = *a1;
  v3[3] = v4;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

void sub_26B94D574(__int128 *a1@<X8>)
{
  (*(*v1 + 104))(&v20);
  v3 = *(&v20 + 1);

  v4 = objc_opt_self();
  v5 = [v4 applications];
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
      v7 = v3;
      v8 = sub_26B9AC9C4();

      if (v8)
      {
        goto LABEL_11;
      }
    }

LABEL_7:
    v9 = [v4 files];
    v10 = v9;
    if (v3)
    {
      if (v9)
      {
        sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
        v11 = v3;
        v12 = sub_26B9AC9C4();

        if (v12)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!v9)
      {
LABEL_15:
        type metadata accessor for FilesZKWQuery();
        QueryRepresentation.init(arrayLiteral:)(MEMORY[0x277D84F90], &v20);
        v19 = v20;
        v18 = FilesZKWQuery.__allocating_init(representation:)(&v19);
        (*(*v18 + 240))(v18);
        goto LABEL_16;
      }
    }

    v15 = sub_26B92CB8C();
    v16 = v15[1];
    v20 = *v15;
    v21 = v16;
    v22 = v15[2];

    v17 = v21;
    *a1 = v20;
    a1[1] = v17;
    a1[2] = v22;
    return;
  }

  if (v5)
  {

    goto LABEL_7;
  }

LABEL_11:
  type metadata accessor for AppZKWQuery();
  QueryRepresentation.init(arrayLiteral:)(MEMORY[0x277D84F90], &v20);
  v19 = v20;
  v13 = AppZKWQuery.__allocating_init(representation:)(&v19);
  (*(*v14 + 216))(v14, v13);
LABEL_16:
}

void *DefaultSpotlightQuery.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DefaultSpotlightQuery.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26B94D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 200) + **(**v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EC52C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B94DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B94DB9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B94DC68@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for DefaultSpotlightQuery();
  a1[4] = sub_26B94FB60(&qword_280426810, v4, type metadata accessor for DefaultSpotlightQuery, &protocol conformance descriptor for DefaultSpotlightQuery);
  *a1 = v3;

  return sub_26B9AAAE4();
}

uint64_t sub_26B94DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t EntitySpotlightQuery.commands.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EntitySpotlightQuery.searchString.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t EntitySpotlightQuery.searchString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *EntitySpotlightQuery.browsingFilter.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

__int128 *EntitySpotlightQuery.platterBehavior.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = *v1;
  result = sub_26B94F7E4(&unk_287C5F2B8);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v9 = result;
  v10 = sub_26B9ACB44();
  result = v9;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = result;
    v6 = MEMORY[0x26D686B00](0, v3);
LABEL_6:
    v7 = v6;
    v8 = [v6 entityType];

    LOBYTE(v8) = sub_26B94DF9C(v8, v5);

    if (v8)
    {
      result = sub_26B92CC98();
LABEL_11:
      v11 = result[1];
      *a1 = *result;
      a1[1] = v11;
      a1[2] = result[2];
      return result;
    }

LABEL_10:
    result = sub_26B92CB8C();
    goto LABEL_11;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = result;
    v6 = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

BOOL sub_26B94DF9C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_26B9ACFB4();
  sub_26B9ACFE4();
  v4 = sub_26B9ACFF4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void EntitySpotlightQuery.representation.getter(char **a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (!(*v1 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_17:

    v8 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v7 = sub_26B9ACB44();
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_3:
  v36 = MEMORY[0x277D84F90];

  v8 = &v36;
  sub_26B92BC3C(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v31 = v6;
  v32 = v5;
  v8 = v36;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    do
    {
      v10 = MEMORY[0x26D686B00](v9, v3);
      v11 = sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
      v35 = 1;
      v36 = v8;
      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v30 = v11;
        sub_26B92BC3C((v12 > 1), v13 + 1, 1);
        v11 = v30;
        v8 = v36;
      }

      ++v9;
      *(v8 + 2) = v13 + 1;
      v14 = &v8[48 * v13];
      *(v14 + 4) = v10;
      *(v14 + 40) = v33;
      *(v14 + 7) = v11;
      *(v14 + 8) = &protocol witness table for SFPerformEntityQueryCommand;
      v14[72] = v35;
    }

    while (v7 != v9);
  }

  else
  {
    v15 = (v3 + 32);
    v16 = sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
    do
    {
      v17 = *v15;
      v35 = 1;
      v36 = v8;
      v18 = *(v8 + 2);
      v19 = *(v8 + 3);
      v20 = v17;
      if (v18 >= v19 >> 1)
      {
        v22 = v19 > 1;
        v23 = v20;
        sub_26B92BC3C(v22, v18 + 1, 1);
        v20 = v23;
        v8 = v36;
      }

      *(v8 + 2) = v18 + 1;
      v21 = &v8[48 * v18];
      *(v21 + 4) = v20;
      *(v21 + 40) = v33;
      *(v21 + 7) = v16;
      *(v21 + 8) = &protocol witness table for SFPerformEntityQueryCommand;
      v21[72] = v35;
      ++v15;
      --v7;
    }

    while (v7);
  }

  v5 = v32;
  v6 = v31;
  if (v31)
  {
LABEL_18:
    LOBYTE(v36) = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_19:
      v25 = *(v8 + 2);
      v24 = *(v8 + 3);
      if (v25 >= v24 >> 1)
      {
        v8 = sub_26B92BB20((v24 > 1), v25 + 1, 1, v8);
      }

      *(v8 + 2) = v25 + 1;
      v26 = &v8[48 * v25];
      *(v26 + 4) = v4;
      *(v26 + 5) = v6;
      v27 = v33;
      *(v26 + 8) = v34;
      *(v26 + 3) = v27;
      v26[72] = v36;
      goto LABEL_22;
    }

LABEL_24:
    v8 = sub_26B92BB20(0, *(v8 + 2) + 1, 1, v8);
    goto LABEL_19;
  }

LABEL_22:
  QueryRepresentation.init(arrayLiteral:)(MEMORY[0x277D84F90], &v33);
  v28 = *(&v33 + 1);

  v29 = v5;

  *a1 = v8;
  a1[1] = v5;
}

id EntitySpotlightQuery.context.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_opt_self();
  sub_26B9294B8(0, &qword_280426690, 0x277D4C508);
  v6 = sub_26B9AC6E4();
  v7 = [v5 queryContextWithPerformEntityQueryCommands:v6 view:0];

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (!v3)
    {
      v12 = [v7 searchString];
      sub_26B9AC504();
    }

    goto LABEL_11;
  }

  result = sub_26B9ACB44();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D686B00](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v1 + 32);
  }

  v10 = v9;
  v11 = [v9 entityType];

  if (v11 != 6)
  {
    goto LABEL_9;
  }

LABEL_11:

  v13 = sub_26B9AC4C4();

  [v7 setSearchString_];

  v18[2] = v1;
  v18[3] = v2;
  v18[4] = v3;
  v18[5] = v4;
  EntitySpotlightQuery.representation.getter(v18);
  v14 = v18[1];

  if (v14)
  {
    v15 = v14;
    [v7 setShouldAllowMoreResults_];
    v16 = [v15 filterQueries];
    if (!v16)
    {
      sub_26B9AC6F4();
      v16 = sub_26B9AC6E4();
    }

    [v7 setFilterQueries_];

    v17 = [v15 enabledDomains];
    if (!v17)
    {
      sub_26B9294B8(0, &qword_2804265C0, 0x277CCABB0);
      sub_26B9AC6F4();
      v17 = sub_26B9AC6E4();
    }

    [v7 setSearchDomains_];
  }

  return v7;
}

uint64_t EntitySpotlightQuery.init(commands:searchString:browseFilter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double EntitySpotlightQuery.init(command:searchString:browseFilter:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v10 = swift_allocObject();
  *&result = 1;
  *(v10 + 16) = xmmword_26B9B1290;
  *(v10 + 32) = a1;
  *a5 = v10;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall EntitySpotlightQuery.searchBarButtonItems()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_26B9ACB44();
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_14;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D686B00](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 searchBarButtonItems];
    sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
    v7 = sub_26B9AC6F4();

    v2 = v7;
  }

  else
  {

    v2 = 0;
  }

LABEL_14:
  result.value._rawValue = v2;
  result.is_nil = v8;
  return result;
}

uint64_t sub_26B94E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B94FD30();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94E8BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B94FD30();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B94E970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  a2[3] = a1;
  a2[4] = sub_26B94FC64();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = v6;
  v9 = v6;
}

uint64_t sub_26B94E9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B948B6C();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t ContactWidgetQuery.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ContactWidgetQuery.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContactWidgetQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a1);
}

id ContactWidgetQuery.context.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277D65898]);
  v3 = v1;
  v4 = sub_26B9AC4C4();
  v5 = [v2 initWithSearchString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26B9B1290;
  *(v6 + 32) = v3;
  sub_26B9294B8(0, &qword_280426778, 0x277D65890);
  v7 = sub_26B9AC6E4();

  [v5 setSearchEntities_];

  return v5;
}

uint64_t ContactWidgetQuery.init(entity:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a2;
  a4[2] = a3;
  *a4 = result;
  return result;
}

id sub_26B94ECA4()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x277D65898]);
  v3 = v1;
  v4 = sub_26B9AC4C4();
  v5 = [v2 initWithSearchString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26B9B1290;
  *(v6 + 32) = v3;
  sub_26B9294B8(0, &qword_280426778, 0x277D65890);
  v7 = sub_26B9AC6E4();

  [v5 setSearchEntities_];

  return v5;
}

uint64_t sub_26B94ED94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  a2[3] = a1;
  a2[4] = sub_26B94FE28();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  v7 = v4;
}

uint64_t sub_26B94EDF0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a1);
}

uint64_t sub_26B94EE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B94FEA4();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94EF50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B94FEA4();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B94F004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B94FF20();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t FilterQuery.representation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  v3 = v2;
}

void FilterQuery.representation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

id FilterQuery.context.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D65898]) init];
  v1 = sub_26B9AC4C4();
  [v0 setSearchString_];

  [v0 setQueryKind_];
  [v0 setWhyQuery_];
  v2 = sub_26B9AC4C4();
  [v0 setSearchStringForScopedSearch_];

  v3 = sub_26B9AC6E4();
  [v0 setFilterQueries_];

  return v0;
}

uint64_t sub_26B94F1F4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  v3 = v2;
}

uint64_t sub_26B94F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B950110();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B94F30C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B950110();
  *v5 = v2;
  v5[1] = sub_26B8EC52C;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B94F3C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  a2[3] = a1;
  a2[4] = sub_26B950018();
  v10 = swift_allocObject();
  *a2 = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v6;
  v10[6] = v9;
  v10[7] = v8;
  v11 = v8;
}

uint64_t sub_26B94F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B950094();

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B94F4B0()
{
  sub_26B9ACFB4();
  sub_26B9ACFE4();
  return sub_26B9ACFF4();
}

uint64_t sub_26B94F524(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9ACFE4();
  return sub_26B9ACFF4();
}

_DWORD *sub_26B94F57C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_26B94F598(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26B91F91C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s17SpotlightUIShared07DefaultA5QueryC19supportsViewOptions3forSbAA0D14RepresentationVSg_tFZ_0(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
    v2 = v1;
  }

  else
  {
    v1 = 0;
  }

  v3 = objc_opt_self();
  v4 = [v3 applications];
  v5 = v4;
  if (v1)
  {
    if (v4)
    {
      sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
      v6 = v1;
      v7 = sub_26B9AC9C4();

      if (v7)
      {
        v8 = 1;
LABEL_17:

        return v8 & 1;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  v9 = [v3 files];
  v6 = v9;
  if (v1)
  {
    if (v9)
    {
      sub_26B9294B8(0, &qword_2804263D0, 0x277D65918);
      v10 = v1;
      v8 = sub_26B9AC9C4();

      v6 = v10;
    }

    else
    {
      v8 = 0;
      v6 = v1;
    }

    goto LABEL_17;
  }

  if (v9)
  {
    v8 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_26B94F7E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426898, &unk_26B9B3168);
    v3 = sub_26B9ACBA4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_26B9ACFB4();
      sub_26B9ACFE4();
      result = sub_26B9ACFF4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL _s17SpotlightUIShared06EntityA5QueryV19supportsViewOptions3forSbAA0D14RepresentationVSg_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  sub_26B926FB0(v1 + 32, v7);
  if ((v8 & 1) == 0)
  {
    sub_26B92700C(v7);
    return 0;
  }

  sub_26B8ECB70(v7, v9);
  sub_26B907F08(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263E8, &unk_26B9B1280);
  sub_26B9294B8(0, &qword_280426890, 0x277D65948);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    return 0;
  }

  v2 = [v6 searchBarButtonItems];
  sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
  v3 = sub_26B9AC6F4();

  if (v3 >> 62)
  {
    v4 = sub_26B9ACB44();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v4 != 0;
}

uint64_t sub_26B94FAB0(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426810, a2, type metadata accessor for DefaultSpotlightQuery, &protocol conformance descriptor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B94FB08(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426818, a2, type metadata accessor for DefaultSpotlightQuery, &protocol conformance descriptor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B94FB60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B94FBA8(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426820, a2, type metadata accessor for DefaultSpotlightQuery, &protocol conformance descriptor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B94FC00(uint64_t a1, uint64_t a2)
{
  result = sub_26B94FB60(&qword_280426828, a2, type metadata accessor for DefaultSpotlightQuery, &protocol conformance descriptor for DefaultSpotlightQuery);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FC64()
{
  result = qword_280426830;
  if (!qword_280426830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426830);
  }

  return result;
}

unint64_t sub_26B94FCB8(uint64_t a1)
{
  result = sub_26B948B6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FCE0(uint64_t a1)
{
  result = sub_26B94FC64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FD08(uint64_t a1)
{
  result = sub_26B94FD30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FD30()
{
  result = qword_280426838;
  if (!qword_280426838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426838);
  }

  return result;
}

unint64_t sub_26B94FD84(uint64_t a1)
{
  result = sub_26B94FDAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FDAC()
{
  result = qword_280426840;
  if (!qword_280426840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426840);
  }

  return result;
}

unint64_t sub_26B94FE00(uint64_t a1)
{
  result = sub_26B94FE28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FE28()
{
  result = qword_280426848;
  if (!qword_280426848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426848);
  }

  return result;
}

unint64_t sub_26B94FE7C(uint64_t a1)
{
  result = sub_26B94FEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FEA4()
{
  result = qword_280426850;
  if (!qword_280426850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426850);
  }

  return result;
}

unint64_t sub_26B94FEF8(uint64_t a1)
{
  result = sub_26B94FF20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FF20()
{
  result = qword_280426858;
  if (!qword_280426858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426858);
  }

  return result;
}

unint64_t sub_26B94FF74(uint64_t a1)
{
  result = sub_26B94FF9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B94FF9C()
{
  result = qword_280426860;
  if (!qword_280426860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426860);
  }

  return result;
}

unint64_t sub_26B94FFF0(uint64_t a1)
{
  result = sub_26B950018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B950018()
{
  result = qword_280426868;
  if (!qword_280426868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426868);
  }

  return result;
}

unint64_t sub_26B95006C(uint64_t a1)
{
  result = sub_26B950094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B950094()
{
  result = qword_280426870;
  if (!qword_280426870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426870);
  }

  return result;
}

unint64_t sub_26B9500E8(uint64_t a1)
{
  result = sub_26B950110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B950110()
{
  result = qword_280426878;
  if (!qword_280426878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426878);
  }

  return result;
}

unint64_t sub_26B950164(uint64_t a1)
{
  result = sub_26B95018C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B95018C()
{
  result = qword_280426880;
  if (!qword_280426880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426880);
  }

  return result;
}

uint64_t dispatch thunk of DefaultSpotlightQuery.updateLayout(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 200) + **(*v4 + 200));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B95046C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26B9504B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_26B950538(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

const char *SpotlightSignpostInterval.staticString()()
{
  v1 = "queryToFinished";
  if (*v0 != 1)
  {
    v1 = "queryToWindowExpansion";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "queryToFirstResults";
  }
}

uint64_t SpotlightSignpostInterval.hashValue.getter()
{
  v1 = *v0;
  sub_26B9ACFB4();
  MEMORY[0x26D686E90](v1);
  return sub_26B9ACFF4();
}

unint64_t sub_26B9506C4()
{
  result = qword_2804268B0;
  if (!qword_2804268B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268B0);
  }

  return result;
}

const char *sub_26B950718()
{
  v1 = "queryToFinished";
  if (*v0 != 1)
  {
    v1 = "queryToWindowExpansion";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "queryToFirstResults";
  }
}

unint64_t sub_26B950760(uint64_t a1)
{
  *(a1 + 8) = sub_26B950790();
  result = sub_26B9507E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26B950790()
{
  result = qword_2804268B8;
  if (!qword_2804268B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268B8);
  }

  return result;
}

unint64_t sub_26B9507E4()
{
  result = qword_2804268C0;
  if (!qword_2804268C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268C0);
  }

  return result;
}

unint64_t sub_26B95083C()
{
  result = qword_2804268C8;
  if (!qword_2804268C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804268D0, &qword_26B9B32B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804268C8);
  }

  return result;
}

unint64_t SFImage.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v0 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26B9AC504();
    v7 = v6;

    v23 = MEMORY[0x277D837D0];
    *&v22 = v5;
    *(&v22 + 1) = v7;
    sub_26B92C47C(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v21, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  }

  v9 = [v1 imageData];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26B9AB124();
    v13 = v12;

    sub_26B922394(v11, v13);
    v23 = MEMORY[0x277D839B0];
    LOBYTE(v22) = 1;
    sub_26B92C47C(&v22, v21);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v21, 0x6142617461447369, 0xEB00000000646573, v14);
  }

  v15 = [v1 badgingImage];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 abridgedDictionaryRepresentation];
    v18 = sub_26B9AC404();

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268D8, &qword_26B9B3328);
    *&v22 = v18;
    sub_26B92C47C(&v22, v21);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v21, 0x49676E6967646162, 0xEC0000006567616DLL, v19);
  }

  return v2;
}

unint64_t SFAppIconImage.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v1 bundleIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26B9AC504();
    v7 = v6;

    v16 = MEMORY[0x277D837D0];
    *&v15 = v5;
    *(&v15 + 1) = v7;
    sub_26B92C47C(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v14, 0xD000000000000010, 0x800000026B9B7390, isUniquelyReferenced_nonNull_native);
  }

  v9 = [v1 iconType];
  v10 = MEMORY[0x277D839B0];
  if (v9 == 2)
  {
    v16 = MEMORY[0x277D839B0];
    LOBYTE(v15) = 1;
    sub_26B92C47C(&v15, v14);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v14, 0x73656E656E4F7369, 0xED00006E6F634973, v11);
  }

  if ([v1 iconType] == 1)
  {
    v16 = v10;
    LOBYTE(v15) = 1;
    sub_26B92C47C(&v15, v14);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v14, 0xD000000000000015, 0x800000026B9B9460, v12);
  }

  return v2;
}

unint64_t SFSymbolImage.abridgedDictionaryRepresentation.getter()
{
  v1 = sub_26B951F18(MEMORY[0x277D84F90]);
  v2 = [v0 symbolName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_26B9AC504();
    v6 = v5;

    v11 = MEMORY[0x277D837D0];
    *&v10 = v4;
    *(&v10 + 1) = v6;
    sub_26B92C47C(&v10, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v9, 0x614E6C6F626D7973, 0xEA0000000000656DLL, isUniquelyReferenced_nonNull_native);
  }

  return v1;
}

id sub_26B950DC8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B9AC3F4();

  return v5;
}

unint64_t SFQuickLookThumbnailImage.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B9AB104();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_26B951F18(MEMORY[0x277D84F90]);
  v10 = [v1 filePath];
  v11 = MEMORY[0x277D837D0];
  if (v10)
  {
    v12 = v10;
    sub_26B9AB0C4();

    (*(v3 + 32))(v8, v6, v2);
    v13 = sub_26B9AB064();
    v33 = v11;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    sub_26B92C47C(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v9;
    sub_26B951A3C(v31, 0x68746150656C6966, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    (*(v3 + 8))(v8, v2);
    v9 = v30;
  }

  v16 = [v1 coreSpotlightIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_26B9AC504();
    v20 = v19;

    v33 = v11;
    *&v32 = v18;
    *(&v32 + 1) = v20;
    sub_26B92C47C(&v32, v31);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v9;
    sub_26B951A3C(v31, 0xD000000000000017, 0x800000026B9B94A0, v21);
    v9 = v30;
  }

  v22 = [v1 fileProviderIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_26B9AC504();
    v26 = v25;

    v33 = v11;
    *&v32 = v24;
    *(&v32 + 1) = v26;
    sub_26B92C47C(&v32, v31);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v9;
    sub_26B951A3C(v31, 0xD000000000000016, 0x800000026B9B9480, v27);
    return v30;
  }

  return v9;
}

unint64_t SFDetailedRowCardSection.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v0 title];
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 text];

    if (v6)
    {
      v7 = sub_26B9AC504();
      v9 = v8;

      v32 = v4;
      *&v31 = v7;
      *(&v31 + 1) = v9;
      sub_26B92C47C(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26B951A3C(v30, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  v11 = [v1 descriptions];
  if (v11)
  {
    sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
    v12 = sub_26B9AC6F4();

    if (v12 >> 62)
    {
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = sub_26B9ACD34();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_26B9ACEC4();
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = v12;
    }
  }

  v13 = _sSo6SFTextC17SpotlightUISharedE17descriptionString4fromSSSgSayABGSg_tFZ_0(v11);
  v15 = v14;

  if (v15)
  {
    v32 = v4;
    *&v31 = v13;
    *(&v31 + 1) = v15;
    sub_26B92C47C(&v31, v30);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v30, 0x7470697263736564, 0xEB000000006E6F69, v16);
  }

  v17 = [v1 thumbnail];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 abridgedDictionaryRepresentation];

    v20 = sub_26B9AC404();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268D8, &qword_26B9B3328);
    *&v31 = v20;
    sub_26B92C47C(&v31, v30);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v30, 0x69616E626D756874, 0xE90000000000006CLL, v21);
  }

  v22 = [v1 secondaryTitle];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 text];

    if (v24)
    {
      v25 = sub_26B9AC504();
      v27 = v26;

      v32 = v4;
      *&v31 = v25;
      *(&v31 + 1) = v27;
      sub_26B92C47C(&v31, v30);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B951A3C(v30, 0x7261646E6F636573, 0xEE00656C74695479, v28);
    }
  }

  return v2;
}

unint64_t SFSearchResult.abridgedDictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = sub_26B951F18(MEMORY[0x277D84F90]);
  v3 = [v0 title];
  v4 = MEMORY[0x277D837D0];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 text];

    if (v6)
    {
      v7 = sub_26B9AC504();
      v9 = v8;

      v25 = v4;
      *&v24 = v7;
      *(&v24 + 1) = v9;
      sub_26B92C47C(&v24, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26B951A3C(v23, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  v11 = [v1 descriptions];
  if (v11)
  {
    sub_26B9294B8(0, &qword_280426FE0, 0x277D4C598);
    v12 = sub_26B9AC6F4();

    if (v12 >> 62)
    {
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = sub_26B9ACD34();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_26B9ACEC4();
      sub_26B9294B8(0, &qword_2804268E0, 0x277D4C690);

      v11 = v12;
    }
  }

  v13 = _sSo6SFTextC17SpotlightUISharedE17descriptionString4fromSSSgSayABGSg_tFZ_0(v11);
  v15 = v14;

  if (v15)
  {
    v25 = v4;
    *&v24 = v13;
    *(&v24 + 1) = v15;
    sub_26B92C47C(&v24, v23);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v23, 0x7470697263736564, 0xEB000000006E6F69, v16);
  }

  v17 = [v1 thumbnail];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 abridgedDictionaryRepresentation];

    v20 = sub_26B9AC404();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268D8, &qword_26B9B3328);
    *&v24 = v20;
    sub_26B92C47C(&v24, v23);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B951A3C(v23, 0x69616E626D756874, 0xE90000000000006CLL, v21);
  }

  return v2;
}

uint64_t sub_26B951784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268E8, &qword_26B9B3338);
  v33 = v4;
  result = sub_26B9ACD74();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_26B92C47C(v24, v34);
      }

      else
      {
        sub_26B923750(v24, v34);
      }

      sub_26B9ACFB4();
      sub_26B9AC574();
      result = sub_26B9ACFF4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26B92C47C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_26B951A3C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9201A8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26B951BF8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26B951784(v16, a4 & 1);
    v11 = sub_26B9201A8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26B9ACF24();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_26B92C47C(a1, v22);
  }

  else
  {
    sub_26B951B8C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_26B951B8C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B92C47C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_26B951BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268E8, &qword_26B9B3338);
  v2 = *v0;
  v3 = sub_26B9ACD64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26B923750(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26B92C47C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t _sSo6SFTextC17SpotlightUISharedE17descriptionString4fromSSSgSayABGSg_tFZ_0(unint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = sub_26B9ACB44();
  v2 = result;
  if (!result)
  {
    return 0;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D686B00](i, v1);
      }

      else
      {
        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 text];
      if (v8)
      {
        v9 = v8;
        v10 = sub_26B9AC504();
        v12 = v11;

        if (v4)
        {
          v13 = v3;
          v14 = v4;

          MEMORY[0x26D686470](2112288, 0xE300000000000000);

          MEMORY[0x26D686470](v10, v12);
        }

        else
        {

          v3 = v10;
          v4 = v12;
        }
      }

      else
      {
      }
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_26B951F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268E8, &qword_26B9B3338);
    v3 = sub_26B9ACD84();
    v4 = a1 + 32;
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B952028(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26B9201A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B92C47C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_26B952028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804268F0, &unk_26B9B3340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEntityQuery.representation.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  v4 = (v1 + *(type metadata accessor for AppEntityQuery(0) + 32));
  v5 = v4[1];
  *(v3 + 32) = *v4;
  *(v3 + 40) = v5;
  *(v3 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v3, a1);
}

uint64_t type metadata accessor for AppEntityQuery(uint64_t a1)
{
  result = qword_28042E7D0;
  if (!qword_28042E7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppEntityQuery.typeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9ABF24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEntityQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityQuery(0) + 20);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityQuery.restrictionContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityQuery(0) + 24);
  v4 = sub_26B9ABFF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityQuery(0) + 28);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityQuery.searchString.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppEntityQuery(0) + 32));

  return v1;
}

uint64_t AppEntityQuery.selectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppEntityQuery(0) + 40);

  return sub_26B9523F8(v3, a1);
}

uint64_t sub_26B9523F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEntityQuery.init(typeIdentifier:parameterDefinition:restrictionContext:toolInvocation:searchString:showAllCases:selectedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_26B9ABF24();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for AppEntityQuery(0);
  v20 = v19[5];
  v21 = sub_26B9AC0E4();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = v19[6];
  v23 = sub_26B9ABFF4();
  (*(*(v23 - 8) + 32))(a9 + v22, a3, v23);
  v24 = v19[7];
  v25 = sub_26B9AB984();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = (a9 + v19[8]);
  *v26 = a5;
  v26[1] = a6;
  *(a9 + v19[9]) = a7;
  v27 = a9 + v19[10];

  return sub_26B952600(a8, v27);
}

uint64_t sub_26B952600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9526B8(uint64_t a1)
{
  result = sub_26B952CA0(&qword_280426908, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B952710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  v6 = (v2 + *(a1 + 32));
  v7 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v7;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a2);
}

uint64_t sub_26B95279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B952CA0(&qword_280426928, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B9528A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B952CA0(&qword_280426928, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B95298C(uint64_t a1)
{
  result = sub_26B952CA0(&qword_280426910, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B9529E4@<D0>(uint64_t x8_0@<X8>)
{
  sub_26B952CA0(&qword_280426920, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);

  *&result = ParameterQuery.platterBehavior.getter(x8_0).n128_u64[0];
  return result;
}

uint64_t sub_26B952A60(uint64_t a1)
{
  result = sub_26B952CA0(&qword_280426900, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B952AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B952CA0(&qword_280426900, type metadata accessor for AppEntityQuery, &protocol conformance descriptor for AppEntityQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_26B952B64(uint64_t a1)
{
  sub_26B9ABF24();
  if (v1 <= 0x3F)
  {
    sub_26B9AC0E4();
    if (v2 <= 0x3F)
    {
      sub_26B9ABFF4();
      if (v3 <= 0x3F)
      {
        sub_26B9AB984();
        if (v4 <= 0x3F)
        {
          sub_26B952C48(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26B952C48(uint64_t a1)
{
  if (!qword_280426918)
  {
    sub_26B9ABE84();
    v1 = sub_26B9ACA34();
    if (!v2)
    {
      atomic_store(v1, &qword_280426918);
    }
  }
}

uint64_t sub_26B952CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B952CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v3[35] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v3[39] = swift_task_alloc();
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426328, &unk_26B9B0CF0);
  v3[41] = swift_task_alloc();
  sub_26B9AC2B4();
  v3[42] = swift_task_alloc();
  v4 = sub_26B9AC294();
  v3[43] = v4;
  v5 = *(v4 - 8);
  v3[44] = v5;
  v3[45] = *(v5 + 64);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470) - 8);
  v3[48] = v6;
  v3[49] = *(v6 + 64);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v7 = sub_26B9AC004();
  v3[52] = v7;
  v3[53] = *(v7 - 8);
  v3[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426938, &qword_26B9B3478);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426940, &qword_26B9B3480);
  v3[57] = swift_task_alloc();
  v8 = sub_26B9AC224();
  v3[58] = v8;
  v3[59] = *(v8 - 8);
  v3[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426948, &qword_26B9B3488);
  v3[61] = swift_task_alloc();
  v9 = sub_26B9ABE94();
  v3[62] = v9;
  v3[63] = *(v9 - 8);
  v3[64] = swift_task_alloc();
  v10 = sub_26B9ABFF4();
  v3[65] = v10;
  v3[66] = *(v10 - 8);
  v3[67] = swift_task_alloc();
  v11 = sub_26B9ABF64();
  v3[68] = v11;
  v3[69] = *(v11 - 8);
  v3[70] = swift_task_alloc();
  v12 = sub_26B9ABFD4();
  v3[71] = v12;
  v13 = *(v12 - 8);
  v3[72] = v13;
  v3[73] = *(v13 + 64);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v14 = sub_26B92A538();
  swift_beginAccess();
  v15 = *v14;
  v3[76] = v15;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B953258, v15, 0);
}

uint64_t sub_26B953258()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for AppEntityQuery(0);
  *(v0 + 616) = v5;
  (*(v2 + 16))(v1, v4 + *(v5 + 24), v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D72FA0])
  {
    v6 = *(v0 + 600);
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v90 = *(v0 + 544);
    v91 = v5;
    v11 = *(v0 + 536);
    v12 = *(v0 + 504);
    v93 = *(v0 + 496);
    v13 = *(v0 + 488);
    (*(*(v0 + 528) + 96))(v11, *(v0 + 520));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426950, &qword_26B9B3490) + 48);
    v89 = *(v7 + 32);
    v89(v6, v11, v8);
    (*(v10 + 32))(v9, v11 + v14, v90);
    sub_26B9ABF44();
    if ((*(v12 + 48))(v13, 1, v93) != 1)
    {
      v31 = *(v0 + 512);
      v32 = *(v0 + 496);
      v33 = *(*(v0 + 504) + 32);
      v33(v31, *(v0 + 488), v32);
      *(v0 + 40) = v32;
      v34 = &unk_280426978;
      v35 = MEMORY[0x277D72AA8];
      v36 = MEMORY[0x277D72AA0];
      goto LABEL_18;
    }

    v15 = *(v0 + 464);
    v16 = *(v0 + 472);
    v17 = *(v0 + 456);
    sub_26B8EACD8(*(v0 + 488), &qword_280426948, &qword_26B9B3488);
    sub_26B9ABF34();
    if ((*(v16 + 48))(v17, 1, v15) == 1)
    {
      v18 = *(v0 + 456);
      v19 = &qword_280426940;
      v20 = &qword_26B9B3480;
LABEL_5:
      sub_26B8EACD8(v18, v19, v20);
      v21 = *(v0 + 440);
      v22 = *(v0 + 416);
      v23 = *(v0 + 424);
      sub_26B9ABF54();
      if ((*(v23 + 48))(v21, 1, v22) == 1)
      {
        sub_26B8EACD8(*(v0 + 440), &qword_280426938, &qword_26B9B3478);
        v24 = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 48) = 0;
LABEL_19:
        *(v0 + 696) = v24;
        sub_26B9236E8(v0 + 16, v0 + 96, &qword_280426958, &qword_26B9B3498);
        v53 = *(v0 + 408);
        if (*(v0 + 120))
        {
          sub_26B8ECB70((v0 + 96), v0 + 56);
          sub_26B907F08(v0 + 56, v0 + 136);
          sub_26B9AC2C4();
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          v54 = sub_26B9AC2D4();
          (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
        }

        else
        {
          sub_26B8EACD8(v0 + 96, &qword_280426958, &qword_26B9B3498);
          v55 = sub_26B9AC2D4();
          (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
        }

        v56 = *(v0 + 592);
        v57 = *(v0 + 576);
        v58 = *(v0 + 568);
        v82 = *(v0 + 408);
        v80 = *(v0 + 600);
        v81 = *(v0 + 400);
        v87 = *(v0 + 584);
        v88 = *(v0 + 392);
        v86 = *(v0 + 384);
        v79 = *(v0 + 376);
        v84 = *(v0 + 368);
        v94 = *(v0 + 352);
        v83 = *(v0 + 344);
        v59 = *(v0 + 328);
        v60 = *(v0 + 280);
        sub_26B9AC2A4();
        sub_26B9AC284();
        v61 = sub_26B9AB984();
        v85 = swift_allocBox();
        *(v0 + 624) = v85;
        v62 = v91[7];
        *(v0 + 688) = v62;
        (*(*(v61 - 8) + 16))(v63, v60 + v62, v61);
        *(v0 + 692) = v91[5];
        v64 = sub_26B9AC0B4();
        v66 = v65;
        v67 = sub_26B9ABFB4();
        (*(*(v67 - 8) + 56))(v59, 1, 1, v67);
        v68 = sub_26B9AB944();
        sub_26B912910(v59, v64, v66);
        v68(v0 + 216, 0);
        ObjectType = swift_getObjectType();
        (*(v57 + 16))(v56, v80, v58);
        sub_26B9236E8(v82, v81, &qword_280426930, &qword_26B9B3470);
        (*(v94 + 16))(v84, v79, v83);
        v69 = (*(v57 + 80) + 16) & ~*(v57 + 80);
        v70 = (v87 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = (*(v86 + 80) + v70 + 8) & ~*(v86 + 80);
        v72 = (v88 + *(v94 + 80) + v71) & ~*(v94 + 80);
        v73 = swift_allocObject();
        *(v0 + 632) = v73;
        v89(v73 + v69, v56, v58);
        *(v73 + v70) = v85;
        sub_26B954F24(v81, v73 + v71);
        (*(v94 + 32))(v73 + v72, v84, v83);
        sub_26B9AAAE4();
        v74 = swift_task_alloc();
        *(v0 + 640) = v74;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426960, &unk_26B9B34B0);
        *v74 = v0;
        v74[1] = sub_26B953F28;
        v76 = *(v0 + 296);

        return MEMORY[0x2821DAB50](v0 + 272, &unk_26B9B34A8, v73, v75, ObjectType, v76);
      }

      v31 = *(v0 + 432);
      v32 = *(v0 + 416);
      v33 = *(*(v0 + 424) + 32);
      v33(v31, *(v0 + 440), v32);
      *(v0 + 40) = v32;
      v34 = &unk_280426968;
      v35 = MEMORY[0x277D72FF8];
      v36 = MEMORY[0x277D72FF0];
LABEL_18:
      *(v0 + 48) = sub_26B955210(v34, v35, v36);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      v33(boxed_opaque_existential_1, v31, v32);
      v24 = 1;
      goto LABEL_19;
    }

    v37 = *(v0 + 280);
    (*(*(v0 + 472) + 32))(*(v0 + 480), *(v0 + 456), *(v0 + 464));
    v38 = (v37 + v91[8]);
    v40 = *v38;
    v39 = v38[1];
    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      v42 = *(v0 + 448);
      v43 = *(v0 + 416);
      v44 = *(v0 + 424);
      sub_26B9ABF54();
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        v78 = *(v0 + 448);
        (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
        v19 = &qword_280426938;
        v20 = &qword_26B9B3478;
        v18 = v78;
        goto LABEL_5;
      }

      sub_26B8EACD8(*(v0 + 448), &qword_280426938, &qword_26B9B3478);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
    v45 = sub_26B9ABE84();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_26B9AF300;
    v49 = sub_26B9ABE44();
    v50 = swift_allocBox();
    *v51 = v40;
    v51[1] = v39;
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D729B8], v49);
    *(v48 + v47) = v50;
    (*(v46 + 104))(v48 + v47, *MEMORY[0x277D72A58], v45);
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426970, &unk_26B9B34C0);
    *(v0 + 208) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v0 + 176));

    sub_26B9AC214();
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    v24 = 0;
    v77 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v77;
    *(v0 + 48) = *(v0 + 208);
    goto LABEL_19;
  }

  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);

  (*(v26 + 8))(v25, v27);

  v28 = *(v0 + 8);
  v29 = MEMORY[0x277D84F90];

  return v28(v29);
}

uint64_t sub_26B953F28()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 608);

  if (v0)
  {
    v4 = sub_26B95460C;
  }

  else
  {
    v4 = sub_26B954070;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26B954070(uint64_t a1)
{
  if (*(v1 + 272))
  {
    v2 = *(v1 + 272);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (*(v1 + 696) == 1)
  {
    v3 = *(v1 + 616);
    v4 = *(v1 + 280);
    type metadata accessor for FuzzyRanker();
    v5 = sub_26B97294C(v2, *(v4 + v3[8]), *(v4 + v3[8] + 8), v4 + v3[10], *(v4 + v3[9]));

    v2 = v5;
  }

  *(v1 + 656) = v2;
  v6 = *(v1 + 692);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  v9 = *(v1 + 304);
  v10 = *(v1 + 280);
  sub_26B9AB934();
  v11 = sub_26B9AB914();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = sub_26B9AC0E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, v10 + v6, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  sub_26B964AE0(0, 0, v7, v9, 0, 2, v8);
  type metadata accessor for TypedValueResultBuilder(0);
  v14 = swift_task_alloc();
  *(v1 + 664) = v14;
  *v14 = v1;
  v14[1] = sub_26B954288;
  v15 = *(v1 + 320);

  return sub_26B965780(v2, v15);
}

uint64_t sub_26B954288(uint64_t a1)
{
  v4 = *v2;
  v4[84] = v1;

  v5 = v4[76];

  if (v1)
  {
    v6 = sub_26B954828;
  }

  else
  {
    v4[85] = a1;
    v6 = sub_26B9543E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B9543E0()
{
  v13 = v0[75];
  v1 = v0[72];
  v12 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[51];
  v6 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[40];

  sub_26B955164(v9);
  (*(v7 + 8))(v6, v8);
  sub_26B8EACD8(v5, &qword_280426930, &qword_26B9B3470);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v13, v12);
  sub_26B8EACD8((v0 + 2), &qword_280426958, &qword_26B9B3498);

  v14 = v0[85];

  v10 = v0[1];

  return v10(v14);
}

uint64_t sub_26B95460C()
{
  v12 = v0[75];
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[51];
  v7 = v0[47];
  v9 = v0[43];
  v8 = v0[44];

  (*(v8 + 8))(v7, v9);
  sub_26B8EACD8(v6, &qword_280426930, &qword_26B9B3470);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v12, v2);
  sub_26B8EACD8((v0 + 2), &qword_280426958, &qword_26B9B3498);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26B954828()
{
  v13 = v0[75];
  v1 = v0[72];
  v12 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[51];
  v6 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[40];

  sub_26B955164(v9);
  (*(v7 + 8))(v6, v8);
  sub_26B8EACD8(v5, &qword_280426930, &qword_26B9B3470);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v13, v12);
  sub_26B8EACD8((v0 + 2), &qword_280426958, &qword_26B9B3498);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26B954A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a3;
  v6[8] = a1;
  v7 = sub_26B9AB984();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_projectBox();
  v8 = sub_26B92A538();
  swift_beginAccess();
  v9 = *v8;
  v6[17] = v9;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B954B54, v9, 0);
}

uint64_t sub_26B954B54(uint64_t a1)
{
  v3 = v1[15];
  v2 = v1[16];
  v4 = v1[13];
  v5 = v1[14];
  v6 = sub_26B9AB9A4();
  v8 = v7;
  v1[18] = v6;
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  (*(v5 + 16))(v3, v2, v4);
  v10 = swift_task_alloc();
  v1[19] = v10;
  *v10 = v1;
  v10[1] = sub_26B954C68;
  v11 = v1[15];
  v12 = v1[11];
  v13 = v1[12];
  v14 = v1[10];

  return MEMORY[0x2821DAA88](v14, v11, v12, v13, ObjectType, v8);
}

uint64_t sub_26B954C68(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[17];
  v6 = v4[15];
  v7 = v4[14];
  v8 = v4[13];
  if (v1)
  {
    (*(v7 + 8))(v6, v8);
    swift_unknownObjectRelease();
    v9 = sub_26B954EB4;
  }

  else
  {
    v4[21] = a1;
    (*(v7 + 8))(v6, v8);
    swift_unknownObjectRelease();
    v9 = sub_26B954E30;
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

uint64_t sub_26B954E30()
{
  v1 = v0[21];
  v2 = v0[8];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_26B954EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B954F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B954F94(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_26B9ABFD4() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426930, &qword_26B9B3470) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_26B9AC294() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v2 + v9);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_26B8EB6C8;

  return sub_26B954A50(a1, a2, v2 + v8, v15, v2 + v11, v2 + v14);
}

uint64_t sub_26B955164(uint64_t a1)
{
  v2 = type metadata accessor for TypedValueResultBuilder.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D6879F0);
  }

  return result;
}

uint64_t sub_26B955210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppEntityQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEntityQueryDataSource(uint64_t a1)
{
  result = qword_28042E7E0;
  if (!qword_28042E7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppEnumQuery.representation.getter@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  v4 = (v1 + *(type metadata accessor for AppEnumQuery(0) + 20));
  v5 = v4[1];
  *(v3 + 32) = *v4;
  *(v3 + 40) = v5;
  *(v3 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v3, a1);
}

uint64_t type metadata accessor for AppEnumQuery(uint64_t a1)
{
  result = qword_28042EA70;
  if (!qword_28042EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppEnumQuery.definition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26B9AC204();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEnumQuery.definition.setter(uint64_t a1)
{
  v3 = sub_26B9AC204();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEnumQuery.searchString.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppEnumQuery(0) + 20));

  return v1;
}

uint64_t AppEnumQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEnumQuery(0) + 24);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEnumQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEnumQuery(0) + 28);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEnumQuery.selectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppEnumQuery(0) + 36);

  return sub_26B9523F8(v3, a1);
}

uint64_t AppEnumQuery.init(definition:searchString:toolInvocation:parameterDefinition:showAllCases:selectedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_26B9AC204();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for AppEnumQuery(0);
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = v17[6];
  v20 = sub_26B9AB984();
  (*(*(v20 - 8) + 32))(a8 + v19, a4, v20);
  *(a8 + v17[8]) = a6;
  sub_26B952600(a7, a8 + v17[9]);
  v21 = v17[7];
  v22 = sub_26B9AC0E4();
  v23 = *(*(v22 - 8) + 32);

  return v23(a8 + v21, a5, v22);
}

uint64_t sub_26B955848(uint64_t a1)
{
  result = sub_26B955DB8(&qword_280426988, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B9558A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426480, &unk_26B9B18A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26B9AF300;
  v6 = (v2 + *(a1 + 20));
  v7 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v7;
  *(v5 + 72) = 0;

  return QueryRepresentation.init(arrayLiteral:)(v5, a2);
}

uint64_t sub_26B95592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B955DB8(&qword_2804269A0, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B955A38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B955DB8(&qword_2804269A0, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B955B1C(uint64_t a1)
{
  result = sub_26B955DB8(&qword_280426990, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B955B74@<D0>(uint64_t x8_0@<X8>)
{
  sub_26B955DB8(&qword_280426998, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);

  *&result = ParameterQuery.platterBehavior.getter(x8_0).n128_u64[0];
  return result;
}

uint64_t sub_26B955BF0(uint64_t a1)
{
  result = sub_26B955DB8(&qword_2804260D0, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B955C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B955DB8(&qword_2804260D0, type metadata accessor for AppEnumQuery, &protocol conformance descriptor for AppEnumQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_26B955CF4(uint64_t a1)
{
  sub_26B9AC204();
  if (v1 <= 0x3F)
  {
    sub_26B9AB984();
    if (v2 <= 0x3F)
    {
      sub_26B9AC0E4();
      if (v3 <= 0x3F)
      {
        sub_26B952C48(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26B955DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B955E04(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v1[7] = swift_task_alloc();
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v1[8] = swift_task_alloc();
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  v1[9] = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B955F30, v3, 0);
}

uint64_t sub_26B955F30()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = MEMORY[0x26D6860C0]();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_26B95659C(sub_26B956570, v6, v5);

  type metadata accessor for FuzzyRanker();
  v8 = type metadata accessor for AppEnumQuery(0);
  v9 = sub_26B97294C(v7, *(v4 + v8[5]), *(v4 + v8[5] + 8), v4 + v8[9], *(v4 + v8[8]));
  v0[10] = v9;

  sub_26B9AB934();
  v10 = sub_26B9AB914();
  (*(*(v10 - 8) + 56))(v1, 0, 1, v10);
  v11 = v8[7];
  v12 = sub_26B9AC0E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v3, v4 + v11, v12);
  (*(v13 + 56))(v3, 0, 1, v12);
  sub_26B964AE0(0, 0, v1, v3, 0, 2, v2);
  type metadata accessor for TypedValueResultBuilder(0);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_26B956180;
  v15 = v0[8];

  return sub_26B965780(v9, v15);
}

uint64_t sub_26B956180(uint64_t a1)
{
  v4 = *v2;
  v4[12] = v1;

  v5 = v4[9];

  if (v1)
  {
    v6 = sub_26B95636C;
  }

  else
  {
    v4[13] = a1;
    v6 = sub_26B9562D8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B9562D8()
{
  v1 = v0[8];

  sub_26B955164(v1);

  v2 = v0[1];
  v3 = v0[13];

  return v2(v3);
}

uint64_t sub_26B95636C()
{
  v1 = *(v0 + 64);

  sub_26B955164(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B9563FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_26B9ABF24();
  MEMORY[0x28223BE20](v3 - 8);
  sub_26B9ABCC4();
  v4 = swift_allocBox();
  sub_26B9AC1E4();
  sub_26B9AC244();
  sub_26B9AC234();
  sub_26B9ABCB4();
  *a1 = v4;
  v5 = *MEMORY[0x277D729E8];
  v6 = sub_26B9ABE84();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_26B95659C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_26B9ABE84();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_26B956858(0, v9, 0);
  v10 = v22;
  v11 = *(sub_26B9AC254() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_26B956858((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppEnumQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEnumQueryDataSource(uint64_t a1)
{
  result = qword_28042EA80;
  if (!qword_28042EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26B956858(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B956878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26B956878(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v10 = *(sub_26B9ABE84() - 8);
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
  v15 = *(sub_26B9ABE84() - 8);
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

uint64_t BoolParameterQuery.searchString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BoolParameterQuery.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoolParameterQuery(0) + 20);
  v4 = sub_26B9AB984();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for BoolParameterQuery(uint64_t a1)
{
  result = qword_28042ED10;
  if (!qword_28042ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BoolParameterQuery.parameterDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoolParameterQuery(0) + 24);
  v4 = sub_26B9AC0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoolParameterQuery.init(searchString:toolInvocation:parameterDefinition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for BoolParameterQuery(0);
  v9 = *(v8 + 20);
  v10 = sub_26B9AB984();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_26B9AC0E4();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t sub_26B956CEC(uint64_t a1)
{
  result = sub_26B9571AC(&qword_2804269B0, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B956D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_26B9571AC(&qword_2804269C8, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_26B956E5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26B9571AC(&qword_2804269C8, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, v6);
}

uint64_t sub_26B956F40(uint64_t a1)
{
  result = sub_26B9571AC(&qword_2804269B8, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  *(a1 + 8) = result;
  return result;
}

double sub_26B956F98@<D0>(uint64_t x8_0@<X8>)
{
  sub_26B9571AC(&qword_2804269C0, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);

  *&result = ParameterQuery.platterBehavior.getter(x8_0).n128_u64[0];
  return result;
}

uint64_t sub_26B957014(uint64_t a1)
{
  result = sub_26B9571AC(&qword_2804260C0, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B95706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B9571AC(&qword_2804260C0, type metadata accessor for BoolParameterQuery, &protocol conformance descriptor for BoolParameterQuery);

  return static Query.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_26B957118(uint64_t a1)
{
  result = sub_26B9AB984();
  if (v2 <= 0x3F)
  {
    result = sub_26B9AC0E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B9571AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B9571F8(uint64_t a1)
{
  v1[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v1[7] = swift_task_alloc();
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v1[9] = swift_task_alloc();
  v2 = sub_26B92A538();
  swift_beginAccess();
  v3 = *v2;
  v1[10] = v3;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B95735C, v3, 0);
}

uint64_t sub_26B95735C()
{
  v30 = v0[7];
  v31 = v0[6];
  v32 = v0[8];
  v27 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v24 = sub_26B9ABE84();
  v25 = *(*(v24 - 8) + 72);
  v23 = *(v24 - 8);
  v1 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26B9AF560;
  v2 = (v26 + v1);
  v3 = sub_26B9ABE44();
  v4 = swift_allocBox();
  *v5 = 1;
  v6 = *MEMORY[0x277D72988];
  v7 = *(*(v3 - 8) + 104);
  v7(v5, v6, v3);
  *v2 = v4;
  v8 = *MEMORY[0x277D72A58];
  v9 = *(v23 + 104);
  v9(v26 + v1, v8, v24);
  v10 = swift_allocBox();
  *v11 = 0;
  v7(v11, v6, v3);
  *(v2 + v25) = v10;
  v9(v2 + v25, v8, v24);
  type metadata accessor for FuzzyRanker();
  v12 = *v27;
  v13 = v27[1];
  (*(v23 + 56))(v28, 1, 1, v24);
  v14 = sub_26B97294C(v26, v12, v13, v28, 1);
  v29[11] = v14;

  sub_26B9579B8(v28);
  v15 = type metadata accessor for BoolParameterQuery(0);
  sub_26B9AB934();
  v16 = sub_26B9AB914();
  (*(*(v16 - 8) + 56))(v30, 0, 1, v16);
  v17 = *(v15 + 24);
  v18 = sub_26B9AC0E4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v31, v27 + v17, v18);
  (*(v19 + 56))(v31, 0, 1, v18);
  sub_26B964AE0(0, 0, v30, v31, 0, 2, v32);
  type metadata accessor for TypedValueResultBuilder(0);
  v20 = swift_task_alloc();
  v29[12] = v20;
  *v20 = v29;
  v20[1] = sub_26B957724;
  v21 = v29[8];

  return sub_26B965780(v14, v21);
}

uint64_t sub_26B957724(uint64_t a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_26B95791C;
  }

  else
  {
    v4[14] = a1;
    v6 = sub_26B95787C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26B95787C()
{
  v1 = v0[8];

  sub_26B955164(v1);

  v2 = v0[1];
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_26B95791C()
{
  v1 = *(v0 + 64);

  sub_26B955164(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26B9579B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BoolParameterQueryDataSource.__deallocating_deinit()
{
  ToolKitQueryDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolParameterQueryDataSource(uint64_t a1)
{
  result = qword_28042ED20;
  if (!qword_28042ED20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CustomEnumerableParameterQuery.searchString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CustomEnumerableParameterQuery.selectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_26B9ACA34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CustomEnumerableParameterQuery.init(searchString:showAllCases:selectedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  v9 = *(type metadata accessor for CustomEnumerableParameterQuery(0, a5, a6, a4) + 40);
  v10 = sub_26B9ACA34();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a4, v10);
}

uint64_t sub_26B957C60(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B957CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v5;
  v11[1] = sub_26B8EC52C;

  return TypedQuery.start(with:context:resultHandler:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_26B957DA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_26B8EB6C8;

  return TypedQuery.stop(with:)(a1, a2, WitnessTable);
}

uint64_t sub_26B957E74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_26B957EB0@<D0>(uint64_t x8_0@<X8>)
{
  swift_getWitnessTable();

  *&result = ParameterQuery.platterBehavior.getter(x8_0).n128_u64[0];
  return result;
}

uint64_t sub_26B957F14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B957F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static Query.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_26B957FC4(uint64_t a1)
{
  result = sub_26B9ACA34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B95804C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 17) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 17) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_26B958204(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 17) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 17] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 17] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_26B95852C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v8 = a2[1];
  if (v7)
  {
    if (v8)
    {
      v9 = *a1 == *a2 && v7 == v8;
      if (v9 || (sub_26B9ACEB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue(0, a3, a4, v8);
    return sub_26B9AC494() & 1;
  }

  return 0;
}

uint64_t sub_26B9585CC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    sub_26B9ACFD4();
    sub_26B9AC574();
  }

  else
  {
    sub_26B9ACFD4();
  }

  return sub_26B9AC464();
}

uint64_t sub_26B958654(uint64_t a1)
{
  sub_26B9ACFB4();
  sub_26B9585CC(v3, a1);
  return sub_26B9ACFF4();
}

uint64_t sub_26B9586A4(uint64_t a1, uint64_t a2)
{
  sub_26B9ACFB4();
  sub_26B9585CC(v4, a2);
  return sub_26B9ACFF4();
}

uint64_t sub_26B95870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a3;
  v5[33] = a4;
  v5[31] = a1;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v5[34] = v8;
  v9 = *(v7 + 88);
  v5[35] = v9;
  v5[36] = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue(255, v8, v9, a4);
  v10 = sub_26B9ACA34();
  v5[37] = v10;
  v5[38] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *(a2 + 24);
  v5[39] = v11;
  v5[40] = v12;
  v13 = sub_26B92A538();
  swift_beginAccess();
  v14 = *v13;
  v5[41] = v14;
  sub_26B9AAAE4();

  return MEMORY[0x2822009F8](sub_26B958848, v14, 0);
}

uint64_t sub_26B958848()
{
  v1 = v0[35];
  v2 = v0[34];
  v0[30] = sub_26B9AB3B4();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_26B9AC7B4();
  swift_getWitnessTable();
  v24 = sub_26B9AC654();

  v0[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
  swift_initStackObject();
  v4 = sub_26B9AC714();
  v6 = v5;
  v7 = swift_task_alloc();
  *v7 = v2;
  v7[1] = v1;
  KeyPath = swift_getKeyPath();

  *v6 = KeyPath;
  v9 = sub_26B9AD024();
  sub_26B9AC7B4();
  if (sub_26B9AC784())
  {
    v10 = sub_26B959AAC(v4, v9, MEMORY[0x277D83F88]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  v11 = v0[38];
  v12 = v0[39];
  v13 = v0[36];
  v23 = v0[37];
  v14 = v0[31];

  type metadata accessor for FuzzyRanker();
  v15 = *v14;
  v16 = *(v14 + 8);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  LOBYTE(v14) = *(v14 + 16);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_26B9731BC(v24, v10, v15, v16, v12, v14, v13, WitnessTable);
  v0[43] = v18;

  (*(v11 + 8))(v12, v23);
  v19 = swift_task_alloc();
  v0[44] = v19;
  *v19 = v0;
  v19[1] = sub_26B958B30;
  v20 = v0[34];
  v21 = v0[35];

  return sub_26B959E68(v18, v20, v21);
}

uint64_t sub_26B958B30(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 328);
  if (v1)
  {

    v7 = sub_26B959000;
  }

  else
  {

    *(v5 + 360) = a1;
    v7 = sub_26B958C98;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B958C98()
{
  v1 = *(v0 + 360);
  if (v1 >> 62)
  {
    if (sub_26B9ACB44())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + 320);
    v3 = *(v0 + 256);
    v4 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
    *(v0 + 368) = v4;
    v5 = v4;
    v6 = sub_26B9AC4C4();
    [v5 setTitle_];

    v7 = sub_26B9AC4C4();
    [v5 setIdentifier_];

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v8 = sub_26B9AC6E4();

    [v5 setResults_];

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26B9B1290;
    *(v9 + 32) = v5;
    v10 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v9, v2, 1, 1, 0, v10 & 1, v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 73);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    *(v0 + 96) = *(v0 + 56);
    *(v0 + 104) = v11;
    *(v0 + 112) = v12;
    *(v0 + 113) = v13;
    *(v0 + 120) = v14;
    *(v0 + 128) = v15;
    v27 = (v3 + *v3);
    v16 = swift_task_alloc();
    *(v0 + 376) = v16;
    *v16 = v0;
    v16[1] = sub_26B959378;
    v17 = v0 + 96;
    goto LABEL_6;
  }

  v18 = *(v0 + 320);
  v19 = *(v0 + 256);

  static SearchResults.empty(queryID:)(v18, v0 + 136);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 153);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v20;
  *(v0 + 192) = v21;
  *(v0 + 193) = v22;
  *(v0 + 200) = v23;
  *(v0 + 208) = v24;
  v27 = (v19 + *v19);
  v25 = swift_task_alloc();
  *(v0 + 384) = v25;
  *v25 = v0;
  v25[1] = sub_26B95953C;
  v17 = v0 + 176;
LABEL_6:

  return v27(v17);
}

uint64_t sub_26B959000()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_26B9ACB44())
    {
      goto LABEL_3;
    }
  }

  else if (*((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v1 = *(v0 + 320);
    v2 = *(v0 + 256);
    v3 = [objc_allocWithZone(MEMORY[0x277D65848]) init];
    *(v0 + 368) = v3;
    v4 = v3;
    v5 = sub_26B9AC4C4();
    [v4 setTitle_];

    v6 = sub_26B9AC4C4();
    [v4 setIdentifier_];

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v7 = sub_26B9AC6E4();

    [v4 setResults_];

    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26B9B1290;
    *(v8 + 32) = v4;
    v9 = sub_26B906128();
    SearchResults.init(sections:queryIdentifier:topHitIsIn:finishedGettingResults:filters:shouldShowTopResultAboveFilterBar:)(v8, v1, 1, 1, 0, v9 & 1, v0 + 56);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 73);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    *(v0 + 96) = *(v0 + 56);
    *(v0 + 104) = v10;
    *(v0 + 112) = v11;
    *(v0 + 113) = v12;
    *(v0 + 120) = v13;
    *(v0 + 128) = v14;
    v26 = (v2 + *v2);
    v15 = swift_task_alloc();
    *(v0 + 376) = v15;
    *v15 = v0;
    v15[1] = sub_26B959378;
    v16 = v0 + 96;
    goto LABEL_6;
  }

  v17 = *(v0 + 320);
  v18 = *(v0 + 256);

  static SearchResults.empty(queryID:)(v17, v0 + 136);
  v19 = *(v0 + 144);
  v20 = *(v0 + 152);
  v21 = *(v0 + 153);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 184) = v19;
  *(v0 + 192) = v20;
  *(v0 + 193) = v21;
  *(v0 + 200) = v22;
  *(v0 + 208) = v23;
  v26 = (v18 + *v18);
  v24 = swift_task_alloc();
  *(v0 + 384) = v24;
  *v24 = v0;
  v24[1] = sub_26B95953C;
  v16 = v0 + 176;
LABEL_6:

  return v26(v16);
}

uint64_t sub_26B959378()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x2822009F8](sub_26B9594C8, v1, 0);
}

uint64_t sub_26B9594C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B95953C()
{
  v1 = *(*v0 + 328);

  return MEMORY[0x2822009F8](sub_26B95968C, v1, 0);
}

uint64_t sub_26B95968C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B959710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26B9AB2F4();
  if (v4)
  {

    Data = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue(0, a2, a3, v14);
    return (*(*(Data - 8) + 56))(a4, 1, 1, Data);
  }

  else
  {
    v17 = v12;
    v18 = v13;
    (*(v9 + 16))(v11, a1, a2);
    *a4 = v17;
    a4[1] = v18;
    v20 = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue(0, a2, a3, v19);
    (*(v9 + 32))(a4 + *(v20 + 36), v11, a2);
    return (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
  }
}

uint64_t sub_26B9598E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B972A68(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26B959930@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_26B959968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 104) + **(**v4 + 104));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26B959AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_26B9AC784())
  {
    sub_26B9ACBB4();
    v15 = sub_26B9ACBA4();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_26B9AC784();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_26B9AC764();
    sub_26B9AC724();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26B9ACC24();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_26B9AC454();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_26B9AC494();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26B959E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a1;
  v6 = sub_26B9AB1F4();
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v7 = sub_26B9ABE84();
  v3[10] = v7;
  v3[11] = *(v7 - 8);
  v3[12] = swift_task_alloc();
  Data = type metadata accessor for CustomEnumerableParameterQueryDataSource.RankableValue(0, a2, a3, v8);
  v3[13] = Data;
  v10 = *(Data - 8);
  v3[14] = v10;
  v3[15] = *(v10 + 64);
  v3[16] = swift_task_alloc();
  v11 = sub_26B92A538();
  swift_beginAccess();
  v12 = *v11;

  return MEMORY[0x2822009F8](sub_26B95A010, v12, 0);
}

uint64_t sub_26B95A010()
{
  v1 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  sub_26B9AAFB4();
  swift_allocObject();
  sub_26B9AAFA4();
  if (sub_26B9AC784())
  {
    v2 = 0;
    v3 = v0[14];
    v42 = v0[15];
    v55 = (v3 + 16);
    v54 = v3;
    v53 = (v3 + 8);
    v4 = v0[11];
    v46 = (v4 + 104);
    v47 = (v4 + 8);
    v43 = (v0[8] + 8);
    v48 = MEMORY[0x277D84F90];
    v5 = &off_279D10000;
    v52 = v0[16];
    v44 = *MEMORY[0x277D72A58];
    v45 = *MEMORY[0x277D729B8];
    while (1)
    {
      v6 = sub_26B9AC764();
      sub_26B9AC724();
      if (v6)
      {
        (*(v54 + 16))(v0[16], v0[6] + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v2, v0[13]);
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = sub_26B9ACC24();
        if (v42 != 8)
        {
          __break(1u);
          return result;
        }

        v38 = v0[16];
        v39 = v0[13];
        v0[5] = result;
        (*v55)(v38, (v0 + 5), v39);
        swift_unknownObjectRelease();
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      v58 = v7;
      v8 = v0[16];
      v9 = v0[13];
      v10 = [objc_allocWithZone(MEMORY[0x277D65850]) *(v5 + 280)];
      v11 = [objc_allocWithZone(MEMORY[0x277D4C328]) *(v5 + 280)];
      v59 = *v8;
      v12 = *(v52 + 8);
      v13 = *v53;

      v13(v8, v9);
      if (v12)
      {
        v14 = v11;
        v57 = v10;
        v15 = sub_26B9AC4C4();
        v16 = [objc_opt_self() textWithString_];

        if (v16)
        {
          v17 = v0[12];
          v18 = v0[10];
          [v16 setMaxLines_];
          v51 = v16;
          [v14 setTitle_];
          v19 = [objc_allocWithZone(MEMORY[0x277D4C688]) v5 + 2936];
          v20 = sub_26B9AC4C4();
          [v19 setSymbolName_];

          [v19 setPunchThroughBackground_];
          v50 = v14;
          [v14 setThumbnail_];
          v21 = v5;
          v56 = [objc_allocWithZone(MEMORY[0x277D4C380]) v5 + 2936];
          v22 = sub_26B9ABE44();
          v23 = swift_allocBox();
          *v24 = v59;
          v24[1] = v12;
          (*(*(v22 - 8) + 104))(v24, v45, v22);
          *v17 = v23;
          (*v46)(v17, v44, v18);
          sub_26B95AECC();
          v25 = sub_26B9AAF94();
          v27 = v26;
          v60 = v19;
          v28 = v0[9];
          v49 = v0[7];
          (*v47)(v0[12], v0[10]);
          v29 = sub_26B9AB114();
          sub_26B922394(v25, v27);
          [v56 setEncodedTypedValue_];

          v30 = v50;
          [v30 setCommand_];
          v31 = [objc_allocWithZone(MEMORY[0x277D4C230]) v21 + 2936];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_26B9B1290;
          *(v32 + 32) = v30;
          sub_26B9294B8(0, &qword_2804272E0, 0x277D4C238);
          v33 = sub_26B9AC6E4();

          [v31 setCardSections_];

          v34 = v57;
          [v34 setInlineCard_];
          sub_26B9AA884();
          sub_26B9AB1C4();
          (*v43)(v28, v49);
          v35 = sub_26B9AC4C4();

          [v34 setIdentifier_];

          v36 = v34;
          MEMORY[0x26D6865A0]();
          v5 = v21;
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26B9AC734();
          }

          sub_26B9AC774();

          v48 = v61;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v2;
      if (v58 == sub_26B9AC784())
      {
        goto LABEL_18;
      }
    }
  }

  v48 = v1;
LABEL_18:
  if (v48 >> 62)
  {
LABEL_24:
    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);

    v40 = sub_26B9ACD34();
  }

  else
  {

    sub_26B9ACEC4();

    sub_26B9294B8(0, &qword_2804263F0, 0x277D4C5D0);
    v40 = v48;
  }

  v41 = v0[1];

  return v41(v40);
}

uint64_t dispatch thunk of CustomEnumerableParameterQueryDataSource.start(with:context:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 104) + **(*v4 + 104));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26B8EB6C8;

  return v12(a1, a2, a3, a4);
}

void sub_26B95A9E0(uint64_t a1)
{
  sub_26B95AE60();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B95AA68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_26B95ABFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

void sub_26B95AE60()
{
  if (!qword_2804269D0)
  {
    v0 = sub_26B9ACA34();
    if (!v1)
    {
      atomic_store(v0, &qword_2804269D0);
    }
  }
}

unint64_t sub_26B95AECC()
{
  result = qword_280426FD0;
  if (!qword_280426FD0)
  {
    sub_26B9ABE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426FD0);
  }

  return result;
}

uint64_t sub_26B95AF24@<X0>(void *a1@<X8>)
{
  v46 = a1;
  v2 = sub_26B9ABD44();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26B9ABF24();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26B9AC014();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_26B9ABF94();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition;
  swift_beginAccess();
  sub_26B9236E8(v1 + v17, v12, &qword_280426358, &qword_26B9B39D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26B8EACD8(v12, &qword_280426358, &qword_26B9B39D0);
    _s18ResolutionStrategyOMa(0);
  }

  else
  {
    v18 = v46;
    v39 = v1;
    (*(v14 + 32))(v16, v12, v13);
    (*(v7 + 104))(v9, *MEMORY[0x277D73000], v6);
    v19 = sub_26B9ABF84();
    (*(v7 + 8))(v9, v6);
    if ((v19 & 1) != 0 && (v20 = v43, sub_26B9ABF74(), v21 = sub_26B91EBC0(v20), v23 = v22, v25 = v24, v27 = v26, (*(v44 + 8))(v20, v45), v23))
    {
      v44 = v25;
      v45 = v27;
      v29 = v41;
      v28 = v42;
      v30 = *(v41 + 16);
      v43 = v21;
      v31 = v40;
      v30(v40, v39 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity, v42);
      v32 = sub_26B9ABCA4();
      v34 = v33;
      (*(v29 + 8))(v31, v28);
      (*(v14 + 8))(v16, v13);
      v35 = v44;
      *v18 = v43;
      v18[1] = v23;
      v36 = v45;
      v18[2] = v35;
      v18[3] = v36;
      v18[4] = v32;
      v18[5] = v34;
      _s18ResolutionStrategyOMa(0);
    }

    else
    {
      (*(v14 + 8))(v16, v13);
      _s18ResolutionStrategyOMa(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26B95B3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26B95B478;

  return sub_26B95B574(a1, a2, a3);
}

uint64_t sub_26B95B478(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_26B95B574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for TypedValueResultBuilder.Config(0);
  v4[12] = swift_task_alloc();
  v5 = sub_26B9ABE84();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  v4[16] = swift_task_alloc();
  v6 = sub_26B9ABE44();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_26B9ABDE4();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A8, &qword_26B9B09B0);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804260C8, &qword_26B9B0050);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262A0, &unk_26B9B3640);
  v4[26] = swift_task_alloc();
  v8 = sub_26B9ABD04();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = sub_26B9AC014();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v10 = sub_26B9ABF94();
  v4[33] = v10;
  v4[34] = *(v10 - 8);
  v4[35] = swift_task_alloc();
  v11 = sub_26B9ABF24();
  v4[36] = v11;
  v4[37] = *(v11 - 8);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B95B9BC, 0, 0);
}

uint64_t sub_26B95B9BC()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v50 = v0[36];
  v51 = v0[39];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[11];
  v7 = v0[8];
  v8 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition;
  (*(v5 + 56))(v6 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition, 1, 1, v4);
  v9 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
  v0[41] = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
  v10 = sub_26B9AB104();
  v0[42] = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v0[43] = v12;
  v0[44] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v6 + v9, 1, 1, v10);
  v13 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity;
  v14 = sub_26B9ABD44();
  v0[45] = v14;
  v15 = *(v14 - 8);
  v0[46] = v15;
  (*(v15 + 16))(v6 + v13, v7, v14);
  sub_26B9ABCF4();
  static ToolKitUtilities.entityDefinition(for:)(v2, v1);
  (*(v3 + 8))(v2, v50);
  swift_beginAccess();
  sub_26B949F7C(v1, v6 + v8, &qword_280426358, &qword_26B9B39D0);
  swift_endAccess();
  sub_26B9236E8(v6 + v8, v51, &qword_280426358, &qword_26B9B39D0);
  if ((*(v5 + 48))(v51, 1, v4) == 1)
  {
    sub_26B8EACD8(v0[39], &qword_280426358, &qword_26B9B39D0);
LABEL_8:
    v39 = v0[46];
    v49 = v0[45];
    v40 = v0[15];
    v42 = v0[13];
    v41 = v0[14];
    v43 = v0[12];
    v45 = v0[9];
    v44 = v0[10];
    v46 = v0[8];
    (*(v41 + 16))(v40, v45, v42);
    sub_26B95C6A0(v44, v43);
    v47 = sub_26B965300(v40, v43);
    sub_26B955164(v44);
    (*(v41 + 8))(v45, v42);
    (*(v39 + 8))(v46, v49);

    v48 = v0[1];

    return v48(v47);
  }

  v16 = v0[32];
  v17 = v0[30];
  v18 = v0[31];
  (*(v0[34] + 32))(v0[35], v0[39], v0[33]);
  (*(v18 + 104))(v16, *MEMORY[0x277D73008], v17);
  v19 = sub_26B9ABF84();
  (*(v18 + 8))(v16, v17);
  if ((v19 & 1) == 0)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    goto LABEL_8;
  }

  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[26];
  v23 = v0[23];
  sub_26B9ABCF4();
  sub_26B9ABCA4();
  v24 = sub_26B9AC1D4();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  sub_26B9ABCE4();
  v25 = swift_allocBox();
  v27 = v26;
  v28 = sub_26B9ABF04();
  v29 = swift_allocBox();
  (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D72CC0], v28);
  *v27 = v29;
  (*(v20 + 104))(v27, *MEMORY[0x277D72D50], v21);
  *v23 = v25;
  v31 = *MEMORY[0x277D72AD0];
  v32 = sub_26B9ABEB4();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v23, v31, v32);
  (*(v33 + 56))(v23, 0, 1, v32);
  v34 = swift_task_alloc();
  v0[47] = v34;
  *v34 = v0;
  v34[1] = sub_26B95BFE8;
  v35 = v0[29];
  v36 = v0[25];
  v37 = v0[23];

  return static ToolKitUtilities.resolve(entityIdentifier:expectedType:)(v36, v35, v37);
}

uint64_t sub_26B95BFE8()
{
  v1 = *(*v0 + 184);

  sub_26B8EACD8(v1, &qword_2804262A8, &qword_26B9B09B0);

  return MEMORY[0x2822009F8](sub_26B95C110, 0, 0);
}

uint64_t sub_26B95C110()
{
  v1 = v0[24];
  v2 = v0[13];
  v3 = v0[14];
  sub_26B9236E8(v0[25], v1, &qword_2804260C8, &qword_26B9B0050);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v10 = v0[24];
    sub_26B8EACD8(v0[25], &qword_2804260C8, &qword_26B9B0050);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    sub_26B8EACD8(v10, &qword_2804260C8, &qword_26B9B0050);
  }

  else if ((*(v0[14] + 88))(v0[24], v0[13]) == *MEMORY[0x277D72A58])
  {
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    (*(v0[14] + 96))(v0[24], v0[13]);
    v14 = swift_projectBox();
    (*(v12 + 16))(v11, v14, v13);
    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D72998])
    {
      v16 = v0[21];
      v15 = v0[22];
      v18 = v0[19];
      v17 = v0[20];
      (*(v0[18] + 96))(v18, v0[17]);
      (*(v16 + 32))(v15, v18, v17);

      v19 = sub_26B9ABDD4();
      v20 = [v19 fileURL];

      if (v20)
      {
        sub_26B9AB0C4();

        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v38 = v0[41];
      v60 = v0[42];
      v61 = v0[43];
      v39 = v0[34];
      v59 = v0[35];
      v40 = v0[33];
      v41 = v0[28];
      v42 = v0[29];
      v43 = v0[27];
      v44 = v0[25];
      v45 = v0[16];
      v46 = v0[11];
      (*(v0[21] + 8))(v0[22], v0[20]);
      sub_26B8EACD8(v44, &qword_2804260C8, &qword_26B9B0050);
      (*(v41 + 8))(v42, v43);
      (*(v39 + 8))(v59, v40);
      v61(v45, v62, 1, v60);
      swift_beginAccess();
      sub_26B949F7C(v45, v46 + v38, &qword_280426308, &qword_26B9B0CD0);
      swift_endAccess();
    }

    else
    {
      v30 = v0[34];
      v63 = v0[35];
      v31 = v0[33];
      v33 = v0[28];
      v32 = v0[29];
      v34 = v0[27];
      v35 = v0[18];
      v36 = v0[19];
      v37 = v0[17];
      sub_26B8EACD8(v0[25], &qword_2804260C8, &qword_26B9B0050);
      (*(v33 + 8))(v32, v34);
      (*(v30 + 8))(v63, v31);
      (*(v35 + 8))(v36, v37);
    }
  }

  else
  {
    v22 = v0[34];
    v21 = v0[35];
    v23 = v0[33];
    v25 = v0[28];
    v24 = v0[29];
    v26 = v0[27];
    v27 = v0[24];
    v28 = v0[13];
    v29 = v0[14];
    sub_26B8EACD8(v0[25], &qword_2804260C8, &qword_26B9B0050);
    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    (*(v29 + 8))(v27, v28);
  }

  v47 = v0[46];
  v58 = v0[45];
  v48 = v0[15];
  v50 = v0[13];
  v49 = v0[14];
  v51 = v0[12];
  v53 = v0[9];
  v52 = v0[10];
  v54 = v0[8];
  (*(v49 + 16))(v48, v53, v50);
  sub_26B95C6A0(v52, v51);
  v55 = sub_26B965300(v48, v51);
  sub_26B955164(v52);
  (*(v49 + 8))(v53, v50);
  (*(v47 + 8))(v54, v58);

  v56 = v0[1];

  return v56(v55);
}

uint64_t sub_26B95C6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValueResultBuilder.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26B95C704()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_26B9AB104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v9 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v8;
  if (sub_26B964A90(*v9, *(v9 + 8)))
  {
    result = sub_26B95C984();
    if (!result)
    {
      v11 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
      swift_beginAccess();
      sub_26B9236E8(v0 + v11, v3, &qword_280426308, &qword_26B9B0CD0);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_26B8EACD8(v3, &qword_280426308, &qword_26B9B0CD0);
        return sub_26B96A848();
      }

      else
      {
        (*(v5 + 32))(v7, v3, v4);
        v12 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
        v13 = sub_26B9AB0A4();
        v14 = [objc_opt_self() punchoutWithURL_];

        [v12 setPunchout_];
        (*(v5 + 8))(v7, v4);
        return v12;
      }
    }
  }

  else
  {

    return sub_26B96A848();
  }

  return result;
}

id sub_26B95C984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426218, &qword_26B9B0890);
  MEMORY[0x28223BE20](v0 - 8);
  v83 = &v73 - v1;
  v82 = sub_26B9AB984();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v84 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_26B9AB914();
  v85 = *(v86 - 8);
  v3 = MEMORY[0x28223BE20](v86);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v73 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  v11 = sub_26B9ABC64();
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x28223BE20](v11);
  v96 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26B9AB224();
  v97 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v95 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_26B9AB854();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_26B9ABD44();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_26B9ABA34();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_26B9ABA14();
  v94 = *(v102 - 8);
  v21 = MEMORY[0x28223BE20](v102);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v90 = &v73 - v25;
  MEMORY[0x28223BE20](v24);
  v101 = &v73 - v26;
  sub_26B9ABC04();
  v27 = sub_26B9ABBF4();
  v78 = v13;
  v73 = v8;
  v74 = v5;
  v75 = v10;
  v80 = v27;
  sub_26B9AB9F4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D8, &qword_26B9B3A50);
  v28 = sub_26B9ABF24();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v79 = xmmword_26B9AF300;
  *(v31 + 16) = xmmword_26B9AF300;
  (*(v17 + 16))(v19, v100 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity, v16);
  sub_26B9ABCF4();
  (*(v17 + 8))(v19, v16);
  v32 = sub_26B922FC8(v31);
  swift_setDeallocating();
  (*(v29 + 8))(v31 + v30, v28);
  swift_deallocClassInstance();
  v33 = v87;
  MEMORY[0x26D6858F0](v32);

  v77 = sub_26B95E674(&qword_280426238, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_26B95E674(&qword_2804269E8, MEMORY[0x277D724E8], MEMORY[0x277D724E0]);
  v34 = v90;
  sub_26B9ABC54();

  (*(v88 + 8))(v33, v89);
  v94 = *(v94 + 8);
  (v94)(v23, v102);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804269F0, &qword_26B9B3A88);
  v35 = sub_26B9AB864();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v79;
  (*(v36 + 104))(v38 + v37, *MEMORY[0x277D720D8], v35);
  v39 = sub_26B95E220(v38);
  swift_setDeallocating();
  (*(v36 + 8))(v38 + v37, v35);
  swift_deallocClassInstance();
  v40 = v91;
  *v91 = v39;
  v41 = v92;
  v42 = v93;
  (*(v92 + 104))(v40, *MEMORY[0x277D720A8], v93);
  sub_26B95E674(&qword_2804269F8, MEMORY[0x277D720C0], MEMORY[0x277D720B8]);
  sub_26B9ABC54();
  v43 = v102;

  v44 = v40;
  v45 = v94;
  (*(v41 + 8))(v44, v42);
  v45(v34, v43);
  v46 = v95;
  sub_26B9AB204();
  v48 = v98;
  v47 = v99;
  v49 = v96;
  (*(v98 + 104))(v96, *MEMORY[0x277D72858], v99);
  v50 = sub_26B9ABBE4();
  v51 = v43;
  v52 = v100;
  v53 = v50;
  (*(v48 + 8))(v49, v47);
  (*(v97 + 8))(v46, v78);
  v45(v101, v51);
  if (*(v53 + 16))
  {
    v54 = v85;
    v55 = *(v85 + 16);
    v56 = v73;
    v57 = v86;
    v55(v73, v53 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v86);

    v58 = v75;
    (*(v54 + 32))(v75, v56, v57);
    v55(v74, v58, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A00, &qword_26B9B3A90);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746567726174;
    *(inited + 16) = v79;
    *(inited + 40) = 0xE600000000000000;
    v60 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
    v61 = sub_26B9ABE84();
    v62 = MEMORY[0x277D72A68];
    *(inited + 72) = v61;
    *(inited + 80) = v62;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v52 + v60, v61);
    sub_26B95E540(inited);
    swift_setDeallocating();
    sub_26B8EACD8(inited + 32, &qword_280426A08, &qword_26B9B5770);
    v64 = sub_26B9ABAE4();
    (*(*(v64 - 8) + 56))(v83, 1, 1, v64);
    v65 = v84;
    sub_26B9AB924();
    sub_26B9AAFB4();
    swift_allocObject();
    sub_26B9AAFA4();
    sub_26B95E674(&qword_280426A10, MEMORY[0x277D72278], MEMORY[0x277D72280]);
    v66 = v82;
    v67 = sub_26B9AAF94();
    v69 = v68;

    v70 = [objc_allocWithZone(MEMORY[0x277D4C358]) init];
    v71 = sub_26B9AB114();
    [v70 setToolInvocationData_];
    sub_26B922394(v67, v69);

    (*(v81 + 8))(v65, v66);
    (*(v54 + 8))(v58, v57);
    return v70;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_26B95D84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t *sub_26B95D91C()
{
  v1 = sub_26B9ABF24();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426358, &qword_26B9B39D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_26B9ABF94();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426308, &qword_26B9B0CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_26B9AB104();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B968C74();
  if (!v16 || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v26 = v1;
    v17 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL;
    swift_beginAccess();
    sub_26B9236E8(v0 + v17, v11, &qword_280426308, &qword_26B9B0CD0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_26B8EACD8(v11, &qword_280426308, &qword_26B9B0CD0);
      v18 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition;
      swift_beginAccess();
      sub_26B9236E8(v0 + v18, v5, &qword_280426358, &qword_26B9B39D0);
      v19 = v29;
      if ((*(v29 + 48))(v5, 1, v6) == 1)
      {
        sub_26B8EACD8(v5, &qword_280426358, &qword_26B9B39D0);
      }

      else
      {
        (*(v19 + 32))(v8, v5, v6);
        v22 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
        v23 = v27;
        sub_26B9ABF74();
        sub_26B9ABEF4();
        (*(v28 + 8))(v23, v26);
        v24 = sub_26B9AC4C4();

        [v22 setBundleIdentifier_];

        (*(v19 + 8))(v8, v6);
        return v22;
      }
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v20 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
      v21 = sub_26B9AB0A4();
      [v20 setFilePath_];

      (*(v13 + 8))(v15, v12);
      return v20;
    }
  }

  return v16;
}

id sub_26B95DDD8()
{
  if (!*(v0 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config + 8))
  {
    return 0;
  }

  v1 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
  v2 = sub_26B9AC4C4();
  [v1 setBundleIdentifier_];

  return v1;
}

uint64_t sub_26B95DE98()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity;
  v2 = sub_26B9ABD44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition, &qword_280426358, &qword_26B9B39D0);
  return sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL, &qword_280426308, &qword_26B9B0CD0);
}

uint64_t sub_26B95DF34()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entity;
  v2 = sub_26B9ABD44();
  v3 = *(*(v2 - 8) + 8);
  sub_26B9AAAE4();
  v3(v0 + v1, v2);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_entityDefinition, &qword_280426358, &qword_26B9B39D0);
  sub_26B8EACD8(v0 + OBJC_IVAR____TtC17SpotlightUIShared32AppEntityTypedValueResultBuilder_fileURL, &qword_280426308, &qword_26B9B0CD0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppEntityTypedValueResultBuilder(uint64_t a1)
{
  result = qword_28042F2C8;
  if (!qword_28042F2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B95E090(uint64_t a1)
{
  sub_26B9ABD44();
  if (v1 <= 0x3F)
  {
    sub_26B95E1CC(319, &qword_2804269D8, MEMORY[0x277D72DD8]);
    if (v2 <= 0x3F)
    {
      sub_26B95E1CC(319, &qword_2804269E0, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26B95E1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B9ACA34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B95E220(uint64_t a1)
{
  v2 = sub_26B9AB864();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A18, &qword_26B9B3A98);
    v9 = sub_26B9ACBA4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_26B95E674(&qword_280426A20, MEMORY[0x277D72108], MEMORY[0x277D72110]);
      v16 = sub_26B9AC454();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_26B95E674(&qword_280426A28, MEMORY[0x277D72108], MEMORY[0x277D72118]);
          v23 = sub_26B9AC494();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26B95E540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426360, &qword_26B9B0D40);
    v3 = sub_26B9ACD84();
    v4 = a1 + 32;
    sub_26B9AAAE4();
    while (1)
    {
      sub_26B9236E8(v4, &v13, &qword_280426A08, &qword_26B9B5770);
      v5 = v13;
      v6 = v14;
      result = sub_26B9201A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B8ECB70(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_26B95E674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B95E6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = type metadata accessor for TypedValueResultBuilder.Config(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app;
  v14 = sub_26B9ABDA4();
  v15 = *(v14 - 8);
  v16 = v12 + v13;
  v17 = v21;
  (*(v15 + 16))(v16, v21, v14);
  (*(v9 + 16))(v11, a2, v8);
  sub_26B95C6A0(a3, v7);
  v18 = sub_26B965300(v11, v7);
  sub_26B955164(a3);
  (*(v9 + 8))(a2, v8);
  (*(v15 + 8))(v17, v14);
  return v18;
}

id sub_26B95E8BC()
{
  v1 = sub_26B9ABDA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app, v1);
  sub_26B9ABD94();
  (*(v2 + 8))(v4, v1);
  v6 = sub_26B9AC4C4();

  [v5 setBundleIdentifier_];

  return v5;
}

id sub_26B95EA04()
{
  v1 = v0;
  v2 = sub_26B9ABDA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app, v2);
  sub_26B9ABD94();
  (*(v3 + 8))(v5, v2);
  v6 = sub_26B9AC4C4();

  v7 = SSAppNameForBundleId();

  if (!v7)
  {
    return sub_26B968070();
  }

  sub_26B9AC504();

  v8 = sub_26B9AC4C4();

  v9 = [objc_opt_self() textWithString_];

  result = v9;
  if (!v9)
  {
    return sub_26B968070();
  }

  return result;
}

id sub_26B95EB98()
{
  v1 = sub_26B9ABDA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v6 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v5;
  if (sub_26B964A90(*v6, *(v6 + 8)))
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D4C410]) init];
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app, v1);
    sub_26B9ABD94();
    (*(v2 + 8))(v4, v1);
    v8 = sub_26B9AC4C4();

    [v7 setApplicationBundleIdentifier_];

    return v7;
  }

  else
  {

    return sub_26B96A848();
  }
}

uint64_t sub_26B95ED68()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app;
  v2 = sub_26B9ABDA4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B95EDD0()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26AppTypedValueResultBuilder_app;
  v2 = sub_26B9ABDA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppTypedValueResultBuilder(uint64_t a1)
{
  result = qword_28042F2F0;
  if (!qword_28042F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B95EEC8(uint64_t a1)
{
  result = sub_26B9ABDA4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B95EF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = type metadata accessor for TypedValueResultBuilder.Config(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v14 = sub_26B9ABC94();
  v15 = *(v14 - 8);
  v16 = v12 + v13;
  v17 = v21;
  (*(v15 + 16))(v16, v21, v14);
  (*(v9 + 16))(v11, a2, v8);
  sub_26B95C6A0(a3, v7);
  v18 = sub_26B965300(v11, v7);
  sub_26B955164(a3);
  (*(v9 + 8))(a2, v8);
  (*(v15 + 8))(v17, v14);
  return v18;
}

id sub_26B95F158()
{
  v1 = sub_26B9ABF24();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26B9ABC94();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v11 = *(v4 + 16);
  v11(&v19 - v8, v0 + OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue, v3);
  sub_26B9ABC74();
  v12 = *(v4 + 8);
  v12(v9, v3);
  v11(v7, v0 + v10, v3);
  v13 = sub_26B9ABC84();
  v12(v7, v3);
  v14 = *(v13 + 16);

  v15 = v20;
  sub_26B95F3B8(v14);
  (*(v21 + 8))(v15, v22);
  v16 = sub_26B9AC4C4();

  v17 = [objc_opt_self() textWithString_];

  return v17;
}

uint64_t sub_26B95F3B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26B9ABF24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABF04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D72D50])
  {
    (*(v5 + 8))(v7, v4);
LABEL_5:
    v16 = [objc_opt_self() bundle];
    sub_26B9AAF14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A30, &unk_26B9B3AD0);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D83B88];
    *(v17 + 16) = xmmword_26B9AF300;
    v19 = MEMORY[0x277D83C10];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = a1;
    v13 = sub_26B9AC4D4();

    return v13;
  }

  (*(v5 + 96))(v7, v4);
  v12 = swift_projectBox();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_26B95F80C(a1);
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  if (!v15)
  {
    goto LABEL_5;
  }

  return v13;
}

uint64_t sub_26B95F700()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v2 = sub_26B9ABC94();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B95F768()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared33CollectionTypedValueResultBuilder_collectionValue;
  v2 = sub_26B9ABC94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26B95F80C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26B9ABF04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D72CD8] || (v8 != *MEMORY[0x277D72CC0] ? (v9 = v8 == *MEMORY[0x277D72C48]) : (v9 = 1), v9))
  {
    v10 = [objc_opt_self() bundle];
    sub_26B9AAF14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A30, &unk_26B9B3AD0);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D83B88];
    *(v11 + 16) = xmmword_26B9AF300;
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = a1;
    v14 = sub_26B9AC4D4();
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return v14;
}

uint64_t sub_26B95FAC8(uint64_t a1)
{
  v2 = [objc_opt_self() bundle];
  sub_26B9AAF14();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A30, &unk_26B9B3AD0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_26B9AF300;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_26B9AC4D4();

  return v6;
}

uint64_t type metadata accessor for CollectionTypedValueResultBuilder(uint64_t a1)
{
  result = qword_28042F308;
  if (!qword_28042F308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B95FC40(uint64_t a1)
{
  result = sub_26B9ABC94();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B95FCD0@<X0>(char *a1@<X8>)
{
  v2 = sub_26B9AB104();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = sub_26B9ABDD4();
  v10 = [v9 fileURL];

  if (v10)
  {
    sub_26B9AB0C4();

    v11 = *(v3 + 32);
    v11(v8, v6, v2);
    v11(a1, v8, v2);
    _s18ResolutionStrategyOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    _s18ResolutionStrategyOMa(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_26B95FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a2;
  v27 = a1;
  v6 = type metadata accessor for TypedValueResultBuilder.Config(0);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABE84();
  v25 = *(v8 - 8);
  v9 = v25;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v26 = sub_26B9ABDE4();
  v14 = *(v26 - 8);
  (*(v14 + 16))(v12 + v13, a1, v26);
  v15 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v16 = sub_26B9AB414();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12 + v15, v30, v16);
  v18 = a3;
  v19 = a3;
  v20 = v8;
  (*(v9 + 16))(v11, v19, v8);
  v21 = v28;
  v22 = v29;
  sub_26B9607D0(v29, v28, type metadata accessor for TypedValueResultBuilder.Config);
  v23 = sub_26B965300(v11, v21);
  sub_26B960838(v22, type metadata accessor for TypedValueResultBuilder.Config);
  (*(v25 + 8))(v18, v20);
  (*(v17 + 8))(v30, v16);
  (*(v14 + 8))(v27, v26);
  return v23;
}

id sub_26B960118()
{
  v0 = sub_26B9AB104();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = sub_26B9ABDD4();
  v8 = [v7 fileURL];

  if (v8)
  {
    sub_26B9AB0C4();

    (*(v1 + 32))(v6, v4, v0);
    v9 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
    v10 = sub_26B9AB0A4();
    [v9 setFilePath_];

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    sub_26B9AB3C4();
    v11 = sub_26B9AC4C4();

    [v9 setContentType_];
  }

  return v9;
}

id sub_26B960310()
{
  v1 = sub_26B9AB104();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v9 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v8;
  if (sub_26B964A90(*v9, *(v9 + 8)) && (v10 = sub_26B9ABDD4(), v11 = [v10 fileURL], v10, v11))
  {
    sub_26B9AB0C4();

    (*(v2 + 32))(v7, v5, v1);
    v12 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
    v13 = sub_26B9AB0A4();
    v14 = [objc_opt_self() punchoutWithURL_];

    [v12 setPunchout_];
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {

    return sub_26B96A848();
  }
}

uint64_t sub_26B960530@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for ContextualTypedValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B96B290(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26B960704(v4);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    sub_26B96076C(v4, v8);
    v10 = &v8[*(v5 + 20)];

    *(v10 + 1) = xmmword_26B9B3B10;
    v10[32] = 1;
    sub_26B9607D0(v8, a1, type metadata accessor for ContextualTypedValue);
    (*(v6 + 56))(a1, 0, 1, v5);
    return sub_26B960838(v8, type metadata accessor for ContextualTypedValue);
  }
}

uint64_t sub_26B960704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A38, &unk_26B9B3B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B96076C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualTypedValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9607D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26B960838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_26B9608C0(Class *a1, SEL *a2)
{
  v4 = sub_26B9AB104();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = sub_26B9ABDD4();
  v12 = [v11 fileURL];

  if (!v12)
  {
    return 0;
  }

  sub_26B9AB0C4();

  (*(v5 + 32))(v10, v8, v4);
  v13 = [objc_allocWithZone(*a1) init];
  v14 = sub_26B9AB0A4();
  [v13 *a2];

  (*(v5 + 8))(v10, v4);
  return v13;
}

unint64_t sub_26B960A58()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v3 = (*(*v0 + 224))();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v6 = [objc_allocWithZone(MEMORY[0x277D4C2D8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26B9B1290;
    *(v7 + 32) = v4;
    sub_26B9294B8(0, &qword_280426A48, 0x277D4C2E0);
    v8 = v4;
    v9 = sub_26B9AC6E4();

    [v6 setCopyableItems_];

    [v5 setCommand_];
    v10 = v5;
    MEMORY[0x26D6865A0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();
    v11 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v12 = [objc_allocWithZone(MEMORY[0x277D65940]) init];
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26B9B1290;
    *(v13 + 32) = v8;
    v14 = v8;
    v15 = sub_26B9AC6E4();

    [v12 setCopyableItems_];

    [v11 setCommand_];
    v16 = v11;
    MEMORY[0x26D6865A0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v26;
  }

  v17 = (*(*v1 + 240))();
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D4C2B0]) init];
    v20 = [objc_allocWithZone(MEMORY[0x277D4C610]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804263F8, &qword_26B9B12A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26B9B1290;
    *(v21 + 32) = v18;
    sub_26B9294B8(0, &qword_280426A40, 0x277D4C618);
    v22 = v18;
    v23 = sub_26B9AC6E4();

    [v20 setShareItems_];

    [v19 setCommand_];
    v24 = v19;
    MEMORY[0x26D6865A0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v2 = v26;
  }

  if (v2 >> 62)
  {
    if (sub_26B9ACB44())
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return 0;
  }

  return v2;
}

uint64_t sub_26B960EE4()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v2 = sub_26B9ABDE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v4 = sub_26B9AB414();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_26B960F8C()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v2 = sub_26B9ABDE4();
  v3 = *(*(v2 - 8) + 8);
  sub_26B9AAAE4();
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v5 = sub_26B9AB414();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_26B961094()
{
  _s18ResolutionStrategyOMa(0);

  return swift_storeEnumTagMultiPayload();
}

id sub_26B9610D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D4C3B0]) init];
  v1 = sub_26B9ABDD4();
  v2 = [v1 data];

  v3 = sub_26B9AB124();
  v5 = v4;

  v6 = sub_26B9AB114();
  sub_26B922394(v3, v5);
  [v0 setImageData_];

  [v0 setSize_];
  return v0;
}

id sub_26B9611B4()
{
  v1 = (*(*v0 + 184))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D4C6E0]) init];
    [v3 setThumbnail_];
    v4 = *(*v0 + 200);
    v5 = v3;
    v6 = v4();
    [v5 setCommand_];

    if ((*(*v0 + 248))())
    {
      sub_26B9294B8(0, &qword_280426720, 0x277D4C200);
      v7 = sub_26B9AC6E4();
    }

    else
    {
      v7 = 0;
    }

    [v5 setPreviewButtonItems_];

    return v5;
  }

  else
  {

    return sub_26B967DE8();
  }
}

uint64_t sub_26B96132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v43 = a1;
  v5 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v36 - v8;
  v45 = sub_26B9ABE84();
  v54 = *(v45 - 8);
  v9 = v54;
  v10 = MEMORY[0x28223BE20](v45);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = sub_26B9AB414();
  v41 = *(v14 - 8);
  v15 = v41;
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v17;
  v18 = sub_26B9ABDE4();
  v50 = v18;
  v44 = *(v18 - 8);
  v19 = v44;
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v38 = *(v19 + 16);
  v39 = v22;
  v42 = v21;
  v38(v21, a1, v18);
  v37 = *(v15 + 16);
  v37(v17, v51, v14);
  v36 = *(v9 + 16);
  v40 = v13;
  v23 = v45;
  v36(v13, v52, v45);
  v24 = v47;
  sub_26B9607D0(v53, v47, type metadata accessor for TypedValueResultBuilder.Config);
  v25 = v39;
  v38((v39 + OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file), v21, v50);
  v26 = v14;
  v37((v25 + OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType), v49, v14);
  v27 = v46;
  v36(v46, v13, v23);
  v28 = v24;
  v29 = v48;
  sub_26B9607D0(v24, v48, type metadata accessor for TypedValueResultBuilder.Config);
  v48 = sub_26B965300(v27, v29);
  sub_26B960838(v53, type metadata accessor for TypedValueResultBuilder.Config);
  v30 = *(v54 + 8);
  v54 += 8;
  v31 = v23;
  v30(v52, v23);
  v32 = *(v41 + 8);
  v32(v51, v26);
  v33 = *(v44 + 8);
  v34 = v50;
  v33(v43, v50);
  sub_26B960838(v28, type metadata accessor for TypedValueResultBuilder.Config);
  v30(v40, v31);
  v32(v49, v26);
  v33(v42, v34);
  return v48;
}

uint64_t sub_26B961794()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_file;
  v2 = sub_26B9ABDE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17SpotlightUIShared27FileTypedValueResultBuilder_contentType;
  v4 = sub_26B9AB414();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_26B9618A0(uint64_t a1)
{
  result = sub_26B9ABDE4();
  if (v2 <= 0x3F)
  {
    result = sub_26B9AB414();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26B9619CC@<X0>(void *a1@<X8>)
{
  v3 = sub_26B9ABE14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v3);
  v7 = sub_26B9ABE04();
  (*(v4 + 8))(v6, v3);
  v8 = [v7 contactIdentifier];

  if (v8)
  {
    v9 = sub_26B9AC504();
    v11 = v10;

    nullsub_1();
    *a1 = v12;
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
    a1[4] = v9;
    a1[5] = v11;
  }

  _s18ResolutionStrategyOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26B961B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = type metadata accessor for TypedValueResultBuilder.Config(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
  v14 = sub_26B9ABE14();
  v15 = *(v14 - 8);
  v16 = v12 + v13;
  v17 = v21;
  (*(v15 + 16))(v16, v21, v14);
  (*(v9 + 16))(v11, a2, v8);
  sub_26B95C6A0(a3, v7);
  v18 = sub_26B965300(v11, v7);
  sub_26B955164(a3);
  (*(v9 + 8))(a2, v8);
  (*(v15 + 8))(v17, v14);
  return v18;
}

id sub_26B961D74()
{
  v1 = sub_26B9ABE14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D4C2D0]) init];
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v1);
  v6 = sub_26B9ABE04();
  (*(v2 + 8))(v4, v1);
  v7 = [v6 contactIdentifier];

  if (v7)
  {
    v8 = sub_26B9AC504();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280427370, &qword_26B9B0D00);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26B9AF300;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    v12 = sub_26B9AC6E4();

    [v5 setContactIdentifiers_];
  }

  return v5;
}

id sub_26B961F24()
{
  v1 = sub_26B9ABE14();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v9 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v8;
  if (sub_26B964A90(*v9, *(v9 + 8)))
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D4C688]) init];
    v11 = sub_26B9AC4C4();
    [v10 setSymbolName_];

    v12 = v10;
    [v12 setIsTemplate_];
    v13 = [objc_allocWithZone(MEMORY[0x277D4C508]) init];
    v22 = *(v2 + 16);
    v23 = v0;
    v21 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
    v22(v7, v0 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v1);
    v14 = sub_26B9ABE04();
    v15 = *(v2 + 8);
    v15(v7, v1);
    v16 = [v14 displayName];

    if (!v16)
    {
      sub_26B9AC504();
      v16 = sub_26B9AC4C4();
    }

    [v13 setTokenString_];

    v22(v5, v23 + v21, v1);
    v17 = sub_26B9ABE04();
    v15(v5, v1);
    v18 = [v17 contactIdentifier];

    [v13 setEntityIdentifier_];
    [v13 setEntityType_];
    [v13 setSymbolImage_];
    [v13 setTokenImage_];

    return v13;
  }

  else
  {

    return sub_26B96A848();
  }
}

id sub_26B962250()
{
  v1 = v0;
  v2 = sub_26B9ABE14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person, v2);
  v6 = sub_26B9ABE04();
  (*(v3 + 8))(v5, v2);
  v7 = [v6 displayName];

  sub_26B9AC504();
  v8 = sub_26B9AC4C4();

  v9 = [objc_opt_self() textWithString_];

  result = v9;
  if (!v9)
  {
    return sub_26B968070();
  }

  return result;
}

uint64_t sub_26B9623FC()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
  v2 = sub_26B9ABE14();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B962464()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared29PersonTypedValueResultBuilder_person;
  v2 = sub_26B9ABE14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonTypedValueResultBuilder(uint64_t a1)
{
  result = qword_28042F340;
  if (!qword_28042F340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B96255C(uint64_t a1)
{
  result = sub_26B9ABE14();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_26B9625EC()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v2 = v0 + *(type metadata accessor for TypedValueResultBuilder.Config(0) + 28) + v1;
  if (sub_26B964A90(*v2, *(v2 + 8)))
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D4C860]) init];
    type metadata accessor for PrimitiveTypedValueResultHostingView(0);
    v4 = v0;
    sub_26B96FC60();
    v5 = sub_26B9AC4C4();

    [v3 setTypeIdentifier_];

    sub_26B9ABD14();
    sub_26B9ACE74();
    v6 = sub_26B9AC4C4();

    [v3 setInstanceIdentifier_];

    v7 = *(*v0 + 200);
    v8 = v3;
    v9 = v7();
    [v8 setCommand_];

    if ((*(*v4 + 248))())
    {
      sub_26B9627F4();
      v10 = sub_26B9AC6E4();
    }

    else
    {
      v10 = 0;
    }

    [v8 setPreviewButtonItems_];

    return v8;
  }

  else
  {

    return sub_26B967DE8();
  }
}

unint64_t sub_26B9627F4()
{
  result = qword_280426720;
  if (!qword_280426720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280426720);
  }

  return result;
}

uint64_t sub_26B962840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypedValueResultBuilder.Config(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26B9ABE84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v8 + 16))(v10, a1, v7);
  sub_26B95C6A0(a2, v6);
  v11 = sub_26B965300(v10, v6);
  sub_26B955164(a2);
  (*(v8 + 8))(a1, v7);
  return v11;
}

uint64_t sub_26B9629B0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TypedValueResultBuilder.Config(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_26B9ABE84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  *(swift_allocObject() + OBJC_IVAR____TtC17SpotlightUIShared27BoolTypedValueResultBuilder_BOOLValue) = a1;
  v18 = *(v12 + 16);
  v18(v17, a2, v11);
  sub_26B95C6A0(a3, v10);
  v18(v15, v17, v11);
  v19 = v10;
  v20 = v25;
  sub_26B95C6A0(v10, v25);
  v21 = sub_26B965300(v15, v20);
  sub_26B955164(a3);
  v22 = *(v12 + 8);
  v22(a2, v11);
  sub_26B955164(v19);
  v22(v17, v11);
  return v21;
}

id sub_26B962BD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A50, &qword_26B9B3BA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_26B9AC094();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config;
  v13 = type metadata accessor for TypedValueResultBuilder.Config(0);
  sub_26B962F1C(v1 + *(v13 + 24) + v12, v4);
  v14 = sub_26B9AC0E4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_26B8EACD8(v4, &qword_280426288, &qword_26B9B0980);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_26B8EACD8(v7, &qword_280426A50, &qword_26B9B3BA8);
    return sub_26B968070();
  }

  sub_26B9AC0A4();
  (*(v15 + 8))(v4, v14);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (*(v1 + OBJC_IVAR____TtC17SpotlightUIShared27BoolTypedValueResultBuilder_BOOLValue) == 1)
  {
    sub_26B9AC074();
  }

  else
  {
    sub_26B9AC084();
  }

  v17 = sub_26B9AC4C4();

  v18 = [objc_opt_self() textWithString_];

  v19 = (v9 + 8);
  if (v18)
  {
    (*v19)(v11, v8);
    return v18;
  }

  else
  {
    v20 = sub_26B968070();
    (*v19)(v11, v8);
    return v20;
  }
}

uint64_t sub_26B962F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426288, &qword_26B9B0980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_26B962F8C(uint64_t a1)
{
  result = sub_26B968C74();
  if (!result)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    if (*(v1 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config + 8))
    {
      v4 = v3;
      v5 = sub_26B9AC4C4();
      v3 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v3;
    [v3 setBundleIdentifier_];

    return v6;
  }

  return result;
}

uint64_t sub_26B963050()
{
  sub_26B96B8B0();

  return swift_deallocClassInstance();
}

uint64_t sub_26B9630A4()
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A58, &qword_26B9B3BB0);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v61 - v0;
  v66 = sub_26B9AC9F4();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_26B9ABD74();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26B9AAE94();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26B9AB144();
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_26B9AB164();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_26B9AB1B4();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_26B9AAEB4();
  MEMORY[0x28223BE20](v74);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_26B9AAEE4();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B9ACA04();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A60, &qword_26B9B3BB8);
  v89 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_26B9AB224();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426A68, &unk_26B9B3BC0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v22 = sub_26B9ABE44();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, v90, v22);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 == *MEMORY[0x277D72988])
  {
    (*(v23 + 96))(v25, v22);
    v27 = [objc_opt_self() mainBundle];
    v28 = sub_26B9AAF14();

    return v28;
  }

  if (v26 == *MEMORY[0x277D72978])
  {
    (*(v23 + 96))(v25, v22);
    v91 = *v25;
    sub_26B9AB204();
    sub_26B964110();
    sub_26B9AAF54();
    sub_26B8F7938(&qword_280426A98, &qword_280426A68, &unk_26B9B3BC0, MEMORY[0x277CC8CE8]);
    sub_26B9ACAC4();
    (*(v19 + 8))(v21, v18);
    return v92;
  }

  if (v26 == *MEMORY[0x277D729A8])
  {
    (*(v23 + 96))(v25, v22);
    v91 = *v25;
    sub_26B9AB204();
    sub_26B9640BC();
    sub_26B9AB034();
    sub_26B8F7938(&qword_280426A88, &qword_280426A60, &qword_26B9B3BB8, MEMORY[0x277CC9168]);
    sub_26B9AC3E4();
    (*(v89 + 8))(v16, v14);
    return v92;
  }

  if (v26 == *MEMORY[0x277D729C0])
  {
    v30 = (*(v23 + 96))(v25, v22);
    MEMORY[0x26D684CF0](v30);
    sub_26B964074(&qword_280426A78, MEMORY[0x277CC9E58], MEMORY[0x277CC9E50]);
    v31 = v88;
    sub_26B9ACA14();
    (*(v87 + 8))(v13, v31);
    return v92;
  }

  if (v26 == *MEMORY[0x277D729B8])
  {
    (*(v23 + 96))(v25, v22);
    return *v25;
  }

  if (v26 == *MEMORY[0x277D72990])
  {
    (*(v23 + 96))(v25, v22);
    v33 = v78;
    v32 = v79;
    v34 = v81;
    (*(v79 + 32))(v78, v25, v81);
    v35 = v80;
    sub_26B9AB154();
    v36 = v83;
    sub_26B9AB134();
    v37 = sub_26B9AB1A4();
    (*(v85 + 8))(v36, v86);
    (*(v82 + 8))(v35, v84);
    (*(v32 + 8))(v33, v34);
    return v37;
  }

  if (v26 == *MEMORY[0x277D72958])
  {
    (*(v23 + 96))(v25, v22);
    v39 = v75;
    v38 = v76;
    v40 = v77;
    (*(v76 + 32))(v75, v25, v77);
    v41 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v41 setUnitsStyle_];
    v42 = sub_26B9AAE84();
    v43 = [v41 stringFromDateComponents_];

    if (v43)
    {
      v44 = sub_26B9AC504();

      (*(v38 + 8))(v39, v40);
      return v44;
    }

    (*(v38 + 8))(v39, v40);
  }

  else
  {
    if (v26 == *MEMORY[0x277D72968])
    {
      (*(v23 + 96))(v25, v22);
      v45 = v71;
      v46 = v70;
      v47 = v73;
      (*(v71 + 32))(v70, v25, v73);
      sub_26B9AAEA4();
      sub_26B964074(&qword_280426B80, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v48 = sub_26B9AC614();
      (*(v45 + 8))(v46, v47);
      return v48;
    }

    if (v26 == *MEMORY[0x277D72940])
    {
      (*(v23 + 96))(v25, v22);
      v49 = v68;
      v50 = v67;
      v51 = v69;
      (*(v68 + 32))(v67, v25, v69);
      v52 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
      [v52 setUnitStyle_];
      [v52 setUnitOptions_];
      v53 = sub_26B9AAE34();
      v54 = [v52 stringFromMeasurement_];

      v28 = sub_26B9AC504();
      (*(v49 + 8))(v50, v51);
      return v28;
    }

    if (v26 == *MEMORY[0x277D72950])
    {
      (*(v23 + 96))(v25, v22);
      v55 = v62;
      v56 = v61;
      v57 = v64;
      (*(v62 + 32))(v61, v25, v64);
      sub_26B9ABD64();
      v58 = sub_26B9ABD54();
      v59 = v63;
      MEMORY[0x26D684CE0](v58);

      sub_26B964074(&qword_280426A70, MEMORY[0x277CC9E48], MEMORY[0x277CC9E40]);
      v60 = v66;
      sub_26B9ACA14();
      (*(v65 + 8))(v59, v60);
      (*(v55 + 8))(v56, v57);
      return v92;
    }

    if (v26 != *MEMORY[0x277D729A0])
    {
      (*(v23 + 8))(v25, v22);
    }
  }

  return 0;
}

uint64_t sub_26B964074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B9640BC()
{
  result = qword_280426A80;
  if (!qword_280426A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426A80);
  }

  return result;
}

unint64_t sub_26B964110()
{
  result = qword_280426A90;
  if (!qword_280426A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280426A90);
  }

  return result;
}

uint64_t sub_26B964234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = type metadata accessor for TypedValueResultBuilder.Config(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26B9ABE84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v14 = sub_26B9AB104();
  v15 = *(v14 - 8);
  v16 = v12 + v13;
  v17 = v21;
  (*(v15 + 16))(v16, v21, v14);
  (*(v9 + 16))(v11, a2, v8);
  sub_26B95C6A0(a3, v7);
  v18 = sub_26B965300(v11, v7);
  sub_26B955164(a3);
  (*(v9 + 8))(a2, v8);
  (*(v15 + 8))(v17, v14);
  return v18;
}

id sub_26B964434()
{
  v1 = v0;
  v2 = sub_26B9AB104();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v7 = *(v3 + 16);
  v7(v5, v1 + OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url, v2);
  v8 = sub_26B9AB044();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D4C560]) init];
    v7(v5, v1 + v6, v2);
    v11 = sub_26B9AB0A4();
    v9(v5, v2);
    [v10 setFilePath_];
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
    [v10 setIconType_];
  }

  return v10;
}

id sub_26B9645D8()
{
  v1 = sub_26B9AB104();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url, v1);
  sub_26B9AB074();
  (*(v2 + 8))(v4, v1);
  v5 = sub_26B9AC4C4();

  v6 = [objc_opt_self() textWithString_];

  return v6;
}

id sub_26B964718()
{
  v1 = sub_26B9AB104();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url, v1);
  v6 = sub_26B9AB0A4();
  (*(v2 + 8))(v4, v1);
  v7 = [objc_opt_self() punchoutWithURL_];

  [v5 setPunchout_];
  return v5;
}

uint64_t sub_26B9648A0()
{
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v2 = sub_26B9AB104();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_26B964908()
{
  v0 = sub_26B96B8B0();
  v1 = OBJC_IVAR____TtC17SpotlightUIShared26URLTypedValueResultBuilder_url;
  v2 = sub_26B9AB104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URLTypedValueResultBuilder(uint64_t a1)
{
  result = qword_28042F380;
  if (!qword_28042F380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B964A00(uint64_t a1)
{
  result = sub_26B9AB104();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_26B964AA0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_26B964AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426228, &unk_26B9B08A0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AA0, &qword_26B9B3C60);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  if (a2)
  {
    goto LABEL_15;
  }

  v41 = &v40 - v24;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a3;
  sub_26B9236E8(a3, v19, &qword_280426228, &unk_26B9B08A0);
  v25 = sub_26B9AB914();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v19, 1, v25) == 1)
  {
    sub_26B8EACD8(v19, &qword_280426228, &unk_26B9B08A0);
    v28 = sub_26B9AC034();
    (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
    goto LABEL_5;
  }

  sub_26B9AB8D4();
  (*(v26 + 8))(v19, v25);
  v29 = sub_26B9AC034();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
LABEL_5:
    sub_26B9236E8(v45, v17, &qword_280426228, &unk_26B9B08A0);
    if (v27(v17, 1, v25) == 1)
    {
      sub_26B8EACD8(v17, &qword_280426228, &unk_26B9B08A0);
      v31 = 1;
      a5 = v43;
      v32 = v41;
    }

    else
    {
      v32 = v41;
      sub_26B9AB8C4();
      (*(v26 + 8))(v17, v25);
      v31 = 0;
      a5 = v43;
    }

    v29 = sub_26B9AC034();
    v33 = *(v29 - 8);
    (*(v33 + 56))(v32, v31, 1, v29);
    if ((*(v33 + 48))(v23, 1, v29) != 1)
    {
      sub_26B8EACD8(v23, &qword_280426AA0, &qword_26B9B3C60);
    }

    goto LABEL_11;
  }

  v34 = v41;
  (*(v30 + 32))(v41, v23, v29);
  (*(v30 + 56))(v34, 0, 1, v29);
  v32 = v34;
  a5 = v43;
LABEL_11:
  sub_26B9AC034();
  v35 = *(v29 - 8);
  if ((*(v35 + 48))(v32, 1, v29) == 1)
  {
    sub_26B8EACD8(v32, &qword_280426AA0, &qword_26B9B3C60);
    a1 = 0;
    a2 = 0;
  }

  else
  {
    a1 = sub_26B9AC024();
    a2 = v36;
    (*(v35 + 8))(v32, v29);
  }

  LOBYTE(a6) = v44;
  a4 = v42;
  a3 = v45;
LABEL_15:
  *a7 = a1;
  a7[1] = a2;
  v37 = type metadata accessor for TypedValueResultBuilder.Config(0);
  sub_26B923680(a3, a7 + v37[5], &qword_280426228, &unk_26B9B08A0);
  result = sub_26B923680(a4, a7 + v37[6], &qword_280426288, &qword_26B9B0980);
  v39 = a7 + v37[7];
  *v39 = a5;
  v39[8] = a6;
  return result;
}

BOOL sub_26B96503C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_26B9AC4C4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26B9AC4C4();
  v5 = [v3 integerForKey_];

  return v5 == 1;
}

uint64_t sub_26B965110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D8, &qword_26B9B3A50);
  v0 = sub_26B9ABF24();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26B9AF300;
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x800000026B9B8030;
  *(v3 + v2) = v4;
  v4[4] = 0xD000000000000010;
  v4[5] = 0x800000026B9B9C80;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x277D72D28], v0);
  qword_28042F398 = v3;
  return result;
}

uint64_t sub_26B965240(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride;
  *(v4 + v5) = sub_26B96503C();
  v6 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v7 = sub_26B9ABE84();
  (*(*(v7 - 8) + 32))(v4 + v6, a1, v7);
  sub_26B96CD44(a2, v4 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  return v4;
}

uint64_t sub_26B965300(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_presentationOverride;
  *(v2 + v5) = sub_26B96503C();
  v6 = OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_typedValue;
  v7 = sub_26B9ABE84();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  sub_26B96CD44(a2, v2 + OBJC_IVAR____TtC17SpotlightUIShared23TypedValueResultBuilder_config, type metadata accessor for TypedValueResultBuilder.Config);
  return v2;
}

uint64_t sub_26B9653AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B9653D0, 0, 0);
}

uint64_t sub_26B9653D0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804262D0, &unk_26B9B0A60);
  v2 = sub_26B9ABE84();
  *(v0 + 40) = v2;
  v3 = *(v2 - 8);
  *(v0 + 48) = v3;
  v4 = *(v3 + 80);
  *(v0 + 80) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = xmmword_26B9AF300;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_26B96553C;
  v8 = *(v0 + 24);

  return sub_26B965780(v6, v8);
}

uint64_t sub_26B96553C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26B9656D8, 0, 0);
  }

  else
  {
    v6 = *(v4 + 48);
    v5 = *(v4 + 56);
    v7 = *(v4 + 40);
    v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    swift_setDeallocating();
    (*(v6 + 8))(v5 + v8, v7);
    swift_deallocClassInstance();
    v9 = *(v4 + 8);

    return v9(a1);
  }
}

uint64_t sub_26B9656D8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26B965780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_26B965824;

  return sub_26B965EEC(a1, a2);
}

uint64_t sub_26B965824(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_26B965924, 0, 0);
}

uint64_t sub_26B965924()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[4];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    result = sub_26B9ACB44();
    v2 = v0[4];
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[5] = v3;
  v0[6] = result;
  v0[7] = v1;
  if (result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D686B00](0);
    }

    else
    {
      if (!*(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v5 = *(v2 + 32);
      sub_26B9AAAE4();
    }

    v0[8] = v5;
    v0[9] = 1;
    v9 = (*(*v5 + 120) + **(*v5 + 120));
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_26B965AFC;

    return v9();
  }

  else
  {

    v7 = v0[1];
    v8 = v0[7];

    return v7(v8);
  }
}

uint64_t sub_26B965AFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    v5 = sub_26B965E88;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_26B965C38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_26B965C38()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x26D6865A0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26B9AC734();
    }

    sub_26B9AC774();

    v3 = v0[9];
    v0[7] = v0[2];
    if (v3 != v0[6])
    {
LABEL_11:
      v8 = v0[4];
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26D686B00](v3);
      }

      else
      {
        if (v3 >= *(v0[5] + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v8 + 8 * v3 + 32);
        sub_26B9AAAE4();
      }

      v0[8] = v9;
      v0[9] = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v11 = (*(*v9 + 120) + **(*v9 + 120));
        v10 = swift_task_alloc();
        v0[10] = v10;
        *v10 = v0;
        v10[1] = sub_26B965AFC;

        v11();
        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

  else
  {
    v4 = v0[9];
    v5 = v0[6];

    if (v4 != v5)
    {
      v3 = v0[9];
      goto LABEL_11;
    }
  }

  v6 = v0[1];
  v7 = v0[7];

  v6(v7);
}

uint64_t sub_26B965E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26B965EEC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_26B965F10, 0, 0);
}

uint64_t sub_26B965F10()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(sub_26B9ABE84() - 8);
    v4 = *(v3 + 80);
    *(v0 + 120) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = MEMORY[0x277D84F90];
    v7 = *(v3 + 72);
    *(v0 + 88) = 0;
    *(v0 + 96) = v6;
    *(v0 + 80) = v7;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = sub_26B966064;
    v9 = *(v0 + 56);

    return sub_26B9664D8(v1 + v5, v9);
  }

  else
  {
    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_26B966064(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_26B966164, 0, 0);
}

uint64_t sub_26B966164()
{
  v1 = *(v0 + 112);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = sub_26B9ACB44();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 96);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result + v3;
    if (!__OFADD__(result, v3))
    {
      goto LABEL_5;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_26B9ACB44();
  v7 = result + v3;
  if (__OFADD__(result, v3))
  {
    goto LABEL_35;
  }

LABEL_5:
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_26B9ACB44();
    goto LABEL_22;
  }

  if (v5)
  {
    goto LABEL_21;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v9 >= v7)
  {
    v10 = *(v0 + 96);
    v11 = *(v8 + 16);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = sub_26B9ACC44();
  v10 = result;
  v8 = result & 0xFFFFFFFFFFFFFF8;
  v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_9:
    result = sub_26B9ACB44();
    v12 = result;
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
LABEL_10:
    if (v9 - v11 >= v3)
    {
      if (v2)
      {
        if (v12 < 1)
        {
LABEL_39:
          __break(1u);
          return result;
        }

        sub_26B8F7938(&qword_280426AB0, &qword_280426AA8, &unk_26B9B3C90, MEMORY[0x277D83988]);
        for (i = 0; i != v12; ++i)
        {
          v14 = *(v0 + 112);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426AA8, &unk_26B9B3C90);
          v15 = sub_26B96C714((v0 + 16), i, v14);
          v17 = *v16;
          sub_26B9AAAE4();
          (v15)(v0 + 16, 0);
          *(v8 + 8 * v11 + 32 + 8 * i) = v17;
        }
      }

      else
      {
        type metadata accessor for TypedValueResultBuilder(0);
        swift_arrayInitWithCopy();
      }

      if (v3 <= 0)
      {
        goto LABEL_25;
      }

      v18 = *(v8 + 16);
      v19 = __OFADD__(v18, v3);
      v20 = v18 + v3;
      if (!v19)
      {
        *(v8 + 16) = v20;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_24:

  if (v3 > 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_25:
  v21 = *(v0 + 88) + 1;
  if (v21 == *(v0 + 72))
  {
    v22 = *(v0 + 8);

    return v22(v10);
  }

  else
  {
    *(v0 + 88) = v21;
    *(v0 + 96) = v10;
    v23 = *(v0 + 48) + ((*(v0 + 120) + 32) & ~*(v0 + 120)) + *(v0 + 80) * v21;
    v24 = swift_task_alloc();
    *(v0 + 104) = v24;
    *v24 = v0;
    v24[1] = sub_26B966064;
    v25 = *(v0 + 56);

    return sub_26B9664D8(v23, v25);
  }
}