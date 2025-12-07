uint64_t sub_21D010A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  type metadata accessor for TapToRadarDraft(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21D010AF0, 0, 0);
}

uint64_t sub_21D010AF0()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_21D0114F8(v2, v1, type metadata accessor for TapToRadarDraft);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_21D010BB8;

  return sub_21CFBAD18();
}

uint64_t sub_21D010BB8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_21D011560(v2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D010D1C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21D010D1C(uint64_t a1)
{
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PrivateMLClient failure -- failed to open Tap To Radar3", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

void sub_21D010DFC(uint64_t a1)
{
  oslog = sub_21D022484();
  v1 = sub_21D0228B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21CF72000, oslog, v1, "Dismiss user notification for Tap-To-Radar", v2, 2u);
    MEMORY[0x223D3ADE0](v2, -1, -1);
  }
}

uint64_t sub_21D010EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClientAlertService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D010F04(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D010228(a1, v1 + v4, v8, v9, v10, v11, v12);
}

void sub_21D010FC0(uint64_t a1)
{
  type metadata accessor for PrivateMLClientAlertService(0);

  sub_21D010DFC(a1);
}

uint64_t sub_21D011030(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21D011128;

  return v6(a1);
}

uint64_t sub_21D011128()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21D011220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D011290(uint64_t a1)
{
  v4 = *(type metadata accessor for PrivateMLClientAlertService(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CF83390;

  return sub_21D010A50(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21D011388(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CF95398;

  return sub_21D011030(a1, v4);
}

uint64_t sub_21D011440(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CF83390;

  return sub_21D011030(a1, v4);
}

uint64_t sub_21D0114F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D011560(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TransparencyReporterLogger.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v4 = sub_21D0224A4();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t TransparencyReporterLogger.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v4 = sub_21D0224A4();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

void sub_21D0116C8(uint64_t a1, unint64_t a2, const char *a3, ...)
{

  oslog = sub_21D022484();
  v6 = sub_21D0228B4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_21CF9703C(a1, a2, &v10);
    _os_log_impl(&dword_21CF72000, oslog, v6, a3, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D3ADE0](v8, -1, -1);
    MEMORY[0x223D3ADE0](v7, -1, -1);
  }
}

void sub_21D0117E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = sub_21D022484();
  v8 = sub_21D0228B4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_21CF9703C(a1, a2, &v12);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_21CF9703C(a3, a4, &v12);
    _os_log_impl(&dword_21CF72000, oslog, v8, "TransparencyReporterLogger: modelName=%{public}smodelVersion=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v10, -1, -1);
    MEMORY[0x223D3ADE0](v9, -1, -1);
  }
}

uint64_t TransparencyReporterLogger.deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TransparencyReporterLogger.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransparencyReporterLogger(uint64_t a1)
{
  result = qword_27CE46728;
  if (!qword_27CE46728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransparencyReporterImpl.__allocating_init(logger:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TransparencyReporterImpl.init(logger:configuration:)(a1, a2);
  return v4;
}

uint64_t TransparencyReporterImpl.init(logger:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21D0224A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21D022414();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46738, &unk_21D02CF80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - v11;
  v13 = sub_21D021A74();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_response);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) = 0;
  v71 = v7;
  v72 = v6;
  v20 = *(v7 + 16);
  v20(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_logger, a1, v6);
  v21 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_configuration;
  v22 = sub_21D021CC4();
  v68 = *(v22 - 8);
  v69 = v22;
  (*(v68 + 16))(v3 + v21, a2);
  sub_21D021C94();
  v62 = v14;
  v63 = v13;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_requestIdentifier, v16, v13);
  v23 = sub_21D021CB4();
  v24 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
  *v24 = v23;
  v24[1] = v25;
  sub_21D021CA4();
  v26 = sub_21D0224E4();
  v27 = a1;
  v28 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
  *v28 = v26;
  v28[1] = v29;
  v70 = a2;
  sub_21D021C84();
  v30 = sub_21D021C74();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v12, 1, v30);
  if (v32 == 1)
  {
    sub_21D012360(v12);
    v33 = 0;
  }

  else
  {
    v33 = sub_21D021C64();
    (*(v31 + 8))(v12, v30);
  }

  v34 = v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID;
  *v34 = v33;
  *(v34 + 4) = v32 == 1;
  v35 = v27;
  v36 = v72;
  v20(v66, v27, v72);
  v37 = v64;
  sub_21D0223F4();
  (*(v65 + 32))(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_signPoster, v37, v67);
  sub_21D022514();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_transparencyReport) = sub_21D022504();

  v38 = sub_21D022484();
  v39 = sub_21D0228D4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v67 = v35;
    v41 = v40;
    v42 = swift_slowAlloc();
    v75[0] = v42;
    *v41 = 136315907;
    v44 = v62;
    v43 = v63;
    (*(v62 + 16))(v16, v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_requestIdentifier, v63);
    sub_21CF97660();
    v45 = sub_21D022B04();
    v47 = v46;
    (*(v44 + 8))(v16, v43);
    v48 = sub_21CF9703C(v45, v47, v75);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2082;
    v49 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
    v50 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);

    v51 = sub_21CF9703C(v49, v50, v75);

    *(v41 + 14) = v51;
    *(v41 + 22) = 2081;
    v52 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8);
    v73 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
    v74 = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
    v53 = sub_21D0225D4();
    v55 = sub_21CF9703C(v53, v54, v75);

    *(v41 + 24) = v55;
    *(v41 + 32) = 2081;
    v56 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID + 4);
    LODWORD(v73) = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID);
    BYTE4(v73) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
    v57 = sub_21D0225D4();
    v59 = sub_21CF9703C(v57, v58, v75);

    *(v41 + 34) = v59;
    _os_log_impl(&dword_21CF72000, v38, v39, "%s Initialized TransparencyReporter. modelName=%{public}s clientIdentifier=%{private}s userID=%{private}s)", v41, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v42, -1, -1);
    MEMORY[0x223D3ADE0](v41, -1, -1);

    (*(v68 + 8))(v70, v69);
    (*(v71 + 8))(v67, v72);
  }

  else
  {

    (*(v68 + 8))(v70, v69);
    (*(v71 + 8))(v35, v36);
  }

  return v3;
}

uint64_t sub_21D012360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46738, &unk_21D02CF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D0123C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
  *v3 = a1;
  v3[1] = a2;

  *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) = 0;
  return result;
}

uint64_t sub_21D012414(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x223D3A110](a1, a2);
  swift_endAccess();
}

uint64_t sub_21D01248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
  *v7 = a1;
  v7[1] = a2;

  v8 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
  *v8 = a3;
  v8[1] = a4;
}

