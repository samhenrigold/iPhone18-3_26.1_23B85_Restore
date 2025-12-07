void sub_26944E990(uint64_t a1, unint64_t a2)
{
  v5 = *v2;

  v6 = sub_26945CC68();
  v7 = sub_26945CDA8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_269455F28(a1, a2, v13);
    _os_log_impl(&dword_26944D000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D63DD90](v9, -1, -1);
    MEMORY[0x26D63DD90](v8, -1, -1);
  }

  v10 = sub_26945CCD8();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v13[4] = sub_26944EEA8;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_26944EC44;
  v13[3] = &block_descriptor;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t sub_26944EB98(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172A0, &qword_26945D4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26945D4A0;
  *(inited + 32) = 0x726F727245;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_26945CCD8();
  v3 = sub_269457868(inited);
  swift_setDeallocating();
  sub_26944EFAC(inited + 32);
  return v3;
}

id sub_26944EC44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_26944EF18();
    v4 = sub_26945CC98();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_26944ECD0()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement30CalculatorErrorMetricSubmitter_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorErrorMetricSubmitter(uint64_t a1)
{
  result = qword_280317288;
  if (!qword_280317288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26944EDC0(uint64_t a1)
{
  result = sub_26945CC88();
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

uint64_t sub_26944EE70()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_26944EF18()
{
  result = qword_280317298;
  if (!qword_280317298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280317298);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26944EFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172A8, &qword_26945D4F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriTurnRestatementFeatureFlags.hashValue.getter()
{
  sub_26945CF48();
  MEMORY[0x26D63D930](0);
  return sub_26945CF68();
}

uint64_t sub_26944F0B8()
{
  sub_26945CF48();
  MEMORY[0x26D63D930](0);
  return sub_26945CF68();
}

uint64_t sub_26944F124(uint64_t a1)
{
  sub_26945CF48();
  MEMORY[0x26D63D930](0);
  return sub_26945CF68();
}

unint64_t sub_26944F168()
{
  result = qword_2803172B0;
  if (!qword_2803172B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTurnRestatementFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SiriTurnRestatementFeatureFlags(_WORD *result, int a2, int a3)
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

char *sub_26944F2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945C9D8();
  v59 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = sub_26945C918();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v14 = sub_26945BB90();
  v16 = v15;
  v55 = a2;
  v17 = sub_26945BB90();
  v19 = v18;
  if (!v16)
  {
    sub_26944F7A8();
    swift_allocError();
    v40 = 0;
LABEL_14:
    *v39 = v40;
    swift_willThrow();

LABEL_18:

    return v13;
  }

  v52 = v4;
  v53 = v17;
  v50 = v7;
  v51 = v9;
  v49 = v14;
  v57 = v14;
  v58 = v16;

  sub_26945C8F8();
  sub_26944F7FC();
  v20 = sub_26945CDD8();
  v22 = v21;
  v23 = *(v11 + 8);
  v23(v13, v10);

  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    sub_26944F7A8();
    swift_allocError();
    v40 = 1;
    goto LABEL_14;
  }

  if (!v19)
  {
    v41 = 0;
LABEL_17:
    sub_26944F7A8();
    swift_allocError();
    *v42 = v41;
    swift_willThrow();

    goto LABEL_18;
  }

  v25 = v53;
  v57 = v53;
  v58 = v19;

  sub_26945C8F8();
  v26 = sub_26945CDD8();
  v28 = v27;
  v23(v13, v10);

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    v41 = 1;
    goto LABEL_17;
  }

  v30 = v51;
  sub_26945AF94(v51);
  v31 = v50;
  sub_26945AF94(v50);
  v13 = sub_26945BCA4(v49, v16, v30);
  v33 = v32;

  v34 = sub_26945BCA4(v25, v19, v31);
  v36 = v35;

  v37 = v56;
  sub_26945C2DC(v13, v33);
  if (v37)
  {

    v38 = *(v59 + 8);
    v13 = v52;
    v38(v31, v52);
    v38(v30, v13);
  }

  else
  {
    sub_26945C2DC(v34, v36);
    v44 = *(v59 + 8);
    v45 = v31;
    v46 = v30;
    v47 = v52;
    v44(v45, v52);
    v44(v46, v47);
  }

  return v13;
}

uint64_t sub_26944F734()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26944F7A8()
{
  result = qword_2803172B8;
  if (!qword_2803172B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172B8);
  }

  return result;
}

unint64_t sub_26944F7FC()
{
  result = qword_2803172C0;
  if (!qword_2803172C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172C0);
  }

  return result;
}

uint64_t sub_26944F850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26944F998;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26944F998(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t SiriTurnRestatementError.hashValue.getter()
{
  v1 = *v0;
  sub_26945CF48();
  MEMORY[0x26D63D930](v1);
  return sub_26945CF68();
}

uint64_t sub_26944FB48()
{
  v1 = *v0;
  sub_26945CF48();
  MEMORY[0x26D63D930](v1);
  return sub_26945CF68();
}

uint64_t sub_26944FBBC(uint64_t a1)
{
  v2 = *v1;
  sub_26945CF48();
  MEMORY[0x26D63D930](v2);
  return sub_26945CF68();
}

uint64_t SiriTurnRestatementPlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriTurnRestatementPlugin.init()();
  return v0;
}

uint64_t SiriTurnRestatementPlugin.init()()
{
  v1 = v0;
  v2 = sub_26945CC88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v67 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v59 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v59 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_logger;
  sub_26945CC78();
  v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v17 = sub_26945CCD8();
  v18 = [v16 initWithSuiteName_];

  if (v18)
  {
    v19 = sub_26945CBD8();
    swift_allocObject();
    v68 = v18;
    v20 = sub_26945CBC8();
    v76 = v19;
    v77 = MEMORY[0x277D04550];
    v75[0] = v20;
    v69 = *(v3 + 16);
    v69(v12, v1 + v15, v2);
    sub_26945CA98();
    swift_allocObject();
    v21 = v71;
    v22 = sub_26945CA78();
    v23 = v15;
    if (!v21)
    {
      v30 = v22;
      v31 = objc_allocWithZone(sub_26945CB58());

      v32 = v30;
      v33 = [v31 init];
      v66 = 0;
      v64 = v33;
      v61 = [objc_allocWithZone(sub_26945CC58()) init];
      v34 = v78;
      v35 = v69;
      v69(v78, v1 + v23, v2);
      type metadata accessor for SiriTurnRestatementDataProvider(0);
      v36 = swift_allocObject();
      v65 = v3;
      v37 = *(v3 + 32);
      v71 = v3 + 32;
      v62 = v37;
      v37(v36 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger, v34, v2);
      v63 = v32;
      *(v36 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService) = v32;
      *(v36 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor) = v64;
      *(v36 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor) = v61;
      *(v1 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_dataProvider) = v36;
      v35(v34, v1 + v23, v2);
      v35(v70, v34, v2);
      v38 = sub_26945CBB8();
      swift_allocObject();

      v61 = sub_26945CBA8();
      type metadata accessor for TurnTextExtractor();
      v39 = swift_allocObject();
      type metadata accessor for TurnTextValidator();
      v40 = swift_allocObject();
      v64 = v23;
      v41 = v40;
      type metadata accessor for TurnLanguageCodeReader();
      v42 = swift_allocObject();
      type metadata accessor for TurnTextSanitizer();
      v43 = swift_allocObject();
      type metadata accessor for SanitizedTextExtractor();
      v44 = swift_allocObject();
      v44[2] = v39;
      v44[3] = v41;
      v44[4] = v42;
      v44[5] = v43;
      v45 = v67;
      v69(v67, v78, v2);
      type metadata accessor for CalculatorErrorMetricSubmitter(0);
      v60 = swift_allocObject();
      v46 = v62;
      v62(v60 + OBJC_IVAR____TtC19SiriTurnRestatement30CalculatorErrorMetricSubmitter_logger, v45, v2);
      v76 = v38;
      v77 = &off_2879F9A18;
      v75[0] = v61;
      type metadata accessor for SiriTurnRestatementCalculator(0);
      v47 = swift_allocObject();
      v48 = __swift_mutable_project_boxed_opaque_existential_1(v75, v38);
      v67 = &v59;
      MEMORY[0x28223BE20](v48);
      v50 = (&v59 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v51 + 16))(v50);
      v52 = *v50;
      v73 = v38;
      v74 = &off_2879F9A18;
      *&v72 = v52;
      sub_26945C9F8();
      v53 = v78;
      (*(v65 + 8))(v78, v2);
      v46(v47 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger, v70, v2);
      *(v47 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_bookmarkService) = v63;
      sub_26945114C(&v72, v47 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer);
      *(v47 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor) = v44;
      *(v47 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter) = v60;
      *(v47 + 16) = 0x404E000000000000;
      *(v47 + 24) = 10;
      __swift_destroy_boxed_opaque_existential_0(v75);
      *(v1 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_calculator) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172E8, &qword_26945D6B0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_26945D6A0;
      v55 = v53;
      v69(v53, &v64[v1], v2);
      type metadata accessor for SiriTurnRestatementSELFReporter(0);
      v56 = swift_allocObject();
      *(v56 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
      v46(v56 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger, v55, v2);
      *(v54 + 32) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172F0, &qword_26945D6B8);
      swift_allocObject();
      v75[0] = sub_26945CA38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172F8, qword_26945D6C0);
      swift_allocObject();
      v57 = sub_26945CA48();

      *(v1 + OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_reporter) = v57;
      return v1;
    }

    (*(v3 + 8))(v1 + v15, v2);
  }

  else
  {
    v24 = v3;
    (*(v3 + 16))(v14, v1 + v15, v2);
    v25 = sub_26945CC68();
    v26 = sub_26945CDA8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26944D000, v25, v26, "Can't get user defaults initialized", v27, 2u);
      MEMORY[0x26D63DD90](v27, -1, -1);
    }

    v28 = *(v24 + 8);
    v28(v14, v2);
    sub_269450528();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    v28((v1 + v15), v2);
  }

  type metadata accessor for SiriTurnRestatementPlugin(0);
  swift_deallocPartialClassInstance();
  return v1;
}

unint64_t sub_269450528()
{
  result = qword_2803172D0;
  if (!qword_2803172D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803172D0);
  }

  return result;
}

uint64_t type metadata accessor for SiriTurnRestatementPlugin(uint64_t a1)
{
  result = qword_280317338;
  if (!qword_280317338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2694505C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2694505E8, 0, 0);
}

uint64_t sub_2694505E8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_269451A38;
  v2 = *(v0 + 16);

  return sub_269458344(v2);
}

uint64_t sub_26945068C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2694506B0, 0, 0);
}

uint64_t sub_2694506B0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_269451A3C;
  v2 = v0[2];
  v3 = v0[3];

  return SiriTurnRestatementCalculator.doWork(_:)(v2, v3);
}

uint64_t sub_269450758(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_269450788, 0, 0);
}

uint64_t sub_269450788()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_269450854;

  return v4(v0 + 16);
}

uint64_t sub_269450854()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269451A40, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SiriTurnRestatementPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriTurnRestatementPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement25SiriTurnRestatementPlugin_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_269450AE4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_269450B08, 0, 0);
}

