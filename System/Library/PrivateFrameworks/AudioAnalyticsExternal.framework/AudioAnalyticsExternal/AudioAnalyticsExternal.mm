void *sub_2239C89F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  result = RTCWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

void *RTCWorker.init(with:)(void *a1)
{
  v2 = v1;
  v19 = *v1;
  v4 = sub_223A20DA0();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x28223BE20](v4);
  v16 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v7 = *MEMORY[0x277CEF9F8];
  v8 = sub_223A20BC0();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2 + v6, v7, v8);
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted) = 0;
  v10 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_underTest) = 0;
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_logger;
  sub_223A20F60();
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents) = v10;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken) = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting) = 0;
  v12 = v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer;
  *(v12 + 12) = 256;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *v12 = 0;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___shouldBatch) = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_223A20960() == 11)
  {
    (*(v9 + 8))(v2 + v6, v8);

    v13 = sub_223A20FC0();
    (*(*(v13 - 8) + 8))(v2 + v11, v13);

    swift_deallocPartialClassInstance();
    v2 = 0;
  }

  else
  {
    sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_223A209A0();
    v14 = v16;
    sub_223A20BB0();

    (*(v17 + 32))(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig, v14, v18);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2239C8DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL sub_2239C8E48(void *a1)
{
  v2 = sub_223A20D60();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_223A20960();
  if (*(v2 + 16) && (v4 = sub_2239C9110(v3), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);

    sub_2239C9920(0.0, 1.0);
    return v7 < v6;
  }

  else
  {

    return 1;
  }
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

Swift::Bool __swiftcall RTCWorker.start()()
{
  v1 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
  if (sub_223A20960() == 11 || !sub_2239C8E48(v1))
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  v3 = 1;
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {

    v4 = sub_223A20FB0();
    v5 = sub_223A214D0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      __swift_project_boxed_opaque_existential_1(v1, v1[3]);
      *(v6 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v4, v5, "Already started. { reporterID=%lld }", v6, 0xCu);
      MEMORY[0x223DF1300](v6, -1, -1);
    }

    else
    {
    }

    return *(v0 + v2);
  }

  else
  {
    sub_2239E889C();
    *(v0 + v2) = 1;
  }

  return v3;
}

unint64_t sub_2239C9110(uint64_t a1)
{
  v1 = a1;
  sub_223A21940();
  sub_223A21960();
  v2 = sub_223A21970();

  return sub_2239C98B0(v1, v2);
}

uint64_t *sub_2239C917C@<X0>(__int128 *a1@<X0>, uint64_t **a2@<X8>)
{
  swift_allocObject();
  result = TailspinWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t *TailspinWorker.init(with:)(__int128 *a1)
{
  v2 = v1;
  v43 = a1;
  v37 = *v1;
  v3 = sub_223A20FC0();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TailspinOptions(0);
  MEMORY[0x28223BE20](v32);
  v33 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223A21540();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A21520();
  MEMORY[0x28223BE20](v8);
  v9 = sub_223A21090();
  MEMORY[0x28223BE20](v9 - 8);
  v1[16] = 0;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  v11 = *MEMORY[0x277CEFA08];
  v12 = sub_223A20BC0();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 104);
  v31 = v10;
  v13(&v1[v10], v11);
  v42 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions;
  sub_2239C9FF0(&v1[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions]);
  v27[1] = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases;
  *&v1[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases] = 0;
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_logger;
  sub_223A20F90();
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_requestQueue;
  v38 = sub_2239CA184();
  sub_223A21050();
  *v44 = MEMORY[0x277D84F90];
  sub_2239CA260(&qword_281332720, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  v15 = v14;
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  (*(v40 + 104))(v39, *MEMORY[0x277D85260], v41);
  *&v1[v14] = sub_223A21570();
  if (qword_281333380 != -1)
  {
    swift_once();
  }

  sub_2239C9B84();
  swift_getKeyPath();

  sub_223A20F20();

  if (v44[0] == 1)
  {

    v16 = v33;
    sub_223A20F10();

    v17 = v42;
    swift_beginAccess();
    sub_223A1D61C(v16, &v2[v17]);
    swift_endAccess();
    sub_2239CB264(v43, &v2[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session]);
  }

  else
  {
    v19 = v34;
    v18 = v35;
    v20 = v28;
    v21 = v36;
    (*(v35 + 16))(v34, &v1[v28], v36);
    v22 = sub_223A20FB0();
    v23 = sub_223A214D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2239C7000, v22, v23, "Skipping TailspinWorker initialization: Tailspin not enabled. { isTailspinReady=false }", v24, 2u);
      MEMORY[0x223DF1300](v24, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v43);
    v25 = *(v18 + 8);
    v25(v19, v21);
    (*(v29 + 8))(&v2[v31], v30);
    sub_2239CC9A8(&v2[v42]);

    v25(&v2[v20], v21);

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

void *sub_2239C9808@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

uint64_t sub_2239C9878(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2239C98B0(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_2239C9920(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x223DF1320](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_2239C9920(a1, a2);
  }
}

uint64_t RTCWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v6 = sub_223A20DA0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_2239C9B30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2239C9B84()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2239CAA5C;
  *(v2 + 24) = v0;
  v13 = sub_2239CAA60;
  v14 = v2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2239CA2AC;
  v12 = &block_descriptor_13;
  v3 = _Block_copy(&v9);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    return result;
  }

  v5 = sub_2239C9DF4();

  if (v5)
  {
    v6 = *(v0 + 56);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_223A19A1C;
    *(v7 + 24) = v0;
    v13 = sub_223A19B58;
    v14 = v7;
    v9 = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_2239CA2AC;
    v12 = &block_descriptor_20;
    v8 = _Block_copy(&v9);

    dispatch_sync(v6, v8);
    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_2239C9DF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];

  sub_223A20880();

  v3 = sub_223A20680();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2239C9F88(v2);
  }

  else
  {
    v5 = sub_223A20660();
    (*(v4 + 8))(v2, v3);
    if (v5)
    {
      return 1;
    }
  }

  swift_getKeyPath();

  sub_223A20F20();

  return v7[15];
}

uint64_t sub_2239C9F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2239C9FF0@<X0>(void *a1@<X8>)
{
  sub_223A20610();
  v2 = type metadata accessor for TailspinOptions(0);
  sub_223A20610();
  sub_223A20610();
  v3 = *(v2 + 28);
  *(a1 + v3) = sub_223A20E90() & 1;
  v4 = *(v2 + 32);
  *(a1 + v4) = sub_223A20E20() & 1;
  return sub_223A20610();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2239CA184()
{
  result = qword_281332718;
  if (!qword_281332718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281332718);
  }

  return result;
}

uint64_t sub_2239CA1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2239CA218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2239CA260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2239CA2D4()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 24);
  v4 = MEMORY[0x277D841D0];
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205D0();
  os_unfair_lock_unlock((v3 + v5));

  v6 = *(v2 + 32);
  v7 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v7));
  sub_223A205D0();
  os_unfair_lock_unlock((v6 + v7));

  v8 = sub_223A20FB0();
  v9 = sub_223A21500();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;

    v11 = sub_2239C9DF4();

    *(v10 + 4) = v11 & 1;
    *(v10 + 8) = 1024;
    swift_getKeyPath();

    sub_223A20F20();

    *(v10 + 10) = v36;

    _os_log_impl(&dword_2239C7000, v8, v9, "Synced TailspinStatus. { isEnabled=%{BOOL}d, isReady=%{BOOL}d } ", v10, 0xEu);
    MEMORY[0x223DF1300](v10, -1, -1);
  }

  else
  {
  }

  if (sub_2239C9DF4())
  {
    swift_getKeyPath();

    sub_223A20F20();

    if (v36 & 1) == 0 && (sub_223A1E454(v12))
    {
      v13 = 1;
LABEL_13:

      sub_223A19B70(v13);
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (sub_2239C9DF4())
  {
LABEL_14:

    goto LABEL_15;
  }

  swift_getKeyPath();

  sub_223A20F20();

  if (v36 == 1 && (sub_223A1E9CC(v14) & 1) != 0)
  {
    v13 = 0;
    goto LABEL_13;
  }

LABEL_15:
  swift_getKeyPath();

  sub_223A20F20();

  if (v36 == 1)
  {
    v15 = *(v0 + 16);
    v16 = v15 + *(*v15 + *v4 + 16);
    v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v15 + v17));
    sub_223A205D0();
    v18 = type metadata accessor for TailspinOptions(0);
    sub_223A205D0();
    sub_223A205D0();
    *(v16 + *(v18 + 28)) = sub_223A20E90() & 1;
    *(v16 + *(v18 + 32)) = sub_223A20E20() & 1;
    sub_223A205D0();
    v19 = sub_223A1A540();
    v21 = v20;
    os_unfair_lock_unlock((v15 + v17));

    v22 = sub_223A20FB0();
    v23 = sub_223A214D0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_2239E1910(v19, v21, &v36);
      _os_log_impl(&dword_2239C7000, v22, v23, "Synced TailspinOptions. { %{private}s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DF1300](v25, -1, -1);
      MEMORY[0x223DF1300](v24, -1, -1);
    }

    v26 = *(v1 + 24);
    v27 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v26 + v27));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
    sub_223A205D0();
    type metadata accessor for OverloadOptions(0);
    sub_223A205D0();
    sub_223A205D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
    sub_223A205D0();
    sub_223A205D0();
    sub_223A205D0();
    v28 = sub_223A1A7C8();
    v30 = v29;
    os_unfair_lock_unlock((v26 + v27));

    v31 = sub_223A20FB0();
    v32 = sub_223A214D0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v33 = 136380675;
      v35 = sub_2239E1910(v28, v30, &v36);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_2239C7000, v31, v32, "Synced OverloadOptions. { %{private}s }", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DF1300](v34, -1, -1);
      MEMORY[0x223DF1300](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2239CAA8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *sub_2239CAB18@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  swift_allocObject();
  result = SummaryDecoratorWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t *DriverSnapshotWorker.init(with:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  v5 = *MEMORY[0x277CEF9D0];
  v6 = sub_223A20BC0();
  v7 = *(v6 - 8);
  v20 = v6;
  (*(v7 + 104))(v2 + v4, v5);
  v19 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
  sub_223A20F70();
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223A209A0();
  v8 = *(sub_223A20BF0() + 16);

  if (!v8 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), sub_223A20960(), v9 = sub_223A20BF0(), sub_2239CAF30(v9), , v18 = sub_223A206B0(), , __swift_project_boxed_opaque_existential_1(a1, a1[3]), sub_223A209C0(), v10 = sub_223A20BF0(), sub_2239CAF30(v10), , v11 = sub_223A206A0(), , , __swift_project_boxed_opaque_existential_1(a1, a1[3]), sub_223A20990(), v12 = sub_223A20BF0(), sub_2239CAF30(v12), , v13 = sub_223A206C0(), , , (v18 & 1) == 0) || (v11 & 1) == 0 || (v13 & 1) == 0)
  {

LABEL_10:
    (*(v7 + 8))(v2 + v4, v20);
    v16 = sub_223A20FC0();
    (*(*(v16 - 8) + 8))(v2 + v19, v16);

    swift_deallocPartialClassInstance();
    v2 = 0;
    goto LABEL_11;
  }

  if (qword_281332DD8 != -1)
  {
    swift_once();
  }

  v14 = qword_2813359E8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_223A209A0();
  sub_2239E8B24(v15);

  if (*(v14 + 16) != 1)
  {
    goto LABEL_10;
  }

  sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session);
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_2239CAF30(uint64_t a1)
{
  v2 = sub_223A20AE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2239CB0FC(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2239CB0FC((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277CEF8D8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_2239CB264(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_2239CB0FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2239CB11C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2239CB11C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BE8, &qword_223A237A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BF0, &qword_223A237A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2239CB264(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2239CB280@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_223A20290();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v10 = *MEMORY[0x277CEF9B8];
  v11 = sub_223A20BC0();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  v12 = [objc_opt_self() alphanumericCharacterSet];
  sub_223A20270();

  sub_223A20280();
  (*(v5 + 8))(v7, v4);
  result = sub_2239CB264(a1, v8 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session);
  *a2 = v8;
  return result;
}

char *SummaryDecoratorWorker.init(with:)(void *a1)
{
  v2 = v1;
  v59 = *v1;
  v4 = sub_223A20FC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v52 - v9;
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x277D84F98];
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  v11 = *MEMORY[0x277CEF9F0];
  v12 = sub_223A20BC0();
  v57 = *(v12 - 8);
  v58 = v10;
  v13 = *(v57 + 104);
  v55 = v12;
  v13(v2 + v10, v11);
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
  sub_223A20F70();
  v56 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session;
  sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_223A209A0();
  v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_config;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_config) = v15;

  v17 = sub_223A20BD0();

  v18 = *(v17 + 16);

  if (!v18)
  {
    v60 = v16;
    (*(v5 + 16))(v8, v2 + v14, v4);
    sub_2239C8DE4(a1, v64);
    sub_2239C8DE4(a1, v62);
    v37 = sub_223A20FB0();
    v38 = sub_223A214D0();
    v39 = v4;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v53 = v14;
      v54 = v5;
      v41 = v38;
      v42 = v40;
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 134218243;
      v52 = v4;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v44 = v37;
      v45 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v64);
      *(v42 + 4) = v45;
      *(v42 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v39 = v52;
      sub_223A20960();
      v46 = sub_223A20EB0();
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_0(v62);
      v49 = sub_2239E1910(v46, v48, &v61);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_2239C7000, v44, v41, "No summary configs found. { reporterID=%lld, serviceType=%{private}s }", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223DF1300](v43, -1, -1);
      v14 = v53;
      MEMORY[0x223DF1300](v42, -1, -1);

      v50 = *(v54 + 8);
      v50(v8, v39);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v64);

      v50 = *(v5 + 8);
      v50(v8, v4);
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    (*(v57 + 8))(v2 + v58, v55);
    __swift_destroy_boxed_opaque_existential_0((v2 + v56));

    v50((v2 + v14), v39);
    swift_deallocPartialClassInstance();
    goto LABEL_12;
  }

  v53 = v14;
  v54 = v5;
  v19 = v4;

  v20 = sub_223A20BD0();

  MEMORY[0x28223BE20](v21);
  *(&v52 - 2) = a1;
  v22 = sub_2239CBBFC(sub_2239CBFFC, (&v52 - 4), v20);
  MEMORY[0x28223BE20](v22);
  *(&v52 - 2) = a1;
  v23 = sub_2239CC240(sub_2239CC428, (&v52 - 4), v22);
  v24 = v60;
  v25 = v23;

  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates) = v25;
  if (v25 >> 62)
  {
    if (sub_223A21780())
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v26 = v54;
    (*(v54 + 16))(v24, v2 + v53, v19);
    sub_2239C8DE4(a1, v64);
    sub_2239C8DE4(a1, v62);
    v27 = sub_223A20FB0();
    v28 = sub_223A214D0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v52 = v19;
      v30 = v29;
      v59 = swift_slowAlloc();
      v61 = v59;
      *v30 = 134218243;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v31 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v64);
      *(v30 + 4) = v31;
      *(v30 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      sub_223A20960();
      v32 = sub_223A20EB0();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_0(v62);
      v35 = sub_2239E1910(v32, v34, &v61);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_2239C7000, v27, v28, "No matching summary configs. { reporterID=%lld, serviceType=%{private}s }", v30, 0x16u);
      v36 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x223DF1300](v36, -1, -1);
      MEMORY[0x223DF1300](v30, -1, -1);

      (*(v26 + 8))(v24, v52);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v64);

      (*(v26 + 8))(v24, v19);
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