void sub_21D01250C()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished;
  if ((*(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) & 1) == 0)
  {
    v2 = v0;
    v3 = v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData;
    v4 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
    v5 = *(v3 + 8);
    v6 = (v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_response);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];

    sub_21D0128C4(v4, v5, v7, v8);

    *(v2 + v1) = 1;
    swift_retain_n();
    v9 = sub_21D022484();
    v10 = sub_21D0228D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136316675;
      sub_21D021A74();
      sub_21CF97660();
      v13 = sub_21D022B04();
      v15 = sub_21CF9703C(v13, v14, &v30);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
      v17 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);

      v18 = sub_21CF9703C(v16, v17, &v30);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2082;
      v19 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
      v20 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion + 8);

      v21 = sub_21CF9703C(v19, v20, &v30);

      *(v11 + 24) = v21;
      *(v11 + 32) = 2081;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
      v22 = sub_21D0225D4();
      v24 = sub_21CF9703C(v22, v23, &v30);

      *(v11 + 34) = v24;
      *(v11 + 42) = 2081;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
      v25 = sub_21D0225D4();
      v27 = sub_21CF9703C(v25, v26, &v30);

      *(v11 + 44) = v27;
      *(v11 + 52) = 2048;
      if (*(v3 + 8))
      {

        v28 = sub_21D022624();
      }

      else
      {

        v28 = 0;
      }

      *(v11 + 54) = v28;

      *(v11 + 62) = 2048;

      v29 = sub_21D022624();

      *(v11 + 64) = v29;

      _os_log_impl(&dword_21CF72000, v9, v10, "%s Finishing TransparencyReporter. modelName=%{public}s modelVersion=%{public}s clientIdentifier=%{private}s userID=%{private}s len(userData)=%ld\nlen(response)=%ld", v11, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v12, -1, -1);
      MEMORY[0x223D3ADE0](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D0128C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_21D0220D4();
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21D021CC4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 | a4)
  {
    v20 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_transparencyReport);
    v64 = v14;
    v65 = v20;
    (*(v13 + 16))(v16, v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_configuration, v14);
    if (a2)
    {
      v21 = a1;
    }

    else
    {
      v21 = 0;
    }

    v62 = v21;
    v63 = v9;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    if (a4)
    {
      v23 = a3;
    }

    else
    {
      v23 = 0;
    }

    v60 = v23;
    v61 = v22;
    if (a4)
    {
      v24 = a4;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v58 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
    v59 = v24;
    v54 = a3;
    v55 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
    v25 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
    v56 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
    v57 = v25;
    v66 = v4;
    v26 = v67;
    (v67[13].isa)(v11, *MEMORY[0x277D20980], v9);

    sub_21D0224F4();

    v27 = v66;

    (v26[1].isa)(v11, v63);
    (*(v13 + 8))(v16, v64);
    swift_retain_n();
    v28 = a4;
    swift_bridgeObjectRetain_n();
    v29 = sub_21D022484();
    v30 = sub_21D0228B4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v70 = v32;
      *v31 = 136447747;
      v33 = sub_21D021A54();
      v35 = sub_21CF9703C(v33, v34, &v70);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v36 = *v55;
      v37 = v55[1];

      v38 = sub_21CF9703C(v36, v37, &v70);

      *(v31 + 14) = v38;
      *(v31 + 22) = 2082;
      v39 = *v56;
      v40 = v56[1];

      v41 = sub_21CF9703C(v39, v40, &v70);

      *(v31 + 24) = v41;
      *(v31 + 32) = 2082;
      if (*(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8))
      {
        v42 = *(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
        v43 = *(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8);
      }

      else
      {
        v42 = 0;
        v43 = 0xE000000000000000;
      }

      v44 = sub_21CF9703C(v42, v43, &v70);

      *(v31 + 34) = v44;
      *(v31 + 42) = 2081;
      v45 = *(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID + 4);
      v68 = *(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID);
      v69 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
      v46 = sub_21D0225D4();
      v48 = sub_21CF9703C(v46, v47, &v70);

      *(v31 + 44) = v48;
      *(v31 + 52) = 2081;
      v49 = *(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData + 8);
      if (v49)
      {
        v50 = *(v27 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
        v51 = v49;
      }

      else
      {
        v50 = 0;
        v51 = 0xE000000000000000;
      }

      v52 = sub_21CF9703C(v50, v51, &v70);

      *(v31 + 54) = v52;
      *(v31 + 62) = 2049;
      if (v28)
      {
        v53 = sub_21D022624();
      }

      else
      {
        v53 = 0;
      }

      *(v31 + 64) = v53;

      _os_log_impl(&dword_21CF72000, v29, v30, "requestIdentifier=%{public}s modelName=%{public}s modelVersion=%{public}s clientIdentifier=%{public}s userID=%{private}s userData=%{private}s responseLen=%{private}ld", v31, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v32, -1, -1);
      MEMORY[0x223D3ADE0](v31, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v67 = sub_21D022484();
    v17 = sub_21D0228D4();
    if (os_log_type_enabled(v67, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21CF72000, v67, v17, "Caller failed to provide a prompt or response", v18, 2u);
      MEMORY[0x223D3ADE0](v18, -1, -1);
    }

    v19 = v67;
  }
}

uint64_t TransparencyReporterImpl.deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_configuration;
  v4 = sub_21D021CC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_signPoster;
  v6 = sub_21D022414();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_requestIdentifier;
  v8 = sub_21D021A74();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t TransparencyReporterImpl.__deallocating_deinit()
{
  TransparencyReporterImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D0130C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
  *v4 = a1;
  v4[1] = a2;

  *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) = 0;
}

uint64_t sub_21D013128(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x223D3A110](a1, a2);
  swift_endAccess();
}

uint64_t sub_21D0131A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = (v7 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
  *v8 = a1;
  v8[1] = a2;

  v9 = (v7 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
  *v9 = a3;
  v9[1] = a4;
}

uint64_t type metadata accessor for TransparencyReporterImpl(uint64_t a1)
{
  result = qword_28121D790;
  if (!qword_28121D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D013280(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    result = sub_21D021CC4();
    if (v3 <= 0x3F)
    {
      result = sub_21D022414();
      if (v4 <= 0x3F)
      {
        result = sub_21D021A74();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t static NSUserDefaults.perfMetricsMaxDepth.getter()
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46938;
  v3[1] = unk_27CE46948;
  v4 = byte_27CE46958;
  sub_21CF7F198(v3, &v2, &qword_27CE45260, &unk_21D0244F0);
  v0 = sub_21D0146E4();
  sub_21CF7F200(v3, &qword_27CE45260, &unk_21D0244F0);
  return v0;
}

uint64_t static NSUserDefaults.enableLLC.getter()
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46910;
  v3[1] = unk_27CE46920;
  v4 = byte_27CE46930;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.inputTokenCountEstimate.getter()
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B248;
  v4[0] = *&qword_28121B258;
  *(v4 + 9) = unk_28121B261;
  sub_21CF7F198(&v3, v2, &qword_27CE45318, &qword_21D0236F8);
  v0 = sub_21D016038();
  sub_21CF7F200(&v3, &qword_27CE45318, &qword_21D0236F8);
  return v0;
}

uint64_t static NSUserDefaults.convertJpgToBitmap.getter()
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46898;
  v3[1] = unk_27CE468A8;
  v4 = byte_27CE468B8;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.enablePerfMetrics.getter()
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B2B0;
  v3[1] = unk_28121B2C0;
  v4 = byte_28121B2D0;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.modelOptionOverride.getter()
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B280;
  v3[1] = *&qword_28121B290;
  v4 = byte_28121B2A0;
  sub_21CF7F198(v3, &v2, &qword_27CE452D0, &unk_21D023690);
  v0 = sub_21D015100();
  sub_21CF7F200(v3, &qword_27CE452D0, &unk_21D023690);
  return v0;
}

uint64_t static NSUserDefaults.enableDraftModel.getter()
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B310;
  v3[1] = unk_28121B320;
  v4 = byte_28121B330;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.logInfoTieInferenceRequestAsJson.getter()
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B188;
  v3[1] = unk_28121B198;
  v4 = byte_28121B1A8;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

double static NSUserDefaults.taptoRadarTimeoutSecs.getter()
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4[0] = xmmword_27CE467E8;
  v4[1] = *&qword_27CE467F8;
  v5 = byte_27CE46808;
  sub_21CF7F198(v4, &v3, &qword_27CE45438, &qword_21D023C50);
  sub_21D016558();
  v1 = v0;
  sub_21CF7F200(v4, &qword_27CE45438, &qword_21D023C50);
  return v1;
}

uint64_t static NSUserDefaults.immimentDelay.getter()
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46810;
  v3[1] = unk_27CE46820;
  v4 = byte_27CE46830;
  sub_21CF7F198(v3, &v2, &qword_27CE45260, &unk_21D0244F0);
  v0 = sub_21D0146E4();
  sub_21CF7F200(v3, &qword_27CE45260, &unk_21D0244F0);
  return v0;
}

unint64_t static NSUserDefaults.jpgCompressionQuality.getter()
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE468C0;
  v3[1] = unk_27CE468D0;
  v4 = byte_27CE468E0;
  sub_21CF7F198(v3, v2, &qword_27CE45488, &qword_21D023E00);
  v0 = sub_21D015B00();
  sub_21CF7F200(v3, &qword_27CE45488, &qword_21D023E00);
  return v0 | ((HIDWORD(v0) & 1) << 32);
}

uint64_t static NSUserDefaults.tLLCDelay.getter()
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE468E8;
  v3[1] = unk_27CE468F8;
  v4 = byte_27CE46908;
  sub_21CF7F198(v3, &v2, &qword_27CE45260, &unk_21D0244F0);
  v0 = sub_21D0146E4();
  sub_21CF7F200(v3, &qword_27CE45260, &unk_21D0244F0);
  return v0;
}