uint64_t sub_269450B08()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_269450BAC;
  v2 = *(v0 + 16);

  return sub_269458344(v2);
}

uint64_t sub_269450BAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269450CA0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_269450CC8, 0, 0);
}

uint64_t sub_269450CC8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_269450D70;
  v2 = v0[2];
  v3 = v0[3];

  return SiriTurnRestatementCalculator.doWork(_:)(v2, v3);
}

uint64_t sub_269450D70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269450E64(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_269450E98, 0, 0);
}

uint64_t sub_269450E98()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_269450F64;

  return v4(v0 + 16);
}

uint64_t sub_269450F64()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_269451098, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2694510B0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
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

uint64_t sub_26945114C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_269451168()
{
  result = qword_280317308;
  if (!qword_280317308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317308);
  }

  return result;
}

uint64_t sub_2694512DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269451328()
{
  result = qword_280317330;
  if (!qword_280317330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTurnRestatementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t storeEnumTagSinglePayload for SiriTurnRestatementError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2694514F4(uint64_t a1)
{
  result = sub_26945CC88();
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

uint64_t dispatch thunk of SiriTurnRestatementPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_269451A44;

  return v6(a1);
}

uint64_t dispatch thunk of SiriTurnRestatementPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_269451824;

  return v8(a1, a2);
}

uint64_t sub_269451824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of SiriTurnRestatementPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_269451A44;

  return v6(a1);
}

uint64_t SiriTurnRestatementCalculator.__allocating_init(logger:bookmarkService:maxSeconds:maxConsecutiveTurns:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v36 = a2;
  v37 = a3;
  v6 = sub_26945CC88();
  v34 = *(v6 - 8);
  v7 = v34;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v30 - v11;
  v12 = *(v7 + 16);
  v31 = a1;
  v32 = v12;
  v12();
  v13 = sub_26945CBB8();
  swift_allocObject();
  v33 = sub_26945CBA8();
  type metadata accessor for TurnTextExtractor();
  v14 = swift_allocObject();
  type metadata accessor for TurnTextValidator();
  v15 = swift_allocObject();
  type metadata accessor for TurnLanguageCodeReader();
  v16 = swift_allocObject();
  type metadata accessor for TurnTextSanitizer();
  v17 = swift_allocObject();
  type metadata accessor for SanitizedTextExtractor();
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = v15;
  v18[4] = v16;
  v18[5] = v17;
  (v32)(v10, a1, v6);
  type metadata accessor for CalculatorErrorMetricSubmitter(0);
  v19 = swift_allocObject();
  v20 = v34;
  v21 = *(v34 + 32);
  v21(v19 + OBJC_IVAR____TtC19SiriTurnRestatement30CalculatorErrorMetricSubmitter_logger, v10, v6);
  v38[3] = v13;
  v38[4] = &off_2879F9A18;
  v38[0] = v33;
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v38, v13);
  MEMORY[0x28223BE20](v23);
  v25 = (&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v28 = (v22 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer);
  v28[3] = v13;
  v28[4] = &off_2879F9A18;
  *v28 = v27;
  sub_26945C9F8();
  (*(v20 + 8))(v31, v6);
  v21(v22 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger, v35, v6);
  *(v22 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_bookmarkService) = v36;
  *(v22 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor) = v18;
  *(v22 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter) = v19;
  *(v22 + 16) = a4;
  *(v22 + 24) = v37;
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v22;
}

uint64_t SiriTurnRestatementCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26945C958();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269451E90, 0, 0);
}

uint64_t sub_269451E90(uint64_t a1)
{
  v77 = v1;
  v2 = sub_26945CC68();
  v3 = sub_26945CD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26944D000, v2, v3, "Running SiriTurnRestatementCalculator", v4, 2u);
    MEMORY[0x26D63DD90](v4, -1, -1);
  }

  v5 = sub_26945CAB8();
  v6 = MEMORY[0x277D84F90];
  v73 = sub_269457C78(MEMORY[0x277D84F90]);
  v7 = sub_269457C78(v6);
  v1[2] = v6;
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_68:
    v67 = MEMORY[0x277D84F90];
LABEL_69:
    v1[9] = v67;
    v1[10] = v73;

    v60 = swift_task_alloc();
    v1[11] = v60;
    *v60 = v1;
    v60[1] = sub_2694525D4;

    return sub_26945284C(v73, v67);
  }

LABEL_67:
  v59 = v7;
  result = sub_26945CE78();
  v7 = v59;
  if (!result)
  {
    goto LABEL_68;
  }

LABEL_5:
  v9 = 0;
  v72 = 0;
  v64 = v5 & 0xC000000000000001;
  v61 = v5 & 0xFFFFFFFFFFFFFF8;
  v67 = MEMORY[0x277D84F90];
  v69 = v1;
  v62 = result;
  v63 = v5;
  while (1)
  {
    v75 = v7;
    if (v64)
    {
      MEMORY[0x26D63D7F0](v9, v5);
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v9 >= *(v61 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v65 = v10;
    v68 = v9;
    v11 = sub_26945CB88();
    v12 = v11;
    if (v11 >> 62)
    {
      break;
    }

    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_6:

    v9 = v65;
    v5 = v63;
    v7 = v75;
    if (v65 == v62)
    {
      goto LABEL_69;
    }
  }

  v13 = sub_26945CE78();
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_15:
  v5 = 0;
  v74 = v12 & 0xC000000000000001;
  v66 = v12 & 0xFFFFFFFFFFFFFF8;
  v70 = v12;
  v71 = v13;
  while (1)
  {
    if (v74)
    {
      MEMORY[0x26D63D7F0](v5, v12);
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 >= *(v66 + 16))
      {
        goto LABEL_63;
      }

      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    v15 = sub_26945CC08();

    if ((v15 & 1) == 0)
    {
      v29 = sub_26945CC68();
      v30 = sub_26945CDA8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v76 = v32;
        *v31 = 136315138;
        v33 = sub_26945CC18();
        v35 = sub_269455F28(v33, v34, &v76);

        *(v31 + 4) = v35;
        v1 = v69;
        v12 = v70;
        _os_log_impl(&dword_26944D000, v29, v30, "Turn: %s has an invalid timestamp", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x26D63DD90](v32, -1, -1);
        v36 = v31;
        v13 = v71;
        MEMORY[0x26D63DD90](v36, -1, -1);
      }

      else
      {
      }

      goto LABEL_17;
    }

    MEMORY[0x26D63D710](v16);
    if (*((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26945CD48();
    }

    sub_26945CD58();
    v1 = v1[2];
    v17 = sub_26945CC18();
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = v75;
    v22 = sub_2694564E0(v17, v19);
    v23 = *(v75 + 16);
    v7 = (v21 & 1) == 0;
    v24 = v23 + v7;
    if (__OFADD__(v23, v7))
    {
      goto LABEL_60;
    }

    v25 = v21;
    v67 = v1;
    if (*(v75 + 24) < v24)
    {
      sub_269456B48(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_2694564E0(v17, v19);
      v1 = v73;
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_56;
      }

      v22 = v26;
      goto LABEL_31;
    }

    v1 = v73;
    v28 = v68;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_269457134();
LABEL_31:
      v28 = v68;
    }

    if (v25)
    {

      v75 = v76;
      *(v76[7] + 8 * v22) = v28;
    }

    else
    {
      v37 = v76;
      v38 = &v76[v22 >> 6];
      v7 = v38[8] | (1 << v22);
      v38[8] = v7;
      v39 = (v37[6] + 16 * v22);
      *v39 = v17;
      v39[1] = v19;
      *(v37[7] + 8 * v22) = v28;
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_64;
      }

      v75 = v37;
      v37[2] = v42;
    }

    v43 = sub_26945CC18();
    v45 = v44;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v1;
    v47 = sub_2694564E0(v43, v45);
    v49 = v1[2];
    v7 = (v48 & 1) == 0;
    v41 = __OFADD__(v49, v7);
    v50 = v49 + v7;
    if (v41)
    {
      goto LABEL_61;
    }

    v51 = v48;
    if (v1[3] < v50)
    {
      break;
    }

    v1 = v72;
    if (v46)
    {
      v13 = v71;
      if (v48)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v54 = v47;
      sub_269457134();
      v47 = v54;
      v13 = v71;
      if (v51)
      {
LABEL_46:
        v53 = v47;

        v73 = v76;
        *(v76[7] + 8 * v53) = v1;

        goto LABEL_51;
      }
    }

LABEL_49:
    v55 = v76;
    v76[(v47 >> 6) + 8] |= 1 << v47;
    v56 = (v55[6] + 16 * v47);
    *v56 = v43;
    v56[1] = v45;
    *(v55[7] + 8 * v47) = v1;

    v57 = v55[2];
    v41 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v41)
    {
      goto LABEL_65;
    }

    v73 = v55;
    v55[2] = v58;
LABEL_51:
    v41 = __OFADD__(v1, 1);
    v72 = (v1 + 1);
    v1 = v69;
    v12 = v70;
    if (v41)
    {
      goto LABEL_62;
    }

LABEL_17:
    ++v5;
    if (v14 == v13)
    {
      goto LABEL_6;
    }
  }

  sub_269456B48(v50, v46);
  v47 = sub_2694564E0(v43, v45);
  if ((v51 & 1) == (v52 & 1))
  {
    v1 = v72;
    v13 = v71;
    if (v51)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

LABEL_56:

  return sub_26945CEE8();
}

uint64_t sub_2694525D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_2694527D4;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_26945270C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26945270C()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  sub_26945CA18();
  v6 = sub_26945CA28();
  (*(v3 + 8))(v2, v4);
  v7 = MEMORY[0x277D84F90];
  *v5 = v1;
  v5[1] = v7;
  v5[2] = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_2694527D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26945284C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  v3[13] = swift_task_alloc();
  v4 = sub_26945CB78();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = sub_26945CA08();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = sub_26945C958();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269452A18, 0, 0);
}