LABEL_12:
    v2 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_2239CBBFC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_223A207D0();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2239CC01C(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2239CC01C((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_2239CBECC(uint64_t a1, void *a2)
{
  v3 = sub_223A20B00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A206E0();
  v7 = sub_223A20AF0();
  (*(v4 + 8))(v6, v3);
  v8 = sub_223A206D0();
  if ((v8 & 1) != 0 && (v7 & 0x10000) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v8 = sub_223A20960() == v7;
  }

  return v8 & 1;
}

void *sub_2239CC01C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2239CC218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2239CC03C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t *sub_2239CC298@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  swift_allocObject();
  result = DriverSnapshotWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2239CC2E4(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_223A21750();
    v9 = *(sub_223A207D0() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_223A21730();
      sub_223A21760();
      sub_223A21770();
      sub_223A21740();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239CC448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_223A207D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  v13 = *(v7 + 16);
  v13(v19 - v11, a1, v6);
  sub_2239C8DE4(a2, v20);
  type metadata accessor for DurationSummaryDecoratorState(0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages) = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
  v16 = sub_223A20D20();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  v13(v10, v12, v6);
  sub_2239C8DE4(v20, v19);
  v17 = sub_2239CC684(v10, v19, 0);
  __swift_destroy_boxed_opaque_existential_0(v20);
  result = (*(v7 + 8))(v12, v6);
  *a3 = v17;
  return result;
}

uint64_t type metadata accessor for DurationSummaryDecoratorState(uint64_t a1)
{
  result = qword_281332A60;
  if (!qword_281332A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239CC684(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = MEMORY[0x277D84FA0];
  *(v3 + 16) = MEMORY[0x277D84FA0];
  sub_223A20F70();
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  v9 = sub_223A20D20();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage) = 0;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
  v11 = sub_223A20680();
  *(v3 + v10) = MEMORY[0x223DF0210](20, MEMORY[0x277D837D0], v11, MEMORY[0x277D837E0]);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_seenFields) = v7;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber) = 1;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messagesOutOfOrder) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_originalTimeOffset) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) = 0;
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v13 = sub_223A207D0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a1, v13);
  sub_2239C8DE4(a2, v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session);
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_requiredKeyValues) = a3;
  sub_2239CC860();
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v14 + 8))(a1, v13);
  return v3;
}

void sub_2239CC860()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v4 = *(sub_223A206F0() + 16);

  if (v4 + 0x4000000000000000 < 0)
  {
    __break(1u);

    *(v2 + v1) = v10;

    __break(1u);
  }

  else
  {
    v5 = sub_223A20680();
    v6 = MEMORY[0x223DF0210](2 * v4, MEMORY[0x277D837D0], v5, MEMORY[0x277D837E0]);
    v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
    swift_beginAccess();
    *(v2 + v7) = v6;

    v8 = sub_223A206F0();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + v7);
    *(v2 + v7) = 0x8000000000000000;
    sub_2239D344C(v8, sub_2239CE198, 0, isUniquelyReferenced_nonNull_native, &v10);

    *(v2 + v7) = v10;
    swift_endAccess();
  }
}

uint64_t sub_2239CC9A8(uint64_t a1)
{
  v2 = type metadata accessor for TailspinOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2239CCA68@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AirPodWorker(0);
  swift_allocObject();
  result = AirPodWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AirPodWorker(uint64_t a1)
{
  result = qword_2813343A8;
  if (!qword_2813343A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AirPodWorker.init(with:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v4 = *MEMORY[0x277CEF9C0];
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields) = 0;
  sub_223A20FA0();
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_halIOCategory;
  *(v1 + v6) = sub_223A20E70();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation) = 0;
  sub_2239CB264(a1, v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session);
  return v1;
}

uint64_t sub_2239CCBE4()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = 1;
  return 1;
}

uint64_t sub_2239CCC2C()
{
  v98 = sub_223A20680();
  v99 = *(v98 - 8);
  v1 = MEMORY[0x28223BE20](v98);
  v97 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v96 = &v80 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v4 - 8);
  v95 = &v80 - v5;
  v6 = sub_223A20B90();
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v80 - v10;
  v12 = sub_223A20D20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  v17 = v0 + v16;
  v18 = v13;
  sub_2239D8C48(v17, v11, &qword_27D0A4B38, " >");
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2239CDCEC(v11, &qword_27D0A4B38, " >");
    goto LABEL_60;
  }

  (*(v13 + 32))(v15, v11, v12);
  v19 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
  if (!v19)
  {
    goto LABEL_59;
  }

  v20 = v0;
  v21 = v94;
  (*(v94 + 104))(v8, *MEMORY[0x277CEF918], v6);

  v22 = v95;
  sub_223A21150();
  (*(v21 + 8))(v8, v6);
  v23 = (*(v99 + 48))(v22, 1, v98);
  sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
  if (v23 != 1 && sub_223A20CC0() == 1 && !sub_223A20C20())
  {
    (*(v18 + 8))(v15, v12);

    v74 = *(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning);
    return v74 & 1;
  }

  v91 = v18;
  v24 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
  swift_beginAccess();
  v25 = *(v20 + v24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100[0] = v25;
  sub_2239CD8EC(v19, sub_2239CE198, 0, isUniquelyReferenced_nonNull_native, v100);

  v27 = v100[0];
  v88 = 0;
  v89 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v28 = sub_223A20780();
  v29 = *(v28 + 16);
  v30 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_seenFields;
  swift_beginAccess();
  v95 = v27;
  v90 = v29;
  if (v29)
  {
    v31 = 0;
    v94 = v28 + 32;
    v93 = v15;
    v92 = v20;
    do
    {
      if (v31 >= *(v28 + 16))
      {
        __break(1u);
LABEL_63:
        __break(1u);

        __break(1u);
        return result;
      }

      v32 = *(v20 + v30);
      if (!*(v32 + 16))
      {

        v18 = v91;
        goto LABEL_57;
      }

      v33 = v12;
      v34 = (v94 + 16 * v31);
      v35 = *v34;
      v36 = v34[1];
      sub_223A21940();

      sub_223A21290();
      v37 = sub_223A21970();
      v38 = -1 << *(v32 + 32);
      v39 = v37 & ~v38;
      if (((*(v32 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
LABEL_20:

        v12 = v33;
        v20 = v92;
        v18 = v91;
        v15 = v93;
        goto LABEL_57;
      }

      ++v31;
      v40 = ~v38;
      while (1)
      {
        v41 = (*(v32 + 48) + 16 * v39);
        v42 = *v41 == v35 && v41[1] == v36;
        if (v42 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v32 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v12 = v33;
      v20 = v92;
      v15 = v93;
      v27 = v95;
    }

    while (v31 != v90);
  }

  v43 = sub_223A20760();
  if (v43)
  {
    v44 = v43;
    v45 = sub_223A21140();

    sub_2239D6C54(v45);

    LOBYTE(v45) = sub_223A20D40();

    v18 = v91;
    if ((v45 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_23:
    v46 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning;
    if ((*(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) & 1) == 0)
    {
      sub_223A20D00();
      *(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp) = v47;
    }

    *(v20 + v46) = 1;
    goto LABEL_57;
  }

  v48 = sub_223A20720();
  v18 = v91;
  if (!v48)
  {

    goto LABEL_57;
  }

  v49 = v48;
  v93 = v15;
  v82 = v12;
  v50 = *(v48 + 16);
  v90 = v99 + 16;
  v87 = v99 + 88;
  v86 = *MEMORY[0x277CEF840];
  v84 = *MEMORY[0x277CEF850];
  v83 = *MEMORY[0x277CEF858];
  v81 = *MEMORY[0x277CEF848];
  v80 = *MEMORY[0x277CEF860];
  v85 = (v99 + 96);
  v89 = (v99 + 8);
  v51 = (v48 + 40);
  v94 = -v50;
  v52 = -1;
  do
  {
    if (v94 + v52 == -1)
    {

      v12 = v82;
      v18 = v91;
      v15 = v93;
      goto LABEL_23;
    }

    if (++v52 >= *(v49 + 16))
    {
      goto LABEL_63;
    }

    if (!*(v27 + 2))
    {
      break;
    }

    v55 = *(v51 - 1);
    v56 = *v51;

    v57 = sub_2239CDC74(v55, v56);
    if ((v58 & 1) == 0)
    {

      goto LABEL_53;
    }

    v59 = v49;
    v60 = *(v27 + 7);
    v61 = v99;
    v62 = *(v99 + 16);
    v63 = v96;
    v64 = v98;
    v62(v96, v60 + *(v99 + 72) * v57, v98);
    v62(v97, v63, v64);
    v65 = v64;
    v66 = v97;
    v67 = (*(v61 + 88))(v97, v65);
    if (v67 == v86)
    {

      (*v85)(v66, v65);
      v53 = v65;
      v54 = *v66 == 1;
      v27 = v95;
      v49 = v59;
    }

    else
    {
      v27 = v95;
      v49 = v59;
      if (v67 == v84)
      {

        (*v85)(v66, v65);
        v68 = *v66 == 1;
        goto LABEL_39;
      }

      if (v67 == v83)
      {

        (*v85)(v66, v65);
        v68 = *v66 == 1.0;
LABEL_39:
        v53 = v65;
        v54 = v68;
        goto LABEL_29;
      }

      if (v67 == v81)
      {

        (*v85)(v66, v65);
        v53 = v65;
        v54 = *v66;
      }

      else
      {
        if (v67 != v80)
        {

          v75 = v66;
          v76 = v65;
          v77 = *v89;
          (*v89)(v75, v76);
          v77(v96, v76);
          break;
        }

        (*v85)(v66, v65);
        v69 = sub_223A21250();
        v71 = v70;

        v100[0] = v69;
        v100[1] = v71;
        MEMORY[0x28223BE20](v72);
        *(&v80 - 2) = v100;
        v73 = v88;
        v54 = sub_223A0738C(sub_2239D9828, (&v80 - 8), &unk_283702950);
        v88 = v73;

        swift_arrayDestroy();

        v53 = v98;
        v27 = v95;
      }
    }

LABEL_29:
    v51 += 2;
    (*v89)(v96, v53);
  }

  while ((v54 & 1) != 0);

LABEL_53:

  v12 = v82;
  v18 = v91;
  v15 = v93;
LABEL_54:
  v78 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning;
  if (*(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    (*(v18 + 8))(v15, v12);
    *(v20 + v78) = 0;
    v74 = 1;
    return v74 & 1;
  }

  *(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) = 0;
LABEL_57:
  if (*(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    v74 = sub_2239DCB60();
    (*(v18 + 8))(v15, v12);
    return v74 & 1;
  }

LABEL_59:
  (*(v18 + 8))(v15, v12);
LABEL_60:
  v74 = 0;
  return v74 & 1;
}

uint64_t sub_2239CD8EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_223A20680();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v46 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v50 = a1;
  v51 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v52 = v17;
  v53 = 0;
  v54 = v20 & v18;
  v55 = a2;
  v56 = a3;
  v48 = v10;
  v49 = (v10 + 32);
  v46[3] = v10 + 40;

  v46[1] = a3;

  for (i = v15; ; v15 = i)
  {
    sub_2239CDD4C(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_2239CE254();
    }

    v23 = *(v22 + 48);
    v25 = *v15;
    v24 = v15[1];
    v26 = *v49;
    v27 = v15 + v23;
    v28 = v12;
    v29 = v9;
    (*v49)(v12, v27, v9);
    v30 = *v57;
    v32 = sub_2239CDC74(v25, v24);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((a4 & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v35, a4 & 1);
      v37 = sub_2239CDC74(v25, v24);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v32 = v37;
    }

    v39 = *v57;
    if (v36)
    {

      v21 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      (*(v48 + 40))(v21, v28, v29);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v25;
      v40[1] = v24;
      v41 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      v26(v41, v28, v29);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v39[2] = v44;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_223A21910();
  __break(1u);
  return result;
}

unint64_t sub_2239CDC74(uint64_t a1, uint64_t a2)
{
  sub_223A21940();
  sub_223A21290();
  v4 = sub_223A21970();

  return sub_2239CE33C(a1, a2, v4);
}

uint64_t sub_2239CDCEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2239CDD4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v45 = sub_223A20680();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_2239CE130(v14, v36, &qword_27D0A4BC0, &unk_223A23780);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_2239CE130(v39, v42, &qword_27D0A4B60, &qword_223A23760);
      v37(v40);
      sub_2239CDCEC(v40, &qword_27D0A4B60, &qword_223A23760);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
    return (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v13, 1, 1, v47);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239CE130(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2239CE198@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_223A20680();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

void sub_2239CE25C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + v2);
    *(v0 + v2) = 0x8000000000000000;
    sub_2239CD8EC(v1, sub_2239CE198, 0, isUniquelyReferenced_nonNull_native, &v4);

    *(v0 + v2) = v4;
    swift_endAccess();
  }
}

unint64_t sub_2239CE33C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_223A218F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2239CE3F4(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_223A20D20();
  v30 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v36 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = MEMORY[0x277D84F90];
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (v35)
    {
      v12 = MEMORY[0x223DF07F0](v15, a3);
      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v39 = v16;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_2239CDCEC(v8, &qword_27D0A4B38, " >");
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_2239DF208(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_2239DF208((v21 > 1), v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    if (v15 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    v16 = *(a3 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v25 = v12;
    i = sub_223A21780();
  }

  return MEMORY[0x277D84F90];
}

uint64_t SummaryDecoratorWorker.process(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_223A20CA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20CE0();
  v11 = sub_223A20C70();
  result = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);
    if (v13 >> 62)
    {
      result = sub_223A21780();
      v14 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        return result;
      }
    }

    if (v14 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DF07F0](i, v13);
        }

        else
        {
        }

        if (sub_2239CEE50(a1))
        {
          sub_2239CE9AC(a1, v6);

          result = sub_2239CDCEC(v6, &qword_27D0A4B38, " >");
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_2239CE9AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v35 = sub_223A20680();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_223A20B90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v15 = sub_223A20C40();
  (*(v12 + 104))(v14, *MEMORY[0x277CEF970], v11);
  v16 = sub_223A20B80();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  if (!*(v15 + 16))
  {

    goto LABEL_6;
  }

  v19 = sub_2239CDC74(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v22 = *(v15 + 56) + *(v8 + 72) * v19;
  v23 = v35;
  (*(v8 + 16))(v10, v22, v35);

  if ((*(v8 + 88))(v10, v23) == *MEMORY[0x277CEF858])
  {
    (*(v8 + 96))(v10, v23);
    v24 = *v10;
    v25 = v36;
    sub_223A20D00();
    *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_originalTimeOffset) = v26 - v24;
    goto LABEL_8;
  }

  (*(v8 + 8))(v10, v23);
LABEL_7:
  v25 = v36;
LABEL_8:
  v27 = sub_223A20D20();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v7, v25, v27);
  v29 = *(v28 + 56);
  v29(v7, 0, 1, v27);
  v30 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  sub_2239D8BD8(v7, v3 + v30);
  swift_endAccess();
  v31 = sub_223A20C50();
  v32 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage) = v31;

  sub_2239DA6FC();
  sub_2239D8CB0();
  if (*(v3 + v32))
  {
    swift_beginAccess();

    sub_2239D9090(v33);
    swift_endAccess();
  }

  if (sub_2239CCC2C())
  {
    v34 = (*(*v3 + 272))();
  }

  else
  {
    v34 = v29(v37, 1, 1, v27);
  }

  (*(*v3 + 240))(v34);
  sub_2239CE25C();
}

uint64_t sub_2239CEE50(uint64_t a1)
{
  v47 = a1;
  v46 = sub_223A20680();
  v2 = *(v46 - 8);
  v3 = MEMORY[0x28223BE20](v46);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = v37 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  MEMORY[0x28223BE20](v44);
  v48 = (v37 - v6);
  v7 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_requiredKeyValues);
  if (v7)
  {
    v8 = v7 + 64;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    v45 = v2 + 16;
    v39 = (v2 + 32);
    v37[1] = v1;
    v38 = (v2 + 8);

    v14 = 0;
    v42 = result;
    v43 = v2;
    while (v11)
    {
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v14 << 6);
      v18 = (*(result + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v2 + 72);
      v22 = *(v44 + 48);
      v23 = *(v2 + 16);
      v24 = v48;
      v23(v48 + v22, *(result + 56) + v21 * v17, v46);
      *v24 = v19;
      v24[1] = v20;

      v25 = sub_223A20C40();
      if (*(v25 + 16) && (v26 = sub_2239CDC74(v19, v20), (v27 & 1) != 0))
      {
        v28 = v41;
        v29 = v46;
        v23(v41, *(v25 + 56) + v26 * v21, v46);

        v30 = v40;
        (*v39)(v40, v28, v29);
        v31 = v48;
        v32 = MEMORY[0x223DEF730](v30, v48 + v22);
        (*v38)(v30, v29);
        sub_2239CDCEC(v31, &qword_27D0A4B60, &qword_223A23760);
        result = v42;
        v2 = v43;
        if ((v32 & 1) == 0)
        {
          v33 = 0;
LABEL_16:

          goto LABEL_18;
        }
      }

      else
      {

        sub_2239CDCEC(v48, &qword_27D0A4B60, &qword_223A23760);
        result = v42;
        v2 = v43;
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        v33 = 1;
        goto LABEL_16;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = 1;
LABEL_18:
    v34 = sub_223A20750();
    MEMORY[0x28223BE20](v34);
    v37[-2] = v47;
    v35 = sub_2239CF3F4(sub_2239CF3D4, &v37[-4], v34);

    if (sub_223A20C20() == 11)
    {
      v36 = 0;
    }

    else
    {
      v36 = v33;
    }

    return v36 & v35;
  }

  return result;
}

uint64_t sub_2239CF1FC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_223A20C40();
  if (*(v7 + 16) && (v8 = sub_2239CDC74(v5, v6), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_223A20680();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v4, v11 + *(v13 + 72) * v10, v12);

    v14 = 1;
    (*(v13 + 56))(v4, 0, 1, v12);
  }

  else
  {

    v15 = sub_223A20680();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v14 = 0;
  }

  sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
  return v14;
}

uint64_t sub_2239CF3F4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t InferenceSummaryWorker.process(message:)(uint64_t a1)
{
  v3 = type metadata accessor for InferenceSummaryState(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - v7);
  result = swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState;
    swift_beginAccess();
    sub_2239CF7E0(v1 + v10, v8);
    v11 = v1;
    sub_2239CF7E0(v1 + v10, v6);
    sub_2239CF844();
    if (!v2)
    {
      sub_2239CFAD4();
      sub_2239CFCF4();
      sub_2239D0400();
      sub_2239D0804();
      sub_2239D0A78();
      sub_223A20D00();
      v13 = v12;
      v14 = *(v3 + 60);
      v15 = v6[v14];
      if ((v15 & 1) != 0 && (v16 = &v6[*(v3 + 64)], (v16[8] & 1) == 0))
      {
        v20 = *v16;
        sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
      }

      else
      {
        if (*(v8 + v14) == 1)
        {
          v17 = v8 + *(v3 + 64);
          if ((v17[8] & 1) == 0)
          {
            *v17 = v12;
            v17[8] = 0;
          }
        }

        if (!v15)
        {
          sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
LABEL_20:
          swift_beginAccess();
          sub_2239D5D3C(v8, v11 + v10);
          return swift_endAccess();
        }

        v18 = &v6[*(v3 + 64)];
        v19 = v18[8];
        v20 = *v18;
        sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
        if (v19)
        {
          goto LABEL_20;
        }
      }

      if ((*(v8 + *(v3 + 60)) != 1 || *(v8 + *(v3 + 64) + 8) == 1) && v20 < v13)
      {
        v8[4] = v13 - v20 + v8[4];
      }

      goto LABEL_20;
    }

    sub_2239D62FC(v6, type metadata accessor for InferenceSummaryState);
    return sub_2239D62FC(v8, type metadata accessor for InferenceSummaryState);
  }

  return result;
}

uint64_t sub_2239CF7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceSummaryState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239CF844()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  v5 = sub_223A20B90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_223A20C20();
  if (!result)
  {
    result = sub_223A20CC0();
    if (result == 8)
    {
      sub_223A20C40();
      (*(v6 + 104))(v8, *MEMORY[0x277CEF948], v5);
      sub_223A21150();

      (*(v6 + 8))(v8, v5);
      v10 = sub_223A20680();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v4, 1, v10) == 1)
      {
        return sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
      }

      else if ((*(v11 + 88))(v4, v10) == *MEMORY[0x277CEF848])
      {
        (*(v11 + 96))(v4, v10);
        v12 = *v4;
        if (v12 == 1)
        {
          *(v1 + 16) = 1;
        }

        result = type metadata accessor for InferenceSummaryState(0);
        v13 = *(result + 60);
        if (v12 != *(v1 + v13))
        {
          *(v1 + v13) = v12;
        }
      }

      else
      {
        return (*(v11 + 8))(v4, v10);
      }
    }
  }

  return result;
}

void sub_2239CFAD4()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223A20C40();
  if (*(v6 + 16) && (v7 = sub_2239CDC74(0xD000000000000014, 0x8000000223A25E30), (v8 & 1) != 0))
  {
    (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * v7, v2);

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277CEF848])
    {
      (*(v3 + 96))(v5, v2);
      if (*v5 == 1)
      {
        sub_223A20D00();
        v10 = v9;
        v11 = v1 + *(type metadata accessor for InferenceSummaryState(0) + 64);
        v12 = *v11;
        if (*(v11 + 8))
        {
          v12 = INFINITY;
        }

        if (v12 >= v10)
        {
          v12 = v10;
        }

        *v11 = v12;
        *(v11 + 8) = 0;
        v13 = *(v1 + 24);
        v14 = __CFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          __break(1u);
        }

        else
        {
          *(v1 + 24) = v15;
        }
      }

      else
      {
        v16 = v1 + *(type metadata accessor for InferenceSummaryState(0) + 64);
        *v16 = 0;
        *(v16 + 8) = 1;
      }
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
  }
}

uint64_t sub_2239CFCF4()
{
  v1 = v0;
  v2 = sub_223A20680();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C48, &unk_223A23950);
  MEMORY[0x28223BE20](v45);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v41 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v46 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v41 - v14);
  v16 = sub_223A20B90();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A20CC0() == 1 && !sub_223A20C20())
  {
    v41 = v0;
    sub_223A20C40();
    (*(v17 + 104))(v19, *MEMORY[0x277CEF918], v16);
    sub_223A21150();

    (*(v17 + 8))(v19, v16);
    v20 = v47;
    if ((*(v47 + 48))(v15, 1, v2) == 1)
    {
      sub_2239CDCEC(v15, &qword_27D0A4928, &qword_223A22B40);
LABEL_9:
      v1 = v41;
      goto LABEL_10;
    }

    if ((*(v20 + 88))(v15, v2) != *MEMORY[0x277CEF858])
    {
      (*(v20 + 8))(v15, v2);
      goto LABEL_9;
    }

    (*(v20 + 96))(v15, v2);
    v21 = *v15;
    v22 = v44;
    *(v44 + 64) = v21 + *(v44 + 64);
    v23 = *(type metadata accessor for InferenceSummaryState(0) + 60);
    v1 = v41;
    if (*(v22 + v23) == 1)
    {
      *(v44 + v23) = 0;
    }
  }