uint64_t static NSUserDefaults.taptoRadarDiagExtension.getter()
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27CE46790;
  v4[0] = *&qword_27CE467A0;
  *(v4 + 9) = *(&qword_27CE467A8 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.workloadParameterModelOverride.getter()
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B1B0;
  v4[0] = *&qword_28121B1C0;
  *(v4 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.workloadParameterModelAdapterOverride.getter()
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B120;
  v4[0] = *&qword_28121B130;
  *(v4 + 9) = *(&qword_28121B138 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.workloadParameterInferenceIdOverride.getter()
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B150;
  v4[0] = *&qword_28121B160;
  *(v4 + 9) = *(&qword_28121B168 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.pipelineOverride.getter()
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B2E0;
  v3[1] = *&qword_28121B2F0;
  v4 = byte_28121B300;
  sub_21CF7F198(v3, &v2, &qword_27CE452D0, &unk_21D023690);
  v0 = sub_21D015100();
  sub_21CF7F200(v3, &qword_27CE452D0, &unk_21D023690);
  return v0;
}

uint64_t static NSUserDefaults.routingLayerNameOverride.getter()
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B1E8;
  v4[0] = *&qword_28121B1F8;
  *(v4 + 9) = *(&qword_28121B200 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.ignoreTaptoRadar.getter()
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE467C0;
  v3[1] = unk_27CE467D0;
  v4 = byte_27CE467E0;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D01443C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B1B0;
  v8[0] = *&qword_28121B1C0;
  *(v8 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D014518(uint64_t *a1)
{
  v1 = qword_28121E0B8;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B1D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.workloadParameterModelOverride.setter(uint64_t a1, uint64_t a2)
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B1D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t sub_21D0146E4()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 32) & 1) == 0)
  {
    return *v1;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[1];
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    return *v1;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v31, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v17 = sub_21D0224A4();
    __swift_project_value_buffer(v17, qword_27CE469B0);
    sub_21CF978C0(v31, v30);
    sub_21CF7F198(v1, v29, &qword_27CE45260, &unk_21D0244F0);
    v18 = sub_21D022484();
    v19 = sub_21D0228C4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);
      v22 = sub_21CF9703C(v4, v3, &v28);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      sub_21CF978C0(v30, v29);
      v23 = sub_21D0225D4();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v26 = sub_21CF9703C(v23, v25, &v28);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_21CF9703C(0x3233746E4955, 0xE600000000000000, &v28);
      _os_log_impl(&dword_21CF72000, v18, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
    return *v1;
  }

  v7 = LODWORD(v30[0]);
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21D0224A4();
  __swift_project_value_buffer(v8, qword_27CE469B0);
  sub_21CF7F198(v1, v29, &qword_27CE45260, &unk_21D0244F0);
  v9 = sub_21D022484();
  v10 = sub_21D0228A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);
    v13 = sub_21CF9703C(v4, v3, v29);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    LODWORD(v30[0]) = v7;
    v14 = sub_21D0225D4();
    v16 = sub_21CF9703C(v14, v15, v29);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v12, -1, -1);
    MEMORY[0x223D3ADE0](v11, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v7;
}

uint64_t sub_21D014BC8()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 40) & 1) != 0)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v32, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
      if (swift_dynamicCast())
      {
        v7 = v31[0];
        v8 = v31[1];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v9 = sub_21D0224A4();
        __swift_project_value_buffer(v9, qword_27CE469B0);
        sub_21D020580(v7, v8);
        sub_21D020580(v7, v8);
        sub_21CF7F198(v1, v30, &qword_27CE45600, &qword_21D0246F8);
        v10 = sub_21D022484();
        v11 = sub_21D0228A4();
        sub_21D020594(v7, v8);
        if (!os_log_type_enabled(v10, v11))
        {

          sub_21D020594(v7, v8);
          sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31[0] = v13;
        *v12 = 136315394;

        sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);
        v14 = sub_21CF9703C(v4, v3, v31);

        *(v12 + 4) = v14;
        *(v12 + 12) = 2080;
        v30[0] = v7;
        v30[1] = v8;
        v15 = sub_21D0225D4();
        v17 = sub_21CF9703C(v15, v16, v31);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_21CF72000, v10, v11, "Using UserDefaults override. key=%s value=%s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v13, -1, -1);
        v18 = v12;
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v19 = sub_21D0224A4();
        __swift_project_value_buffer(v19, qword_27CE469B0);
        v7 = *v1;
        sub_21CF978C0(v32, v31);
        sub_21CF7F198(v1, v30, &qword_27CE45600, &qword_21D0246F8);

        v10 = sub_21D022484();
        v20 = sub_21D0228C4();
        if (!os_log_type_enabled(v10, v20))
        {
          sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);

          __swift_destroy_boxed_opaque_existential_0(v31);
          goto LABEL_19;
        }

        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29 = v22;
        *v21 = 136315650;

        sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);
        v23 = sub_21CF9703C(v4, v3, &v29);

        *(v21 + 4) = v23;
        *(v21 + 12) = 2080;
        sub_21CF978C0(v31, v30);
        v24 = sub_21D0225D4();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_0(v31);
        v27 = sub_21CF9703C(v24, v26, &v29);

        *(v21 + 14) = v27;
        *(v21 + 22) = 2080;
        *(v21 + 24) = sub_21CF9703C(0xD000000000000010, 0x800000021D0302D0, &v29);
        _os_log_impl(&dword_21CF72000, v10, v20, "Mismatched defaults type. key=%s value=%s type=%s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v22, -1, -1);
        v18 = v21;
      }

      MEMORY[0x223D3ADE0](v18, -1, -1);

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v32);
      return v7;
    }
  }

  v7 = *v1;

  return v7;
}

uint64_t sub_21D015100()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 32) & 1) != 0)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 8);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v31, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
      if (swift_dynamicCast())
      {
        v7 = v30[0];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v8 = sub_21D0224A4();
        __swift_project_value_buffer(v8, qword_27CE469B0);
        sub_21D0205A8(v7);
        sub_21D0205A8(v7);
        sub_21CF7F198(v1, v29, &qword_27CE452D0, &unk_21D023690);
        v9 = sub_21D022484();
        v10 = sub_21D0228A4();
        sub_21D0205B8(v7);
        if (!os_log_type_enabled(v9, v10))
        {

          sub_21D0205B8(v7);
          sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);
          goto LABEL_19;
        }

        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v29[0] = v12;
        *v11 = 136315394;

        sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);
        v13 = sub_21CF9703C(v4, v3, v29);

        *(v11 + 4) = v13;
        *(v11 + 12) = 2080;
        v30[0] = v7;
        v14 = sub_21D0225D4();
        v16 = sub_21CF9703C(v14, v15, v29);

        *(v11 + 14) = v16;
        _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v12, -1, -1);
        v17 = v11;
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v18 = sub_21D0224A4();
        __swift_project_value_buffer(v18, qword_27CE469B0);
        v7 = *v1;
        sub_21CF978C0(v31, v30);
        sub_21CF7F198(v1, v29, &qword_27CE452D0, &unk_21D023690);

        v9 = sub_21D022484();
        v19 = sub_21D0228C4();
        if (!os_log_type_enabled(v9, v19))
        {
          sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);

          __swift_destroy_boxed_opaque_existential_0(v30);
          goto LABEL_19;
        }

        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315650;

        sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);
        v22 = sub_21CF9703C(v4, v3, &v28);

        *(v20 + 4) = v22;
        *(v20 + 12) = 2080;
        sub_21CF978C0(v30, v29);
        v23 = sub_21D0225D4();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v30);
        v26 = sub_21CF9703C(v23, v25, &v28);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_21CF9703C(0xD000000000000024, 0x800000021D0303A0, &v28);
        _os_log_impl(&dword_21CF72000, v9, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v21, -1, -1);
        v17 = v20;
      }

      MEMORY[0x223D3ADE0](v17, -1, -1);

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v31);
      return v7;
    }
  }

  v7 = *v1;

  return v7;
}

uint64_t sub_21D01561C()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 8);
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    goto LABEL_19;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v31, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v17 = sub_21D0224A4();
    __swift_project_value_buffer(v17, qword_27CE469B0);
    sub_21CF978C0(v31, v30);
    sub_21CF7F198(v1, v29, &qword_27CE45288, &qword_21D023970);
    v18 = sub_21D022484();
    v19 = sub_21D0228C4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);
      v22 = sub_21CF9703C(v4, v3, &v28);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      sub_21CF978C0(v30, v29);
      v23 = sub_21D0225D4();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v26 = sub_21CF9703C(v23, v25, &v28);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_21CF9703C(1819242306, 0xE400000000000000, &v28);
      _os_log_impl(&dword_21CF72000, v18, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_19:
    v7 = *v1;
    return v7 & 1;
  }

  v7 = v30[0];
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21D0224A4();
  __swift_project_value_buffer(v8, qword_27CE469B0);
  sub_21CF7F198(v1, v29, &qword_27CE45288, &qword_21D023970);
  v9 = sub_21D022484();
  v10 = sub_21D0228A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);
    v13 = sub_21CF9703C(v4, v3, v29);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    LOBYTE(v30[0]) = v7 & 1;
    v14 = sub_21D0225D4();
    v16 = sub_21CF9703C(v14, v15, v29);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v12, -1, -1);
    MEMORY[0x223D3ADE0](v11, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v7 & 1;
}

unint64_t sub_21D015B00()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (v0[8] & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v1 + 1);
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    goto LABEL_19;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v35, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v20 = sub_21D0224A4();
    __swift_project_value_buffer(v20, qword_27CE469B0);
    sub_21CF978C0(v35, v34);
    sub_21CF7F198(v1, v33, &qword_27CE45488, &qword_21D023E00);
    v21 = sub_21D022484();
    v22 = sub_21D0228C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);
      v25 = sub_21CF9703C(v4, v3, &v32);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      sub_21CF978C0(v34, v33);
      v26 = sub_21D0225D4();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0(v34);
      v29 = sub_21CF9703C(v26, v28, &v32);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_21CF9703C(0x6C616E6F6974704FLL, 0xEF3E74616F6C463CLL, &v32);
      _os_log_impl(&dword_21CF72000, v21, v22, "Mismatched defaults type. key=%s value=%s type=%s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v24, -1, -1);
      MEMORY[0x223D3ADE0](v23, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);

      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_19:
    v9 = *v1;
    v10 = *(v1 + 4);
    return v9 | (v10 << 32);
  }

  v7 = BYTE4(v34[0]);
  v8 = LODWORD(v34[0]) | (BYTE4(v34[0]) << 32);
  v9 = LODWORD(v34[0]);
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v10 = v7 & 1;
  v11 = sub_21D0224A4();
  __swift_project_value_buffer(v11, qword_27CE469B0);
  sub_21CF7F198(v1, v33, &qword_27CE45488, &qword_21D023E00);
  v12 = sub_21D022484();
  v13 = sub_21D0228A4();
  if (os_log_type_enabled(v12, v13))
  {
    v31 = BYTE4(v8);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);
    v16 = sub_21CF9703C(v4, v3, v33);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    LODWORD(v34[0]) = v9;
    BYTE4(v34[0]) = v31 & 1;
    v17 = sub_21D0225D4();
    v19 = sub_21CF9703C(v17, v18, v33);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_21CF72000, v12, v13, "Using UserDefaults override. key=%s value=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v15, -1, -1);
    MEMORY[0x223D3ADE0](v14, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v9 | (v10 << 32);
}