uint64_t sub_269452A18()
{
  v124 = v0;
  v1 = *(v0 + 88);
  *(v0 + 48) = sub_269457B48(MEMORY[0x277D84F90]);
  v2 = v0 + 48;
  if (v1 >> 62)
  {
LABEL_102:
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v3 = sub_26945CE78();
  }

  else
  {
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v3 = *(v1 + 16);
  }

  *(v0 + 200) = v1;
  *(v0 + 208) = v3;
  v4 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger;
  *(v0 + 216) = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_errorMetricSubmitter;
  *(v0 + 224) = v4;
  v5 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer;
  *(v0 + 232) = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_sanitizedTextExtractor;
  *(v0 + 240) = v5;
  if (!v3)
  {
    goto LABEL_83;
  }

  v6 = 0;
  v115 = (v2 + 305);
  v117 = v2;
  v116 = (v2 - 32);
  while (1)
  {
LABEL_5:
    if ((*(v0 + 88) & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D63D7F0](v6);
    }

    else
    {
      if (v6 >= *(*(v0 + 200) + 16))
      {
        goto LABEL_100;
      }
    }

    v8 = __OFADD__(v6, 1);
    v9 = v6 + 1;
    *(v0 + 248) = v7;
    *(v0 + 256) = v9;
    if (v8)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_26945CD68();
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v120 = v9;
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);
    sub_26945CC38();
    sub_26945C928();
    sub_26945C9F8();
    sub_26945C938();
    (*(v14 + 8))(v15, v16);
    v17 = *(v13 + 8);
    v17(v11, v12);
    sub_26945C948();
    *(v0 + 264) = v18;
    v17(v10, v12);
    if ((sub_26945CBE8() & 1) == 0)
    {
      v1 = *(*(v0 + 96) + *(v0 + 216));
      sub_26944E990(0xD000000000000014, 0x800000026945DF90);

      v2 = v117;
      goto LABEL_79;
    }

    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 80);
    v22 = sub_26945CC18();
    v1 = sub_269455310(v22, v23, v21, v20, *(v19 + 24), v19);
    *(v0 + 272) = v1;

    v2 = v117;
    if (v1)
    {
      break;
    }

    v91 = *(v0 + 224);
    v92 = *(v0 + 96);

    v1 = v92 + v91;
    v93 = sub_26945CC68();
    v94 = sub_26945CD98();

    if (!os_log_type_enabled(v93, v94))
    {

      goto LABEL_78;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v123 = v96;
    *v95 = 136315138;
    v97 = sub_26945CC18();
    v1 = v98;
    v99 = sub_269455F28(v97, v98, &v123);

    *(v95 + 4) = v99;
    _os_log_impl(&dword_26944D000, v93, v94, "No consecutive turns after turn %s.", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x26D63DD90](v96, -1, -1);
    MEMORY[0x26D63DD90](v95, -1, -1);

LABEL_79:
    v6 = v120;
    if (v120 == *(v0 + 208))
    {
      goto LABEL_83;
    }
  }

  if (v1 >> 62)
  {
    v24 = sub_26945CE78();
  }

  else
  {
    v24 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v116;
  *(v0 + 280) = v24;
  if (!v24)
  {

LABEL_78:

    goto LABEL_79;
  }

  v1 = 0;
  do
  {
    v27 = *(v0 + 272);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D63D7F0](v1);
    }

    else
    {
      if (v1 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v28 = *(v27 + 8 * v1 + 32);
    }

    *(v0 + 288) = v28;
    *(v0 + 296) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (sub_26945CBE8() & 1) != 0 && (sub_26945CBE8())
    {
      v29 = sub_26944F2D4(*(v0 + 248), v28);
      *(v0 + 304) = v30;
      *(v0 + 312) = v31;
      v107 = (*(v0 + 96) + *(v0 + 240));
      v108 = v29;
      v109 = v30;
      v111 = v110;
      v112 = v31;
      *(v0 + 320) = sub_26945CD08();
      *(v0 + 362) = v113;
      __swift_project_boxed_opaque_existential_1(v107, v107[3]);
      v122 = (*MEMORY[0x277D04528] + MEMORY[0x277D04528]);
      v114 = swift_task_alloc();
      *(v0 + 328) = v114;
      *v114 = v0;
      v114[1] = sub_2694536C4;

      return v122(v108, v109, v111, v112);
    }

    sub_26944F7A8();
    v32 = swift_allocError();
    *v33 = 0;
    swift_willThrow();
    *(v0 + 56) = v32;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    if (swift_dynamicCast())
    {
      MEMORY[0x26D63DC60](v32);
      v35 = *(v0 + 361);
      v36 = 0xD000000000000020;
      v37 = 0xD00000000000001FLL;
      if (v35 != 3)
      {
        v37 = 0xD000000000000044;
      }

      v38 = "rn Text is empty";
      if (v35 != 3)
      {
        v38 = "Failed to embed turn utterances";
      }

      if (v35 != 2)
      {
        v36 = v37;
      }

      v39 = "ASR Turn Text is empty";
      if (v35 != 2)
      {
        v39 = v38;
      }

      v40 = 0xD000000000000016;
      if (!*(v0 + 361))
      {
        v40 = 0xD000000000000014;
      }

      v41 = &xmmword_26945DF90;
      if (*(v0 + 361))
      {
        v41 = "ASR Turn Text is nil";
      }

      if (*(v0 + 361) <= 1u)
      {
        v42 = v40;
      }

      else
      {
        v42 = v36;
      }

      if (*(v0 + 361) <= 1u)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      sub_26944E990(v42, v43 | 0x8000000000000000);

      v44 = *(v2 + 8);
    }

    else
    {
      MEMORY[0x26D63DC60](*(v0 + 56));
      v45 = v32;
      v46 = sub_26945CC68();
      v47 = sub_26945CDA8();
      MEMORY[0x26D63DC60](v32);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v32;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_26944D000, v46, v47, "Failed to calculate restatement scores: %@", v48, 0xCu);
        sub_269457FA8(v49, &qword_2803173D0, &qword_26945DA00);
        MEMORY[0x26D63DD90](v49, -1, -1);
        MEMORY[0x26D63DD90](v48, -1, -1);
        MEMORY[0x26D63DC60](v32);

        goto LABEL_49;
      }

      v44 = v32;
    }

    MEMORY[0x26D63DC60](v44);
LABEL_49:
    v52 = *(v0 + 104);
    sub_26945CC28();
    v53 = sub_26945C9B8();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      v26 = *(v0 + 104);

      sub_269457FA8(v26, &qword_2803173C0, &qword_26945D9F0);
      goto LABEL_16;
    }

    v55 = *(v0 + 104);
    v56 = sub_26945C978();
    v58 = v57;
    (*(v54 + 8))(v55, v53);
    v1 = *(v0 + 48);
    if (!*(v1 + 16))
    {
      goto LABEL_53;
    }

    sub_2694564E0(v56, v58);
    if ((v59 & 1) == 0)
    {
      v1 = *v2;
LABEL_53:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v1;
      v61 = sub_2694564E0(v56, v58);
      v63 = *(v1 + 16);
      v64 = (v62 & 1) == 0;
      v8 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v8)
      {
        goto LABEL_98;
      }

      v66 = v62;
      if (*(v1 + 24) >= v65)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v1 = v2 + 16;
          v90 = v61;
          sub_269456F98();
          v61 = v90;
        }
      }

      else
      {
        sub_269456868(v65, isUniquelyReferenced_nonNull_native);
        v1 = *(v2 + 16);
        v61 = sub_2694564E0(v56, v58);
        if ((v66 & 1) != (v67 & 1))
        {

          return sub_26945CEE8();
        }
      }

      v68 = *(v0 + 64);
      v69 = *(v0 + 264);
      if (v66)
      {
        v70 = (v68[7] + 32 * v61);
        *v70 = v56;
        v70[1] = v58;
        v70[2] = v69;
        v70[3] = MEMORY[0x277D84F90];
      }

      else
      {
        v68[(v61 >> 6) + 8] |= 1 << v61;
        v71 = (v68[6] + 16 * v61);
        *v71 = v56;
        v71[1] = v58;
        v72 = (v68[7] + 32 * v61);
        *v72 = v56;
        v72[1] = v58;
        v72[2] = v69;
        v72[3] = MEMORY[0x277D84F90];
        v73 = v68[2];
        v8 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v8)
        {
          goto LABEL_101;
        }

        v68[2] = v74;
      }

      *v2 = v68;
    }

    v76 = sub_269455A44(v25, v56, v58);
    if (*(v75 + 8))
    {
      v77 = v75;
      v78 = sub_26945CC18();
      v118 = v79;
      v119 = v78;
      v80 = sub_26945CC18();
      v82 = v81;
      *(v2 + 304) = 1;
      *(v2 + 312) = 1;
      v83 = *(v0 + 352);
      v121 = *(v0 + 360);
      v84 = *(v77 + 24);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      *(v77 + 24) = v84;
      if ((v85 & 1) == 0)
      {
        v84 = sub_269455D14(0, *(v84 + 2) + 1, 1, v84);
        *(v77 + 24) = v84;
      }

      v87 = *(v84 + 2);
      v86 = *(v84 + 3);
      if (v87 >= v86 >> 1)
      {
        v84 = sub_269455D14((v86 > 1), v87 + 1, 1, v84);
        *(v77 + 24) = v84;
      }

      *(v84 + 2) = v87 + 1;
      v88 = &v84[64 * v87];
      *(v88 + 4) = v119;
      *(v88 + 5) = v118;
      *(v88 + 6) = v80;
      *(v88 + 7) = v82;
      *(v88 + 8) = 0;
      v88[72] = v83;
      v25 = v116;
      v89 = *v115;
      *(v88 + 19) = *(v115 + 3);
      *(v88 + 73) = v89;
      *(v88 + 10) = 0;
      v88[88] = v121;
      (v76)(v116, 0);

      v2 = v117;
    }

    else
    {
      (v76)(v25, 0);
    }

LABEL_16:
    v1 = *(v0 + 296);
  }

  while (v1 != *(v0 + 280));
  v1 = *(v0 + 272);

  v6 = *(v0 + 256);
  if (v6 != *(v0 + 208))
  {
    goto LABEL_5;
  }

LABEL_83:
  v100 = *v2;
  v101 = *(*v2 + 16);
  if (v101)
  {
    v102 = sub_269455E20(*(*v2 + 16), 0);
    v103 = sub_2694576E0(&v123, v102 + 4, v101, v100);
    v104 = v123;

    result = sub_269458094(v104);
    if (v103 == v101)
    {

      goto LABEL_87;
    }

    __break(1u);
  }

  else
  {

    v102 = MEMORY[0x277D84F90];
LABEL_87:

    v106 = *(v0 + 8);

    return v106(v102);
  }

  return result;
}

uint64_t sub_2694536C4(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v7 = sub_2694544B4;
  }

  else
  {
    *(v6 + 363) = a2;
    *(v6 + 344) = a1;
    v7 = sub_2694537FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2694537FC()
{
  v133 = v0;
  v1 = v0;
  v128 = (v0 + 16);
  v125 = (v0 + 353);

  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 363);
  v6 = *(v0 + 362);
  v130 = v0;
  while (1)
  {
    v7 = v1[13];
    sub_26945CC28();
    v8 = sub_26945C9B8();
    v9 = v1;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v7, 1, v8) == 1)
    {
      v11 = v9[13];

      sub_269457FA8(v11, &qword_2803173C0, &qword_26945D9F0);
      v1 = v9;
      goto LABEL_26;
    }

    v127 = v5;
    v129 = v4;
    v12 = v9[13];
    v13 = sub_26945C978();
    v15 = v14;
    (*(v10 + 8))(v12, v8);
    v16 = v9[6];
    v1 = v9;
    if (!*(v16 + 16))
    {
      break;
    }

    sub_2694564E0(v13, v15);
    v17 = v128;
    if ((v18 & 1) == 0)
    {
      v16 = v9[6];
      break;
    }