LABEL_10:
  result = sub_223A20CC0();
  if (result == 8)
  {
    result = sub_223A20C20();
    if (result == 2)
    {
      v25 = sub_223A20C40();
      v26 = *(v25 + 16);
      v41 = v1;
      if (v26)
      {
        v27 = sub_2239CDC74(0x646F6874656DLL, 0xE600000000000000);
        v28 = v47;
        v29 = v46;
        if (v30)
        {
          (*(v47 + 16))(v46, *(v25 + 56) + *(v47 + 72) * v27, v2);
          v31 = 0;
        }

        else
        {
          v31 = 1;
        }
      }

      else
      {
        v31 = 1;
        v28 = v47;
        v29 = v46;
      }

      v32 = *(v28 + 56);
      v32(v29, v31, 1, v2);
      *v11 = 1886352499;
      v11[1] = 0xE400000000000000;
      (*(v28 + 104))(v11, *MEMORY[0x277CEF860], v2);
      v32(v11, 0, 1, v2);
      v33 = *(v45 + 48);
      sub_2239D3394(v29, v5);
      sub_2239D3394(v11, &v5[v33]);
      v34 = *(v28 + 48);
      if (v34(v5, 1, v2) == 1)
      {
        sub_2239CDCEC(v11, &qword_27D0A4928, &qword_223A22B40);
        sub_2239CDCEC(v29, &qword_27D0A4928, &qword_223A22B40);
        if (v34(&v5[v33], 1, v2) == 1)
        {
          sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
LABEL_24:
          result = type metadata accessor for InferenceSummaryState(0);
          v40 = *(result + 60);
          if (*(v44 + v40) == 1)
          {
            *(v44 + v40) = 0;
          }

          return result;
        }
      }

      else
      {
        v35 = v43;
        sub_2239D3394(v5, v43);
        if (v34(&v5[v33], 1, v2) != 1)
        {
          v36 = v47;
          v37 = &v5[v33];
          v38 = v42;
          (*(v47 + 32))(v42, v37, v2);
          sub_2239DF230();
          LODWORD(v46) = sub_223A211E0();
          v39 = *(v36 + 8);
          v39(v38, v2);
          sub_2239CDCEC(v11, &qword_27D0A4928, &qword_223A22B40);
          sub_2239CDCEC(v29, &qword_27D0A4928, &qword_223A22B40);
          v39(v35, v2);
          result = sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
          if ((v46 & 1) == 0)
          {
            return result;
          }

          goto LABEL_24;
        }

        sub_2239CDCEC(v11, &qword_27D0A4928, &qword_223A22B40);
        sub_2239CDCEC(v29, &qword_27D0A4928, &qword_223A22B40);
        (*(v47 + 8))(v35, v2);
      }

      return sub_2239CDCEC(v5, &qword_27D0A4C48, &unk_223A23950);
    }
  }

  return result;
}

void sub_2239D0400()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (v25 - v6);
  v8 = sub_223A20B90();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  if (sub_223A20C20() == 11 && sub_223A20CC0() == 3)
  {
    v32 = v0;
    v33 = v1;
    sub_223A20C40();
    v15 = *MEMORY[0x277CEF940];
    v31 = *(v9 + 104);
    v31(v14, v15, v8);
    sub_223A21150();

    v30 = *(v9 + 8);
    v30(v14, v8);
    v16 = sub_223A20680();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v34 = v16;
    v29 = v18;
    if ((v18)(v7, 1) == 1)
    {
      sub_2239CDCEC(v7, &qword_27D0A4928, &qword_223A22B40);
    }

    else
    {
      v27 = *(v17 + 88);
      v28 = v17 + 88;
      if (v27(v7, v34) == *MEMORY[0x277CEF858])
      {
        v26 = v17;
        v19 = v17 + 96;
        v20 = *(v17 + 96);
        v21 = v34;
        v25[0] = v20;
        v25[1] = v19;
        v20(v7, v34);
        *(v32 + 48) = *v7 + *(v32 + 48);
        sub_223A20C40();
        v31(v12, *MEMORY[0x277CEF900], v8);
        sub_223A21150();

        v30(v12, v8);
        if (v29(v5, 1, v21) == 1)
        {
          sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
        }

        else if (v27(v5, v34) == *MEMORY[0x277CEF860])
        {
          (v25[0])(v5, v34);
          v22 = *v5;
          v23 = v5[1];
          v24 = v32;

          *(v24 + 72) = v22;
          *(v24 + 80) = v23;
        }

        else
        {
          (*(v26 + 8))(v5, v34);
        }
      }

      else
      {
        (*(v17 + 8))(v7, v34);
      }
    }
  }
}

uint64_t sub_2239D0804()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v12 - v3);
  v5 = sub_223A20B90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_223A20C20();
  if (result == 11)
  {
    result = sub_223A20CC0();
    if (result == 14)
    {
      sub_223A20C40();
      (*(v6 + 104))(v8, *MEMORY[0x277CEF8E8], v5);
      sub_223A21150();

      (*(v6 + 8))(v8, v5);
      v10 = sub_223A20680();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v4, 1, v10) == 1)
      {
        return sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
      }

      else if ((*(v11 + 88))(v4, v10) == *MEMORY[0x277CEF858])
      {
        result = (*(v11 + 96))(v4, v10);
        *(v1 + 56) = *v4 + *(v1 + 56);
      }

      else
      {
        return (*(v11 + 8))(v4, v10);
      }
    }
  }

  return result;
}

void sub_2239D0A78()
{
  v58 = sub_223A20680();
  v1 = *(v58 - 8);
  v2 = MEMORY[0x28223BE20](v58);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v43 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = v41 - v10;
  v11 = sub_223A20C40();
  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v45 = v1;
  v46 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v41[1] = v1 + 16;
  v42 = v9;
  v53 = (v1 + 32);
  v48 = v11 + 64;
  v49 = (v1 + 8);
  v44 = v4;
  v47 = v18;
  v50 = v0;
  while (v17)
  {
    v19 = v12;
LABEL_15:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v19 << 6);
    v24 = v45;
    v25 = (*(v46 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v43;
    v29 = v58;
    (*(v45 + 16))(v43, *(v46 + 56) + *(v45 + 72) * v23, v58);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    v31 = *(v30 + 48);
    v32 = v42;
    *v42 = v27;
    *(v32 + 1) = v26;
    v33 = v28;
    v9 = v32;
    (*(v24 + 32))(&v32[v31], v33, v29);
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);

    v4 = v44;
LABEL_16:
    v34 = v51;
    sub_2239D0F08(v9, v51);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {
      goto LABEL_21;
    }

    v36 = *v34;
    v37 = *(v34 + 8);
    (*v53)(v4, v34 + *(v35 + 48), v58);
    v56 = v36;
    v57 = v37;
    v38 = *(v50 + 96);
    v54 = *(v50 + 88);
    v55 = v38;
    sub_2239D1804();
    if (sub_223A21630())
    {
      v39 = v52;
      sub_223A0FF20(v36, v37, v4);
      v52 = v39;
      if (v39)
      {
        (*v49)(v4, v58);

LABEL_21:

        return;
      }
    }

    (*v49)(v4, v58);

    v18 = v47;
    v14 = v48;
  }

  if (v18 <= v12 + 1)
  {
    v20 = v12 + 1;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
      v17 = 0;
      v12 = v21;
      goto LABEL_16;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_2239D0F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D0F78(uint64_t a1)
{
  v2 = sub_223A20B90();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v52 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_nonAlphaNumerics;
  v8 = (v5 + 63) >> 6;
  v54 = a1;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v50 = v8;
  v51 = a1 + 64;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = (*(v54 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_2239D17A8(*(v54 + 56) + 32 * v14, v57);
    v56[0] = v17;
    v56[1] = v16;
    sub_2239D1738(v56, v55);

    sub_2239D1858();
    if (!swift_dynamicCast())
    {

      sub_223A20E40();
      sub_223A20E30();
      swift_willThrow();
      return sub_2239CDCEC(v56, &qword_27D0A4AA8, &unk_223A23930);
    }

    v18 = v57[6];
    v55[0] = v17;
    v55[1] = v16;
    sub_2239D1804();
    v55[0] = sub_223A215F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
    sub_2239D18A4();
    v19 = sub_223A211D0();
    v21 = v20;

    v22 = v18;
    v23 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v23;
    v26 = sub_2239CDC74(v19, v21);
    v27 = v23[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_27;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_223A096C8();
        if (v30)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2239D1908(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2239CDC74(v19, v21);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
      if (v30)
      {
LABEL_4:

        v10 = v55[0];
        v11 = *(v55[0] + 56);
        v12 = *(v11 + 8 * v26);
        *(v11 + 8 * v26) = v22;

        goto LABEL_5;
      }
    }

    v10 = v55[0];
    *(v55[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v33 = (v10[6] + 16 * v26);
    *v33 = v19;
    v33[1] = v21;
    *(v10[7] + 8 * v26) = v22;

    v34 = v10[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_28;
    }

    v10[2] = v36;
LABEL_5:
    v7 &= v7 - 1;
    sub_2239CDCEC(v56, &qword_27D0A4AA8, &unk_223A23930);
    v8 = v50;
    v4 = v51;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session), *(v53 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session + 24));
      sub_223A20960();
      sub_223A20EB0();
      sub_223A21250();

      v37 = v47;
      v38 = v48;
      v39 = v10;
      v40 = v49;
      (*(v48 + 104))(v47, *MEMORY[0x277CEF938], v49);
      v41 = sub_223A20B80();
      v43 = v42;
      (*(v38 + 8))(v37, v40);
      v44 = sub_223A211F0();

      v45 = swift_isUniquelyReferenced_nonNull_native();
      v56[0] = v39;
      sub_2239D1D4C(v44, v41, v43, v45);

      return v56[0];
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_223A21910();
  __break(1u);
  return result;
}

void CoreAnalyticsWorker.process(message:)(uint64_t a1)
{
  v3 = sub_223A20D20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    sub_223A20B10();
    v7 = sub_223A20C10();
    v8 = sub_2239D0F78(v7);
    if (v2)
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v9 = v8;
      v18 = v4;
      v19 = v3;
      v20 = 0;

      v21 = sub_2239D1D78();
      v10 = *(v21 + 16);
      if (v10)
      {
        v11 = v21 + 40;
        do
        {

          v15 = sub_223A211F0();
          IsEventUsed = AnalyticsIsEventUsed();

          if (IsEventUsed)
          {
            v12 = sub_223A211F0();

            v13 = swift_allocObject();
            *(v13 + 16) = v9;
            aBlock[4] = sub_2239D338C;
            aBlock[5] = v13;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2239D3300;
            aBlock[3] = &block_descriptor_1;
            v14 = _Block_copy(aBlock);

            AnalyticsSendEventLazy();
            _Block_release(v14);
          }

          else
          {
          }

          v11 += 16;
          --v10;
        }

        while (v10);
      }

      (*(v18 + 8))(v6, v19);
    }
  }
}

uint64_t sub_2239D1700()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2239D1738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA8, &unk_223A23930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D17A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2239D1804()
{
  result = qword_281332750;
  if (!qword_281332750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332750);
  }

  return result;
}

unint64_t sub_2239D1858()
{
  result = qword_2813326E8;
  if (!qword_2813326E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813326E8);
  }

  return result;
}

unint64_t sub_2239D18A4()
{
  result = qword_281332740;
  if (!qword_281332740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4A90, &unk_223A233A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332740);
  }

  return result;
}