uint64_t sub_21D016038()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 40) & 1) == 0)
  {
    return *v1;
  }

  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = v1[2];
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    return *v1;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v34, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v18 = sub_21D0224A4();
    __swift_project_value_buffer(v18, qword_27CE469B0);
    sub_21CF978C0(v34, &v32);
    sub_21CF7F198(v1, &v30, &qword_27CE45318, &qword_21D0236F8);
    v19 = sub_21D022484();
    v20 = sub_21D0228C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);
      v23 = sub_21CF9703C(v4, v3, &v29);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      sub_21CF978C0(&v32, &v30);
      v24 = sub_21D0225D4();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(&v32);
      v27 = sub_21CF9703C(v24, v26, &v29);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_21CF9703C(0x6C616E6F6974704FLL, 0xED00003E746E493CLL, &v29);
      _os_log_impl(&dword_21CF72000, v19, v20, "Mismatched defaults type. key=%s value=%s type=%s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v22, -1, -1);
      MEMORY[0x223D3ADE0](v21, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);

      __swift_destroy_boxed_opaque_existential_0(&v32);
    }

    __swift_destroy_boxed_opaque_existential_0(v34);
    return *v1;
  }

  v7 = v32;
  v8 = v33;
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v9 = sub_21D0224A4();
  __swift_project_value_buffer(v9, qword_27CE469B0);
  sub_21CF7F198(v1, &v30, &qword_27CE45318, &qword_21D0236F8);
  v10 = sub_21D022484();
  v11 = sub_21D0228A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);
    v14 = sub_21CF9703C(v4, v3, &v32);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v30 = v7;
    v31 = v8 & 1;
    v15 = sub_21D0225D4();
    v17 = sub_21CF9703C(v15, v16, &v32);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_21CF72000, v10, v11, "Using UserDefaults override. key=%s value=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v13, -1, -1);
    MEMORY[0x223D3ADE0](v12, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  return v7;
}

void sub_21D016558()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 32) & 1) != 0)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v1 + 8);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v30, v28);
      if (swift_dynamicCast())
      {
        v7 = v29[0];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v8 = sub_21D0224A4();
        __swift_project_value_buffer(v8, qword_27CE469B0);
        sub_21CF7F198(v1, v28, &qword_27CE45438, &qword_21D023C50);
        v9 = sub_21D022484();
        v10 = sub_21D0228A4();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v28[0] = v12;
          *v11 = 136315394;

          sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);
          v13 = sub_21CF9703C(v4, v3, v28);

          *(v11 + 4) = v13;
          *(v11 + 12) = 2080;
          v29[0] = v7;
          v14 = sub_21D0225D4();
          v16 = sub_21CF9703C(v14, v15, v28);

          *(v11 + 14) = v16;
          _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D3ADE0](v12, -1, -1);
          MEMORY[0x223D3ADE0](v11, -1, -1);
        }

        else
        {

          sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);
        }

        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v17 = sub_21D0224A4();
        __swift_project_value_buffer(v17, qword_27CE469B0);
        sub_21CF978C0(v30, v29);
        sub_21CF7F198(v1, v28, &qword_27CE45438, &qword_21D023C50);
        v18 = sub_21D022484();
        v19 = sub_21D0228C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v27 = v21;
          *v20 = 136315650;

          sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);
          v22 = sub_21CF9703C(v4, v3, &v27);

          *(v20 + 4) = v22;
          *(v20 + 12) = 2080;
          sub_21CF978C0(v29, v28);
          v23 = sub_21D0225D4();
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_0(v29);
          v26 = sub_21CF9703C(v23, v25, &v27);

          *(v20 + 14) = v26;
          *(v20 + 22) = 2080;
          *(v20 + 24) = sub_21CF9703C(0x656C62756F44, 0xE600000000000000, &v27);
          _os_log_impl(&dword_21CF72000, v18, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223D3ADE0](v21, -1, -1);
          MEMORY[0x223D3ADE0](v20, -1, -1);
        }

        else
        {
          sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);

          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        __swift_destroy_boxed_opaque_existential_0(v30);
      }
    }
  }
}

uint64_t sub_21D016A44()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 40) & 1) != 0)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v29, v27);
      if (swift_dynamicCast())
      {
        v7 = v28[0];
        v8 = v28[1];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v9 = sub_21D0224A4();
        __swift_project_value_buffer(v9, qword_27CE469B0);
        swift_bridgeObjectRetain_n();
        sub_21CF7F198(v1, v27, &qword_27CE46970, &qword_21D02D098);
        v10 = sub_21D022484();
        v11 = sub_21D0228A4();

        if (!os_log_type_enabled(v10, v11))
        {

          sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v28[0] = v13;
        *v12 = 136315394;

        sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);
        v14 = sub_21CF9703C(v4, v3, v28);

        *(v12 + 4) = v14;
        *(v12 + 12) = 2080;
        v27[0] = v7;
        v27[1] = v8;
        v15 = sub_21D0225D4();
        v17 = sub_21CF9703C(v15, v16, v28);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_21CF72000, v10, v11, "Using UserDefaults override. key=%s value=%s", v12, 0x16u);
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v18 = sub_21D0224A4();
        __swift_project_value_buffer(v18, qword_27CE469B0);
        v7 = *v1;
        sub_21CF978C0(v29, v28);
        sub_21CF7F198(v1, v27, &qword_27CE46970, &qword_21D02D098);

        v10 = sub_21D022484();
        v19 = sub_21D0228C4();
        if (!os_log_type_enabled(v10, v19))
        {
          sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);

          __swift_destroy_boxed_opaque_existential_0(v28);
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v26 = v13;
        *v12 = 136315650;

        sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);
        v20 = sub_21CF9703C(v4, v3, &v26);

        *(v12 + 4) = v20;
        *(v12 + 12) = 2080;
        sub_21CF978C0(v28, v27);
        v21 = sub_21D0225D4();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_0(v28);
        v24 = sub_21CF9703C(v21, v23, &v26);

        *(v12 + 14) = v24;
        *(v12 + 22) = 2080;
        *(v12 + 24) = sub_21CF9703C(0x676E69727453, 0xE600000000000000, &v26);
        _os_log_impl(&dword_21CF72000, v10, v19, "Mismatched defaults type. key=%s value=%s type=%s", v12, 0x20u);
      }

      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v13, -1, -1);
      MEMORY[0x223D3ADE0](v12, -1, -1);

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v29);
      return v7;
    }
  }

  v7 = *v1;

  return v7;
}

uint64_t (*static NSUserDefaults.workloadParameterModelOverride.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B1B0;
  v5 = *&qword_28121B1C0;
  *(v3 + 25) = *(&qword_28121B1C8 + 1);
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D014BC8();
  *(v3 + 10) = v8;
  return sub_21D0205C8;
}

void sub_21D017010()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B1B0 = 0uLL;
    qword_28121B1C0 = 0xD00000000000001ELL;
    qword_28121B1C8 = 0x800000021D030170;
    qword_28121B1D0 = v2;
    byte_28121B1D8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.privatemlClientUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  result = sub_21D022A24();
  __break(1u);
  return result;
}