LABEL_18:
    v126 = v3;
    v35 = sub_269455A44(v17, v13, v15);
    if (*(v36 + 8))
    {
      v37 = v36;
      v121 = v35;
      v38 = sub_26945CC18();
      v123 = v39;
      v124 = v38;
      v40 = sub_26945CC18();
      v122 = v41;
      *(v9 + 352) = v6 & 1;
      *(v9 + 360) = v127 & 1;
      v42 = *(v9 + 352);
      v43 = *(v37 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 24) = v43;
      v45 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_269455D14(0, *(v43 + 2) + 1, 1, v43);
        *(v37 + 24) = v43;
      }

      v47 = *(v43 + 2);
      v46 = *(v43 + 3);
      if (v47 >= v46 >> 1)
      {
        v43 = sub_269455D14((v46 > 1), v47 + 1, 1, v43);
        *(v37 + 24) = v43;
      }

      *(v43 + 2) = v47 + 1;
      v48 = &v43[64 * v47];
      *(v48 + 4) = v124;
      *(v48 + 5) = v123;
      *(v48 + 6) = v45;
      *(v48 + 7) = v122;
      *(v48 + 8) = v129;
      v48[72] = v42;
      v1 = v130;
      v49 = *v125;
      *(v48 + 19) = *(v125 + 3);
      *(v48 + 73) = v49;
      *(v48 + 10) = v126;
      v48[88] = v127 & 1;
      v121();
    }

    else
    {
      (v35)(v17, 0);
    }

LABEL_26:
    v50 = v1[37];
    if (v50 == v1[35])
    {

      v51 = v1[32];
      if (v51 == v1[26])
      {
LABEL_85:
        v107 = v1[6];
        v108 = *(v107 + 16);
        if (v108)
        {
          v109 = sub_269455E20(*(v107 + 16), 0);
          v110 = sub_2694576E0(v132, v109 + 4, v108, v107);
          v111 = v132[0];

          sub_269458094(v111);
          if (v110 != v108)
          {
            goto LABEL_107;
          }

          v1 = v130;
        }

        else
        {

          v109 = MEMORY[0x277D84F90];
        }

        v113 = v1[1];

        v113(v109);
        return;
      }

      while (2)
      {
        v53 = v1[11];
        if ((v53 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x26D63D7F0](v51);
        }

        else
        {
          if (v51 >= *(v1[25] + 16))
          {
            goto LABEL_102;
          }

          v54 = *(v53 + 8 * v51 + 32);
        }

        v1[31] = v54;
        v1[32] = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        sub_26945CD68();
        v55 = v2;
        v57 = v1[23];
        v56 = v1[24];
        if (v55)
        {

          v112 = v1[1];

          v112();
          return;
        }

        v58 = v1[21];
        v59 = v1[22];
        v61 = v1[19];
        v60 = v1[20];
        v62 = v130[18];
        sub_26945CC38();
        sub_26945C928();
        sub_26945C9F8();
        sub_26945C938();
        v63 = v62;
        v1 = v130;
        (*(v61 + 8))(v60, v63);
        v64 = *(v59 + 8);
        v64(v57, v58);
        sub_26945C948();
        v130[33] = v65;
        v64(v56, v58);
        if (sub_26945CBE8())
        {
          v67 = v130[11];
          v66 = v130[12];
          v68 = v130[10];
          v69 = sub_26945CC18();
          v71 = sub_269455310(v69, v70, v68, v67, *(v66 + 24), v66);
          v130[34] = v71;

          if (v71)
          {
            if (v71 >> 62)
            {
              v72 = sub_26945CE78();
            }

            else
            {
              v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v52 = v51 + 1;
            v130[35] = v72;
            if (v72)
            {
              v2 = 0;
              v50 = 0;
              break;
            }

            goto LABEL_32;
          }

          v73 = sub_26945CC68();
          v74 = sub_26945CD98();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v132[0] = v76;
            *v75 = 136315138;
            v77 = sub_26945CC18();
            v79 = sub_269455F28(v77, v78, v132);

            *(v75 + 4) = v79;
            v1 = v130;
            _os_log_impl(&dword_26944D000, v73, v74, "No consecutive turns after turn %s.", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v76);
            MEMORY[0x26D63DD90](v76, -1, -1);
            MEMORY[0x26D63DD90](v75, -1, -1);

            goto LABEL_31;
          }
        }

        else
        {
          sub_26944E990(0xD000000000000014, 0x800000026945DF90);
        }

LABEL_31:
        v52 = v51 + 1;
LABEL_32:
        v2 = 0;
        ++v51;
        if (v52 == v1[26])
        {
          goto LABEL_85;
        }

        continue;
      }
    }

    v80 = v1[34];
    if ((v80 & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x26D63D7F0](v50);
    }

    else
    {
      if (v50 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      v81 = *(v80 + 8 * v50 + 32);
    }

    v1[36] = v81;
    v1[37] = v50 + 1;
    if (__OFADD__(v50, 1))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return;
    }

    if (sub_26945CBE8() & 1) != 0 && (sub_26945CBE8())
    {
      v82 = sub_26944F2D4(v1[31], v81);
      v86 = v2;
      v1[38] = v83;
      v1[39] = v85;
      if (!v2)
      {
        v114 = (v1[12] + v1[30]);
        v115 = v82;
        v116 = v83;
        v117 = v84;
        v118 = v85;
        v1[40] = sub_26945CD08();
        *(v1 + 362) = v119;
        __swift_project_boxed_opaque_existential_1(v114, v114[3]);
        v131 = (*MEMORY[0x277D04528] + MEMORY[0x277D04528]);
        v120 = swift_task_alloc();
        v1[41] = v120;
        *v120 = v1;
        v120[1] = sub_2694536C4;

        v131(v115, v116, v117, v118);
        return;
      }
    }

    else
    {
      sub_26944F7A8();
      v86 = swift_allocError();
      *v87 = 0;
      swift_willThrow();
    }

    v1[7] = v86;
    v88 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    if (swift_dynamicCast())
    {
      MEMORY[0x26D63DC60](v86);
      v89 = *(v1 + 361);
      v90 = 0xD000000000000020;
      v91 = 0xD00000000000001FLL;
      if (v89 != 3)
      {
        v91 = 0xD000000000000044;
      }

      v92 = "rn Text is empty";
      if (v89 != 3)
      {
        v92 = "Failed to embed turn utterances";
      }

      if (v89 != 2)
      {
        v90 = v91;
      }

      v93 = "ASR Turn Text is empty";
      if (v89 != 2)
      {
        v93 = v92;
      }

      v94 = 0xD000000000000016;
      if (!*(v1 + 361))
      {
        v94 = 0xD000000000000014;
      }

      v95 = &xmmword_26945DF90;
      if (*(v1 + 361))
      {
        v95 = "ASR Turn Text is nil";
      }

      if (*(v1 + 361) <= 1u)
      {
        v96 = v94;
      }

      else
      {
        v96 = v90;
      }

      if (*(v1 + 361) <= 1u)
      {
        v97 = v95;
      }

      else
      {
        v97 = v93;
      }

      sub_26944E990(v96, v97 | 0x8000000000000000);

      v98 = v1[7];
    }

    else
    {
      MEMORY[0x26D63DC60](v1[7]);
      v99 = v86;
      v100 = sub_26945CC68();
      v101 = sub_26945CDA8();
      MEMORY[0x26D63DC60](v86);
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v102 = 138412290;
        v104 = v86;
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v102 + 4) = v105;
        *v103 = v105;
        _os_log_impl(&dword_26944D000, v100, v101, "Failed to calculate restatement scores: %@", v102, 0xCu);
        sub_269457FA8(v103, &qword_2803173D0, &qword_26945DA00);
        MEMORY[0x26D63DD90](v103, -1, -1);
        MEMORY[0x26D63DD90](v102, -1, -1);
        MEMORY[0x26D63DC60](v86);

        goto LABEL_84;
      }

      v98 = v86;
    }

    MEMORY[0x26D63DC60](v98);
LABEL_84:
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 1;
    v6 = 1;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = v16;
  v20 = sub_2694564E0(v13, v15);
  v22 = *(v16 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    goto LABEL_104;
  }

  v26 = v21;
  if (*(v16 + 24) >= v25)
  {
    if ((v19 & 1) == 0)
    {
      v106 = v20;
      sub_269456F98();
      v20 = v106;
    }

    goto LABEL_13;
  }

  sub_269456868(v25, v19);
  v20 = sub_2694564E0(v13, v15);
  if ((v26 & 1) == (v27 & 1))
  {
LABEL_13:
    v28 = v9[8];
    v29 = v9[33];
    if (v26)
    {
      v30 = (v28[7] + 32 * v20);
      *v30 = v13;
      v30[1] = v15;
      v30[2] = v29;
      v30[3] = MEMORY[0x277D84F90];
    }

    else
    {
      v28[(v20 >> 6) + 8] |= 1 << v20;
      v31 = (v28[6] + 16 * v20);
      *v31 = v13;
      v31[1] = v15;
      v32 = (v28[7] + 32 * v20);
      *v32 = v13;
      v32[1] = v15;
      v32[2] = v29;
      v32[3] = MEMORY[0x277D84F90];
      v33 = v28[2];
      v24 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v24)
      {
        goto LABEL_106;
      }

      v28[2] = v34;
    }

    v9[6] = v28;
    v17 = v128;
    goto LABEL_18;
  }

  sub_26945CEE8();
}

void sub_2694544B4()
{
  v149 = v0;
  v1 = *(v0 + 336);
  *(v0 + 72) = v1;
  v139 = (v0 + 48);
  v141 = (v0 + 16);
  v142 = (v0 + 56);
  v138 = (v0 + 64);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 336);
  if (v3)
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    MEMORY[0x26D63DC60](*(v0 + 336));
    (*(v8 + 32))(v5, v6, v7);
    v9 = sub_26945CB68();
    v11 = sub_26945B694(v9, v10);
    if (v11 == 5)
    {
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = *(v0 + 112);
      sub_26945804C(&qword_2803173D8, MEMORY[0x277D04508], MEMORY[0x277D04510]);
      v4 = swift_allocError();
      (*(v13 + 16))(v15, v12, v14);
    }

    else
    {
      v16 = v11;
      sub_26944F7A8();
      v4 = swift_allocError();
      *v17 = v16;
    }

    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
  }

  v136 = (v0 + 353);
  MEMORY[0x26D63DC60](*(v0 + 72));

  v21 = *(v0 + 320);
  v22 = *(v0 + 362);
  v137 = v0;
  v140 = v0 + 72;
  while (1)
  {
    v145 = v21;
    *(v0 + 56) = v4;
    v23 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    if (swift_dynamicCast())
    {
      MEMORY[0x26D63DC60](v4);
      v24 = *(v0 + 361);
      v25 = 0xD000000000000020;
      v26 = 0xD00000000000001FLL;
      if (v24 != 3)
      {
        v26 = 0xD000000000000044;
      }

      v27 = "rn Text is empty";
      if (v24 != 3)
      {
        v27 = "Failed to embed turn utterances";
      }

      if (v24 != 2)
      {
        v25 = v26;
      }

      v28 = "ASR Turn Text is empty";
      if (v24 != 2)
      {
        v28 = v27;
      }

      v29 = 0xD000000000000016;
      if (!*(v0 + 361))
      {
        v29 = 0xD000000000000014;
      }

      v30 = &xmmword_26945DF90;
      if (*(v0 + 361))
      {
        v30 = "ASR Turn Text is nil";
      }

      v31 = *(v0 + 361) <= 1u ? v29 : v25;
      v32 = *(v0 + 361) <= 1u ? v30 : v28;
      sub_26944E990(v31, v32 | 0x8000000000000000);

      v33 = *v142;
    }

    else
    {
      MEMORY[0x26D63DC60](*(v0 + 56));
      v34 = v4;
      v35 = sub_26945CC68();
      v36 = sub_26945CDA8();
      MEMORY[0x26D63DC60](v4);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v4;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_26944D000, v35, v36, "Failed to calculate restatement scores: %@", v37, 0xCu);
        sub_269457FA8(v38, &qword_2803173D0, &qword_26945DA00);
        MEMORY[0x26D63DD90](v38, -1, -1);
        MEMORY[0x26D63DD90](v37, -1, -1);
        MEMORY[0x26D63DC60](v4);

        goto LABEL_31;
      }

      v33 = v4;
    }

    MEMORY[0x26D63DC60](v33);