uint64_t sub_2239D191C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_223A217B0();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2239D1BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2239CDC74(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_2239CDC74(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_223A21910();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_2239D1D78()
{
  v1 = sub_223A20680();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_223A20B90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  sub_223A20C40();
  (*(v6 + 104))(v8, *MEMORY[0x277CEF8E0], v5);
  sub_223A21150();

  (*(v6 + 8))(v8, v5);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_2239CDCEC(v11, &qword_27D0A4928, &qword_223A22B40);
  }

  else
  {
    (*(v2 + 16))(v4, v11, v1);
    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277CEF860])
    {
      (*(v2 + 96))(v4, v1);
      v12 = *v4;
      v13 = v4[1];
      (*(v2 + 8))(v11, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
      result = swift_allocObject();
      *(result + 16) = xmmword_223A23280;
      *(result + 32) = v12;
      *(result + 40) = v13;
      return result;
    }

    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v11, v1);
  }

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session + 24));
  sub_223A20960();
  sub_223A20EB0();
  v16 = sub_223A21250();
  v18 = v17;

  v19 = sub_223A20CC0();
  v28 = MEMORY[0x223DEFFA0](v19);
  v29 = v20;
  MEMORY[0x223DF0390](46, 0xE100000000000000);
  v21 = sub_223A20C20();
  v22 = MEMORY[0x223DEFF80](v21);
  MEMORY[0x223DF0390](v22);

  v24 = v28;
  v23 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_223A22B70;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_223A21700();

  v28 = 0xD000000000000014;
  v29 = 0x8000000223A252A0;
  MEMORY[0x223DF0390](v24, v23);
  v26 = v29;
  *(v25 + 32) = v28;
  *(v25 + 40) = v26;
  v28 = 0x6C7070612E6D6F63;
  v29 = 0xEA00000000002E65;
  MEMORY[0x223DF0390](v16, v18);

  MEMORY[0x223DF0390](46, 0xE100000000000000);
  MEMORY[0x223DF0390](v24, v23);

  result = v25;
  v27 = v29;
  *(v25 + 48) = v28;
  *(v25 + 56) = v27;
  return result;
}

void PowerLogWorker.process(message:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (*(v2 + 16) != 1)
  {

    v9 = sub_223A20FB0();
    v17 = sub_223A214D0();
    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
      *(v18 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v9, v17, "Worker not started, cannot send message to PowerLog. { reporterID=%lld }", v18, 0xCu);
      v16 = v18;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (sub_2239D24C0())
  {
    v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;

    sub_223A11628();

    v5 = *(*(v2 + v4) + 80);
    v6 = (v5 * 10) >> 64;
    v7 = 10 * v5;
    if (v6 != v7 >> 63)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v8 = *(v2 + 64);
    if (v7 < v8)
    {

      v9 = sub_223A20FB0();
      v10 = sub_223A214D0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218496;
        v12 = *(*(v2 + v4) + 80);
        v13 = (v12 * 10) >> 64;
        v14 = 10 * v12;
        if (v13 == v14 >> 63)
        {
          *(v11 + 4) = v14;
          *(v11 + 12) = 2048;
          *(v11 + 14) = v8;
          *(v11 + 22) = 2048;
          v15 = v11;
          __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
          *(v15 + 24) = sub_223A20950();

          _os_log_impl(&dword_2239C7000, v9, v10, "Skipping sending RMS information, session does not have enough messages. (%ld < %ld { reporterID=%lld }", v15, 0x20u);
          v16 = v15;
LABEL_10:
          MEMORY[0x223DF1300](v16, -1, -1);

          return;
        }

        goto LABEL_17;
      }

LABEL_11:

      return;
    }

    sub_2239E2D20(0x72656D6974, 0xE500000000000000);
  }

  else if (sub_223A20C20() == 8)
  {
    sub_2239DBC28(a1);
  }
}