id static NSUserDefaults.$workloadParameterModelOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B1C8;
  v6 = qword_28121B1D0;
  v2 = qword_28121B1D0;
  v4 = byte_28121B1D8;
  *a1 = xmmword_28121B1B0;
  *(a1 + 8) = *(&xmmword_28121B1B0 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D01729C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B120;
  v8[0] = *&qword_28121B130;
  *(v8 + 9) = *(&qword_28121B138 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D017378(uint64_t *a1)
{
  v1 = qword_28121B118;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.workloadParameterModelAdapterOverride.setter(uint64_t a1, uint64_t a2)
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.workloadParameterModelAdapterOverride.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B120;
  v5 = *&qword_28121B130;
  *(v3 + 25) = *(&qword_28121B138 + 1);
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D014BC8();
  *(v3 + 10) = v8;
  return sub_21D0205C8;
}

void sub_21D017624()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B120 = 0uLL;
    qword_28121B130 = 0xD000000000000025;
    qword_28121B138 = 0x800000021D0302A0;
    qword_28121B140 = v2;
    byte_28121B148 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$workloadParameterModelAdapterOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B138;
  v6 = qword_28121B140;
  v2 = qword_28121B140;
  v4 = byte_28121B148;
  *a1 = xmmword_28121B120;
  *(a1 + 8) = *(&xmmword_28121B120 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D0177E0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B150;
  v8[0] = *&qword_28121B160;
  *(v8 + 9) = *(&qword_28121B168 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D0178BC(uint64_t *a1)
{
  v1 = qword_28121E0B0;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.workloadParameterInferenceIdOverride.setter(uint64_t a1, uint64_t a2)
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.workloadParameterInferenceIdOverride.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B150;
  v5 = *&qword_28121B160;
  *(v3 + 25) = *(&qword_28121B168 + 1);
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D014BC8();
  *(v3 + 10) = v8;
  return sub_21D0205C8;
}

void sub_21D017B68()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B150 = 0uLL;
    qword_28121B160 = 0xD000000000000024;
    qword_28121B168 = 0x800000021D030270;
    qword_28121B170 = v2;
    byte_28121B178 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$workloadParameterInferenceIdOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B168;
  v6 = qword_28121B170;
  v2 = qword_28121B170;
  v4 = byte_28121B178;
  *a1 = xmmword_28121B150;
  *(a1 + 8) = *(&xmmword_28121B150 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t static NSUserDefaults.enableFallBack.getter()
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B340;
  v3[1] = unk_28121B350;
  v4 = byte_28121B360;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D017DF0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B340;
  v5[1] = unk_28121B350;
  v6 = byte_28121B360;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D017EC4(char *a1)
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B358;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enableFallBack.setter(char a1)
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B358;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enableFallBack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B360;
  v5 = unk_28121B350;
  *v3 = xmmword_28121B340;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D01814C;
}

void sub_21D018150()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B340) = 0;
    *(&xmmword_28121B340 + 1) = 0x6146656C62616E65;
    unk_28121B350 = 0xEE006B6361426C6CLL;
    qword_28121B358 = v2;
    byte_28121B360 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enableFallBack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B340 + 1);
  v2 = unk_28121B350;
  v7 = qword_28121B358;
  v4 = qword_28121B358;
  v5 = byte_28121B360;
  *a1 = xmmword_28121B340;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D018304@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B2E0;
  v5[1] = *&qword_28121B2F0;
  v6 = byte_28121B300;
  sub_21CF7F198(v5, &v4, &qword_27CE452D0, &unk_21D023690);
  v2 = sub_21D015100();
  result = sub_21CF7F200(v5, &qword_27CE452D0, &unk_21D023690);
  *a1 = v2;
  return result;
}

void sub_21D0183D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28121B2D8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B2F8;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.pipelineOverride.setter(uint64_t a1)
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B2F8;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.pipelineOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B300;
  v5 = *&qword_28121B2F0;
  *v3 = xmmword_28121B2E0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  *(v3 + 64) = sub_21D015100();
  return sub_21D01867C;
}

void sub_21D018680()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B2E0 = xmmword_21D02D050;
    qword_28121B2F0 = 0xE800000000000000;
    qword_28121B2F8 = v2;
    byte_28121B300 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$pipelineOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B2F0;
  v6 = qword_28121B2F8;
  v2 = qword_28121B2F8;
  v4 = byte_28121B300;
  *a1 = xmmword_28121B2E0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t static NSUserDefaults.serverScope.getter()
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B370;
  v4[0] = *&qword_28121B380;
  *(v4 + 9) = unk_28121B389;
  sub_21CF7F198(&v3, v2, &qword_27CE46970, &qword_21D02D098);
  v0 = sub_21D016A44();
  sub_21CF7F200(&v3, &qword_27CE46970, &qword_21D02D098);
  return v0;
}

uint64_t sub_21D0188FC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B370;
  v8[0] = *&qword_28121B380;
  *(v8 + 9) = unk_28121B389;
  sub_21CF7F198(&v7, v6, &qword_27CE46970, &qword_21D02D098);
  v2 = sub_21D016A44();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE46970, &qword_21D02D098);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D0189D8(uint64_t *a1)
{
  v1 = qword_28121B368;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B390;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.serverScope.setter(uint64_t a1, uint64_t a2)
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B390;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void (*static NSUserDefaults.serverScope.modify(__int128 **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B370;
  v5 = *&qword_28121B380;
  *(v3 + 25) = unk_28121B389;
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D016A44();
  *(v3 + 10) = v8;
  return sub_21D018C64;
}

void sub_21D018C64(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 88) = *(*a1 + 72);
  v3 = v2[13];
  v2[12] = v2[10];
  if (a2)
  {

    v4 = sub_21D022B44();
    v5 = sub_21D022584();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();

    swift_endAccess();
  }

  else
  {
    v6 = sub_21D022B44();
    v7 = sub_21D022584();
    [v3 setObject:v6 forKey:v7];
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_21D018D7C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_28121B370 = 0;
    *(&xmmword_28121B370 + 1) = 0xE000000000000000;
    qword_28121B380 = 0x6353726576726553;
    unk_28121B388 = 0xEB0000000065706FLL;
    qword_28121B390 = v2;
    byte_28121B398 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$serverScope.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_28121B370 + 1);
  v3 = qword_28121B380;
  v4 = unk_28121B388;
  v8 = qword_28121B390;
  v5 = qword_28121B390;
  v6 = byte_28121B398;
  *a1 = xmmword_28121B370;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t sub_21D018F40@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B1E8;
  v8[0] = *&qword_28121B1F8;
  *(v8 + 9) = *(&qword_28121B200 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D01901C(uint64_t *a1)
{
  v1 = qword_28121B1E0;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.routingLayerNameOverride.setter(uint64_t a1, uint64_t a2)
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.routingLayerNameOverride.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B1E8;
  v5 = *&qword_28121B1F8;
  *(v3 + 25) = *(&qword_28121B200 + 1);
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D014BC8();
  *(v3 + 10) = v8;
  return sub_21D0205C8;
}

void sub_21D0192C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B1E8 = 0uLL;
    qword_28121B1F8 = 0xD000000000000018;
    qword_28121B200 = 0x800000021D030250;
    qword_28121B208 = v2;
    byte_28121B210 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$routingLayerNameOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B200;
  v6 = qword_28121B208;
  v2 = qword_28121B208;
  v4 = byte_28121B210;
  *a1 = xmmword_28121B1E8;
  *(a1 + 8) = *(&xmmword_28121B1E8 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D01947C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B2B0;
  v5[1] = unk_28121B2C0;
  v6 = byte_28121B2D0;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D019550(char *a1)
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B2C8;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enablePerfMetrics.setter(char a1)
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B2C8;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enablePerfMetrics.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B2D0;
  v5 = unk_28121B2C0;
  *v3 = xmmword_28121B2B0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D0197D8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B2B0) = 1;
    *(&xmmword_28121B2B0 + 1) = 0xD000000000000011;
    unk_28121B2C0 = 0x800000021D0303F0;
    qword_28121B2C8 = v2;
    byte_28121B2D0 = 1;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enablePerfMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B2B0 + 1);
  v2 = unk_28121B2C0;
  v7 = qword_28121B2C8;
  v4 = qword_28121B2C8;
  v5 = byte_28121B2D0;
  *a1 = xmmword_28121B2B0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01997C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B280;
  v5[1] = *&qword_28121B290;
  v6 = byte_28121B2A0;
  sub_21CF7F198(v5, &v4, &qword_27CE452D0, &unk_21D023690);
  v2 = sub_21D015100();
  result = sub_21CF7F200(v5, &qword_27CE452D0, &unk_21D023690);
  *a1 = v2;
  return result;
}

void sub_21D019A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28121B278;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B298;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.modelOptionOverride.setter(uint64_t a1)
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B298;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.modelOptionOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B2A0;
  v5 = *&qword_28121B290;
  *v3 = xmmword_28121B280;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  *(v3 + 64) = sub_21D015100();
  return sub_21D0205D0;
}

void sub_21D019CF4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B280 = xmmword_21D02D060;
    qword_28121B290 = 0x800000021D0303D0;
    qword_28121B298 = v2;
    byte_28121B2A0 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$modelOptionOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B290;
  v6 = qword_28121B298;
  v2 = qword_28121B298;
  v4 = byte_28121B2A0;
  *a1 = xmmword_28121B280;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t static NSUserDefaults.overrideModelCatalog.getter()
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46740;
  v3[1] = *&qword_27CE46750;
  v4 = byte_27CE46760;
  sub_21CF7F198(v3, &v2, &qword_27CE452D0, &unk_21D023690);
  v0 = sub_21D015100();
  sub_21CF7F200(v3, &qword_27CE452D0, &unk_21D023690);
  return v0;
}

uint64_t sub_21D019F74@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46740;
  v5[1] = *&qword_27CE46750;
  v6 = byte_27CE46760;
  sub_21CF7F198(v5, &v4, &qword_27CE452D0, &unk_21D023690);
  v2 = sub_21D015100();
  result = sub_21CF7F200(v5, &qword_27CE452D0, &unk_21D023690);
  *a1 = v2;
  return result;
}

void sub_21D01A044(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27CE45170;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE46758;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.overrideModelCatalog.setter(uint64_t a1)
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46758;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.overrideModelCatalog.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46760;
  v5 = *&qword_27CE46750;
  *v3 = xmmword_27CE46740;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  *(v3 + 64) = sub_21D015100();
  return sub_21D0205D0;
}