LABEL_31:
    v41 = *(v0 + 104);
    sub_26945CC28();
    v42 = sub_26945C9B8();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      v44 = *(v0 + 104);

      sub_269457FA8(v44, &qword_2803173C0, &qword_26945D9F0);
      goto LABEL_54;
    }

    v45 = *(v0 + 104);
    v46 = sub_26945C978();
    v48 = v47;
    (*(v43 + 8))(v45, v42);
    v49 = *(v0 + 48);
    if (!*(v49 + 16))
    {
      goto LABEL_36;
    }

    sub_2694564E0(v46, v48);
    v50 = v141;
    if ((v51 & 1) == 0)
    {
      v49 = *v139;
LABEL_36:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v138 = v49;
      v53 = sub_2694564E0(v46, v48);
      v55 = *(v49 + 16);
      v56 = (v54 & 1) == 0;
      v57 = __OFADD__(v55, v56);
      v58 = v55 + v56;
      if (v57)
      {
        goto LABEL_101;
      }

      v59 = v54;
      if (*(v49 + 24) >= v58)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v119 = v53;
          sub_269456F98();
          v53 = v119;
        }
      }

      else
      {
        sub_269456868(v58, isUniquelyReferenced_nonNull_native);
        v53 = sub_2694564E0(v46, v48);
        if ((v59 & 1) != (v60 & 1))
        {

          sub_26945CEE8();
          return;
        }
      }

      v61 = *(v0 + 64);
      v62 = *(v0 + 264);
      if (v59)
      {
        v63 = (v61[7] + 32 * v53);
        *v63 = v46;
        v63[1] = v48;
        v63[2] = v62;
        v63[3] = MEMORY[0x277D84F90];
      }

      else
      {
        v61[(v53 >> 6) + 8] |= 1 << v53;
        v64 = (v61[6] + 16 * v53);
        *v64 = v46;
        v64[1] = v48;
        v65 = (v61[7] + 32 * v53);
        *v65 = v46;
        v65[1] = v48;
        v65[2] = v62;
        v65[3] = MEMORY[0x277D84F90];
        v66 = v61[2];
        v57 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v57)
        {
          goto LABEL_103;
        }

        v61[2] = v67;
      }

      *v139 = v61;
      v50 = v141;
    }

    v68 = sub_269455A44(v50, v46, v48);
    if (*(v69 + 8))
    {
      v70 = v69;
      v135 = v68;
      v71 = sub_26945CC18();
      v143 = v72;
      v73 = sub_26945CC18();
      v75 = v74;
      *(v140 + 280) = v22 & 1;
      *(v140 + 288) = 1;
      v134 = *(v0 + 352);
      v76 = *(v0 + 360);
      v77 = *(v70 + 24);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *(v70 + 24) = v77;
      v79 = v71;
      if ((v78 & 1) == 0)
      {
        v77 = sub_269455D14(0, *(v77 + 2) + 1, 1, v77);
        *(v70 + 24) = v77;
      }

      v81 = *(v77 + 2);
      v80 = *(v77 + 3);
      if (v81 >= v80 >> 1)
      {
        v77 = sub_269455D14((v80 > 1), v81 + 1, 1, v77);
        *(v70 + 24) = v77;
      }

      v0 = v137;
      *(v77 + 2) = v81 + 1;
      v82 = &v77[64 * v81];
      *(v82 + 4) = v79;
      *(v82 + 5) = v143;
      *(v82 + 6) = v73;
      *(v82 + 7) = v75;
      *(v82 + 8) = v145;
      v82[72] = v134;
      v83 = *v136;
      *(v82 + 19) = *(v136 + 3);
      *(v82 + 73) = v83;
      *(v82 + 10) = 0;
      v82[88] = v76;
      v135();
    }

    else
    {
      (v68)(v50, 0);
    }

LABEL_54:
    v84 = *(v0 + 296);
    if (v84 == *(v0 + 280))
    {
      break;
    }

LABEL_76:
    v113 = *(v0 + 272);
    if ((v113 & 0xC000000000000001) != 0)
    {
      v114 = MEMORY[0x26D63D7F0](v84);
    }

    else
    {
      if (v84 >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v114 = *(v113 + 8 * v84 + 32);
    }

    *(v0 + 288) = v114;
    *(v0 + 296) = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_100;
    }

    if (sub_26945CBE8() & 1) != 0 && (sub_26945CBE8())
    {
      v115 = sub_26944F2D4(*(v0 + 248), v114);
      *(v0 + 304) = v116;
      *(v0 + 312) = v117;
      v126 = (*(v0 + 96) + *(v0 + 240));
      v127 = v115;
      v128 = v116;
      v130 = v129;
      v131 = v117;
      *(v0 + 320) = sub_26945CD08();
      *(v0 + 362) = v132;
      __swift_project_boxed_opaque_existential_1(v126, v126[3]);
      v147 = (*MEMORY[0x277D04528] + MEMORY[0x277D04528]);
      v133 = swift_task_alloc();
      *(v0 + 328) = v133;
      *v133 = v0;
      v133[1] = sub_2694536C4;

      v147(v127, v128, v130, v131);
      return;
    }

    sub_26944F7A8();
    v4 = swift_allocError();
    *v118 = 0;
    swift_willThrow();
    v21 = 0;
    v22 = 1;
  }

  v85 = *(v0 + 256);
  if (v85 != *(v0 + 208))
  {
    while (1)
    {
      v88 = *(v0 + 88);
      if ((v88 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x26D63D7F0](v85);
      }

      else
      {
        if (v85 >= *(*(v0 + 200) + 16))
        {
          goto LABEL_99;
        }

        v89 = *(v88 + 8 * v85 + 32);
      }

      *(v0 + 248) = v89;
      *(v0 + 256) = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        return;
      }

      sub_26945CD68();
      v91 = *(v0 + 184);
      v90 = *(v0 + 192);
      v144 = v85 + 1;
      v146 = v85;
      v92 = *(v0 + 168);
      v93 = *(v0 + 176);
      v95 = *(v0 + 152);
      v94 = *(v0 + 160);
      v96 = *(v0 + 144);
      sub_26945CC38();
      sub_26945C928();
      sub_26945C9F8();
      sub_26945C938();
      (*(v95 + 8))(v94, v96);
      v97 = *(v93 + 8);
      v97(v91, v92);
      sub_26945C948();
      *(v0 + 264) = v98;
      v97(v90, v92);
      if ((sub_26945CBE8() & 1) == 0)
      {
        break;
      }

      v100 = *(v0 + 88);
      v99 = *(v0 + 96);
      v101 = *(v0 + 80);
      v102 = sub_26945CC18();
      v104 = sub_269455310(v102, v103, v101, v100, *(v99 + 24), v99);
      *(v0 + 272) = v104;

      if (!v104)
      {

        v106 = sub_26945CC68();
        v107 = sub_26945CD98();

        v86 = v144;
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v148[0] = v109;
          *v108 = 136315138;
          v110 = sub_26945CC18();
          v112 = sub_269455F28(v110, v111, v148);

          *(v108 + 4) = v112;
          _os_log_impl(&dword_26944D000, v106, v107, "No consecutive turns after turn %s.", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v109);
          MEMORY[0x26D63DD90](v109, -1, -1);
          MEMORY[0x26D63DD90](v108, -1, -1);
        }

        else
        {
        }

        goto LABEL_58;
      }

      if (v104 >> 62)
      {
        v105 = sub_26945CE78();
      }

      else
      {
        v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87 = v146;
      *(v0 + 280) = v105;
      if (v105)
      {
        v84 = 0;
        goto LABEL_76;
      }

      v86 = v144;
LABEL_59:
      v85 = v87 + 1;
      if (v86 == *(v0 + 208))
      {
        goto LABEL_85;
      }
    }

    sub_26944E990(0xD000000000000014, 0x800000026945DF90);

    v86 = v144;
LABEL_58:
    v87 = v146;
    goto LABEL_59;
  }

LABEL_85:
  v120 = *v139;
  v121 = *(*v139 + 16);
  if (v121)
  {
    v122 = sub_269455E20(*(*v139 + 16), 0);
    v123 = sub_2694576E0(v148, v122 + 4, v121, v120);
    v124 = v148[0];

    sub_269458094(v124);
    if (v123 != v121)
    {
      goto LABEL_104;
    }

    v0 = v137;
  }

  else
  {

    v122 = MEMORY[0x277D84F90];
  }

  v125 = *(v0 + 8);

  v125(v122);
}