uint64_t sub_2239D24C0()
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C48, &unk_223A23950);
  v0 = MEMORY[0x28223BE20](v91);
  v90 = &v70[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v0);
  v3 = &v70[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v84 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v85 = &v70[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v89 = &v70[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v70[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v70[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v70[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v70[-v21];
  v23 = sub_223A20680();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v70[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v70[-v27];
  v29 = sub_223A20C20();
  v30 = sub_223A20C40();
  if (!*(v30 + 16))
  {
    goto LABEL_8;
  }

  v31 = sub_2239CDC74(1701080942, 0xE400000000000000);
  if ((v32 & 1) == 0)
  {
    goto LABEL_8;
  }

  v33 = *(v30 + 56) + *(v24 + 72) * v31;
  v34 = *(v24 + 16);
  v82 = *(v24 + 72);
  v83 = v34;
  v34(v28, v33, v23);
  v35 = (*(v24 + 88))(v28, v23);
  if (v35 != *MEMORY[0x277CEF860])
  {

    (*(v24 + 8))(v28, v23);
    goto LABEL_9;
  }

  v81 = v35;
  (*(v24 + 96))(v28, v23);
  if (v29 != 7)
  {
    goto LABEL_33;
  }

  v80 = v28[1];
  v73 = *v28;
  v36 = *(v30 + 16);
  v76 = v24 + 16;
  if (v36 && (v37 = sub_2239CDC74(0x6C635F6469617472, 0xEC000000746E6569), (v38 & 1) != 0))
  {
    v83(v22, *(v30 + 56) + v37 * v82, v23);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v42 = *(v24 + 56);
  v42(v22, v39, 1, v23);
  *v20 = 4997448;
  v20[1] = 0xE300000000000000;
  v43 = *(v24 + 104);
  v75 = v24 + 104;
  v74 = v43;
  v43(v20, v81, v23);
  v77 = v42;
  v78 = v24 + 56;
  v42(v20, 0, 1, v23);
  v44 = *(v91 + 48);
  sub_2239D3394(v22, v3);
  sub_2239D3394(v20, &v3[v44]);
  v45 = *(v24 + 48);
  if (v45(v3, 1, v23) == 1)
  {
    v79 = v24 + 48;
    sub_2239CDCEC(v20, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
    if (v45(&v3[v44], 1, v23) == 1)
    {
      v46 = v45;
      sub_2239CDCEC(v3, &qword_27D0A4928, &qword_223A22B40);
      goto LABEL_21;
    }

LABEL_19:
    v47 = v3;
LABEL_32:
    sub_2239CDCEC(v47, &qword_27D0A4C48, &unk_223A23950);
    goto LABEL_33;
  }

  sub_2239D3394(v3, v17);
  v72 = v45;
  if (v45(&v3[v44], 1, v23) == 1)
  {
    sub_2239CDCEC(v20, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
    (*(v24 + 8))(v17, v23);
    goto LABEL_19;
  }

  v79 = v24 + 48;
  v48 = v86;
  (*(v24 + 32))(v86, &v3[v44], v23);
  sub_2239D3404(&qword_2813336F8, MEMORY[0x277CEF868], MEMORY[0x277CEF878]);
  v71 = sub_223A211E0();
  v49 = *(v24 + 8);
  v49(v48, v23);
  sub_2239CDCEC(v20, &qword_27D0A4928, &qword_223A22B40);
  sub_2239CDCEC(v22, &qword_27D0A4928, &qword_223A22B40);
  v49(v17, v23);
  sub_2239CDCEC(v3, &qword_27D0A4928, &qword_223A22B40);
  v46 = v72;
  if ((v71 & 1) == 0)
  {
LABEL_33:

LABEL_8:

    goto LABEL_9;
  }

LABEL_21:
  if (*(v30 + 16))
  {
    v50 = sub_2239CDC74(0x745F74726F706572, 0xEB00000000657079);
    v52 = v89;
    v51 = v90;
    v53 = v87;
    v54 = v88;
    if (v55)
    {
      v83(v88, *(v30 + 56) + v50 * v82, v23);
      v56 = 0;
    }

    else
    {
      v56 = 1;
    }
  }

  else
  {
    v56 = 1;
    v52 = v89;
    v51 = v90;
    v53 = v87;
    v54 = v88;
  }

  v57 = v77;
  v77(v54, v56, 1, v23);
  *v53 = 5459282;
  v53[1] = 0xE300000000000000;
  v74(v53, v81, v23);
  v57(v53, 0, 1, v23);
  v58 = *(v91 + 48);
  sub_2239D3394(v54, v51);
  sub_2239D3394(v53, v51 + v58);
  if (v46(v51, 1, v23) == 1)
  {
    sub_2239CDCEC(v53, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v54, &qword_27D0A4928, &qword_223A22B40);
    if (v46(v51 + v58, 1, v23) == 1)
    {
      sub_2239CDCEC(v51, &qword_27D0A4928, &qword_223A22B40);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sub_2239D3394(v51, v52);
  if (v46(v51 + v58, 1, v23) == 1)
  {
    sub_2239CDCEC(v53, &qword_27D0A4928, &qword_223A22B40);
    sub_2239CDCEC(v54, &qword_27D0A4928, &qword_223A22B40);
    (*(v24 + 8))(v52, v23);
LABEL_31:
    v47 = v51;
    goto LABEL_32;
  }

  v59 = v51 + v58;
  v60 = v86;
  (*(v24 + 32))(v86, v59, v23);
  sub_2239D3404(&qword_2813336F8, MEMORY[0x277CEF868], MEMORY[0x277CEF878]);
  v61 = sub_223A211E0();
  v62 = *(v24 + 8);
  v62(v60, v23);
  sub_2239CDCEC(v53, &qword_27D0A4928, &qword_223A22B40);
  sub_2239CDCEC(v54, &qword_27D0A4928, &qword_223A22B40);
  v62(v52, v23);
  sub_2239CDCEC(v51, &qword_27D0A4928, &qword_223A22B40);
  if ((v61 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (*(v30 + 16) && (v63 = sub_2239CDC74(7564658, 0xE300000000000000), (v64 & 1) != 0))
  {
    v65 = v85;
    v83(v85, *(v30 + 56) + v63 * v82, v23);
    v77(v65, 0, 1, v23);
    sub_2239CDCEC(v65, &qword_27D0A4928, &qword_223A22B40);
    if (*(v30 + 16))
    {
      v66 = sub_2239CDC74(1801545072, 0xE400000000000000);
      if (v67)
      {
        v68 = v84;
        v83(v84, *(v30 + 56) + v66 * v82, v23);

        v77(v68, 0, 1, v23);
        sub_2239CDCEC(v68, &qword_27D0A4928, &qword_223A22B40);
        v94 = v73;
        v95 = v80;
        v92 = 5263169;
        v93 = 0xE300000000000000;
        sub_2239E4C38();
        sub_2239E4BE4();
        LOBYTE(v68) = sub_223A211C0();

        v40 = v68 ^ 1;
        return v40 & 1;
      }
    }

    v69 = v84;
  }

  else
  {

    v69 = v85;
  }

  v77(v69, 1, 1, v23);
  sub_2239CDCEC(v69, &qword_27D0A4928, &qword_223A22B40);
LABEL_9:
  v40 = 0;
  return v40 & 1;
}

void *sub_2239D30EC(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3, __n128 a4)
{
  v6 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v9 = sub_223A21780();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v17 = v6 & 0xC000000000000001;
      v15 = v6;
      while (1)
      {
        if (v17)
        {
          v11 = MEMORY[0x223DF07F0](v10, v6, a4);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v4;
          }
        }

        else
        {
          if (v10 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v11 = *(v6 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_14;
          }
        }

        v18 = v11;
        v4 = a2;
        v13 = a1(&v18);
        if (v5)
        {
          goto LABEL_15;
        }

        if (v13)
        {
          sub_223A21730();
          sub_223A21760();
          v6 = v15;
          sub_223A21770();
          v4 = &v19;
          sub_223A21740();
        }

        else
        {
        }

        ++v10;
        if (v12 == v9)
        {
          v4 = v19;
          goto LABEL_20;
        }
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_20:

  return v4;
}

char *sub_2239D32E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2239D3C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_2239D3300(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2239D1858();
    v4 = sub_223A21100();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2239D3394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D3404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2239D344C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_223A20680();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v46 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v50 = a1;
  v51 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v52 = v17;
  v53 = 0;
  v54 = v20 & v18;
  v55 = a2;
  v56 = a3;
  v48 = v10;
  v49 = (v10 + 32);
  v46[3] = v10 + 40;

  v46[1] = a3;

  for (i = v15; ; v15 = i)
  {
    sub_2239CDD4C(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_2239CE254();
    }

    v23 = *(v22 + 48);
    v25 = *v15;
    v24 = v15[1];
    v26 = *v49;
    v27 = v15 + v23;
    v28 = v12;
    v29 = v9;
    (*v49)(v12, v27, v9);
    v30 = *v57;
    v32 = sub_2239CDC74(v25, v24);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((a4 & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v35, a4 & 1);
      v37 = sub_2239CDC74(v25, v24);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v32 = v37;
    }

    v39 = *v57;
    if (v36)
    {

      v21 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      (*(v48 + 40))(v21, v28, v29);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v25;
      v40[1] = v24;
      v41 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      v26(v41, v28, v29);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v39[2] = v44;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_2239D37D4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  result = SessionSummaryWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t SessionSummaryWorker.init(with:)(__int128 *a1)
{
  v32 = a1;
  v2 = sub_223A20B90();
  v3 = *(v2 - 8);
  v4 = v3;
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 24) = MEMORY[0x277D84F98];
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  v8 = *MEMORY[0x277CEF9D8];
  v9 = sub_223A20BC0();
  v10 = *(*(v9 - 8) + 104);
  v33 = v1;
  v10(v1 + v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D10, &unk_223A23BA0);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v31 = swift_allocObject();
  v13 = v31 + v12;
  v14 = *(v3 + 104);
  v14(v31 + v12, *MEMORY[0x277CEF900], v2);
  v14(v13 + v11, *MEMORY[0x277CEF920], v2);
  v14(v13 + 2 * v11, *MEMORY[0x277CEF908], v2);
  v14(v13 + 3 * v11, *MEMORY[0x277CEF9A0], v2);
  v14(v13 + 4 * v11, *MEMORY[0x277CEF8F0], v2);
  v14(v13 + 5 * v11, *MEMORY[0x277CEF950], v2);
  v14(v13 + 6 * v11, *MEMORY[0x277CEF958], v2);
  v35 = v11;
  v14(v13 + 7 * v11, *MEMORY[0x277CEF9A8], v2);
  v15 = *MEMORY[0x277CEF930];
  v37 = v2;
  v14(v13 + 8 * v11, v15, v2);
  v38 = MEMORY[0x277D84F90];
  v16 = 9;
  sub_2239D32E0(0, 9, 0);
  v17 = v38;
  v34 = *(v4 + 16);
  v36 = v4 + 16;
  v18 = (v4 + 8);
  v30[1] = v13;
  v19 = v13;
  do
  {
    v20 = v37;
    v34(v6, v19, v37);
    v21 = sub_223A20B80();
    v23 = v22;
    (*v18)(v6, v20);
    v38 = v17;
    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2239D32E0((v24 > 1), v25 + 1, 1);
      v17 = v38;
    }

    *(v17 + 16) = v25 + 1;
    v26 = v17 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    v19 += v35;
    --v16;
  }

  while (v16);
  v27 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = v33;
  *(v33 + v27) = v17;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) = 0;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount) = 0;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount) = 0;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount) = 0;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount) = 0;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount) = 0;
  *(v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount) = 0;
  sub_223A20F70();
  sub_2239CB264(v32, v28 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session);
  return v28;
}

char *sub_2239D3C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
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

unint64_t sub_2239D3D7C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  swift_allocObject();
  result = DurationSummaryWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

unint64_t DurationSummaryWorker.init(with:)(void *a1)
{
  v2 = v1;
  v114 = *v1;
  v4 = sub_223A20FC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v105 - v9;
  v10 = sub_223A207D0();
  v127 = *(v10 - 1);
  v11 = MEMORY[0x28223BE20](v10);
  v126 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v115 = &v105 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v122 = &v105 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v123 = &v105 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v128 = &v105 - v20;
  MEMORY[0x28223BE20](v19);
  *&v121 = &v105 - v21;
  *(v1 + 16) = 0;
  *(v1 + 24) = sub_2239D4EE0(MEMORY[0x277D84F90]);
  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  v23 = *MEMORY[0x277CEF9E0];
  v24 = sub_223A20BC0();
  v111 = *(v24 - 8);
  v25 = *(v111 + 104);
  v113 = v22;
  v112 = v24;
  v25(v2 + v22, v23);
  v26 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
  sub_223A20F70();
  v110 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session;
  sub_2239C8DE4(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_223A209A0();
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_config;
  *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_config) = v27;

  v29 = sub_223A20BD0();

  v30 = *(v29 + 16);

  v116 = v26;
  if (!v30)
  {
    (*(v5 + 16))(v8, v2 + v26, v4);
    sub_2239C8DE4(a1, v132);
    sub_2239C8DE4(a1, v130);
    v42 = sub_223A20FB0();
    v43 = sub_223A214D0();
    v10 = a1;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v107 = v28;
      v46 = v45;
      v134 = v45;
      *v44 = 134218243;
      v117 = v2;
      v118 = v10;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v47 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v132);
      *(v44 + 4) = v47;
      *(v44 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v130, v131);
      v10 = v118;
      sub_223A20960();
      v48 = sub_223A20EB0();
      v50 = v49;
      __swift_destroy_boxed_opaque_existential_0(v130);
      v51 = sub_2239E1910(v48, v50, &v134);
      v2 = v117;

      *(v44 + 14) = v51;
      _os_log_impl(&dword_2239C7000, v42, v43, "No summary configs found. { reporterID=%lld, serviceType=%{private}s }", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x223DF1300](v46, -1, -1);
      MEMORY[0x223DF1300](v44, -1, -1);

      v52 = *(v5 + 8);
      v52(v8, v4);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v132);

      v52 = *(v5 + 8);
      v52(v8, v4);
      __swift_destroy_boxed_opaque_existential_0(v130);
    }

    (*(v111 + 8))(v2 + v113, v112);
    __swift_destroy_boxed_opaque_existential_0((v2 + v110));

    v52((v2 + v116), v4);
    swift_deallocPartialClassInstance();
LABEL_47:
    v2 = 0;
    goto LABEL_48;
  }

  v106 = v5;
  v109 = v4;
  v118 = a1;
  v117 = v2;
  v107 = v28;

  v31 = sub_223A20BD0();

  v32 = *(v31 + 16);
  if (v32)
  {
    v2 = 0;
    v33 = v127;
    v125 = (v127 + 16);
    v124 = (v127 + 32);
    v119 = (v127 + 8);
    v34 = MEMORY[0x277D84F90];
    v35 = v123;
    v36 = v121;
    v120 = v32;
    while (v2 < *(v31 + 16))
    {
      v4 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v37 = *(v33 + 72);
      (*(v33 + 16))(v36, v31 + v4 + v37 * v2, v10);
      if (sub_223A20710())
      {
        (*v119)(v36, v10);
      }

      else
      {
        v38 = *v124;
        (*v124)(v128, v36, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132[0] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2239CC01C(0, *(v34 + 16) + 1, 1);
          v34 = v132[0];
        }

        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_2239CC01C((v40 > 1), v41 + 1, 1);
          v34 = v132[0];
        }

        *(v34 + 16) = v41 + 1;
        v38((v34 + v4 + v41 * v37), v128, v10);
        v33 = v127;
        v35 = v123;
        v36 = v121;
        v32 = v120;
      }

      if (v32 == ++v2)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  v34 = MEMORY[0x277D84F90];
  v33 = v127;
  v35 = v123;
LABEL_16:

  MEMORY[0x28223BE20](v53);
  *(&v105 - 2) = v118;
  v54 = sub_2239CBBFC(sub_2239D50CC, (&v105 - 4), v34);
  v55 = *(v54 + 16);
  v31 = MEMORY[0x277D84F90];
  v120 = 0;
  if (v55)
  {
    v4 = 0;
    v125 = (v33 + 16);
    *&v121 = v33 + 8;
    v124 = (v33 + 32);
    v128 = v55;
    while (v4 < *(v54 + 16))
    {
      v56 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v2 = v54;
      v57 = *(v33 + 72);
      (*(v33 + 16))(v35, v54 + v56 + v57 * v4, v10);
      if (sub_223A20790())
      {

        (*v121)(v35, v10);
      }

      else
      {
        v58 = *v124;
        (*v124)(v122, v35, v10);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v132[0] = v31;
        if ((v59 & 1) == 0)
        {
          sub_2239CC01C(0, *(v31 + 16) + 1, 1);
          v31 = v132[0];
        }

        v61 = *(v31 + 16);
        v60 = *(v31 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_2239CC01C((v60 > 1), v61 + 1, 1);
          v31 = v132[0];
        }

        *(v31 + 16) = v61 + 1;
        v58((v31 + v56 + v61 * v57), v122, v10);
        v33 = v127;
        v35 = v123;
        v55 = v128;
      }

      ++v4;
      v54 = v2;
      if (v55 == v4)
      {
        goto LABEL_27;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_27:
  v119 = v54;
  MEMORY[0x28223BE20](v54);
  *(&v105 - 2) = v118;
  v62 = v120;
  v63 = sub_2239CC2E4(sub_2239D5210, (&v105 - 4), v31);
  if (!v62)
  {
    v64 = v63;

    v65 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;
    *(v117 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates) = v64;
    v132[0] = MEMORY[0x277D84F90];
    if (v55)
    {
      v114 = v65;
      v68 = *(v33 + 16);
      v67 = v33 + 16;
      v66 = v68;
      v69 = &v119[(*(v67 + 64) + 32) & ~*(v67 + 64)];
      v122 = *(v67 + 56);
      v125 = (v67 - 8);
      v120 = MEMORY[0x277D84F90];
      v70 = &unk_281335000;
      v121 = xmmword_223A23280;
      v123 = v10;
      v71 = v115;
      v124 = v68;
      v127 = v67;
      do
      {
        v128 = v55;
        v66(v71, v69, v10);
        v74 = v126;
        v66(v126, v71, v10);
        type metadata accessor for DurationSummaryWorker.DynamicSummaryConfig(0);
        v75 = swift_allocObject();
        v76 = v70[313];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BF8, &unk_223A237B0);
        inited = swift_initStackObject();
        *(inited + 16) = v121;
        *(inited + 32) = MEMORY[0x277D84F98];
        v78 = inited + 32;
        sub_2239D53AC(inited);
        v80 = v79;
        swift_setDeallocating();
        sub_2239CDCEC(v78, &qword_27D0A4BB8, &qword_223A23778);
        *(v75 + v76) = v80;
        v81 = sub_223A20790();
        if (v81)
        {
          v82 = v81;
          v83 = v124;
          v124((v75 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_summaryConfig), v74, v10);
          *(v75 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys) = v82;
          v84 = sub_223A207C0();
          v85 = *v125;
          (*v125)(v74, v10);
          v86 = (v85)(v71, v10);
          *(v75 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_requiredDynamicCreationKeyValues) = v84;
          MEMORY[0x223DF0440](v86);
          v66 = v83;
          if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_223A213A0();
          }

          sub_223A213D0();
          v120 = v132[0];
          v73 = v128;
          v70 = &unk_281335000;
        }

        else
        {
          v72 = *v125;
          (*v125)(v74, v10);
          v72(v71, v10);
          v70 = &unk_281335000;

          swift_deallocPartialClassInstance();
          v73 = v128;
          v66 = v124;
        }

        v69 = &v122[v69];
        v55 = v73 - 1;
        v10 = v123;
      }

      while (v55);

      v65 = v114;
      v87 = v120;
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    v31 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs;
    v2 = v117;
    *(v117 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs) = v87;
    swift_beginAccess();
    v88 = *(v2 + v65);
    v10 = v118;
    v4 = v109;
    if (!(v88 >> 62))
    {
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(v10);
        return v2;
      }

      goto LABEL_40;
    }

LABEL_53:
    if (sub_223A21780())
    {
      goto LABEL_48;
    }

LABEL_40:
    v89 = *(v2 + v31);
    if (v89 >> 62)
    {
      v90 = sub_223A21780();
    }

    else
    {
      v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = v108;
    v92 = v106;
    if (v90)
    {
      goto LABEL_48;
    }

    (*(v106 + 16))(v108, v2 + v116, v4);
    sub_2239C8DE4(v10, v132);
    sub_2239C8DE4(v10, v130);
    v93 = sub_223A20FB0();
    v94 = sub_223A214D0();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v129 = v96;
      *v95 = 134218243;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v97 = v91;
      v98 = sub_223A20950();
      __swift_destroy_boxed_opaque_existential_0(v132);
      *(v95 + 4) = v98;
      *(v95 + 12) = 2081;
      __swift_project_boxed_opaque_existential_1(v130, v131);
      sub_223A20960();
      v99 = sub_223A20EB0();
      v101 = v100;
      __swift_destroy_boxed_opaque_existential_0(v130);
      v102 = sub_2239E1910(v99, v101, &v129);

      *(v95 + 14) = v102;
      _os_log_impl(&dword_2239C7000, v93, v94, "No matching summary configs. { reporterID=%lld, serviceType=%{private}s }", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x223DF1300](v96, -1, -1);
      MEMORY[0x223DF1300](v95, -1, -1);

      (*(v92 + 8))(v97, v109);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v132);

      (*(v92 + 8))(v91, v4);
      __swift_destroy_boxed_opaque_existential_0(v130);
    }

    goto LABEL_47;
  }

  v104 = v117;

  (*(v111 + 8))(v104 + v113, v112);
  __swift_destroy_boxed_opaque_existential_0((v104 + v110));

  (*(v106 + 8))(v104 + v116, v109);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_2239D4EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
    v7 = sub_223A217C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2239D8C48(v9, v5, &qword_27D0A4B88, &qword_223A237C0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2239CDC74(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_223A20680();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

BOOL sub_2239D50EC(uint64_t a1, void *a2)
{
  v3 = sub_223A20B00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A206E0();
  v7 = sub_223A20AF0();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 0x10000) != 0)
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_223A20960() == v7;
}

uint64_t sub_2239D5230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_223A207D0();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  sub_2239C8DE4(a2, v12);
  type metadata accessor for DurationSummaryState(0);
  swift_allocObject();
  result = sub_2239CC684(v8, v12, 0);
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for DurationSummaryState(uint64_t a1)
{
  result = qword_281333090;
  if (!qword_281333090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2239D53AC(uint64_t a1)
{
  v70 = sub_223A20680();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
    v11 = sub_223A216D0();
    v12 = 0;
    v59 = a1 + 32;
    v62 = v2 + 16;
    v68 = (v2 + 32);
    v64 = v2;
    v65 = (v2 + 8);
    v63 = v7;
    v66 = v9;
    v56 = v10;
    v58 = v11;
    v57 = v11 + 56;
    while (1)
    {
      v13 = *(v59 + 8 * v12);
      v60 = v12 + 1;
      sub_223A21940();
      v14 = *(v13 + 64);
      v61 = v13 + 64;
      v15 = 1 << *(v13 + 32);
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v17 = v16 & v14;
      v18 = (v15 + 63) >> 6;
      v67 = v13;
      swift_bridgeObjectRetain_n();
      v19 = 0;
      v71 = 0;
      if (!v17)
      {
        break;
      }

      while (1)
      {
        v20 = v19;
LABEL_17:
        v23 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v24 = v23 | (v20 << 6);
        v25 = (*(v67 + 48) + 16 * v24);
        v26 = *v25;
        v27 = v25[1];
        v28 = v64;
        v29 = v69;
        v30 = v70;
        (*(v64 + 16))(v69, *(v67 + 56) + *(v64 + 72) * v24, v70);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v32 = *(v31 + 48);
        v33 = v63;
        *v63 = v26;
        *(v33 + 1) = v27;
        v34 = v29;
        v7 = v33;
        (*(v28 + 32))(&v33[v32], v34, v30);
        (*(*(v31 - 8) + 56))(v7, 0, 1, v31);

        v22 = v20;
LABEL_18:
        v35 = v66;
        sub_2239CE130(v7, v66, &qword_27D0A4BC0, &unk_223A23780);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
        {
          break;
        }

        v37 = v35 + *(v36 + 48);
        v38 = v69;
        v39 = v70;
        (*v68)(v69, v37, v70);
        v74 = v79;
        v75 = v80;
        v76 = v81;
        v72 = v77;
        v73 = v78;
        sub_223A21290();

        sub_2239DD36C(&qword_27D0A4BD0, MEMORY[0x277CEF870]);
        sub_223A211A0();
        (*v65)(v38, v39);
        v40 = sub_223A21970();
        v19 = v22;
        v71 ^= v40;
        if (!v17)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x223DF0A30](v71);
      v42 = sub_223A21970();
      v43 = v58;
      v44 = ~(-1 << *(v58 + 32));
      v45 = v42 & v44;
      v46 = (v42 & v44) >> 6;
      v47 = v57;
      v48 = *(v57 + 8 * v46);
      v49 = 1 << (v42 & v44);
      if ((v49 & v48) != 0)
      {
        v50 = v56;
        while (1)
        {

          v52 = sub_223A07A68(v51, v67);

          if (v52)
          {
            break;
          }

          v45 = (v45 + 1) & v44;
          v46 = v45 >> 6;
          v48 = *(v47 + 8 * (v45 >> 6));
          v49 = 1 << v45;
          if (((1 << v45) & v48) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v50 = v56;
LABEL_28:
        *(v47 + 8 * v46) = v49 | v48;
        *(*(v43 + 48) + 8 * v45) = v67;
        v53 = *(v43 + 16);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          __break(1u);
          return;
        }

        *(v43 + 16) = v55;
      }

      v12 = v60;
      if (v60 == v50)
      {
        return;
      }
    }

LABEL_10:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
        v17 = 0;
        goto LABEL_18;
      }

      v17 = *(v61 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2239D59F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  result = PowerLogWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

uint64_t PowerLogWorker.init(with:)(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 72) = 60;
  *(v1 + 80) = 28;
  *(v1 + 82) = 0;
  sub_223A20F80();
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
  type metadata accessor for PowerLogWorker.RMSState();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0xE000000000000000;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v1 + v3) = v4;
  *(v4 + 80) = 0;
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  v6 = *MEMORY[0x277CEFA00];
  v7 = sub_223A20BC0();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  sub_2239C8DE4(a1, v1 + 24);
  sub_223A20A50();
  sub_223A20A60();
  sub_223A20A40();

  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v11 == 1)
  {
    v8 = 1800;
  }

  else
  {
    v8 = v10;
  }

  *(v1 + 64) = v8;
  return v1;
}

uint64_t sub_2239D5C04@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AdaptiveVolumeWorker(0);
  v4 = swift_allocObject();
  sub_223A20F50();
  *(v4 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted) = 0;
  *(v4 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession) = 0;
  *(v4 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart) = 0;
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v6 = *MEMORY[0x277CEF9C8];
  v7 = sub_223A20BC0();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *(v4 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields) = 0;
  result = sub_2239CB264(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for AdaptiveVolumeWorker(uint64_t a1)
{
  result = qword_281333F80;
  if (!qword_281333F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239D5D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceSummaryState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void SessionSummaryWorker.process(message:)(uint64_t a1)
{
  v1 = sub_223A20CA0();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20680();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v30 - v9);
  v11 = sub_223A20B90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20C40();
  (*(v12 + 104))(v14, *MEMORY[0x277CEF918], v11);
  sub_223A21150();

  (*(v12 + 8))(v14, v11);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_2239C9F88(v10);
LABEL_8:
    v15 = v33;
    goto LABEL_9;
  }

  if ((*(v5 + 88))(v10, v4) != *MEMORY[0x277CEF858])
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v5 + 96))(v10, v4);
  v15 = v33;
  if (*v10 > 0.0)
  {
    *(v33 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) = *v10 + *(v33 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime);
    v16 = *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount);
    v17 = __CFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount) = v18;
  }

LABEL_9:
  v19 = sub_223A20C40();
  if (!*(v19 + 16) || (v20 = sub_2239CDC74(0x79745F6575737369, 0xEA00000000006570), (v21 & 1) == 0))
  {

    goto LABEL_16;
  }

  (*(v5 + 16))(v7, *(v19 + 56) + *(v5 + 72) * v20, v4);

  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277CEF860])
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_16;
  }

  (*(v5 + 96))(v7, v4);
  if (*v7 == 0x64616F6C7265766FLL && v7[1] == 0xE800000000000000)
  {
  }

  else
  {
    v27 = sub_223A218F0();

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v28 = *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount);
  v17 = __CFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_28:
    __break(1u);
    return;
  }

  *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount) = v29;
  sub_223A13E5C();
LABEL_16:
  v22 = *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount);
  v17 = __CFADD__(v22, 1);
  v23 = v22 + 1;
  if (v17)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount) = v23;
  sub_223A20CE0();
  v24 = sub_223A20C70();
  (*(v31 + 8))(v3, v32);
  if (v24)
  {
    return;
  }

  v25 = *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
  v17 = __CFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
    goto LABEL_26;
  }

  *(v15 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount) = v26;
}