void sub_21D01A2EC(void **a1, char a2)
{
  v2 = *a1;
  v2[9] = (*a1)[8];
  v3 = v2[10];
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
    v4 = sub_21D022B44();
    v5 = sub_21D022584();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();

    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
    v6 = sub_21D022B44();
    v7 = sub_21D022584();
    [v3 setObject:v6 forKey:v7];
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_21D01A41C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_27CE46740 = xmmword_21D02D070;
    qword_27CE46750 = 0x800000021D030210;
    qword_27CE46758 = v2;
    byte_27CE46760 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$overrideModelCatalog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE46750;
  v6 = qword_27CE46758;
  v2 = qword_27CE46758;
  v4 = byte_27CE46760;
  *a1 = xmmword_27CE46740;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t sub_21D01A5D0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B310;
  v5[1] = unk_28121B320;
  v6 = byte_28121B330;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01A6A4(char *a1)
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B328;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enableDraftModel.setter(char a1)
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B328;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enableDraftModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B330;
  v5 = unk_28121B320;
  *v3 = xmmword_28121B310;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01A92C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B310) = 0;
    *(&xmmword_28121B310 + 1) = 0xD000000000000010;
    unk_28121B320 = 0x800000021D030380;
    qword_28121B328 = v2;
    byte_28121B330 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enableDraftModel.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B310 + 1);
  v2 = unk_28121B320;
  v7 = qword_28121B328;
  v4 = qword_28121B328;
  v5 = byte_28121B330;
  *a1 = xmmword_28121B310;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.convertSchemasToGrammars.getter()
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B220;
  v3[1] = unk_28121B230;
  v4 = byte_28121B240;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D01AB9C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B220;
  v5[1] = unk_28121B230;
  v6 = byte_28121B240;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01AC70(char *a1)
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B238;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.convertSchemasToGrammars.setter(char a1)
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B238;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.convertSchemasToGrammars.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B240;
  v5 = unk_28121B230;
  *v3 = xmmword_28121B220;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01AEF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B220) = 0;
    *(&xmmword_28121B220 + 1) = 0xD000000000000018;
    unk_28121B230 = 0x800000021D0301F0;
    qword_28121B238 = v2;
    byte_28121B240 = 1;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$convertSchemasToGrammars.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B220 + 1);
  v2 = unk_28121B230;
  v7 = qword_28121B238;
  v4 = qword_28121B238;
  v5 = byte_28121B240;
  *a1 = xmmword_28121B220;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01B09C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B188;
  v5[1] = unk_28121B198;
  v6 = byte_28121B1A8;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01B170(char *a1)
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B1A0;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.logInfoTieInferenceRequestAsJson.setter(char a1)
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B1A0;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.logInfoTieInferenceRequestAsJson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B1A8;
  v5 = unk_28121B198;
  *v3 = xmmword_28121B188;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01B3F8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B188) = 0;
    *(&xmmword_28121B188 + 1) = 0xD000000000000020;
    unk_28121B198 = 0x800000021D030350;
    qword_28121B1A0 = v2;
    byte_28121B1A8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$logInfoTieInferenceRequestAsJson.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B188 + 1);
  v2 = unk_28121B198;
  v7 = qword_28121B1A0;
  v4 = qword_28121B1A0;
  v5 = byte_28121B1A8;
  *a1 = xmmword_28121B188;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.taptoRadarNoNetworkTest.getter()
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46768;
  v3[1] = unk_27CE46778;
  v4 = byte_27CE46788;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D01B66C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46768;
  v5[1] = unk_27CE46778;
  v6 = byte_27CE46788;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01B740(char *a1)
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46780;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.taptoRadarNoNetworkTest.setter(char a1)
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46780;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.taptoRadarNoNetworkTest.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46788;
  v5 = unk_27CE46778;
  *v3 = xmmword_27CE46768;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01B9C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE46768) = 0;
    *(&xmmword_27CE46768 + 1) = 0xD000000000000017;
    unk_27CE46778 = 0x800000021D0301D0;
    qword_27CE46780 = v2;
    byte_27CE46788 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$taptoRadarNoNetworkTest.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46768 + 1);
  v2 = unk_27CE46778;
  v7 = qword_27CE46780;
  v4 = qword_27CE46780;
  v5 = byte_27CE46788;
  *a1 = xmmword_27CE46768;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01BB68@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_27CE46790;
  v8[0] = *&qword_27CE467A0;
  *(v8 + 9) = *(&qword_27CE467A8 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D01BC44(uint64_t *a1)
{
  v1 = qword_27CE45180;

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE467B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.taptoRadarDiagExtension.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE467B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.taptoRadarDiagExtension.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27CE46790;
  v5 = *&qword_27CE467A0;
  *(v3 + 25) = *(&qword_27CE467A8 + 1);
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D014BC8();
  *(v3 + 10) = v8;
  return sub_21D01BEF0;
}

void sub_21D01BEF4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 88) = *(*a1 + 72);
  v3 = v2[13];
  v2[12] = v2[10];
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
    v4 = sub_21D022B44();
    v5 = sub_21D022584();
    [v3 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();

    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
    v6 = sub_21D022B44();
    v7 = sub_21D022584();
    [v3 setObject:v6 forKey:v7];
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_21D01C02C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_27CE46790 = xmmword_21D02D080;
    qword_27CE467A0 = 0xD000000000000017;
    qword_27CE467A8 = 0x800000021D0302F0;
    qword_27CE467B0 = v2;
    byte_27CE467B8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$taptoRadarDiagExtension.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE467A8;
  v6 = qword_27CE467B0;
  v2 = qword_27CE467B0;
  v4 = byte_27CE467B8;
  *a1 = xmmword_27CE46790;
  *(a1 + 8) = *(&xmmword_27CE46790 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D01C1E8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE467C0;
  v5[1] = unk_27CE467D0;
  v6 = byte_27CE467E0;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01C2BC(char *a1)
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE467D8;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.ignoreTaptoRadar.setter(char a1)
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE467D8;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.ignoreTaptoRadar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE467E0;
  v5 = unk_27CE467D0;
  *v3 = xmmword_27CE467C0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01C544()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE467C0) = 0;
    *(&xmmword_27CE467C0 + 1) = 0xD000000000000010;
    unk_27CE467D0 = 0x800000021D030230;
    qword_27CE467D8 = v2;
    byte_27CE467E0 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$ignoreTaptoRadar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE467C0 + 1);
  v2 = unk_27CE467D0;
  v7 = qword_27CE467D8;
  v4 = qword_27CE467D8;
  v5 = byte_27CE467E0;
  *a1 = xmmword_27CE467C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01C6E8@<X0>(void *a1@<X8>)
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6[0] = xmmword_27CE467E8;
  v6[1] = *&qword_27CE467F8;
  v7 = byte_27CE46808;
  sub_21CF7F198(v6, &v5, &qword_27CE45438, &qword_21D023C50);
  sub_21D016558();
  v3 = v2;
  result = sub_21CF7F200(v6, &qword_27CE45438, &qword_21D023C50);
  *a1 = v3;
  return result;
}

void sub_21D01C7C0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46800;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v1}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.taptoRadarTimeoutSecs.setter(double a1)
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46800;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, *&a1}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void (*static NSUserDefaults.taptoRadarTimeoutSecs.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46808;
  v5 = *&qword_27CE467F8;
  *v3 = xmmword_27CE467E8;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  sub_21D016558();
  *(v3 + 64) = v8;
  return sub_21D01CA50;
}

void sub_21D01CA50(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 10);
  *(*a1 + 9) = *(*a1 + 8);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01CB18()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_27CE467E8 = 0x403B000000000000;
    *(&xmmword_27CE467E8 + 1) = 0xD000000000000015;
    qword_27CE467F8 = 0x800000021D030330;
    qword_27CE46800 = v2;
    byte_27CE46808 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$taptoRadarTimeoutSecs.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE467E8 + 1);
  v2 = qword_27CE467F8;
  v7 = qword_27CE46800;
  v4 = qword_27CE46800;
  v5 = byte_27CE46808;
  *a1 = xmmword_27CE467E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01CCB8@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46810;
  v5[1] = unk_27CE46820;
  v6 = byte_27CE46830;
  sub_21CF7F198(v5, &v4, &qword_27CE45260, &unk_21D0244F0);
  v2 = sub_21D0146E4();
  result = sub_21CF7F200(v5, &qword_27CE45260, &unk_21D0244F0);
  *a1 = v2;
  return result;
}

void sub_21D01CD88(int *a1)
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46828;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.immimentDelay.setter(int a1)
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46828;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.immimentDelay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x60uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46830;
  v5 = unk_27CE46820;
  *v3 = xmmword_27CE46810;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 36) = sub_21D0146E4();
  return sub_21D01D008;
}

void sub_21D01D00C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE46810) = 1000;
    *(&xmmword_27CE46810 + 1) = 0x746E656D696D6D69;
    unk_27CE46820 = 0xED000079616C6544;
    qword_27CE46828 = v2;
    byte_27CE46830 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$immimentDelay.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46810 + 1);
  v2 = unk_27CE46820;
  v7 = qword_27CE46828;
  v4 = qword_27CE46828;
  v5 = byte_27CE46830;
  *a1 = xmmword_27CE46810;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.contextLengthDefault.getter()
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27CE46838;
  v4[0] = *&qword_27CE46848;
  *(v4 + 9) = unk_27CE46851;
  sub_21CF7F198(&v3, v2, &qword_27CE45318, &qword_21D0236F8);
  v0 = sub_21D016038();
  sub_21CF7F200(&v3, &qword_27CE45318, &qword_21D0236F8);
  return v0;
}