uint64_t sub_269455310(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v59 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = sub_26945C9B8();
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_73;
  }

  v24 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    return 0;
  }

  while (2)
  {
    if (!a3[2])
    {
      return 0;
    }

    v57 = v20;
    v58 = v22;
    v52 = v19;
    v25 = sub_2694564E0(a1, a2);
    if ((v26 & 1) == 0)
    {
      return 0;
    }

    v55 = a5;
    a2 = *(a3[7] + 8 * v25);
    v27 = a4 & 0xC000000000000001;
    if ((a4 & 0xC000000000000001) != 0)
    {
      goto LABEL_76;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (a2 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a3 = *(a4 + 8 * a2 + 32);

      if ((sub_26945CBE8() & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    do
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v36 = sub_26945CE78();
LABEL_40:
      v37 = v55;
      v38 = v57;
      if (v36 < 1)
      {
        v39 = MEMORY[0x277D84F90];
LABEL_71:

        return v39;
      }

      v24 = 0;
      v56 = (v57 + 48);
      v57 = a4 & 0xC000000000000001;
      v51 = (v38 + 32);
      v49 = (v38 + 8);
      v39 = MEMORY[0x277D84F90];
      v53 = v36;
      v50 = a6;
      while (1)
      {
        if (v39 >> 62)
        {
          if (sub_26945CE78() >= v37)
          {
            goto LABEL_71;
          }
        }

        else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37)
        {
          goto LABEL_71;
        }

        v27 = a4 + 8 * v24;
        if (!v57)
        {
          break;
        }

        MEMORY[0x26D63D7F0](v24, a4);
LABEL_47:
        v23 = v54;
        sub_26945CC38();
        v41 = v40;
        sub_26945CC38();
        v43 = v42;

        if (*(a6 + 16) < vabdd_f64(v41, v43))
        {
          goto LABEL_71;
        }

        sub_26945CC28();
        a2 = *v56;
        if ((*v56)(v16, 1, v17) == 1)
        {
          sub_269457FA8(v16, &qword_2803173C0, &qword_26945D9F0);
        }

        else
        {
          v44 = *v51;
          (*v51)(v58, v16, v17);
          if (v57)
          {
            MEMORY[0x26D63D7F0](v24, a4);
          }

          else
          {
          }

          v23 = v59;
          sub_26945CC28();

          if ((a2)(v23, 1, v17) == 1)
          {
            (*v49)(v58, v17);
            sub_269457FA8(v23, &qword_2803173C0, &qword_26945D9F0);
          }

          else
          {
            a2 = v52;
            v44(v52, v23, v17);
            v23 = v58;
            if (sub_26945C998())
            {
              a6 = v50;
              if (v57)
              {
                a2 = MEMORY[0x26D63D7F0](v24, a4);
              }

              else
              {
                a2 = *(v27 + 32);
              }

              MEMORY[0x26D63D710]();
              v37 = v55;
              if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_26945CD48();
                v37 = v55;
              }

              sub_26945CD58();
              v23 = v49;
              v46 = *v49;
              (*v49)(v52, v17);
              v46(v58, v17);
              v39 = v60;
              goto LABEL_61;
            }

            v45 = *v49;
            (*v49)(a2, v17);
            v45(v23, v17);
          }

          a6 = v50;
        }

        v37 = v55;
LABEL_61:
        if (v53 == ++v24)
        {
          goto LABEL_71;
        }
      }

      if (v24 < *(a4 + 16))
      {

        goto LABEL_47;
      }

      __break(1u);
LABEL_76:
      a3 = MEMORY[0x26D63D7F0](a2, a4);
      if ((sub_26945CBE8() & 1) == 0)
      {
LABEL_77:

        return 0;
      }

LABEL_9:
      v54 = a3;
      a1 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_82;
      }

      if (v24 < a1)
      {
        goto LABEL_83;
      }

      if (v23)
      {
        v28 = sub_26945CE78();
      }

      else
      {
        v28 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    while (v28 < a1);
    if (a1 < 0)
    {
      goto LABEL_85;
    }

    if (v23)
    {
      result = sub_26945CE78();
    }

    else
    {
      result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v24)
    {
      goto LABEL_86;
    }

    if (!v27 || a1 == v24)
    {

      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    if (a1 < v24)
    {
      a3 = sub_26945CC48();

      v30 = a2 + 1;
      do
      {
        v31 = v30 + 1;
        sub_26945CE08();
        v30 = v31;
      }

      while (v24 != v31);
      if (!v23)
      {
LABEL_26:
        a2 = (a4 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_29;
      }

LABEL_28:

      sub_26945CE88();
      a2 = v32;
      a1 = v33;
      v24 = v34 >> 1;
LABEL_29:
      a5 = MEMORY[0x277D84F90];
      v60 = MEMORY[0x277D84F90];
      v35 = swift_unknownObjectRetain();
      a4 = a5;
      if (a1 != v24)
      {
        v56 = v35;
        while (a1 < v24)
        {
          a4 = *(a2 + 8 * a1);

          a3 = a4;
          if (sub_26945CBE8())
          {
            a3 = &v60;
            sub_26945CE38();
            v23 = *(v60 + 16);
            sub_26945CE58();
            sub_26945CE68();
            sub_26945CE48();
          }

          else
          {
          }

          if (v24 == ++a1)
          {
            a4 = v60;
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_73:
        v52 = v19;
        v58 = v22;
        v47 = v20;
        v48 = sub_26945CE78();
        v20 = v47;
        v24 = v48;
        v22 = v58;
        v19 = v52;
        if (!v48)
        {
          return 0;
        }

        continue;
      }

LABEL_37:
      swift_unknownObjectRelease_n();
      v60 = a5;
      if ((a4 & 0x8000000000000000) != 0 || (a4 & 0x4000000000000000) != 0)
      {
        goto LABEL_87;
      }

      v36 = *(a4 + 16);
      goto LABEL_40;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_269455A44(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26945729C(v6, a2, a3);
  return sub_269455ACC;
}

void sub_269455ACC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t SiriTurnRestatementCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_calendar;
  v4 = sub_26945CA08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer));

  return v0;
}

uint64_t SiriTurnRestatementCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_calendar;
  v4 = sub_26945CA08();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriTurnRestatement29SiriTurnRestatementCalculator_similarityScorer));

  return swift_deallocClassInstance();
}

char *sub_269455D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173F0, &qword_26945DA18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_269455E20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E0, &qword_26945DA08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_269455ECC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_269455F28(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_269455F28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269455FF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269457F48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_269455FF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_269456100(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26945CE28();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_269456100(uint64_t a1, unint64_t a2)
{
  v3 = sub_26945614C(a1, a2);
  sub_26945627C(&unk_2879F9850);
  return v3;
}

void *sub_26945614C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269456368(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26945CE28();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26945CD28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269456368(v10, 0);
        result = sub_26945CDF8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_26945627C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_2694563DC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_269456368(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B8, &qword_26945D9E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2694563DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B8, &qword_26945D9E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2694564D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2694564E0(uint64_t a1, uint64_t a2)
{
  sub_26945CF48();
  sub_26945CD18();
  v4 = sub_26945CF68();

  return sub_2694565F0(a1, a2, v4);
}

unint64_t sub_269456558(uint64_t a1)
{
  sub_26945C9D8();
  sub_26945804C(&qword_280317388, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v2 = sub_26945CCA8();

  return sub_2694566A8(a1, v2);
}

unint64_t sub_2694565F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26945CED8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2694566A8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26945C9D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26945804C(&qword_280317390, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v15 = sub_26945CCC8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_269456868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E8, &qword_26945DA10);
  v38 = v4;
  result = sub_26945CEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v39 = *v24;
      v40 = *v22;
      v26 = v24[2];
      v27 = v24[3];
      if ((v38 & 1) == 0)
      {
      }

      sub_26945CF48();
      sub_26945CD18();
      result = sub_26945CF68();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v39;
      v17[1] = v25;
      v17[2] = v26;
      v17[3] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_269456B48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B0, &qword_26945D9E0);
  v34 = v4;
  result = sub_26945CEA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_26945CF48();
      sub_26945CD18();
      result = sub_26945CF68();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_269456DE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26945CDE8() + 1) & ~v5;
    do
    {
      sub_26945CF48();

      sub_26945CD18();
      v10 = sub_26945CF68();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void *sub_269456F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E8, &qword_26945DA10);
  v2 = *v0;
  v3 = sub_26945CE98();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
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

void *sub_269457134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B0, &qword_26945D9E0);
  v2 = *v0;
  v3 = sub_26945CE98();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void (*sub_26945729C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2694576AC(v7);
  v7[9] = sub_2694573A8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_269457348;
}

void sub_269457348(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2694573A8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[5] = a3;
  v10[6] = v4;
  v10[4] = a2;
  v12 = *v4;
  v13 = sub_2694564E0(a2, a3);
  *(v11 + 64) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_269456F98();
      v13 = v21;
      goto LABEL_11;
    }

    sub_269456868(v18, a4 & 1);
    v13 = sub_2694564E0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26945CEE8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[7] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 32 * v13);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  v11[2] = v26;
  v11[3] = v27;
  return sub_269457518;
}

void sub_269457518(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  LOBYTE(v7) = *(*a1 + 64);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v8 = v2[7];
    v9 = *v2[6];
    if ((*a1)[8])
    {
      goto LABEL_9;
    }

    v11 = v2[4];
    v10 = v2[5];
    v9[(v8 >> 6) + 8] |= 1 << v8;
    v12 = (v9[6] + 16 * v8);
    *v12 = v11;
    v12[1] = v10;
    v13 = (v9[7] + 32 * v8);
    *v13 = v3;
    v13[1] = v4;
    v13[2] = v5;
    v13[3] = v6;
    v14 = v9[2];
    v15 = __OFADD__(v14, 1);
    v7 = v14 + 1;
    if (!v15)
    {
LABEL_13:
      v9[2] = v7;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v7)
    {
      v17 = v2[7];
      v18 = *v2[6];
      sub_269458124(*(v18 + 48) + 16 * v17);
      sub_269456DE8(v17, v18);
    }

    goto LABEL_14;
  }

  v8 = v2[7];
  v9 = *v2[6];
  if ((v7 & 1) == 0)
  {
    v20 = v2[4];
    v19 = v2[5];
    v9[(v8 >> 6) + 8] |= 1 << v8;
    v21 = (v9[6] + 16 * v8);
    *v21 = v20;
    v21[1] = v19;
    v22 = (v9[7] + 32 * v8);
    *v22 = v3;
    v22[1] = v4;
    v22[2] = v5;
    v22[3] = v6;
    v23 = v9[2];
    v15 = __OFADD__(v23, 1);
    v7 = v23 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  v16 = (v9[7] + 32 * v8);
  *v16 = v3;
  v16[1] = v4;
  v16[2] = v5;
  v16[3] = v6;
LABEL_14:
  v24 = *v2;
  v25 = v2[1];
  v26 = v2[2];
  v27 = v2[3];
  sub_26945809C(v3, v4, v5, v6);
  sub_2694580E0(v24, v25, v26, v27);

  free(v2);
}

uint64_t (*sub_2694576AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2694576D4;
}

void *sub_2694576E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_269457868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173A8, &qword_26945D9D8);
    v3 = sub_26945CEB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2694564E0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_26945796C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317398, &qword_26945D9C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173A0, &qword_26945D9D0);
    v7 = sub_26945CEB8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_269457ED8(v9, v5);
      result = sub_269456558(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26945C9D8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_269457B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173E8, &qword_26945DA10);
    v3 = sub_26945CEB8();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_2694564E0(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_269457C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173B0, &qword_26945D9E0);
    v3 = sub_26945CEB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2694564E0(v5, v6);
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

uint64_t type metadata accessor for SiriTurnRestatementCalculator(uint64_t a1)
{
  result = qword_280317378;
  if (!qword_280317378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269457DC8(uint64_t a1)
{
  result = sub_26945CC88();
  if (v2 <= 0x3F)
  {
    result = sub_26945CA08();
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

uint64_t sub_269457ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317398, &qword_26945D9C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269457F48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269457FA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26945804C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26945809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_2694580E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SiriTurnRestatementDataProvider.__allocating_init(bookmarkService:dimFeatureExtractor:ueiFeatureExtractor:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v10 = sub_26945CC88();
  (*(*(v10 - 8) + 32))(v8 + v9, a4, v10);
  *(v8 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService) = a1;
  *(v8 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor) = a2;
  *(v8 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor) = a3;
  return v8;
}

uint64_t SiriTurnRestatementDataRecord.featurizedConversationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26945CAC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriTurnRestatementDataProvider.init(bookmarkService:dimFeatureExtractor:ueiFeatureExtractor:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v10 = sub_26945CC88();
  (*(*(v10 - 8) + 32))(v4 + v9, a4, v10);
  *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_bookmarkService) = a1;
  *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor) = a2;
  *(v4 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor) = a3;
  return v4;
}

uint64_t sub_269458344(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26945CA08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_26945C958();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269458460, 0, 0);
}

uint64_t sub_269458460()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_26945CAE8();
  sub_26945C9F8();
  sub_26945CA88();
  (*(v2 + 8))(v1, v3);
  v0[10] = [objc_allocWithZone(sub_26945CB98()) init];
  v4 = sub_26945CA68();
  v0[11] = v4;
  v5 = v0[3];
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803172E8, &qword_26945D6B0);
  v7 = swift_allocObject();
  v0[12] = v7;
  *(v7 + 16) = xmmword_26945DA20;
  v8 = *(v5 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_dimFeatureExtractor);
  *(v7 + 32) = v8;
  v9 = *(v5 + OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_ueiFeatureExtractor);
  v14 = (*MEMORY[0x277D04520] + MEMORY[0x277D04520]);
  *(v7 + 40) = v9;
  v10 = v8;
  v11 = v9;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_26945867C;

  return v14(v6, v7);
}