uint64_t sub_2239D62FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2239D635C()
{
  result = sub_2239D6410();
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) = 1;
      if (qword_27D0A47D8 != -1)
      {
        result = swift_once();
      }

      if (qword_27D0A4E18)
      {
        result = sub_2239F0F2C();
      }
    }

    v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation;
    if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation) & 1) == 0)
    {
      result = sub_2239F97E0();
      *(v0 + v2) = result & 1;
    }
  }

  return result;
}

uint64_t sub_2239D6410()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v21 - v1);
  v3 = sub_223A20B90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20C40();
  (*(v4 + 104))(v6, *MEMORY[0x277CEF900], v3);
  sub_223A21150();

  (*(v4 + 8))(v6, v3);
  v7 = sub_223A20680();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_2239C9F88(v2);
  }

  else if ((*(v8 + 88))(v2, v7) == *MEMORY[0x277CEF860])
  {
    (*(v8 + 96))(v2, v7);
    v10 = *v2;
    v9 = v2[1];
    if (qword_281332B28 != -1)
    {
LABEL_14:
      swift_once();
    }

    v11 = qword_2813359C0;
    v12 = qword_2813359C0 + 40;
    v13 = -*(qword_2813359C0 + 16);
    v14 = -1;
    while (v13 + v14 != -1)
    {
      if (++v14 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v15 = v12 + 16;
      v18 = v12 - 8;
      v16 = *(v12 - 8);
      v17 = *(v18 + 8);
      v21[2] = v10;
      v21[3] = v9;
      v21[0] = v16;
      v21[1] = v17;
      sub_2239D1804();
      v19 = sub_223A21630();
      v12 = v15;
      if (v19)
      {

        return 1;
      }
    }
  }

  else
  {
    (*(v8 + 8))(v2, v7);
  }

  return 0;
}

void DurationSummaryWorker.process(message:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223A20D20();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20CA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  sub_223A20CE0();
  LOBYTE(a1) = sub_223A20C70();
  (*(v8 + 8))(v10, v7);
  if ((a1 & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs);
    v12 = v2;
    if (v11 >> 62)
    {
      v13 = sub_223A21780();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v49 = v13;
      if (v13 < 1)
      {
        __break(1u);
        return;
      }

      v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session;
      v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;

      v16 = 0;
      v17 = v49;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DF07F0](v16, v11);
        }

        else
        {
        }

        sub_223A081B8(v50, v12 + v14);
        if (v18)
        {
          swift_beginAccess();

          MEMORY[0x223DF0440](v19);
          if (*((*(v12 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_223A213A0();
          }

          sub_223A213D0();
          swift_endAccess();

          v17 = v49;
        }

        else
        {
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;
    v21 = swift_beginAccess();
    v22 = *(v12 + v20);
    MEMORY[0x28223BE20](v21);
    v23 = v50;
    *(&v40 - 2) = v50;

    v25 = sub_2239D30EC(sub_2239D32A8, &v40 - 4, v22, v24);
    MEMORY[0x28223BE20](v25);
    *(&v40 - 2) = v23;
    v26 = sub_2239CE3F4(sub_2239D8BA4, (&v40 - 4), v25);

    v41 = v26;
    v28 = v26[2];
    if (v28)
    {
      v29 = *(v45 + 16);
      v30 = v12;
      v31 = v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v32 = (v30 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session);
      v46 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
      v47 = v30;
      v33 = *(v45 + 72);
      v49 = (v45 + 8);
      v50 = v33;
      *&v27 = 134217984;
      v42 = v27;
      v34 = v44;
      v35 = v48;
      v45 += 16;
      v43 = v29;
      v29(v48, v31, v44);
      while (1)
      {
        __swift_project_boxed_opaque_existential_1(v32, v32[3]);
        if ((sub_223A20980() & 1) == 0)
        {

          v36 = sub_223A20FB0();
          v37 = sub_223A214E0();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = v42;
            __swift_project_boxed_opaque_existential_1(v32, v32[3]);
            v34 = v44;
            *(v38 + 4) = sub_223A20950();

            _os_log_impl(&dword_2239C7000, v36, v37, "Summary message dropped { reporterID=%lld }", v38, 0xCu);
            v39 = v38;
            v29 = v43;
            MEMORY[0x223DF1300](v39, -1, -1);
          }

          else
          {
          }

          v35 = v48;
        }

        (*v49)(v35, v34);
        v31 += v50;
        if (!--v28)
        {
          break;
        }

        v29(v35, v31, v34);
      }
    }
  }
}

uint64_t sub_2239D6C54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D18, "R;");
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2239D17A8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2239DA0A8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2239DA0A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2239DA0A8(v31, v32);
    result = sub_223A21680();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2239DA0A8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void RTCWorker.process(message:)()
{
  v1 = v0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  MEMORY[0x28223BE20](v76);
  v77 = (&v69 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v69 - v4;
  v6 = sub_223A20D20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A20CA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  if (*(v1 + v14) != 1 || (v15 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted), v75 = v11, (v15 & 1) == 0) && (sub_2239E7000(), v11 = v75, *(v1 + v14) != 1) || !*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting))
  {

    v21 = sub_223A20FB0();
    v22 = sub_223A214D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v23 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v21, v22, "Failed to process message, RTC not started. { reporterID=%lld }", v23, 0xCu);
      MEMORY[0x223DF1300](v23, -1, -1);
    }

    else
    {

LABEL_12:
    }

    return;
  }

  v74 = v6;
  sub_223A20CE0();
  v16 = sub_223A20C70();
  v17 = *(v11 + 8);
  v17(v13, v10);
  if (v16)
  {
    return;
  }

  sub_223A20CE0();
  v18 = sub_223A20C80();
  v17(v13, v10);
  if ((v18 & 1) == 0)
  {
    return;
  }

  v19 = sub_223A20C40();
  sub_223A133C8(v19);
  v73 = v20;

  sub_223A20CC0();
  sub_223A20C20();
  sub_223A20CE0();
  (*(v75 + 56))(v5, 0, 1, v10);
  sub_223A20CB0();
  sub_2239D7728(v9);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
  if (sub_223A20940())
  {
    (*(v7 + 8))(v9, v74);
    return;
  }

  v69 = v9;
  v24 = sub_223A20C40();

  v25 = sub_2239D8464(v24, v1);

  v26 = v25 + 8;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25[8];
  v75 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents;
  v30 = (v27 + 63) >> 6;
  v73 = v25;

  v31 = 0;
  v32 = v74;
  v71 = v7;
  v72 = v25 + 8;
  v70 = v30;
  while (v29)
  {
LABEL_24:
    v34 = __clz(__rbit64(v29)) | (v31 << 6);
    v35 = v73[7];
    v36 = (v73[6] + 16 * v34);
    v37 = *v36;
    v38 = v36[1];
    v39 = sub_223A20680();
    v40 = *(v39 - 8);
    v41 = v35 + *(v40 + 72) * v34;
    v42 = v77;
    (*(v40 + 16))(v77 + *(v76 + 48), v41, v39);
    *v42 = v37;
    v42[1] = v38;

    sub_223A20670();
    v43 = sub_223A21240();
    v45 = v44;
    v46 = v75;
    swift_beginAccess();
    v47 = *(v1 + v46);
    v48 = v37;
    if (*(v47 + 16) && (v49 = sub_2239CDC74(v37, v38), (v50 & 1) != 0))
    {
      v51 = *(*(v47 + 56) + 8 * v49);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

    swift_endAccess();
    v52 = sub_2239D7C90(v43, v45, v51, v48, v38);

    v53 = v75;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v1 + v53);
    v55 = v78;
    *(v1 + v53) = 0x8000000000000000;
    v57 = sub_2239CDC74(v48, v38);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_41;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v64 = v78;
        if (v56)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_223A09DD0();
        v64 = v78;
        if (v61)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2239DA0B8(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_2239CDC74(v48, v38);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_43;
      }

      v57 = v62;
      v64 = v78;
      if (v61)
      {
LABEL_17:
        *(v64[7] + 8 * v57) = v52;

        goto LABEL_18;
      }
    }

    v64[(v57 >> 6) + 8] |= 1 << v57;
    v65 = (v64[6] + 16 * v57);
    *v65 = v48;
    v65[1] = v38;
    *(v64[7] + 8 * v57) = v52;
    v66 = v64[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_42;
    }

    v64[2] = v68;
LABEL_18:
    v30 = v70;
    v7 = v71;
    v29 &= v29 - 1;
    v32 = v74;
    *(v1 + v75) = v64;
    swift_endAccess();
    sub_2239CDCEC(v77, &qword_27D0A4B60, &qword_223A23760);
    v26 = v72;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {

      (*(v7 + 8))(v69, v32);
      goto LABEL_12;
    }

    v29 = v26[v33];
    ++v31;
    if (v29)
    {
      v31 = v33;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_223A21910();
  __break(1u);
}

void sub_2239D7728(uint64_t a1)
{
  v2 = v1;
  v48 = *MEMORY[0x277D85DE8];
  v4 = sub_223A20D20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  if (*(v2 + v8) == 1 && (v9 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting)) != 0)
  {
    (*(v5 + 16))(v7, a1, v4);
    v10 = v9;
    v11 = sub_223A20CC0();
    sub_223A20E80();
    v12 = sub_223A20C20();
    if ((sub_223A208C0() & 1) == 0)
    {
      sub_223A20D00();
      v14 = v13;
      v44 = sub_223A12408();
      v45 = v15 & 1;
      v17 = v16;
      if (v18)
      {
        v17 = v14;
      }

      v46 = v17;
      v47 = 0;
      sub_2239C9920(0.0, 500.0);
      sub_223A1283C();
      v19 = v45;
      v20 = v46;
      v21 = v47;
      v22 = v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer;
      *v22 = v44;
      *(v22 + 8) = v19;
      *(v22 + 16) = v20;
      *(v22 + 24) = v21;
      sub_223A20D10();
    }

    v23 = sub_223A20C10();
    sub_2239D6C54(v23);

    v24 = sub_223A21100();

    v44 = 0;
    v25 = [v10 sendMessageWithCategory:v11 type:v12 payload:v24 error:&v44];

    if (v25)
    {
      v26 = *(v5 + 8);
      v27 = v44;
      v26(v7, v4);
    }

    else
    {
      v31 = v44;
      v32 = sub_223A202A0();

      swift_willThrow();

      v33 = v32;
      v34 = sub_223A20FB0();
      v35 = sub_223A214E0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v44 = v42;
        *v36 = 134218243;
        v43 = v10;
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
        HIDWORD(v41) = v35;
        *(v36 + 4) = sub_223A20950();

        *(v36 + 12) = 2081;
        swift_getErrorValue();
        v37 = sub_223A21920();
        v39 = sub_2239E1910(v37, v38, &v44);

        *(v36 + 14) = v39;
        _os_log_impl(&dword_2239C7000, v34, BYTE4(v41), "Error sending message { reporterID=%lld, error=%{private}s }", v36, 0x16u);
        v40 = v42;
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x223DF1300](v40, -1, -1);
        MEMORY[0x223DF1300](v36, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {

    v28 = sub_223A20FB0();
    v29 = sub_223A214E0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v30 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v28, v29, "Failed to send message, RTCReporting object not found. { reporterID=%lld }", v30, 0xCu);
      MEMORY[0x223DF1300](v30, -1, -1);
    }

    else
    {
    }
  }
}

char *sub_2239D7C90(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v13 = sub_223A20D80();
  v14 = sub_2239D884C(a4, a5, v13);

  if ((v14 & 1) == 0)
  {
    v39[0] = a1;
    v39[1] = a2;
    MEMORY[0x28223BE20](v15);
    v37[2] = v39;
    if (sub_2239CF3F4(sub_2239D9880, v37, a3))
    {

      return a3;
    }

    v20 = sub_2239D8250(v19);

    v40 = v20;

    sub_2239D8100(v39, a1, a2);

    v21 = sub_223A20D90();
    LOBYTE(v20) = sub_2239D884C(a4, a5, v21);

    v22 = v40;
    if (v20)
    {
      v6 = *(v40 + 16);
      if (!v6)
      {
        goto LABEL_20;
      }

      v23 = sub_2239D83E0(*(v40 + 16), 0);
      v24 = sub_2239D86F4(v39, v23 + 4, v6, v22);
      v12 = v39[3];

      sub_2239D80FC();
      if (v24 == v6)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v25 = *(v22 + 16);
    if (sub_223A20D50() >= v25)
    {
LABEL_17:
      v29 = *(v22 + 16);
      if (v29)
      {
        v23 = sub_2239D83E0(*(v22 + 16), 0);
        v30 = sub_2239D86F4(v39, v23 + 4, v29, v22);

        sub_2239D80FC();
        if (v30 != v29)
        {
          __break(1u);
          goto LABEL_20;
        }

LABEL_21:
        v39[0] = v23;
        sub_2239D8090(v39);

        return v39[0];
      }

LABEL_20:
      v23 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }

    v26 = *(v22 + 16);
    if (v26)
    {
      v27 = sub_2239D83E0(*(v22 + 16), 0);
      v28 = sub_2239D86F4(v39, v27 + 4, v26, v22);
      v37[5] = v39[2];
      v38 = v28;

      sub_2239D80FC();
      if (v38 != v26)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v39[0] = v27;
    sub_2239D8090(v39);

    a3 = v39[0];

    v31 = &v12[v6];
    v32 = sub_223A20D50();
    if (v32 < 0)
    {
      __break(1u);
    }

    else
    {
      v31 = v32;
      v33 = *(a3 + 2);

      if (v33 >= v31)
      {
        if (*(a3 + 2) == v31)
        {
          return a3;
        }

LABEL_29:
        sub_2239DA624(a3, (a3 + 32), 0, (2 * v31) | 1);
        v36 = v35;

        return v36;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a3 = sub_2239E1804(0, *(a3 + 2) + 1, 1, a3);
  }

  v17 = *(a3 + 2);
  v16 = *(a3 + 3);
  if (v17 >= v16 >> 1)
  {
    a3 = sub_2239E1804((v16 > 1), v17 + 1, 1, a3);
  }

  *(a3 + 2) = v17 + 1;
  v18 = &a3[16 * v17];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  return a3;
}

void sub_2239D8090(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223A075EC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_2239D82E8(v4);
  *a1 = v2;
}

uint64_t sub_2239D8100(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_223A21940();
  sub_223A21290();
  v8 = sub_223A21970();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_223A218F0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2239D96A8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2239D8250(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DF0570](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2239D8100(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2239D82E8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_223A218D0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_223A213C0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_223A069E4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2239D8624(0, v2, 1, a1);
  }
}

void *sub_2239D83E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
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

unint64_t *sub_2239D8464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_223A137DC(v14, v8, a1, a2);
      MEMORY[0x223DF1300](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_2239D9C20((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v12 = v11;

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_2239D8624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_223A218F0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2239D86F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
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
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2239D884C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_223A21940();
  sub_223A21290();
  v6 = sub_223A21970();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_223A218F0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2239D8944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B78, &qword_223A23728);
  result = sub_223A216C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2239D8BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239D8C48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2239D8CB0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_223A20D20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  sub_2239D8C48(v1 + v9, v4, &qword_27D0A4B38, " >");
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v13 = &unk_281335000;
    if (sub_223A208C0())
    {
      sub_223A20D00();
      if (v14 < *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp))
      {
        v15 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messagesOutOfOrder);
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          __break(1u);
          return;
        }

        *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messagesOutOfOrder) = v17;
        v18 = sub_223A20740();
        v19 = MEMORY[0x223DEFFA0](v18);
        v21 = v20;
        v22 = sub_223A20FB0();
        v23 = sub_223A214D0();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v30 = v25;
          *v24 = 136380675;
          v26 = sub_2239E1910(v19, v21, &v30);

          *(v24 + 4) = v26;
          _os_log_impl(&dword_2239C7000, v22, v23, "MESSAGES ARRIVED OUT OF ORDER! message.timestamp < mostRecentTimestamp { category=%{private}s }", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x223DF1300](v25, -1, -1);
          v27 = v24;
          v13 = &unk_281335000;
          MEMORY[0x223DF1300](v27, -1, -1);
        }

        else
        {
        }
      }
    }

    sub_223A20D00();
    v29 = v28;
    (*(v6 + 8))(v8, v5);
    *(v1 + v13[323]) = v29;
    return;
  }

  sub_2239CDCEC(v4, &qword_27D0A4B38, " >");

  v10 = sub_223A20FB0();
  v11 = sub_223A214E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
    *(v12 + 4) = sub_223A20950();

    _os_log_impl(&dword_2239C7000, v10, v11, "updateMostRecentTimestamp() called with currentMessage==nil { reporterID=%lld }", v12, 0xCu);
    MEMORY[0x223DF1300](v12, -1, -1);
  }

  else
  {
  }
}