uint64_t sub_21D01D298@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_27CE46838;
  v8[0] = *&qword_27CE46848;
  *(v8 + 9) = unk_27CE46851;
  sub_21CF7F198(&v7, v6, &qword_27CE45318, &qword_21D0236F8);
  v2 = sub_21D016038();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45318, &qword_21D0236F8);
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_21D01D37C(uint64_t *a1)
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46858;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.contextLengthDefault.setter(uint64_t a1, char a2)
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46858;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.contextLengthDefault.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27CE46838;
  v5 = *&qword_27CE46848;
  *(v3 + 25) = unk_27CE46851;
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D016038();
  *(v3 + 80) = v8 & 1;
  return sub_21D01D638;
}

void sub_21D01D63C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_27CE46838 = 0;
    BYTE8(xmmword_27CE46838) = 1;
    qword_27CE46848 = 0xD000000000000014;
    unk_27CE46850 = 0x800000021D0301B0;
    qword_27CE46858 = v2;
    byte_27CE46860 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$contextLengthDefault.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE8(xmmword_27CE46838);
  v4 = qword_27CE46848;
  v3 = unk_27CE46850;
  v8 = qword_27CE46858;
  v5 = qword_27CE46858;
  v6 = byte_27CE46860;
  *a1 = xmmword_27CE46838;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t static NSUserDefaults.overrideContextLength.getter()
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27CE46868;
  v4[0] = *&qword_27CE46878;
  *(v4 + 9) = unk_27CE46881;
  sub_21CF7F198(&v3, v2, &qword_27CE45318, &qword_21D0236F8);
  v0 = sub_21D016038();
  sub_21CF7F200(&v3, &qword_27CE45318, &qword_21D0236F8);
  return v0;
}

uint64_t sub_21D01D8C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_27CE46868;
  v8[0] = *&qword_27CE46878;
  *(v8 + 9) = unk_27CE46881;
  sub_21CF7F198(&v7, v6, &qword_27CE45318, &qword_21D0236F8);
  v2 = sub_21D016038();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45318, &qword_21D0236F8);
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_21D01D9A4(uint64_t *a1)
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46888;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.overrideContextLength.setter(uint64_t a1, char a2)
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46888;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.overrideContextLength.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27CE46868;
  v5 = *&qword_27CE46878;
  *(v3 + 25) = unk_27CE46881;
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D016038();
  *(v3 + 80) = v8 & 1;
  return sub_21D0205D4;
}

void sub_21D01DC60()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_27CE46868 = 0;
    BYTE8(xmmword_27CE46868) = 1;
    qword_27CE46878 = 0xD000000000000015;
    unk_27CE46880 = 0x800000021D030190;
    qword_27CE46888 = v2;
    byte_27CE46890 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$overrideContextLength.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE8(xmmword_27CE46868);
  v4 = qword_27CE46878;
  v3 = unk_27CE46880;
  v8 = qword_27CE46888;
  v5 = qword_27CE46888;
  v6 = byte_27CE46890;
  *a1 = xmmword_27CE46868;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t sub_21D01DE10@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46898;
  v5[1] = unk_27CE468A8;
  v6 = byte_27CE468B8;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01DEE4(char *a1)
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE468B0;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.convertJpgToBitmap.setter(char a1)
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE468B0;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.convertJpgToBitmap.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE468B8;
  v5 = unk_27CE468A8;
  *v3 = xmmword_27CE46898;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01E16C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE46898) = 0;
    *(&xmmword_27CE46898 + 1) = 0xD000000000000012;
    unk_27CE468A8 = 0x800000021D030410;
    qword_27CE468B0 = v2;
    byte_27CE468B8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$convertJpgToBitmap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46898 + 1);
  v2 = unk_27CE468A8;
  v7 = qword_27CE468B0;
  v4 = qword_27CE468B0;
  v5 = byte_27CE468B8;
  *a1 = xmmword_27CE46898;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01E30C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B248;
  v8[0] = *&qword_28121B258;
  *(v8 + 9) = unk_28121B261;
  sub_21CF7F198(&v7, v6, &qword_27CE45318, &qword_21D0236F8);
  v2 = sub_21D016038();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45318, &qword_21D0236F8);
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_21D01E3F0(uint64_t *a1)
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_28121B268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.inputTokenCountEstimate.setter(uint64_t a1, char a2)
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.inputTokenCountEstimate.modify(__int128 **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B248;
  v5 = *&qword_28121B258;
  *(v3 + 25) = unk_28121B261;
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v3 + 3);
  v7 = *(v3 + 2);
  *(v3 + 13) = *(v3 + 4);
  *(v3 + 14) = v7;
  *(v3 + 15) = v6;
  *(v3 + 9) = sub_21D016038();
  *(v3 + 80) = v8 & 1;
  return sub_21D0205D4;
}

void sub_21D01E6AC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 104);
  *(*a1 + 88) = *(*a1 + 72);
  v3[96] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v6 = sub_21D022B44();
  v7 = sub_21D022584();
  [v5 setObject:v6 forKey:v7];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01E790()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_28121B248 = 0;
    BYTE8(xmmword_28121B248) = 1;
    qword_28121B258 = 0xD000000000000017;
    unk_28121B260 = 0x800000021D030430;
    qword_28121B268 = v2;
    byte_28121B270 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$inputTokenCountEstimate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE8(xmmword_28121B248);
  v4 = qword_28121B258;
  v3 = unk_28121B260;
  v8 = qword_28121B268;
  v5 = qword_28121B268;
  v6 = byte_28121B270;
  *a1 = xmmword_28121B248;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t sub_21D01E940@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE468C0;
  v5[1] = unk_27CE468D0;
  v6 = byte_27CE468E0;
  sub_21CF7F198(v5, &v4, &qword_27CE45488, &qword_21D023E00);
  v2 = sub_21D015B00();
  result = sub_21CF7F200(v5, &qword_27CE45488, &qword_21D023E00);
  *a1 = v2;
  *(a1 + 4) = BYTE4(v2) & 1;
  return result;
}

void sub_21D01EA18(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE468D8;
  LODWORD(v6) = v1;
  BYTE4(v6) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.jpgCompressionQuality.setter(uint64_t a1)
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE468D8;
  LODWORD(v5) = a1;
  BYTE4(v5) = BYTE4(a1) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void (*static NSUserDefaults.jpgCompressionQuality.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE468E0;
  v5 = unk_27CE468D0;
  *v3 = xmmword_27CE468C0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  v8 = sub_21D015B00();
  *(v3 + 36) = v8;
  *(v3 + 40) = BYTE4(v8) & 1;
  return sub_21D01ECD0;
}

void sub_21D01ECD0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 80);
  *(*a1 + 44) = *(*a1 + 36);
  v3[48] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  v6 = sub_21D022B44();
  v7 = sub_21D022584();
  [v5 setObject:v6 forKey:v7];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01EDB4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE468C0) = 1065353216;
    BYTE4(xmmword_27CE468C0) = 0;
    *(&xmmword_27CE468C0 + 1) = 0xD000000000000015;
    unk_27CE468D0 = 0x800000021D030310;
    qword_27CE468D8 = v2;
    byte_27CE468E0 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$jpgCompressionQuality.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE4(xmmword_27CE468C0);
  v4 = *(&xmmword_27CE468C0 + 1);
  v3 = unk_27CE468D0;
  v8 = qword_27CE468D8;
  v5 = qword_27CE468D8;
  v6 = byte_27CE468E0;
  *a1 = xmmword_27CE468C0;
  *(a1 + 4) = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return v8;
}

uint64_t sub_21D01EF64@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE468E8;
  v5[1] = unk_27CE468F8;
  v6 = byte_27CE46908;
  sub_21CF7F198(v5, &v4, &qword_27CE45260, &unk_21D0244F0);
  v2 = sub_21D0146E4();
  result = sub_21CF7F200(v5, &qword_27CE45260, &unk_21D0244F0);
  *a1 = v2;
  return result;
}

void sub_21D01F034(int *a1)
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46900;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.tLLCDelay.setter(int a1)
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46900;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.tLLCDelay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x60uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46908;
  v5 = unk_27CE468F8;
  *v3 = xmmword_27CE468E8;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 36) = sub_21D0146E4();
  return sub_21D0205D8;
}

void sub_21D01F2B4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE468E8) = 20000;
    *(&xmmword_27CE468E8 + 1) = 0x616C6544434C4C74;
    unk_27CE468F8 = 0xE900000000000079;
    qword_27CE46900 = v2;
    byte_27CE46908 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$tLLCDelay.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE468E8 + 1);
  v2 = unk_27CE468F8;
  v7 = qword_27CE46900;
  v4 = qword_27CE46900;
  v5 = byte_27CE46908;
  *a1 = xmmword_27CE468E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01F464@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46910;
  v5[1] = unk_27CE46920;
  v6 = byte_27CE46930;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01F538(char *a1)
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46928;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enableLLC.setter(char a1)
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46928;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enableLLC.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46930;
  v5 = unk_27CE46920;
  *v3 = xmmword_27CE46910;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01F7C0(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  (*a1)[34] = (*a1)[33];
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01F884()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE46910) = 0;
    *(&xmmword_27CE46910 + 1) = 0x4C4C656C62616E65;
    unk_27CE46920 = 0xE900000000000043;
    qword_27CE46928 = v2;
    byte_27CE46930 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enableLLC.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46910 + 1);
  v2 = unk_27CE46920;
  v7 = qword_27CE46928;
  v4 = qword_27CE46928;
  v5 = byte_27CE46930;
  *a1 = xmmword_27CE46910;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01FA30@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46938;
  v5[1] = unk_27CE46948;
  v6 = byte_27CE46958;
  sub_21CF7F198(v5, &v4, &qword_27CE45260, &unk_21D0244F0);
  v2 = sub_21D0146E4();
  result = sub_21CF7F200(v5, &qword_27CE45260, &unk_21D0244F0);
  *a1 = v2;
  return result;
}