uint64_t sub_26945867C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_269458968;
  }

  else
  {
    v5 = sub_2694587D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2694587D0()
{

  v1 = sub_26945CC68();
  v2 = sub_26945CD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v14 = v5;
      v6 = sub_26945CE78();
      v5 = v14;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&dword_26944D000, v1, v2, "marker: fetched SELF conversations, count=%ld", v7, 0xCu);
    MEMORY[0x26D63DD90](v7, -1, -1);
  }

  else
  {
  }

  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  sub_26945CAA8();

  (*(v11 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_269458968()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t SiriTurnRestatementDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriTurnRestatementDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementDataProvider_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_269458B60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269451824;

  return sub_269458344(a1);
}

unint64_t sub_269458C00()
{
  result = qword_280317328;
  if (!qword_280317328)
  {
    type metadata accessor for SiriTurnRestatementDataRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317328);
  }

  return result;
}

uint64_t sub_269458C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945CAC8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269458D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945CAC8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269458D7C(uint64_t a1)
{
  result = sub_26945CAC8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269458E10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269458E48(uint64_t a1)
{
  result = sub_26945CC88();
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

uint64_t dispatch thunk of SiriTurnRestatementDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_269451824;

  return v6(a1);
}

uint64_t SiriTurnRestatementSELFReporter.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v4 = sub_26945CC88();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SiriTurnRestatementSELFReporter.init(logger:)(uint64_t a1)
{
  *(v1 + 16) = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v3 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v4 = sub_26945CC88();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t SiriTurnRestatementSELFReporter.report(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2694591AC, 0, 0);
}

void sub_2694591AC(uint64_t a1)
{
  *(v1 + 96) = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v2 = sub_26945CC68();
  v3 = sub_26945CD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26944D000, v2, v3, "Running SiriTurnRestatementSELFReporter", v4, 2u);
    MEMORY[0x26D63DD90](v4, -1, -1);
  }

  v5 = *(v1 + 88);

  v6 = *(v5 + 16);
  *(v1 + 104) = v6;
  if (v6)
  {
    *(v1 + 144) = 0;
    *(v1 + 112) = 0;
    v7 = *(v1 + 88);
    if (v7[2])
    {
      v8 = v7[7];
      v9 = v7[6];
      v10 = v7[5];
      *(v1 + 16) = v7[4];
      *(v1 + 24) = v10;
      *(v1 + 32) = v9;
      *(v1 + 40) = v8;

      v11 = sub_269459CCC((v1 + 16));
      *(v1 + 120) = v11;

      v16 = swift_task_alloc();
      *(v1 + 128) = v16;
      *v16 = v1;
      v16[1] = sub_2694595AC;

      sub_26945A274(v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = sub_26945CC68();
    v13 = sub_26945CD88();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26944D000, v12, v13, "No restatement scores to be reported", v14, 2u);
      MEMORY[0x26D63DD90](v14, -1, -1);
    }

    v15 = *(v1 + 8);

    v15();
  }
}

uint64_t sub_2694595AC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2694599E8;
  }

  else
  {
    v2 = sub_2694596C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2694596C0()
{
  v27 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);

  if (v1 + 1 == v2)
  {
    if (*(v0 + 144))
    {
LABEL_11:
      sub_269450528();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      v3 = *(v0 + 8);
    }

    else
    {
      v3 = *(v0 + 8);
    }

    v3();
  }

  else
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 112) + 1;
    *(v0 + 112) = v5;
    v6 = *(v0 + 88);
    if (v5 >= *(v6 + 16))
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v13 = (v6 + 32 * v5);
        v14 = v13[7];
        v15 = v13[6];
        v16 = v13[5];
        *(v0 + 16) = v13[4];
        *(v0 + 24) = v16;
        *(v0 + 32) = v15;
        *(v0 + 40) = v14;

        v17 = sub_269459CCC((v0 + 16));
        *(v0 + 120) = v17;

        if (!v4)
        {
          break;
        }

        v18 = v4;
        v19 = sub_26945CC68();
        v20 = sub_26945CDA8();
        MEMORY[0x26D63DC60](v4);
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v0 + 104);
        v22 = *(v0 + 112);
        if (v21)
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v26 = v8;
          *v7 = 136315138;
          swift_getErrorValue();
          v9 = sub_26945CEF8();
          v11 = sub_269455F28(v9, v10, &v26);

          *(v7 + 4) = v11;
          _os_log_impl(&dword_26944D000, v19, v20, "Unable to report event: %s", v7, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v8);
          MEMORY[0x26D63DD90](v8, -1, -1);
          MEMORY[0x26D63DD90](v7, -1, -1);
          MEMORY[0x26D63DC60](v4);

          if (v22 + 1 == v23)
          {
            goto LABEL_11;
          }
        }

        else
        {

          MEMORY[0x26D63DC60](v4);
          if (v22 + 1 == v23)
          {
            goto LABEL_11;
          }
        }

        v4 = 0;
        v12 = *(v0 + 112);
        *(v0 + 144) = 1;
        v5 = v12 + 1;
        *(v0 + 112) = v5;
        v6 = *(v0 + 88);
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_18;
        }
      }

      v25 = swift_task_alloc();
      *(v0 + 128) = v25;
      *v25 = v0;
      v25[1] = sub_2694595AC;

      sub_26945A274(v17);
    }
  }
}

void sub_2694599E8()
{
  v24 = v0;

  v1 = *(v0 + 136);
  v2 = v1;
  v3 = sub_26945CC68();
  v4 = sub_26945CDA8();
  MEMORY[0x26D63DC60](v1);
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_26945CEF8();
    v12 = sub_269455F28(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26944D000, v3, v4, "Unable to report event: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D63DD90](v9, -1, -1);
    MEMORY[0x26D63DD90](v8, -1, -1);
    MEMORY[0x26D63DC60](v1);

    if (v6 + 1 == v7)
    {
      goto LABEL_9;
    }
  }

  else
  {

    MEMORY[0x26D63DC60](v1);
    if (v6 + 1 == v7)
    {
LABEL_9:
      sub_269450528();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
      v22 = *(v0 + 8);

      v22();
      return;
    }
  }

  v13 = *(v0 + 112) + 1;
  *(v0 + 144) = 1;
  *(v0 + 112) = v13;
  v14 = *(v0 + 88);
  if (v13 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    v15 = (v14 + 32 * v13);
    v16 = v15[7];
    v17 = v15[6];
    v18 = v15[5];
    *(v0 + 16) = v15[4];
    *(v0 + 24) = v18;
    *(v0 + 32) = v17;
    *(v0 + 40) = v16;

    v19 = sub_269459CCC((v0 + 16));
    *(v0 + 120) = v19;

    v20 = swift_task_alloc();
    *(v0 + 128) = v20;
    *v20 = v0;
    v20[1] = sub_2694595AC;

    sub_26945A274(v19);
  }
}