void sub_2239D9090(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2239D8100(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2239D9194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_223A20680();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
  v42 = v4;
  result = sub_223A217B0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2239D9514()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v2);
  v7 = &v11[-v6];
  if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
    swift_beginAccess();
    sub_2239D8C48(v0 + v8, v7, &qword_27D0A4B38, " >");
    v9 = sub_223A20D20();
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    sub_2239CDCEC(v7, &qword_27D0A4B38, " >");
    if (v10 == 1 || (result = sub_2239DCB60(), (result & 1) != 0))
    {
      sub_223A037BC(v4);
      swift_beginAccess();
      sub_2239D8BD8(v4, v0 + v8);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_2239D96A8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2239D8944(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_223A05DBC();
      goto LABEL_16;
    }

    sub_2239DA3EC(v8 + 1);
  }

  v10 = *v4;
  sub_223A21940();
  sub_223A21290();
  v11 = sub_223A21970();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_223A218F0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_223A21900();
  __break(1u);
}

uint64_t sub_2239D9828(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_223A218F0() & 1;
  }
}

uint64_t sub_2239D98A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_223A20680();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
  result = sub_223A217C0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_223A21940();

    v52 = v27;
    sub_223A21290();
    result = sub_223A21970();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2239D9C20(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v38[0] = a2;
  v39 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  MEMORY[0x28223BE20](v49);
  v6 = v38 - v5;
  v7 = sub_223A20680();
  v8 = MEMORY[0x28223BE20](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v12 = 0;
  v52 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v45 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v46 = v11;
  v19 = (v16 + 63) >> 6;
  v43 = v9 + 16;
  v44 = v19;
  v47 = v9;
  v48 = v8;
  v41 = (v9 + 8);
  v42 = v14;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v53 = (v18 - 1) & v18;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = v52[7];
    v25 = (v52[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v47 + 72);
    v51 = v23;
    v29 = *(v47 + 16);
    v29(v11, v24 + v28 * v23, v7);
    *v6 = v27;
    *(v6 + 1) = v26;
    v29(&v6[*(v49 + 48)], v11, v7);
    swift_bridgeObjectRetain_n();
    v30 = sub_223A20D70();
    if (*(v30 + 16) && (sub_223A21940(), sub_223A21290(), v31 = sub_223A21970(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(v30 + 48) + 16 * v33);
        v36 = *v35 == v27 && v35[1] == v26;
        if (v36 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      sub_2239CDCEC(v6, &qword_27D0A4B60, &qword_223A23760);
      v11 = v46;
      v7 = v48;
      (*v41)(v46, v48);

      v19 = v44;
      v14 = v42;
      v18 = v53;
    }

    else
    {
LABEL_22:

      sub_2239CDCEC(v6, &qword_27D0A4B60, &qword_223A23760);
      v11 = v46;
      v7 = v48;
      (*v41)(v46, v48);

      *(v39 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v37 = __OFADD__(v40++, 1);
      v19 = v44;
      v14 = v42;
      v18 = v53;
      if (v37)
      {
        __break(1u);
LABEL_25:
        sub_2239D98A0(v39, v38[0], v40, v52);
        return;
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2239DA050(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_223A218F0() & 1;
  }
}

_OWORD *sub_2239DA0A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2239DA0B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C30, &qword_223A23928);
  v34 = v4;
  result = sub_223A217B0();
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

      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
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

uint64_t sub_2239DA360@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DA3EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B78, &qword_223A23728);
  result = sub_223A216C0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_223A21940();

      sub_223A21290();
      result = sub_223A21970();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

void sub_2239DA624(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2239DA6FC()
{
  v76 = sub_223A20B90();
  v79 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v78 = v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v77 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v75 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = v62 - v14;
  v80 = sub_223A20680();
  v82 = *(v80 - 8);
  v15 = MEMORY[0x28223BE20](v80);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v62 - v18;
  v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  sub_2239D8C48(v0 + v20, v9, &qword_27D0A4B38, " >");
  v21 = v3;
  v22 = *(v3 + 48);
  v23 = v2;
  v24 = v2;
  v25 = v22;
  if (v22(v9, 1, v24))
  {
    sub_2239CDCEC(v9, &qword_27D0A4B38, " >");
    v26 = v81;
    (*(v82 + 56))(v81, 1, 1, v80);
LABEL_4:
    v39 = v26;
    return sub_2239CDCEC(v39, &qword_27D0A4928, &qword_223A22B40);
  }

  v70 = v25;
  v72 = v13;
  v63 = v17;
  v73 = v0;
  v74 = v19;
  v27 = *(v21 + 16);
  v28 = v77;
  v69 = v21 + 16;
  v68 = v27;
  v27(v77, v9, v23);
  sub_2239CDCEC(v9, &qword_27D0A4B38, " >");
  sub_223A20C40();
  v30 = *(v21 + 8);
  v29 = v21 + 8;
  v71 = v23;
  v67 = v30;
  v30(v28, v23);
  v31 = *MEMORY[0x277CEF960];
  v33 = v78;
  v32 = v79;
  v34 = v76;
  v66 = *(v79 + 104);
  v66(v78, v31, v76);
  v26 = v81;
  sub_223A21150();

  v36 = *(v32 + 8);
  v35 = v32 + 8;
  v65 = v36;
  v36(v33, v34);
  v37 = v82;
  v38 = v80;
  v64 = *(v82 + 48);
  if (v64(v26, 1, v80) == 1)
  {
    goto LABEL_4;
  }

  v62[1] = v29;
  v79 = v35;
  v41 = *(v37 + 32);
  v42 = v74;
  v43 = v38;
  v41(v74, v26);
  v44 = v73 + v20;
  v45 = v75;
  sub_2239D8C48(v44, v75, &qword_27D0A4B38, " >");
  v46 = v71;
  if (v70(v45, 1, v71))
  {
    (*(v37 + 8))(v42, v38);
    sub_2239CDCEC(v45, &qword_27D0A4B38, " >");
    v47 = v72;
    (*(v37 + 56))(v72, 1, 1, v38);
LABEL_10:
    v39 = v47;
    return sub_2239CDCEC(v39, &qword_27D0A4928, &qword_223A22B40);
  }

  v81 = v41;
  v48 = v45;
  v49 = v77;
  v68(v77, v48, v46);
  sub_2239CDCEC(v48, &qword_27D0A4B38, " >");
  sub_223A20C40();
  v67(v49, v46);
  v50 = v78;
  v51 = v76;
  v66(v78, *MEMORY[0x277CEF988], v76);
  v47 = v72;
  sub_223A21150();

  v65(v50, v51);
  if (v64(v47, 1, v43) == 1)
  {
    (*(v82 + 8))(v74, v43);
    goto LABEL_10;
  }

  v52 = v63;
  (v81)(v63, v47, v43);
  v53 = v74;
  sub_223A20670();
  if (swift_dynamicCast())
  {
    v55 = v83;
    v54 = v84;
    sub_223A20670();
    if (swift_dynamicCast())
    {
      v56 = v83;
      v57 = v84;
      v85 = v55;
      v86 = v54;
      MEMORY[0x223DF0390](58, 0xE100000000000000);
      MEMORY[0x223DF0390](v56, v57);

      v58 = v85;
      v59 = v86;
      swift_beginAccess();
      sub_2239D8100(&v83, v58, v59);
      swift_endAccess();
    }

    v60 = *(v82 + 8);
    v60(v52, v43);
    return (v60)(v74, v43);
  }

  else
  {
    v61 = *(v82 + 8);
    v61(v52, v43);
    return (v61)(v53, v43);
  }
}

char *sub_2239DAF30()
{
  v1 = v0;
  v35 = sub_223A20680();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C40, &unk_223A249C0);
  v3 = *v0;
  v4 = sub_223A217A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2239DB1B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DB23C()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((vmaxv_u16(vceq_s16(qword_2837028C0, vdup_n_s16(sub_223A20960()))) & 1) == 0)
  {
    return 0;
  }

  v2 = sub_223A20FB0();
  v3 = sub_223A214D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2239C7000, v2, v3, "Matched service, starting Adaptive Volume worker!", v4, 2u);
    MEMORY[0x223DF1300](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  swift_beginAccess();
  *(v1 + v5) = 1;
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  swift_beginAccess();
  if (*(v1 + v6) == 1)
  {
    v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
    swift_beginAccess();
    if ((*(v1 + v7) & 1) == 0)
    {

      v8 = sub_223A20FB0();
      v9 = sub_223A214D0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
        *(v10 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v8, v9, "Found AV device, starting AV session. { reporterID=%lld }", v10, 0xCu);
        MEMORY[0x223DF1300](v10, -1, -1);
      }

      else
      {
      }

      if (qword_27D0A47C0 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v12 = sub_223A20950();
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v13 = sub_223A209C0();
      sub_2239ECD44(v12, v13, v14);

      *(v1 + v7) = 1;
    }
  }

  return *(v1 + v5);
}

uint64_t AdaptiveVolumeWorker.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

_BYTE *sub_2239DB634@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  result = InferenceSummaryWorker.init(with:)(a1);
  *a2 = result;
  return result;
}

_BYTE *InferenceSummaryWorker.init(with:)(__int128 *a1)
{
  v2 = v1;
  v28[1] = *v1;
  v29 = a1;
  v3 = sub_223A20B90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  v8 = *MEMORY[0x277CEF9E8];
  v9 = sub_223A20BC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 104);
  v28[0] = v7;
  v11(v1 + v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D10, &unk_223A23BA0);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_223A23280;
  (*(v4 + 104))(v13 + v12, *MEMORY[0x277CEF900], v3);
  v30 = MEMORY[0x277D84F90];
  sub_2239D32E0(0, 1, 0);
  v14 = v30;
  (*(v4 + 16))(v6, v13 + v12, v3);

  v15 = sub_223A20B80();
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  v30 = v14;
  v19 = *(v14 + 16);
  v18 = *(v14 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_2239D32E0((v18 > 1), v19 + 1, 1);
    v14 = v30;
  }

  v20 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields;
  *(v14 + 16) = v19 + 1;
  v21 = v14 + 16 * v19;
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;
  *(v1 + v20) = v14;
  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_logger;
  sub_223A20F70();
  v23 = v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState;
  *(v23 + 16) = 0;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = MEMORY[0x277D84F98];
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0;
  *(v23 + 88) = 0xD000000000000026;
  *(v23 + 96) = 0x8000000223A25CB0;
  v24 = type metadata accessor for InferenceSummaryState(0);
  sub_223A20F70();
  *(v23 + *(v24 + 60)) = 0;
  v25 = v23 + *(v24 + 64);
  *v25 = 0;
  *(v25 + 8) = 1;
  if (sub_223A208F0())
  {
    sub_2239CB264(v29, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v29);
    (*(v10 + 8))(v2 + v28[0], v9);

    v26 = sub_223A20FC0();
    (*(*(v26 - 8) + 8))(v2 + v22, v26);
    sub_2239D62FC(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState, type metadata accessor for InferenceSummaryState);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_2239DBA84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DBB10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239DBB9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void sub_2239DBC28(uint64_t a1)
{
  if (*(v1 + 82))
  {

    oslog = sub_223A20FB0();
    v2 = sub_223A214E0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 134217984;
      __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
      *(v3 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, oslog, v2, "Failed to send Haptics message, PLClientID is nil { reporterID=%lld }", v3, 0xCu);
      MEMORY[0x223DF1300](v3, -1, -1);
LABEL_14:

      return;
    }
  }

  else
  {
    if (sub_2239DBFF4())
    {
      v4 = sub_223A211F0();
      v5 = sub_223A21100();

      PLLogRegisteredEvent();
    }

    if (sub_2239DC34C())
    {
      v6 = sub_223A20FB0();
      v7 = sub_223A214D0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2239C7000, v6, v7, "Sending haptics engineStateMessage.", v8, 2u);
        MEMORY[0x223DF1300](v8, -1, -1);
      }

      v9 = sub_223A211F0();
      v10 = sub_223A21100();

      PLLogRegisteredEvent();
    }

    if (sub_2239DC814())
    {
      v11 = sub_223A20FB0();
      v12 = sub_223A214D0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2239C7000, v11, v12, "Sending haptics longRunningMessage.", v13, 2u);
        MEMORY[0x223DF1300](v13, -1, -1);
      }

      v14 = sub_223A211F0();
      oslog = sub_223A21100();

      PLLogRegisteredEvent();

      goto LABEL_14;
    }
  }
}

unint64_t sub_2239DBFF4()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_223A20C40();
  if (*(v6 + 16) && (v7 = sub_2239CDC74(0x6E4F656E69676E45, 0xEC000000656D6954), (v8 & 1) != 0))
  {
    (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * v7, v2);

    v9 = sub_223A20640();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    if ((v11 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_223A224A0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000223A260F0;
      v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v14 = sub_2239DC698();
      *(inited + 48) = v13;
      *(inited + 72) = v14;
      *(inited + 80) = 0x746163696C707041;
      *(inited + 88) = 0xEF656D614E6E6F69;
      __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
      sub_223A20970();
      v15 = sub_223A20E50();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
      *(inited + 96) = v15;
      *(inited + 104) = v17;
      *(inited + 120) = v18;
      strcpy((inited + 128), "TimestampEnd");
      *(inited + 141) = 0;
      *(inited + 142) = -5120;
      sub_223A20D00();
      *(inited + 168) = MEMORY[0x277D839F8];
      *(inited + 144) = v19;
      v20 = sub_2239DC6E4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
      swift_arrayDestroy();
      return v20;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2239DC2C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

unint64_t sub_2239DC34C()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_223A20C40();
  if (!*(v6 + 16) || (v7 = sub_2239CDC74(0x7453656E69676E45, 0xEB00000000657461), (v8 & 1) == 0))
  {

    return 0;
  }

  (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * v7, v2);

  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277CEF860])
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  (*(v3 + 96))(v5, v2);
  if (*v5 == 0x6E4F656E69676E45 && v5[1] == 0xE800000000000000)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_223A218F0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A224A0;
  *(inited + 32) = 0x746163696C707041;
  *(inited + 40) = 0xEF656D614E6E6F69;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_223A20970();
  v13 = sub_223A20E50();
  v15 = v14;

  v16 = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 72) = v16;
  *(inited + 80) = 0x737574617453;
  *(inited + 88) = 0xE600000000000000;
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v18 = sub_2239DC698();
  *(inited + 96) = v17;
  *(inited + 120) = v18;
  strcpy((inited + 128), "TimestampEnd");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_223A20D00();
  *(inited + 168) = MEMORY[0x277D839F8];
  *(inited + 144) = v19;
  v20 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  return v20;
}

unint64_t sub_2239DC698()
{
  result = qword_2813326F8;
  if (!qword_2813326F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813326F8);
  }

  return result;
}

unint64_t sub_2239DC6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
    v3 = sub_223A217C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239D8C48(v4, &v13, &qword_27D0A48F0, &qword_223A22810);
      v5 = v13;
      v6 = v14;
      result = sub_2239CDC74(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2239DA0A8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2239DC814()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v7 = sub_223A20C40();
  if (!*(v7 + 16) || (v8 = sub_2239CDC74(0xD000000000000023, 0x8000000223A260C0), (v9 & 1) == 0))
  {

    return 0;
  }

  v10 = *(v7 + 56);
  v29 = v1[9];
  v30 = v1[2];
  v30(v6, v10 + v29 * v8, v0);

  v11 = sub_223A20640();
  v13 = v12;
  v14 = v1[1];
  v14(v6, v0);
  if (v13)
  {
    return 0;
  }

  v15 = *&v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A23280;
  *(inited + 32) = 0xD000000000000023;
  *(inited + 40) = 0x8000000223A260C0;
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v18 = sub_2239DC698();
  *(inited + 72) = v18;
  *(inited + 48) = v17;
  v19 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  sub_2239CDCEC(inited + 32, &qword_27D0A48F0, &qword_223A22810);
  v20 = sub_223A20C40();
  if (*(v20 + 16) && (v21 = sub_2239CDC74(0x435F657669746341, 0xEE0073746E65696CLL), (v22 & 1) != 0))
  {
    v30(v4, *(v20 + 56) + v21 * v29, v0);

    v23 = sub_223A20640();
    v25 = v24;
    v14(v4, v0);
    if ((v25 & 1) == 0)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v34 = v18;
      *&v33 = v26;
      sub_2239DA0A8(&v33, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v19;
      sub_223A1301C(v32, 0x435F657669746341, 0xEE0073746E65696CLL, isUniquelyReferenced_nonNull_native);
      return v31;
    }
  }

  else
  {
  }

  return v19;
}