void sub_21D01FB00(int *a1)
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46950;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.perfMetricsMaxDepth.setter(int a1)
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27CE46950;
  v2 = sub_21D022B44();
  v3 = sub_21D022584();
  [v1 setObject:v2 forKey:v3];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.perfMetricsMaxDepth.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x60uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46958;
  v5 = unk_27CE46948;
  *v3 = xmmword_27CE46938;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 36) = sub_21D0146E4();
  return sub_21D0205D8;
}

void sub_21D01FD80(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  *(*a1 + 22) = *(*a1 + 9);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01FE48()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE46938) = 3;
    *(&xmmword_27CE46938 + 1) = 0xD000000000000013;
    unk_27CE46948 = 0x800000021D030450;
    qword_27CE46950 = v2;
    byte_27CE46958 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$perfMetricsMaxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46938 + 1);
  v2 = unk_27CE46948;
  v7 = qword_27CE46950;
  v4 = qword_27CE46950;
  v5 = byte_27CE46958;
  *a1 = xmmword_27CE46938;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.privatemlClientUserDefaultsJSONString()()
{
  v0 = sub_21D0225C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21D021834();
  MEMORY[0x28223BE20](v1);
  sub_21D021874();
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21D0238C0;
  sub_21D021824();
  v17[0] = v2;
  sub_21CFBEE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  sub_21D022964();
  sub_21D021844();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46988, &qword_21D02D0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21D0238C0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000021D030170;
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = xmmword_28121B1B0;
  v19[0] = *&qword_28121B1C0;
  *(v19 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v18, v17, &qword_27CE45600, &qword_21D0246F8);
  v4 = sub_21D014BC8();
  v6 = v5;
  sub_21CF7F200(&v18, &qword_27CE45600, &qword_21D0246F8);
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v7 = sub_21CF9DD98(inited);
  swift_setDeallocating();
  sub_21CF7F200(inited + 32, &qword_27CE46990, &qword_21D02D0B8);
  v17[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46998, &qword_21D02D0C0);
  sub_21D020478();
  v8 = v20;
  v9 = sub_21D021854();
  if (v8)
  {
  }

  else
  {
    v12 = v9;
    v13 = v10;

    sub_21D0225B4();
    v14 = sub_21D0225A4();
    v16 = v15;
    sub_21CF8F460(v12, v13);

    if (v16)
    {
      return v14;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }
}

void sub_21D0203AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  qword_27CE46960 = v2;
}

uint64_t static NSUserDefaults.group.getter()
{
  if (qword_27CE451D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE46960;
  v1 = qword_27CE46960;
  return v0;
}

unint64_t sub_21D020478()
{
  result = qword_27CE469A0;
  if (!qword_27CE469A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE46998, &qword_21D02D0C0);
    sub_21D020504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE469A0);
  }

  return result;
}

unint64_t sub_21D020504()
{
  result = qword_27CE469A8;
  if (!qword_27CE469A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE457D8, &qword_21D025420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE469A8);
  }

  return result;
}

uint64_t sub_21D020580(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21D020594(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21D0205A8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21D0205B8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t UserDefault.wrappedValue.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 1);
  v5 = MEMORY[0x28223BE20](a1);
  v81 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v82 = &v74[-v7];
  v9 = *(v8 + 24);
  v10 = sub_21D022924();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v74[-v13];
  v15 = *(v9 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v79 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74[-v19];
  MEMORY[0x28223BE20](v18);
  v83 = &v74[-v21];
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (v85[a1[9]] & 1) == 0)
  {
    return (*(v15 + 16))(a2, v85, v9);
  }

  v80 = v20;
  v22 = v4;
  v84 = a2;
  v23 = *&v85[a1[8]];
  v24 = v85;
  v25 = sub_21D022584();
  v26 = [v23 objectForKey_];

  if (!v26)
  {
    return (*(v15 + 16))(v84, v24, v9);
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v89, v88);
  v27 = swift_dynamicCast();
  v28 = *(v15 + 56);
  v29 = v22;
  if (v27)
  {
    v30 = v15;
    v28(v14, 0, 1, v9);
    v31 = (v15 + 32);
    v32 = *(v15 + 32);
    v33 = v83;
    v81 = v31;
    v78 = v32;
    v32(v83, v14, v9);
    v34 = v30;
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v35 = sub_21D0224A4();
    __swift_project_value_buffer(v35, qword_27CE469B0);
    v36 = v82;
    (*(v29 + 16))(v82, v85, a1);
    v85 = *(v30 + 16);
    (v85)(v80, v33, v9);
    v37 = sub_21D022484();
    v38 = sub_21D0228A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v76 = v37;
      v40 = v39;
      v77 = swift_slowAlloc();
      v88[0] = v77;
      *v40 = 136315394;
      v41 = &v36[a1[7]];
      v75 = v38;
      v42 = *v41;
      v43 = v41[1];
      v44 = *(v29 + 8);

      v44(v36, a1);
      v45 = sub_21CF9703C(v42, v43, v88);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v46 = v80;
      (v85)(v79, v80, v9);
      v47 = sub_21D0225D4();
      v49 = v48;
      (*(v34 + 8))(v46, v9);
      v50 = sub_21CF9703C(v47, v49, v88);

      *(v40 + 14) = v50;
      v51 = v76;
      _os_log_impl(&dword_21CF72000, v76, v75, "Using UserDefaults override. key=%s value=%s", v40, 0x16u);
      v33 = v83;
      v52 = v77;
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v52, -1, -1);
      MEMORY[0x223D3ADE0](v40, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v80, v9);
      (*(v29 + 8))(v36, a1);
    }

    __swift_destroy_boxed_opaque_existential_0(v89);
    return v78(v84, v33, v9);
  }

  else
  {
    v28(v14, 1, 1, v9);
    (*(v11 + 8))(v14, v10);
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v54 = sub_21D0224A4();
    __swift_project_value_buffer(v54, qword_27CE469B0);
    v55 = v81;
    (*(v22 + 16))(v81, v85, a1);
    sub_21CF978C0(v89, v88);
    v56 = sub_21D022484();
    v57 = sub_21D0228C4();
    v58 = v15;
    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      LODWORD(v82) = v57;
      v60 = v59;
      v83 = swift_slowAlloc();
      v87 = v83;
      *v60 = 136315650;
      v61 = &v55[a1[7]];
      v62 = *v61;
      v63 = v61[1];
      v64 = *(v29 + 8);

      v64(v55, a1);
      v65 = sub_21CF9703C(v62, v63, &v87);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      sub_21CF978C0(v88, v86);
      v66 = sub_21D0225D4();
      v68 = v67;
      __swift_destroy_boxed_opaque_existential_0(v88);
      v69 = sub_21CF9703C(v66, v68, &v87);

      *(v60 + 14) = v69;
      *(v60 + 22) = 2080;
      v70 = sub_21D022C74();
      v72 = sub_21CF9703C(v70, v71, &v87);

      *(v60 + 24) = v72;
      _os_log_impl(&dword_21CF72000, v56, v82, "Mismatched defaults type. key=%s value=%s type=%s", v60, 0x20u);
      v73 = v83;
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v73, -1, -1);
      MEMORY[0x223D3ADE0](v60, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v88);
      (*(v29 + 8))(v55, a1);
    }

    __swift_destroy_boxed_opaque_existential_0(v89);
    return (*(v58 + 16))(v84, v85, v9);
  }
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_21D021344(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t UserDefault.init(key:defaultValue:container:customerBuildEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for UserDefault(0, a6, a3, a4);
  v15 = (a7 + v14[7]);
  *v15 = a1;
  v15[1] = a2;
  result = (*(*(a6 - 8) + 32))(a7, a3, a6);
  *(a7 + v14[8]) = a4;
  *(a7 + v14[9]) = a5;
  return result;
}

uint64_t sub_21D020FF8()
{
  v0 = sub_21D0224A4();
  __swift_allocate_value_buffer(v0, qword_27CE469B0);
  __swift_project_value_buffer(v0, qword_27CE469B0);
  return sub_21D022494();
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_21D0211B8;
}

void sub_21D0211B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_21D021344(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_21D021344((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = sub_21D022584();
  [v2 removeObjectForKey_];
}

uint64_t sub_21D021308(uint64_t (*a1)(void))
{
  a1();

  return sub_21D022C74();
}

void sub_21D021344(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 32));
  v4 = sub_21D022B14();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t sub_21D0213E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21D0217C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D021480(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_21D0215DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_21D0217C8()
{
  result = qword_28121B110;
  if (!qword_28121B110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28121B110);
  }

  return result;
}