id sub_269459CCC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - v6;
  v7 = sub_26945C9B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v49 - v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = [objc_allocWithZone(MEMORY[0x277D59188]) init];
  if (v16)
  {
    v61[0] = v12;
    v61[1] = v13;
    v61[2] = v14;
    v61[3] = v15;
    v17 = sub_26945A838(v61);
    if (v1)
    {
    }

    else
    {
      v22 = v17;
      v49 = 0;
      v56 = v7;
      [v16 setEventMetadata_];

      v23 = [objc_allocWithZone(MEMORY[0x277D591A8]) init];
      [v16 setTurnRestatementScoresReported_];

      v24 = *(v15 + 16);
      if (v24)
      {
        v25 = (v8 + 48);
        v53 = (v8 + 8);
        v54 = (v8 + 32);
        v26 = v15 + 48;
        v55 = (v8 + 48);
        v50 = v16;
        do
        {
          v28 = *(v26 - 8);
          v60 = *v26;
          v29 = *(v26 + 16);
          v30 = *(v26 + 32);
          v31 = *(v26 + 40);
          v62 = *(v26 + 24);
          v63 = v31;
          v32 = objc_allocWithZone(MEMORY[0x277D591A0]);

          v33 = [v32 init];
          if (v33)
          {
            v34 = v33;
            v35 = v57;
            v59 = v28;
            sub_26945C968();
            v36 = *v25;
            v37 = v56;
            if ((*v25)(v35, 1, v56) == 1)
            {
              sub_26945AED8(v35);
            }

            else
            {
              v38 = v51;
              (*v54)(v51, v35, v37);
              v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v40 = sub_26945C988();
              v41 = [v39 initWithNSUUID_];

              [v34 setCurrentTurnId_];
              v16 = v50;
              v42 = v38;
              v25 = v55;
              (*v53)(v42, v37);
            }

            v43 = v58;
            sub_26945C968();
            if (v36(v43, 1, v37) == 1)
            {
              sub_26945AED8(v43);
            }

            else
            {
              v44 = v52;
              (*v54)(v52, v43, v37);
              v45 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v46 = sub_26945C988();
              v47 = [v45 initWithNSUUID_];

              [v34 setNextTurnId_];
              v25 = v55;
              (*v53)(v44, v37);
            }

            if ((v62 & 1) == 0)
            {
              [v34 setUtteranceRestatementScore_];
            }

            if ((v63 & 1) == 0)
            {
              [v34 setSemanticSimilarityScore_];
            }

            v27 = [v16 turnRestatementScoresReported];
            [v27 addTurnRestatementScores_];
          }

          else
          {
          }

          v26 += 64;
          --v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    v18 = sub_26945CC68();
    v19 = sub_26945CDA8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26944D000, v18, v19, "Error initiating SELF wrapper", v20, 2u);
      MEMORY[0x26D63DD90](v20, -1, -1);
    }

    sub_269450528();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_26945A274(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_26945A294, 0, 0);
}

uint64_t sub_26945A294()
{
  v19 = v0;
  v1 = [*(v0 + 144) wrapAsAnyEvent];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_26945CC68();
    v4 = sub_26945CD98();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      [v2 anyEventType];
      v7 = sub_26945CDB8();
      v9 = sub_269455F28(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_26944D000, v3, v4, "FBF Shared reporter: store the event %s and send to server", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x26D63DD90](v6, -1, -1);
      MEMORY[0x26D63DD90](v5, -1, -1);
    }

    v10 = *(*(v0 + 152) + 16);
    v11 = sub_26945CCD8();
    *(v0 + 168) = v11;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26945A59C;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317450, qword_26945DBF0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26945A78C;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v12;
    [v10 reportSiriInstrumentationEvent:v2 forBundleID:v11 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v13 = sub_26945CC68();
    v14 = sub_26945CDA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26944D000, v13, v14, "Couldn't package event in AnyEvent wrapper.", v15, 2u);
      MEMORY[0x26D63DD90](v15, -1, -1);
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26945A59C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_26945A714;
  }

  else
  {
    v2 = sub_26945A6AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26945A6AC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26945A714(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_26945A78C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C8, &qword_26945D9F8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

id sub_26945A838(uint64_t a1)
{
  v3 = sub_26945C958();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26945C9B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = [objc_allocWithZone(MEMORY[0x277D59190]) init];
  if (!v12)
  {
    v21 = sub_26945CC68();
    v22 = sub_26945CDA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26944D000, v21, v22, "Error initiating Event metadata", v23, 2u);
      MEMORY[0x26D63DD90](v23, -1, -1);
    }

    sub_269450528();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    return v12;
  }

  v25[3] = v1;
  sub_26945C9A8();
  v13 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v14 = sub_26945C988();
  v15 = [v13 initWithNSUUID_];

  (*(v8 + 8))(v10, v7);
  [v12 setOdbatchId_];

  sub_26945CA18();
  sub_26945C948();
  v17 = v16;
  v18 = v16;
  result = (*(v4 + 8))(v6, v3);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v17 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!is_mul_ok(v17, 0x3E8uLL))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v12 setEventTimestampInMsSince1970_];
  result = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  v20 = result;
  if (!result)
  {
LABEL_11:
    [v12 setAggregationInterval_];

    return v12;
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v11 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11 < 1.84467441e19)
  {
    [result setStartTimestampInSecondsSince1970_];
    [v20 setNumberOfSeconds_];
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t SiriTurnRestatementSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriTurnRestatementSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19SiriTurnRestatement31SiriTurnRestatementSELFReporter_logger;
  v2 = sub_26945CC88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26945AD08(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269451824;

  return SiriTurnRestatementSELFReporter.report(_:)(a1);
}

uint64_t type metadata accessor for SiriTurnRestatementSELFReporter(uint64_t a1)
{
  result = qword_280317440;
  if (!qword_280317440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26945ADF4(uint64_t a1)
{
  result = sub_26945CC88();
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

uint64_t sub_26945AED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803173C0, &qword_26945D9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26945AF40()
{
  v0 = sub_26945C9D8();
  __swift_allocate_value_buffer(v0, qword_280317458);
  __swift_project_value_buffer(v0, qword_280317458);
  return sub_26945C9C8();
}

uint64_t sub_26945AF94@<X0>(uint64_t a1@<X8>)
{
  sub_26945CB28();
  sub_26945CB18();
  sub_26945CBF8();

  if (v12 && (v2 = MEMORY[0x26D63D430](), , v2) && (v3 = [v2 languageCode], v2, v3))
  {
    v4 = v3 - 1;
    if (v3 - 1 > 0xB8)
    {
      v5 = @"ISOLANGUAGECODE_UNKNOWN";
      v6 = @"ISOLANGUAGECODE_UNKNOWN";
    }

    else
    {
      v5 = off_279C57FD0[v4];
      v6 = off_279C58598[v4];
    }

    v10 = v5;
    v11 = v6;
    sub_26945CCE8();

    return sub_26945C9E8();
  }

  else
  {
    if (qword_280317270 != -1)
    {
      swift_once();
    }

    v7 = sub_26945C9D8();
    v8 = __swift_project_value_buffer(v7, qword_280317458);
    return (*(*(v7 - 8) + 16))(a1, v8, v7);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_26945B204(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = &xmmword_26945DF90;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v3)
    {
      v4 = "ASR Turn Text is nil";
    }

    else
    {
      v4 = &xmmword_26945DF90;
    }
  }

  else if (a1 == 2)
  {
    v4 = "ASR Turn Text is empty";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "rn Text is empty";
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = "Failed to embed turn utterances";
    v5 = 0xD000000000000044;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (a2)
    {
      v2 = "ASR Turn Text is nil";
    }
  }

  else if (a2 == 2)
  {
    v2 = "ASR Turn Text is empty";
    v6 = 0xD000000000000020;
  }

  else
  {
    v2 = "rn Text is empty";
    if (a2 == 3)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v6 = 0xD000000000000044;
    }

    if (a2 != 3)
    {
      v2 = "Failed to embed turn utterances";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26945CED8();
  }

  return v7 & 1;
}

uint64_t sub_26945B36C()
{
  sub_26945CF48();
  sub_26945CD18();

  return sub_26945CF68();
}

double sub_26945B440(uint64_t a1)
{
  sub_26945CD18();

  return result;
}

uint64_t sub_26945B500(uint64_t a1)
{
  sub_26945CF48();
  sub_26945CD18();

  return sub_26945CF68();
}

unint64_t sub_26945B5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26945B694(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26945B600(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = &xmmword_26945DF90;
  v5 = "ASR Turn Text is empty";
  v6 = 0xD000000000000020;
  v7 = "rn Text is empty";
  v8 = 0xD00000000000001FLL;
  if (v3 != 3)
  {
    v8 = 0xD000000000000044;
    v7 = "Failed to embed turn utterances";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000016;
    v4 = "ASR Turn Text is nil";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_26945B694(uint64_t a1, uint64_t a2)
{
  v2 = sub_26945CEC8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for TurnRestatementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TurnRestatementError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26945B83C()
{
  result = qword_280317470;
  if (!qword_280317470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317470);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26945B974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_26945B9BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26945BA28(uint64_t a1, int a2)
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

uint64_t sub_26945BA70(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26945BAD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26945BB1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_26945BB90()
{
  sub_26945CB08();
  sub_26945CAF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317478, qword_26945DEF8);
  sub_26945CBF8();

  if (!v2)
  {
    goto LABEL_5;
  }

  if (!*(v2 + 16))
  {

LABEL_5:
    sub_26945CB48();
    sub_26945CB38();
    sub_26945CBF8();

    return v2;
  }

  v0 = *(v2 + 32);

  return v0;
}

uint64_t sub_26945BCA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317480, &qword_26945DF38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317488, qword_26945DF40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v24 - v8;
  v9 = sub_26945C918();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26945CCF8();
  v34 = v13;
  sub_26945C908();
  v14 = sub_26944F7FC();
  v15 = sub_26945CDC8();
  v25 = *(v10 + 8);
  v26 = v9;
  v25(v12, v9);

  v33 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317478, qword_26945DEF8);
  sub_26945C270(&qword_280317490, &qword_280317478, qword_26945DEF8, MEMORY[0x277D83958]);
  v16 = sub_26945CCB8();
  v18 = v17;

  if (qword_280317278 != -1)
  {
    swift_once();
  }

  if (*(off_2803174B0 + 2))
  {
    sub_269456558(v28);
    if (v19)
    {
    }
  }

  sub_26945CAD8();
  (*(v7 + 56))(v5, 0, 1, v6);
  v20 = *(v7 + 32);
  v28 = v14;
  v21 = v27;
  v20(v27, v5, v6);
  v31 = v16;
  v32 = v18;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_26945C1C8();
  sub_26945C21C();
  sub_26945C270(&qword_2803174A8, &qword_280317488, qword_26945DF40, MEMORY[0x277D85AC0]);
  sub_26945CD78();

  v31 = v33;
  v32 = v34;
  sub_26945C8F8();
  v22 = sub_26945CDD8();
  v25(v12, v26);

  (*(v7 + 8))(v21, v6);
  return v22;
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

uint64_t sub_26945C160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317480, &qword_26945DF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26945C1C8()
{
  result = qword_280317498;
  if (!qword_280317498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280317498);
  }

  return result;
}

unint64_t sub_26945C21C()
{
  result = qword_2803174A0;
  if (!qword_2803174A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803174A0);
  }

  return result;
}

uint64_t sub_26945C270(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_26945C2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26945C918();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_26945C8F8();
  sub_26944F7FC();
  v8 = sub_26945CDD8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    sub_26944F7A8();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }
}

uint64_t sub_26945C42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803174B8, &unk_26945DFA0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280317398, &qword_26945D9C8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26945DF90;
  v4 = v3 + v2;
  v5 = (v4 + *(v0 + 48));
  sub_26945C9C8();
  *v5 = 0x1000000000000041;
  v5[1] = 0x800000026945E810;
  v6 = (v4 + v1 + *(v0 + 48));
  sub_26945C9C8();
  *v6 = 0xD00000000000002ALL;
  v6[1] = 0x800000026945E860;
  v7 = (v4 + 2 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v7 = 0xD000000000000035;
  v7[1] = 0x800000026945E890;
  v8 = (v4 + 3 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v8 = 0xD000000000000028;
  v8[1] = 0x800000026945E7B0;
  v9 = (v4 + 4 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v9 = 0xD000000000000034;
  v9[1] = 0x800000026945E8D0;
  v10 = (v4 + 5 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v10 = 0xD000000000000028;
  v10[1] = 0x800000026945E910;
  v11 = (v4 + 6 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v11 = 0xD00000000000002FLL;
  v11[1] = 0x800000026945E940;
  v12 = (v4 + 7 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v12 = 0xD000000000000028;
  v12[1] = 0x800000026945E970;
  v13 = (v4 + 8 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v13 = 0xD000000000000028;
  v13[1] = 0x800000026945E7B0;
  v14 = (v4 + 9 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v14 = 0x1000000000000027;
  v14[1] = 0x800000026945E9A0;
  v15 = (v4 + 10 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v15 = 0xD000000000000030;
  v15[1] = 0x800000026945E9D0;
  v16 = (v4 + 11 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v16 = 0x1000000000000028;
  v16[1] = 0x800000026945EA10;
  v17 = (v4 + 12 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v17 = 0x100000000000002ALL;
  v17[1] = 0x800000026945EA40;
  v18 = (v4 + 13 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v18 = 0x1000000000000031;
  v18[1] = 0x800000026945EA70;
  v19 = (v4 + 14 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v19 = 0x1000000000000031;
  v19[1] = 0x800000026945EAB0;
  v20 = (v4 + 15 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v20 = 0x1000000000000037;
  v20[1] = 0x800000026945EAF0;
  v21 = (v4 + 16 * v1 + *(v0 + 48));
  sub_26945C9C8();
  *v21 = 0xD000000000000028;
  v21[1] = 0x800000026945E7B0;
  v22 = (v4 + 17 * v1 + *(v0 + 48));
  sub_26945C9E8();
  *v22 = 0x1000000000000034;
  v22[1] = 0x800000026945EB30;
  v23 = (v4 + 18 * v1 + *(v0 + 48));
  sub_26945C9E8();
  *v23 = 0x1000000000000040;
  v23[1] = 0x800000026945EB70;
  v24 = sub_26945796C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_2803174B0 = v24;
  return result;
}