uint64_t sub_2239DCB60()
{
  v1 = v0;
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_223A20680();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  result = sub_223A207A0();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v70 = v7;
  v74 = v2;
  v54 = v15;
  v64 = v17;
  v20 = result + 64;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(result + 64);
  v24 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
  v73 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage;
  swift_beginAccess();
  v76 = v1;
  v58 = v24;
  swift_beginAccess();
  v25 = v12;
  v26 = 0;
  v27 = (v21 + 63) >> 6;
  v71 = (v25 + 56);
  v72 = (v3 + 48);
  v63 = (v3 + 16);
  v62 = (v3 + 8);
  v55 = v25 + 16;
  v61 = (v25 + 48);
  v57 = (v25 + 32);
  v56 = v25;
  v59 = (v25 + 8);
  v75 = v11;
  v68 = v20;
  v60 = v19;
  for (i = v10; v23; v20 = v68)
  {
LABEL_9:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = (*(v19 + 48) + ((v26 << 10) | (16 * v29)));
    v31 = *v30;
    v24 = v30[1];
    v32 = v70;
    v11 = " >";
    sub_2239D8C48(v76 + v73, v70, &qword_27D0A4B38, " >");
    v33 = v74;
    if ((*v72)(v32, 1, v74))
    {
      sub_2239CDCEC(v32, &qword_27D0A4B38, " >");
      v34 = i;
      (*v71)(i, 1, 1, v75);
    }

    else
    {
      v65 = v31;
      v35 = v67;
      (*v63)(v67, v32, v33);

      sub_2239CDCEC(v32, &qword_27D0A4B38, " >");
      v36 = sub_223A20C40();
      (*v62)(v35, v33);
      v37 = *(v36 + 16);
      v66 = v24;
      if (v37)
      {
        v38 = sub_2239CDC74(v65, v24);
        v34 = i;
        if (v39)
        {
          (*(v56 + 16))(i, *(v36 + 56) + *(v56 + 72) * v38, v75);
          v40 = 0;
        }

        else
        {
          v40 = 1;
        }
      }

      else
      {
        v40 = 1;
        v34 = i;
      }

      v11 = v75;
      (*v71)(v34, v40, 1, v75);
      if ((*v61)(v34, 1, v11) != 1)
      {
        (*v57)(v64, v34, v11);
        v41 = *(v76 + v58);
        v24 = v66;
        if (*(v41 + 16))
        {

          v42 = sub_2239CDC74(v65, v24);
          if (v43)
          {
            v44 = v54;
            (*(v56 + 16))(v54, *(v41 + 56) + *(v56 + 72) * v42, v11);

            sub_2239DD36C(&qword_2813336F8, MEMORY[0x277CEF878]);
            v45 = v64;
            if ((sub_223A211E0() & 1) == 0)
            {
              goto LABEL_31;
            }

            v24 = v59;
            v46 = *v59;
            (*v59)(v44, v11);
            v46(v45, v11);
            goto LABEL_27;
          }
        }

        (*v59)(v64, v11);
LABEL_27:
        v19 = v60;
        continue;
      }

      v19 = v60;
    }

    sub_2239CDCEC(v34, &qword_27D0A4928, &qword_223A22B40);
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      return 0;
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_31:

  v47 = sub_223A20FB0();
  v48 = sub_223A214D0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v77 = v50;
    *v49 = 136446210;
    v51 = sub_2239E1910(v65, v24, &v77);

    *(v49 + 4) = v51;
    _os_log_impl(&dword_2239C7000, v47, v48, "Watched field changed. { field=%{public}s }", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x223DF1300](v50, -1, -1);
    MEMORY[0x223DF1300](v49, -1, -1);
  }

  else
  {
  }

  v52 = *v59;
  (*v59)(v54, v11);
  v52(v64, v11);
  return 1;
}

uint64_t sub_2239DD36C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_223A20680();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2239DD3B0(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v133 - v7;
  v9 = sub_223A20D20();
  v157 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v133 - v13);
  v15 = sub_223A20B90();
  v154 = *(v15 - 8);
  v155 = v15;
  MEMORY[0x28223BE20](v15);
  v153 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_223A20680();
  v156 = *(v160 - 8);
  v17 = MEMORY[0x28223BE20](v160);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v159 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  v158 = &v133 - v24;
  v25 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp;
  v26 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp);
  if (v26 <= 0.0 || (v27 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp, v28 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp), v28 <= 0.0))
  {

    v36 = sub_223A20FB0();
    v37 = sub_223A214D0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218496;
      *(v38 + 4) = *(v3 + v25);
      *(v38 + 12) = 2048;
      *(v38 + 14) = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp);
      *(v38 + 22) = 2048;
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
      *(v38 + 24) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v36, v37, "invalid times { caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v38, 0x20u);
      MEMORY[0x223DF1300](v38, -1, -1);
    }

    else
    {
    }

    v39 = *(v157 + 56);

    v39(a2, 1, 1, v9);
    return;
  }

  v138 = v23;
  v140 = v14;
  v145 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp;
  v146 = v9;
  v29 = v26 - v28;
  v30 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_logger;

  v144 = v30;
  v31 = sub_223A20FB0();
  v32 = sub_223A214D0();
  v33 = os_log_type_enabled(v31, v32);
  v137 = v8;
  v136 = v11;
  v139 = v19;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 134218752;
    *(v34 + 4) = v29;
    v35 = *(v3 + v145);
    *(v34 + 12) = 2048;
    *(v34 + 14) = v35;
    *(v34 + 22) = 2048;
    *(v34 + 24) = *(v3 + v27);
    *(v34 + 32) = 2048;
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
    *(v34 + 34) = sub_223A20950();

    _os_log_impl(&dword_2239C7000, v31, v32, "runningTime { runningTime=%f caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v34, 0x2Au);
    MEMORY[0x223DF1300](v34, -1, -1);
  }

  else
  {
  }

  v40 = v146;
  if ((a1 & 1) == 0 && (sub_223A20770(), v41 >= v29) || (v42 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues, swift_beginAccess(), v43 = , v44 = sub_2239DE3E0(v43), , (v44 & 1) == 0))
  {

    v81 = sub_223A20FB0();
    v82 = sub_223A214D0();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v145;
    if (v83)
    {
      v85 = v27;
      v86 = swift_slowAlloc();
      *v86 = 134217984;
      *(v86 + 4) = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber);

      _os_log_impl(&dword_2239C7000, v81, v82, "skipped summary message, too short { action=skip, count=%lld }", v86, 0xCu);
      v87 = v86;
      v27 = v85;
      MEMORY[0x223DF1300](v87, -1, -1);
    }

    else
    {
    }

    (*(v157 + 56))(a2, 1, 1, v40);
    v128 = 0;
    if (*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
    {
      v128 = *(v3 + v84);
    }

    *(v3 + v27) = v128;
    return;
  }

  v143 = v27;
  v134 = a2;
  v45 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v46 = *(sub_223A207B0() + 16);

  if (__OFADD__(v46, 5))
  {
    goto LABEL_51;
  }

  v162 = MEMORY[0x223DF0210](v46 + 5, MEMORY[0x277D837D0], v160, MEMORY[0x277D837E0]);
  v47 = sub_223A206F0();
  sub_2239DE62C(v47, &v162);

  v135 = v45;
  v48 = sub_223A207B0();
  v49 = v48;
  v50 = *(v48 + 16);
  if (v50)
  {
    v51 = 0;
    v152 = v156 + 2;
    v142 = (v156 + 4);
    v151 = (v156 + 1);
    v141 = (v156 + 5);
    v52 = (v48 + 40);
    v150 = v3;
    v149 = v48;
    v148 = v50;
    v147 = v42;
    do
    {
      if (v51 >= *(v49 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_223A21910();
        __break(1u);
        return;
      }

      v53 = *(v3 + v42);
      if (*(v53 + 16))
      {
        v54 = *(v52 - 1);
        v55 = *v52;

        v56 = sub_2239CDC74(v54, v55);
        if (v57)
        {
          v58 = v156[9];
          v59 = v156[2];
          v60 = v158;
          v61 = v160;
          v59(v158, *(v53 + 56) + v58 * v56, v160);

          v59(v159, v60, v61);
          v62 = v162;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161 = v62;
          v65 = sub_2239CDC74(v54, v55);
          v66 = *(v62 + 16);
          v67 = (v64 & 1) == 0;
          v68 = v66 + v67;
          if (__OFADD__(v66, v67))
          {
            goto LABEL_49;
          }

          v69 = v64;
          if (*(v62 + 24) >= v68)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v64 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              sub_2239DAF30();
              if ((v69 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            sub_2239D9194(v68, isUniquelyReferenced_nonNull_native);
            v70 = sub_2239CDC74(v54, v55);
            if ((v69 & 1) != (v71 & 1))
            {
              goto LABEL_53;
            }

            v65 = v70;
            if ((v69 & 1) == 0)
            {
LABEL_32:
              v72 = v161;
              v161[(v65 >> 6) + 8] |= 1 << v65;
              v75 = (v72[6] + 16 * v65);
              *v75 = v54;
              v75[1] = v55;
              v76 = v72[7] + v65 * v58;
              v77 = v160;
              (*v142)(v76, v159, v160);
              (*v151)(v158, v77);
              v78 = v72[2];
              v79 = __OFADD__(v78, 1);
              v80 = v78 + 1;
              if (v79)
              {
                goto LABEL_50;
              }

              v72[2] = v80;
              goto LABEL_34;
            }
          }

          v72 = v161;
          v73 = v161[7] + v65 * v58;
          v74 = v160;
          (*v141)(v73, v159, v160);
          (*v151)(v158, v74);
LABEL_34:
          v162 = v72;
          v42 = v147;
          v3 = v150;
          v49 = v149;
          v50 = v148;
          goto LABEL_19;
        }
      }

LABEL_19:
      ++v51;
      v52 += 2;
    }

    while (v50 != v51);
  }

  v88 = *MEMORY[0x277CEF910];
  v89 = v153;
  v90 = v154 + 104;
  v159 = *(v154 + 104);
  (v159)(v153, v88, v155);
  v154 = v90;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
  v91 = sub_223A209C0();
  v92 = v140;
  *v140 = v91;
  *(v92 + 1) = v93;
  v94 = *MEMORY[0x277CEF860];
  v95 = v156;
  v96 = v156 + 13;
  v142 = v156[13];
  v97 = v160;
  v142(v92, v94, v160);
  v98 = v95;
  v100 = v95 + 7;
  v99 = v95[7];
  (v99)(v92, 0, 1, v97);
  v151 = v99;
  v152 = v100;
  sub_223A21160();
  (v159)(v89, *MEMORY[0x277CEF8F8], v155);
  v149 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber;
  *v92 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber);
  v101 = v142;
  v142(v92, *MEMORY[0x277CEF840], v97);
  v148 = v96;
  (v99)(v92, 0, 1, v97);
  sub_223A21160();
  v102 = sub_223A20730();
  v104 = v103;
  v105 = v138;
  *v138 = v29;
  LODWORD(v147) = *MEMORY[0x277CEF858];
  v101(v105);
  v106 = v101;
  v158 = v98[4];
  v156 = v98 + 4;
  v107 = v139;
  (v158)(v139, v105, v97);
  v108 = v162;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v108;
  sub_2239DEAB8(v107, v102, v104, v109);

  v162 = v161;
  v141 = "decoratorRunningMessage";
  v110 = v143;
  *v105 = *(v3 + v143);
  v111 = v147;
  (v106)(v105, v147, v97);
  (v158)(v107, v105, v97);
  v112 = v162;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v112;
  sub_2239DEAB8(v107, 0xD000000000000011, v141 | 0x8000000000000000, v113);
  v162 = v161;
  *v105 = v29 + *(v3 + v110);
  (v106)(v105, v111, v97);
  (v158)(v107, v105, v97);
  v114 = v162;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v114;
  v116 = v107;
  v117 = v149;
  sub_2239DEAB8(v116, 0x7972616D6D75735FLL, 0xEF656D6954646E45, v115);
  v162 = v161;
  (v159)(v153, *MEMORY[0x277CEF928], v155);
  *v92 = v29 + *(v3 + v143);
  (v106)(v92, v111, v97);
  (v151)(v92, 0, 1, v97);
  sub_223A21160();
  v118 = sub_223A20740();
  sub_2239DECE8(&v162, v118);
  v119 = *(v3 + v117);
  v79 = __OFADD__(v119, 1);
  v120 = v119 + 1;
  if (v79)
  {
    goto LABEL_52;
  }

  *(v3 + v117) = v120;

  v121 = sub_223A20FB0();
  v122 = sub_223A214D0();
  v123 = os_log_type_enabled(v121, v122);
  v124 = v134;
  v125 = v146;
  v126 = v137;
  if (v123)
  {
    v127 = swift_slowAlloc();
    *v127 = 134217984;
    *(v127 + 4) = *(v3 + v117);

    _os_log_impl(&dword_2239C7000, v121, v122, "added summary message { action=add, count=%lld }", v127, 0xCu);
    MEMORY[0x223DF1300](v127, -1, -1);
  }

  else
  {
  }

  sub_223A20740();
  sub_223A20700();
  v129 = sub_223A20CA0();
  (*(*(v129 - 8) + 56))(v126, 1, 1, v129);

  v130 = v136;
  sub_223A20CB0();
  v131 = sub_223A20CD0();
  sub_223A20C90();
  v131(&v161, 0);
  (*(v157 + 32))(v124, v130, v125);
  (*(v157 + 56))(v124, 0, 1, v125);

  v132 = 0;
  if (*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1)
  {
    v132 = *(v3 + v145);
  }

  *(v3 + v143) = v132;
}

uint64_t sub_2239DE3E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  result = sub_223A20780();
  v6 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v7 = 0;
    v8 = (result + 40);
    while (v7 < *(v6 + 16))
    {
      if (!*(a1 + 16))
      {
        goto LABEL_9;
      }

      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_2239CDC74(v9, v10);
      if ((v12 & 1) == 0)
      {

LABEL_9:

        v17 = sub_223A20680();
        (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
        sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
        return 0;
      }

      v13 = v11;
      ++v7;
      v14 = *(a1 + 56);
      v15 = sub_223A20680();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v4, v14 + *(v16 + 72) * v13, v15);

      (*(v16 + 56))(v4, 0, 1, v15);
      result = sub_2239CDCEC(v4, &qword_27D0A4928, &qword_223A22B40);
      v8 += 2;
      if (v19 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 1;
  }

  return result;
}

uint64_t sub_2239DE62C(uint64_t a1, void *a2)
{
  v4 = sub_223A20680();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v7 = MEMORY[0x28223BE20](v70);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v52 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v52 - v12);
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v60 = v5 + 16;
  v65 = v5 + 32;
  v62 = v5;
  v63 = a1;
  v53 = (v5 + 40);
  v54 = (v5 + 8);

  v19 = 0;
  v55 = v18;
  v56 = a1 + 64;
  v68 = a2;
  v57 = v11;
  v58 = v4;
  v59 = v13;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17)) | (v19 << 6);
    v23 = v62;
    v24 = *(v63 + 56);
    v25 = (*(v63 + 48) + 16 * v22);
    v27 = *v25;
    v26 = v25[1];
    v66 = *(v62 + 72);
    (*(v62 + 16))(v13 + *(v70 + 48), v24 + v66 * v22, v4);
    *v13 = v27;
    v13[1] = v26;
    sub_2239D8C48(v13, v11, &qword_27D0A4B60, &qword_223A23760);
    v28 = v11[1];
    v67 = *v11;
    v29 = v13;
    v30 = v61;
    sub_2239D8C48(v29, v61, &qword_27D0A4B60, &qword_223A23760);

    v31 = v30 + *(v70 + 48);
    v64 = *(v23 + 32);
    v64(v69, v31, v4);
    v32 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *v32;
    v34 = v71;
    v35 = v67;
    v36 = v28;
    v38 = sub_2239CDC74(v67, v28);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_22;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      v13 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_2239CDC74(v35, v36);
      v13 = v59;
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_24;
      }

      v38 = v43;
    }

    v45 = v58;
    v46 = v71;
    if (v42)
    {
      v4 = v58;
      (*v53)(v71[7] + v38 * v66, v69, v58);
    }

    else
    {
      v71[(v38 >> 6) + 8] |= 1 << v38;
      v47 = (v46[6] + 16 * v38);
      *v47 = v35;
      v47[1] = v36;
      v4 = v45;
      v64((v46[7] + v38 * v66), v69, v45);
      v48 = v46[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_23;
      }

      v46[2] = v50;
    }

    v17 &= v17 - 1;
    v20 = *(v70 + 48);
    *v68 = v46;
    v11 = v57;
    (*v54)(v57 + v20, v4);
    sub_2239CDCEC(v13, &qword_27D0A4B60, &qword_223A23760);
    v18 = v55;
    v14 = v56;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_223A21910();
  __break(1u);
  return result;
}