uint64_t sub_2288EB75C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2288EB82C(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v8 = sub_22892EDD8();
  v9 = sub_22892F398();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_22892F948();
    v15 = sub_2288B748C(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2288B2000, v8, v9, "[%{public}s] returning extension for healthd", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAC47E0](v12, -1, -1);
    v16 = v11;
    a1 = v18;
    MEMORY[0x22AAC47E0](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*((*MEMORY[0x277D85000] & *v2) + 0x80))(a1);
}

uint64_t sub_2288EBA90(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  sub_22892EDC8();
  v12 = sub_22892EDD8();
  v13 = sub_22892F398();
  v14 = os_log_type_enabled(v12, v13);
  v44 = ObjectType;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v43 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v42 = v9;
    v18 = v2;
    v19 = a1;
    v20 = v17;
    v45 = v17;
    *v16 = 136446210;
    v21 = sub_22892F948();
    v23 = sub_2288B748C(v21, v22, &v45);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2288B2000, v12, v13, "[%{public}s] returning extension for profile", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    a1 = v19;
    v2 = v18;
    v9 = v42;
    MEMORY[0x22AAC47E0](v24, -1, -1);
    v25 = v16;
    v5 = v43;
    MEMORY[0x22AAC47E0](v25, -1, -1);
  }

  v26 = *(v6 + 8);
  v26(v11, v5);
  v27 = [a1 profileIdentifier];
  v28 = [v27 type];

  if (v28 == 1 && (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) != 0))
  {
    v30 = v29;
    v31 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
    v32 = a1;
    v33 = v31(v30);

    return v33;
  }

  else
  {
    sub_22892EDC8();
    v35 = sub_22892EDD8();
    v36 = sub_22892F398();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446210;
      v39 = sub_22892F948();
      v41 = sub_2288B748C(v39, v40, &v45);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2288B2000, v35, v36, "[%{public}s] profile extension not supported for non-primary profile", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAC47E0](v38, -1, -1);
      MEMORY[0x22AAC47E0](v37, -1, -1);
    }

    v26(v9, v5);
    return 0;
  }
}

id sub_2288EBEB0(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ProductionProfileExtension());
  v3 = a1;
  v4 = sub_2288FF978(v3);

  return v4;
}

uint64_t static HealthBalanceDaemonPlugin.shouldLoad(for:)(void *a1)
{
  v1 = [a1 behavior];
  v2 = [v1 isRealityDevice];

  return v2 ^ 1;
}

id HealthBalanceDaemonPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthBalanceDaemonPlugin.init()()
{
  v1 = &v0[OBJC_IVAR____TtC19HealthBalanceDaemon25HealthBalanceDaemonPlugin_pluginIdentifier];
  *v1 = sub_22892E3C8();
  v1[1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HealthBalanceDaemonPlugin();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HealthBalanceDaemonPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthBalanceDaemonPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthBalanceDaemonPlugin.taskServerClasses()()
{
  sub_2288EC34C(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228931EA0;
  sub_2288EC484(0, &unk_2813DF438, &unk_2813DF0E0, &unk_2289315A4, type metadata accessor for SleepingSampleDaySummaryQueryServer);
  *(v0 + 32) = v1;
  sub_2288EC3F0(0);
  *(v0 + 40) = v2;
  *(v0 + 48) = type metadata accessor for TrainingLoadSummaryQueryServer();
  return v0;
}

char *sub_2288EC240(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288C02E8();
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

void sub_2288EC34C(uint64_t a1)
{
  if (!qword_2813DE958)
  {
    sub_2288EC3A4();
    v1 = sub_22892F7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DE958);
    }
  }
}

unint64_t sub_2288EC3A4()
{
  result = qword_2813DE8C0;
  if (!qword_2813DE8C0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2813DE8C0);
  }

  return result;
}

void sub_2288EC3F0(uint64_t a1)
{
  if (!qword_2813DF448[0])
  {
    sub_2288BABAC(255);
    v3 = v2;
    v4 = sub_2288EC51C(qword_2813DF1B0, sub_2288BABAC, &unk_22893157C);
    Server = type metadata accessor for SleepingSampleDaySummaryQueryServer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(Server, qword_2813DF448);
    }
  }
}

void sub_2288EC484(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v10 = type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator(255);
    v11 = sub_2288EC51C(a3, type metadata accessor for SleepingSampleAggregateDaySummaryEnumerator, a4);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

uint64_t sub_2288EC51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of HealthBalanceDaemonPlugin.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2288EC70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2288EC754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2288EC7B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2288EC814(v7, v9) & 1;
}

uint64_t sub_2288EC814(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_22892F818();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v9;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v10 = a1;
    v11 = a2;
    v12 = sub_22892F818();
    a2 = v11;
    v13 = v12;
    a1 = v10;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 48) ^ *(a2 + 48)))
  {
    return 0;
  }

  v15 = *(a1 + 49);
  v16 = *(a2 + 49);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v9 = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
LABEL_27:
    if (*(a1 + 56) == *(a2 + 56))
    {
      v17 = *(a2 + 72);
      if (*(a1 + 72))
      {
        if ((*(a2 + 72) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + 64) != *(a2 + 64))
        {
          v17 = 1;
        }

        if (v17)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return v9;
}

uint64_t sub_2288EC974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v7 = v6;
  v33 = a1;
  v40 = *MEMORY[0x277D85DE8];
  sub_2288CD8F0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&v7[OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_dataSource];
  sub_2288ED204(a2, v14);
  v15 = sub_22892DDC8();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v17 = sub_22892DD58();
    (*(v16 + 8))(v14, v15);
  }

  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = a3;
  v18[4] = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2288ED268;
  *(v19 + 24) = v18;
  v38 = sub_2288ED274;
  v39 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_2288ECE24;
  v37 = &block_descriptor_4;
  v20 = _Block_copy(&aBlock);
  v21 = v7;

  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = a5;
  *(v22 + 24) = v23;
  v38 = sub_2288ED2B0;
  v39 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_2288ECE5C;
  v37 = &block_descriptor_11;
  v24 = _Block_copy(&aBlock);

  aBlock = 0;
  v25 = [v32 collectionCalculator:v33 queryForInterval:v17 error:&aBlock sampleHandler:v20 mergeHandler:v24];
  _Block_release(v24);
  _Block_release(v20);

  v26 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v28 = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    goto LABEL_9;
  }

  if ((v25 & 1) == 0)
  {
    sub_22892DE38();

    swift_willThrow();
  }
}

uint64_t sub_2288ECD20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, double, double, double), double a6, double a7, double a8)
{
  if ([*(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_includedDateIntervals) hasOverlapWithStartTime:a7 endTime:a8])
  {
    return a5(a1, a2 & 1, a3, a6, a7, a8) & 1;
  }

  v17 = *(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_unitTest_excludedSampleHandler);
  if (v17)
  {
    v18 = *(a4 + OBJC_IVAR____TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource_unitTest_excludedSampleHandler + 8);

    v17(a1, a2 & 1, a3, a6, a7, a8);
    sub_2288C751C(v17, v18);
  }

  return 1;
}

uint64_t sub_2288ED204(uint64_t a1, uint64_t a2)
{
  sub_2288CD8F0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_2288ED3C8(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [a1 daemon];
  if (!v12 || (v13 = v12, v14 = [v12 behavior], v13, !v14))
  {
    v15 = [objc_opt_self() sharedBehavior];
    if (!v15)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v14 = v15;
  }

  v16 = [v14 features];

  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = [v16 sleepResultsNotificationsOnWatch];

  if (v17)
  {
    type metadata accessor for SleepScoreNotificationWorker(0, a5, *(a6 + 8), v18);
    sub_228926F08(a4);
    swift_unknownObjectRetain();
    sub_22892C4E4(a1, a2, a3);
  }

  else
  {
    (a2)();
  }
}

uint64_t sub_2288ED530(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a1;
  sub_2288ED69C(v13, sub_2288ED1F4, v11, v16);
}

uint64_t sub_2288ED638(uint64_t a1)
{

  return swift_unknownObjectRelease();
}

uint64_t sub_2288ED69C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  type metadata accessor for VitalsOutlierNotificationWorker(0, v8, *(*(v9 + 8) + 8), a4);
  v10 = *(v4 + qword_27D85B948);
  sub_228926F08(v10);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v10;
  swift_unknownObjectRetain_n();
  v12 = a1;

  sub_228926F3C(v12, sub_2288ED7F4, v11);
}

uint64_t sub_2288ED804@<X0>(uint64_t a1@<X8>)
{
  sub_2288C3E44(0);
  sub_2288BA98C(&qword_2813DE8E0, sub_2288C3E44, MEMORY[0x277D84ED0]);
  sub_22892F2E8();
  sub_22892F318();
  if (v7[4] == v7[0])
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_22892F338();
    sub_2288C337C(v4, a1, sub_2288B4B3C);
    v3(v7, 0);
    v2 = 0;
  }

  sub_2288B4B3C(0);
  return (*(*(v5 - 8) + 56))(a1, v2, 1, v5);
}

uint64_t sub_2288ED94C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_2288EECB0(7);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_2288ED9AC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_2288EECB0(28);
    *(v0 + 24) = v1;
  }

  return v1;
}

double sub_2288EDA0C()
{
  if (*(v0 + 40))
  {
    v1 = sub_2288ED94C();
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 > 3)
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        v5 = (v1 + 48);
        v4 = 0.0;
        v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v4 = v4 + *(v5 - 2) + *(v5 - 1) + *v5 + v5[1];
          v5 += 4;
          v6 -= 4;
        }

        while (v6);
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 0;
        v4 = 0.0;
      }

      v7 = v2 - v3;
      v8 = (v1 + 8 * v3 + 32);
      do
      {
        v9 = *v8++;
        v4 = v4 + v9;
        --v7;
      }

      while (v7);
    }

    else
    {
      v4 = 0.0;
    }

LABEL_12:

    *(v0 + 32) = v4;
    *(v0 + 40) = 0;
    return v4;
  }

  return *(v0 + 32);
}

double sub_2288EDACC()
{
  if (*(v0 + 56))
  {
    v1 = sub_2288ED9AC();
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 > 3)
      {
        v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        v5 = (v1 + 48);
        v4 = 0.0;
        v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v4 = v4 + *(v5 - 2) + *(v5 - 1) + *v5 + v5[1];
          v5 += 4;
          v6 -= 4;
        }

        while (v6);
        if (v2 == v3)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 0;
        v4 = 0.0;
      }

      v7 = v2 - v3;
      v8 = (v1 + 8 * v3 + 32);
      do
      {
        v9 = *v8++;
        v4 = v4 + v9;
        --v7;
      }

      while (v7);
    }

    else
    {
      v4 = 0.0;
    }

LABEL_12:

    *(v0 + 48) = v4;
    *(v0 + 56) = 0;
    return v4;
  }

  return *(v0 + 48);
}

uint64_t sub_2288EDB8C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v109 = a3;
  v110 = a2;
  v115 = a1;
  sub_2288BB4E0(0);
  v106 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v105 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v99 - v8;
  sub_2288B4B3C(0);
  v103 = v9;
  MEMORY[0x28223BE20](v9);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892EDE8();
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892EFA8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v111 = &v99 - v18;
  sub_2288BF284(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v99 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v99 - v26;
  v28 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex;
  swift_beginAccess();
  sub_2288C337C(v4 + v28, v27, sub_2288BF284);
  v112 = v15;
  v29 = *(v15 + 48);
  v30 = v29(v27, 1, v14);
  v31 = v27;
  v32 = v14;
  sub_2288C3680(v31, sub_2288BF284);
  if (v30 == 1)
  {
    v33 = v112;
    (*(v112 + 16))(v25, v110, v32);
    (*(v33 + 56))(v25, 0, 1, v32);
    swift_beginAccess();
    sub_2288EEC4C(v25, v4 + v28);
    swift_endAccess();
  }

  sub_2288C337C(v4 + v28, v22, sub_2288BF284);
  if (v29(v22, 1, v32) == 1)
  {
    return sub_2288C3680(v22, sub_2288BF284);
  }

  v35 = *(v112 + 32);
  v101 = v112 + 32;
  v100 = v35;
  v35(v111, v22, v32);
  v36 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit;
  v37 = *(v4 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit);
  if (v37)
  {
    v38 = v37;
    v39 = v115;
    v40 = [v115 _unit];
    sub_2288BC0FC(0, &unk_2813DEB70, 0x277CCDAB0);
    v41 = sub_22892F468();

    if ((v41 & 1) == 0)
    {
      sub_22892EDC8();
      v60 = v38;
      v61 = v39;
      v62 = sub_22892EDD8();
      v63 = sub_22892F378();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = v32;
        v66 = swift_slowAlloc();
        *v64 = 138412546;
        v67 = [v61 _unit];
        *(v64 + 4) = v67;
        *(v64 + 12) = 2112;
        *(v64 + 14) = v60;
        *v66 = v67;
        v66[1] = v37;
        v68 = v60;
        _os_log_impl(&dword_2288B2000, v62, v63, "Received invalid different unit %@ when previously had %@", v64, 0x16u);
        sub_2288D6D64(0);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v66, -1, -1);
        MEMORY[0x22AAC47E0](v64, -1, -1);

        (*(v113 + 8))(v13, v114);
        return (*(v112 + 8))(v111, v65);
      }

      else
      {

        (*(v113 + 8))(v13, v114);
        return (*(v112 + 8))(v111, v32);
      }
    }

    v102 = v32;
  }

  else
  {
    v102 = v32;
    v42 = [v115 _unit];
    v38 = *(v4 + v36);
    *(v4 + v36) = v42;
  }

  v43 = sub_22892EF88();
  result = sub_2288ED94C();
  v44 = result;
  v45 = *(result + 16);
  v114 = v43;
  if (!v45)
  {

    v55 = v115;
    if (v109)
    {
      return (*(v112 + 8))(v111, v102);
    }

LABEL_31:
    result = sub_2288ED9AC();
    v69 = result;
    v70 = *(result + 16);
    if (v70)
    {
      v71 = 0;
      v113 = result + 32;
      v72 = v43 ^ 0x7FFFFFFFFFFFFFFFLL;
      v73 = v43;
      while (v71 < *(v69 + 16))
      {
        if (v71 == v72)
        {
          goto LABEL_59;
        }

        v74 = *(v113 + 8 * v71);
        v75 = *(v4 + 72);
        v76 = *(v75 + 2);
        if (v76 < (v73 + 1))
        {
          do
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v4 + 72) = v75;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v75 = sub_2288D6184(0, v76 + 1, 1, v75);
              *(v4 + 72) = v75;
            }

            v79 = *(v75 + 2);
            v78 = *(v75 + 3);
            if (v79 >= v78 >> 1)
            {
              v75 = sub_2288D6184((v78 > 1), v79 + 1, 1, v75);
            }

            *(v75 + 2) = v79 + 1;
            *&v75[8 * v79 + 32] = 0;
            *(v4 + 72) = v75;
            v76 = *(v75 + 2);
          }

          while (v76 < v73 + 1);
        }

        v55 = v115;
        [v115 _value];
        v81 = v80;
        v82 = sub_2288EDACC();
        v83 = *(v4 + 72);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 72) = v83;
        if (result)
        {
          if (v114 < 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          result = sub_2288FC71C(v83);
          v83 = result;
          if (v114 < 0)
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        if (v73 >= *(v83 + 16))
        {
          goto LABEL_60;
        }

        ++v71;
        *(v83 + 8 * v73 + 32) = v74 * v81 / v82 + *(v83 + 8 * v73 + 32);
        *(v4 + 72) = v83;
        ++v73;
        if (v71 == v70)
        {
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    else
    {
LABEL_48:

      [v55 _value];
      v84 = v102;
      v85 = v107;
      v86 = v108;
      v87 = v110;
      if (v88 <= 0.0)
      {
        return (*(v112 + 8))(v111, v102);
      }

      sub_22892EF78();
      sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
      result = sub_22892F048();
      if (result)
      {
        v89 = v112;
        v90 = *(v112 + 16);
        v91 = v104;
        v90(v104, v87, v84);
        v92 = v106;
        v90((v91 + *(v106 + 48)), v86, v84);
        v93 = v105;
        sub_2288C337C(v91, v105, sub_2288BB4E0);
        v115 = *(v92 + 48);
        v94 = v85;
        v95 = v85;
        v96 = v100;
        v100(v94, v93, v84);
        v97 = *(v89 + 8);
        v97(v115 + v93, v84);
        sub_2288C344C(v91, v93, sub_2288BB4E0);
        v96(v95 + *(v103 + 36), v93 + *(v92 + 48), v84);
        v97(v93, v84);
        swift_beginAccess();
        sub_2288BA98C(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
        if ((sub_22892F088() & 1) == 0)
        {
          sub_2288C4040(0);
          v98 = sub_22892F918();
          sub_2288C3E44(0);
          sub_22892F8F8();
          v98(v116, 0);
        }

        swift_endAccess();
        sub_2288C3680(v95, sub_2288B4B3C);
        v97(v108, v84);
        return (v97)(v111, v84);
      }
    }

    __break(1u);
    return result;
  }

  v46 = 0;
  v113 = result + 32;
  v47 = v43 ^ 0x7FFFFFFFFFFFFFFFLL;
  v48 = v43;
  while (1)
  {
    if (v46 >= *(v44 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v46 == v47)
    {
      goto LABEL_56;
    }

    v49 = *(v113 + 8 * v46);
    v50 = *(v4 + 64);
    v51 = *(v50 + 2);
    if (v51 < (v48 + 1))
    {
      do
      {
        v52 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 64) = v50;
        if ((v52 & 1) == 0)
        {
          v50 = sub_2288D6184(0, v51 + 1, 1, v50);
          *(v4 + 64) = v50;
        }

        v54 = *(v50 + 2);
        v53 = *(v50 + 3);
        if (v54 >= v53 >> 1)
        {
          v50 = sub_2288D6184((v53 > 1), v54 + 1, 1, v50);
        }

        *(v50 + 2) = v54 + 1;
        *&v50[8 * v54 + 32] = 0;
        *(v4 + 64) = v50;
        v51 = *(v50 + 2);
      }

      while (v51 < v48 + 1);
    }

    v55 = v115;
    [v115 _value];
    v57 = v56;
    v58 = sub_2288EDA0C();
    v59 = *(v4 + 64);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 64) = v59;
    if (result)
    {
      v43 = v114;
      if (v114 < 0)
      {
        break;
      }

      goto LABEL_21;
    }

    result = sub_2288FC71C(v59);
    v59 = result;
    v43 = v114;
    if (v114 < 0)
    {
      break;
    }

LABEL_21:
    if (v48 >= *(v59 + 16))
    {
      goto LABEL_57;
    }

    ++v46;
    *(v59 + 8 * v48 + 32) = v49 * v57 / v58 + *(v59 + 8 * v48 + 32);
    *(v4 + 64) = v59;
    ++v48;
    if (v46 == v45)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:

  if ((v109 & 1) == 0)
  {
    goto LABEL_31;
  }

  return (*(v112 + 8))(v111, v102);
}

uint64_t sub_2288EE824(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 56) = 1;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 48) = 0;
  *(v2 + 64) = v5;
  *(v2 + 72) = v5;
  *(v2 + 80) = v5;
  v6 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex;
  v7 = sub_22892EFA8();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  sub_2288BA98C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  sub_22892F928();
  *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_quantityUnit) = 0;
  v8 = v2 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_activityType;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  return v2;
}

char *sub_2288EE940()
{

  sub_2288C3680(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_firstDayIndex, sub_2288BF284);
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon28RecentBiasBaselineCalculator_validDataDayRanges;
  sub_2288C4040(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2288EE9FC()
{
  sub_2288EE940();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecentBiasBaselineCalculator(uint64_t a1)
{
  result = qword_2813DF860;
  if (!qword_2813DF860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2288EEAA8(uint64_t a1)
{
  sub_2288BF284(319);
  if (v1 <= 0x3F)
  {
    sub_2288C4040(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2288EEBA8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  result = sub_2288EE824(a1, a2 & 1);
  *a3 = v6;
  return result;
}

uint64_t sub_2288EEC4C(uint64_t a1, uint64_t a2)
{
  sub_2288BF284(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288EECB0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = 1.0 / result * 1.57079633;
    v3 = sub_2288D6184(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v3 + 2);
    v5 = 0.0;
    do
    {
      v6 = cos(v5);
      v7 = *(v3 + 3);
      if (v4 >= v7 >> 1)
      {
        v8 = v6;
        v9 = sub_2288D6184((v7 > 1), v4 + 1, 1, v3);
        v6 = v8;
        v3 = v9;
      }

      *(v3 + 2) = v4 + 1;
      *&v3[8 * v4 + 32] = v6;
      v5 = v2 + v5;
      ++v4;
      --v1;
    }

    while (v1);
    return v3;
  }

  return result;
}

uint64_t sub_2288EED9C(void *a1, void *a2)
{
  v64 = sub_22892E048();
  v4 = *(v64 - 8);
  v5 = MEMORY[0x28223BE20](v64);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = sub_22892EFA8();
  v63 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  sub_2288EF930();
  v14 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCCB90]);
  [a2 morningIndex];
  sub_22892EED8();
  v15 = [a2 calendar];
  v62 = v8;
  sub_22892E018();

  v16 = sub_2288DADC0(a2, v14, a1);
  v60 = v14;
  v57 = v9;
  v58 = v13;
  v56 = v16;
  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = v16;
  v18 = _HKStatisticsOptionPercentile();
  v19 = [objc_opt_self() calculatorForQuantityType:v14 intervalCollection:0 options:v18 | 0x20 mergeStrategy:0 computationMethod:7];
  if (!v19)
  {

LABEL_5:
    v41 = *(v63 + 16);
    v29 = v59;
    v41(v59, v13, v9);
    v31 = v4;
    v42 = *(v4 + 16);
    v33 = v61;
    v43 = v64;
    v42(v61, v62, v64);
    type metadata accessor for SleepingSampleAggregator(0);
    v35 = swift_allocObject();
    v41((v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v29, v9);
    v39 = v60;
    v44 = v43;
    v40 = v56;
    v42((v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v33, v44);
    v45 = v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v45 = 0x3FB999999999999ALL;
    *(v45 + 16) = 16;
    *(v45 + 8) = 0;
    *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = 0;
    *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = 0;
    *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = 0;
    [0 setSourceOrderProvider_];
    [0 setDataSource_];
    goto LABEL_6;
  }

  v20 = v19;
  v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v22 = v20;
  v23 = [v21 initWithDouble_];
  v24 = [objc_allocWithZone(MEMORY[0x277D108C0]) initWithPercentile_];
  v55 = v20;
  v25 = a1;
  v26 = v4;
  v27 = v24;

  v54 = v22;
  [v22 setStatisticsConfiguration_];

  v52 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:v25 quantityType:v14];
  v53 = v17;
  v28 = *(v63 + 16);
  v29 = v59;
  v28(v59, v13, v9);
  v30 = v9;
  v31 = v26;
  v32 = *(v26 + 16);
  v33 = v61;
  v34 = v64;
  v32(v61, v62, v64);
  type metadata accessor for SleepingSampleAggregator(0);
  v35 = swift_allocObject();
  v28((v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v29, v30);
  v32((v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v33, v34);
  v36 = v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
  *v36 = 0x3FB999999999999ALL;
  *(v36 + 8) = 0;
  *(v36 + 16) = 16;
  v37 = v56;
  *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = v55;
  *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = v37;
  v38 = v52;
  *(v35 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = v52;
  v39 = v53;
  v40 = v54;
  [v40 setSourceOrderProvider_];
  [v40 setDataSource_];

LABEL_6:
  v46 = *(v31 + 8);
  v47 = v64;
  v46(v33, v64);
  v48 = *(v63 + 8);
  v49 = v57;
  v48(v29, v57);
  v46(v62, v47);
  v48(v58, v49);
  return v35;
}

uint64_t sub_2288EF3C8(void *a1, void *a2, id *a3, uint64_t a4)
{
  v53 = a4;
  v55 = sub_22892E048();
  v7 = *(v55 - 8);
  v8 = MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = sub_22892EFA8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  sub_2288EF930();
  v18 = MEMORY[0x22AAC3A10](*a3);
  v19 = v17;
  v20 = v18;
  [a2 morningIndex];
  sub_22892EED8();
  v21 = [a2 calendar];
  v22 = v11;
  sub_22892E018();

  v23 = sub_2288C96D0(a2, v20, a1, 0);
  v51 = v19;
  v52 = v23;
  v49 = v20;
  v50 = v11;
  if (v23 && (v24 = [objc_opt_self() calculatorForQuantityType:v20 intervalCollection:0 options:34 mergeStrategy:0 computationMethod:1]) != 0)
  {
    v48 = v24;
    v47 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:a1 quantityType:v20];
    v25 = v12;
    v26 = v13;
    v27 = *(v13 + 16);
    v28 = v56;
    v27(v56, v19, v12);
    v29 = *(v7 + 16);
    v30 = v54;
    v29(v54, v22, v55);
    type metadata accessor for SleepingSampleAggregator(0);
    v31 = swift_allocObject();
    v27((v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v28, v12);
    v32 = v55;
    v29((v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v30, v55);
    v33 = v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v33 = 0;
    *(v33 + 8) = 1;
    v34 = v52;
    *(v33 + 16) = v53;
    v36 = v47;
    v35 = v48;
    *(v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = v48;
    *(v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = v34;
    *(v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = v36;
    v37 = v35;
    swift_unknownObjectRetain();
    [v37 setSourceOrderProvider_];
    [v37 setDataSource_];

    v38 = v32;
  }

  else
  {
    v26 = v13;
    v39 = *(v13 + 16);
    v40 = v56;
    v39(v56, v19, v12);
    v48 = v12;
    v41 = *(v7 + 16);
    v30 = v54;
    v38 = v55;
    v41(v54, v11, v55);
    type metadata accessor for SleepingSampleAggregator(0);
    v31 = swift_allocObject();
    v42 = v40;
    v25 = v48;
    v39((v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex), v42, v48);
    v41((v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar), v30, v38);
    v43 = v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v43 = 0;
    *(v43 + 8) = 1;
    *(v43 + 16) = v53;
    *(v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = 0;
    *(v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = 0;
    *(v31 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = 0;
    [0 setSourceOrderProvider_];
    [0 setDataSource_];
  }

  swift_unknownObjectRelease();
  v44 = *(v7 + 8);
  v44(v30, v38);
  v45 = *(v26 + 8);
  v45(v56, v25);
  v44(v50, v38);
  v45(v51, v25);
  return v31;
}

unint64_t sub_2288EF930()
{
  result = qword_2813DEC40;
  if (!qword_2813DEC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEC40);
  }

  return result;
}

void sub_2288EFA7C(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, void (**a4)(char *, char *, uint64_t)@<X3>, void (**a5)(char *, uint64_t)@<X4>, SEL *a6@<X5>, id *a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  v122 = a8;
  v143 = a7;
  v134 = a5;
  v141 = a4;
  v109 = a3;
  v117 = a2;
  v112 = a1;
  v16 = MEMORY[0x277D83D88];
  sub_2288F13D8(0, &unk_2813DEDC0, sub_2288D6B24, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v128 = &v102 - v18;
  sub_2288D6B24(0);
  v140 = v19;
  v111 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v110 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v103 = &v102 - v22;
  v115 = sub_22892EA78();
  v137 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v121 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288F13D8(0, &unk_2813DFE18, MEMORY[0x277D100B8], v16);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v142 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v102 - v27;
  sub_2288F13D8(0, &qword_2813DFE80, MEMORY[0x277D0FF90], v16);
  MEMORY[0x28223BE20](v29 - 8);
  v138 = &v102 - v30;
  v136 = sub_22892EFA8();
  v133 = *(v136 - 8);
  v31 = MEMORY[0x28223BE20](v136);
  v127 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v135 = &v102 - v34;
  MEMORY[0x28223BE20](v33);
  v139 = &v102 - v35;
  v36 = sub_22892E5A8();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v144 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v120 = &v102 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v102 - v42;
  v44 = objc_opt_self();
  v45 = [v44 *a6];
  v46 = objc_opt_self();
  v132 = [v46 quantityWithUnit:v45 doubleValue:a10];

  v47 = [v44 *a6];
  v48 = [v46 quantityWithUnit:v47 doubleValue:a11];

  sub_2288EF930();
  v49 = MEMORY[0x22AAC3A10](*v143);
  v50 = [v49 canonicalUnit];

  if (!v50)
  {
    goto LABEL_27;
  }

  v51 = swift_unknownObjectRetain();
  v122(v51);
  v53 = *(v37 + 16);
  v52 = v37 + 16;
  v53(a9, v43, v36);
  sub_2288F1298(0);
  v55 = v132;
  *(a9 + v54[9]) = v132;
  *(a9 + v54[10]) = v48;
  *(a9 + v54[11]) = a12;
  *(a9 + v54[12]) = 0;
  v106 = v54;
  v56 = v54[13];
  v108 = a9;
  *(a9 + v56) = v50;
  v105 = v55;
  v104 = v48;
  v114 = v50;
  v107 = v43;
  sub_22892E558();
  v123 = 0;
  v57 = (v141 >> 1);
  v58 = v137;
  v116 = v137 + 16;
  v131 = (v137 + 48);
  v132 = (v137 + 56);
  v119 = (v137 + 32);
  v141 = v52 + 16;
  v118 = (v137 + 8);
  v129 = (v52 + 32);
  v130 = (v52 + 40);
  ++v133;
  v125 = (v111 + 56);
  v134 = (v52 - 8);
  v124 = (v111 + 48);
  v113 = MEMORY[0x277D84F90];
  v59 = v109;
  v60 = v109;
  v61 = v115;
  v62 = v138;
  v126 = v57;
  while (1)
  {
    if (v60 == v57)
    {
      v63 = 1;
      v143 = v57;
      goto LABEL_8;
    }

    if (v60 < v59 || v60 >= v57)
    {
      break;
    }

    (*(v58 + 16))(v28, v117 + *(v58 + 72) * v60, v61);
    v63 = 0;
    v143 = (v60 + 1);
LABEL_8:
    v64 = 1;
    (*v132)(v28, v63, 1, v61);
    v65 = v142;
    sub_2288F14C4(v28, v142);
    if ((*v131)(v65, 1, v61) != 1)
    {
      v66 = v121;
      v67 = (*v119)(v121, v142, v61);
      v68 = v120;
      v122(v67);
      (*v141)(v62, v68, v36);
      (*v118)(v66, v61);
      v64 = 0;
    }

    (*v130)(v62, v64, 1, v36);
    if ((*v129)(v62, 1, v36) == 1)
    {
      swift_unknownObjectRelease();
      v95 = *v133;
      v96 = v136;
      (*v133)(v139, v136);
      v97 = v135;
      v98 = v107;
      sub_22892E558();
      v99 = v106;
      v100 = v108;
      v101 = sub_2288F1850((v108 + v106[15]), v97, v113);

      v95(v97, v96);
      (*v134)(v98, v36);
      *(v100 + v99[14]) = v101;
      return;
    }

    v69 = v28;
    v70 = v59;
    v71 = v62;
    v72 = v36;
    (*v141)(v144, v71, v36);
    v73 = v135;
    sub_22892E558();
    sub_22892EAB8();
    v74 = v127;
    sub_22892EF28();
    sub_2288BA9D4(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v75 = v136;
    v76 = sub_22892F038();
    v77 = *v133;
    (*v133)(v74, v75);
    v77(v73, v75);
    if ((v76 & 1) != 0 && v123 < sub_22892EAC8())
    {
      v78 = v144;
      v79 = sub_22892E598();
      if (v79)
      {
        v80 = v79;
        [v79 doubleValueForUnit_];
        v82 = v81;

        ++v123;
        v83 = *(v140 + 48);
        v84 = v128;
        sub_22892E558();
        v85 = v84;
        v61 = v115;
        v86 = 0;
        *&v84[v83] = v82;
      }

      else
      {
        v86 = 1;
        v85 = v128;
      }
    }

    else
    {
      v86 = 1;
      v85 = v128;
      v78 = v144;
    }

    v87 = v140;
    (*v125)(v85, v86, 1, v140);
    v36 = v72;
    (*v134)(v78, v72);
    v88 = (*v124)(v85, 1, v87) == 1;
    v59 = v70;
    v28 = v69;
    if (v88)
    {
      sub_2288F1558(v85);
      v58 = v137;
      v62 = v138;
      v57 = v126;
      v60 = v143;
    }

    else
    {
      v89 = v103;
      sub_2288F15E4(v85, v103);
      sub_2288F15E4(v89, v110);
      v90 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v137;
      v62 = v138;
      v57 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = sub_2288D628C(0, v90[2] + 1, 1, v90);
      }

      v93 = v90[2];
      v92 = v90[3];
      v61 = v115;
      if (v93 >= v92 >> 1)
      {
        v90 = sub_2288D628C((v92 > 1), v93 + 1, 1, v90);
      }

      v90[2] = v93 + 1;
      v94 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v113 = v90;
      sub_2288F15E4(v110, v90 + v94 + *(v111 + 72) * v93);
      v60 = v143;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_2288F06C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, char *, uint64_t)@<X3>, uint64_t (**a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v122 = a5;
  v126 = a4;
  v110 = a3;
  v105 = a2;
  v100 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_2288F13D8(0, &unk_2813DEDC0, sub_2288D6B24, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v112 = &v90 - v9;
  sub_2288D6B24(0);
  v125 = v10;
  v99 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v90 - v13;
  v130 = sub_22892EA78();
  v14 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v109 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288F13D8(0, &unk_2813DFE18, MEMORY[0x277D100B8], v7);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v128 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = &v90 - v19;
  v20 = v7;
  v21 = v14;
  sub_2288F13D8(0, &qword_2813DFE80, MEMORY[0x277D0FF90], v20);
  MEMORY[0x28223BE20](v22 - 8);
  v97 = &v90 - v23;
  v120 = sub_22892EFA8();
  v121 = *(v120 - 8);
  v24 = MEMORY[0x28223BE20](v120 - 8);
  v115 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v90 - v27;
  MEMORY[0x28223BE20](v26);
  v124 = &v90 - v28;
  v29 = sub_22892E5A8();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v129 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v108 = &v90 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v90 - v35;
  v37 = objc_opt_self();
  v38 = [v37 hourUnit];
  v39 = objc_opt_self();
  v119 = [v39 quantityWithUnit:v38 doubleValue:1.0];

  v40 = [v37 hourUnit];
  v41 = v29;
  v42 = [v39 quantityWithUnit:v40 doubleValue:3.8];

  v43 = [v37 secondUnit];
  swift_unknownObjectRetain();
  sub_22892EA38();
  v44 = *(v30 + 16);
  v30 += 16;
  v44(a6, v36, v41);
  sub_2288F1298(0);
  v46 = v119;
  *(a6 + v45[9]) = v119;
  *(a6 + v45[10]) = v42;
  *(a6 + v45[11]) = 0;
  *(a6 + v45[12]) = 0;
  v94 = v45;
  v47 = v45[13];
  v96 = a6;
  *(a6 + v47) = v43;
  v93 = v46;
  v92 = v42;
  v102 = v43;
  v95 = v36;
  result = sub_22892E558();
  v111 = 0;
  v49 = v126 >> 1;
  v103 = v21 + 16;
  v118 = (v21 + 48);
  v119 = (v21 + 56);
  v107 = (v21 + 32);
  v126 = v30 + 16;
  v104 = v21;
  v106 = (v21 + 8);
  v50 = v97;
  v116 = (v30 + 32);
  v117 = (v30 + 40);
  ++v121;
  v122 = (v30 - 8);
  v113 = (v99 + 48);
  v114 = (v99 + 56);
  v101 = MEMORY[0x277D84F90];
  v51 = v110;
  while (1)
  {
    if (v51 == v49)
    {
      v52 = 1;
      v51 = v49;
      goto LABEL_7;
    }

    if (v51 < v110 || v51 >= v49)
    {
      break;
    }

    (*(v104 + 16))(v127, v105 + *(v104 + 72) * v51, v130);
    v52 = 0;
    ++v51;
LABEL_7:
    v53 = 1;
    v54 = v127;
    v55 = v130;
    (*v119)(v127, v52, 1, v130);
    v56 = v128;
    sub_2288F14C4(v54, v128);
    if ((*v118)(v56, 1, v55) != 1)
    {
      v57 = v109;
      v58 = v130;
      (*v107)(v109, v128, v130);
      v59 = v108;
      sub_22892EA38();
      (*v126)(v50, v59, v41);
      (*v106)(v57, v58);
      v53 = 0;
    }

    (*v117)(v50, v53, 1, v41);
    if ((*v116)(v50, 1, v41) == 1)
    {
      swift_unknownObjectRelease();
      v82 = v120;
      v83 = *v121;
      (*v121)(v124, v120);
      v84 = v41;
      v85 = v123;
      v86 = v95;
      sub_22892E558();
      v87 = v94;
      v88 = v96;
      v89 = sub_2288F1850((v96 + v94[15]), v85, v101);

      v83(v85, v82);
      result = (*v122)(v86, v84);
      *(v88 + v87[14]) = v89;
      return result;
    }

    v60 = v50;
    v61 = v41;
    (*v126)(v129, v50, v41);
    v62 = v123;
    sub_22892E558();
    sub_22892EAB8();
    v63 = v115;
    sub_22892EF28();
    sub_2288BA9D4(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v64 = v120;
    v65 = sub_22892F038();
    v66 = *v121;
    (*v121)(v63, v64);
    v66(v62, v64);
    if ((v65 & 1) != 0 && v111 < sub_22892EAC8())
    {
      v67 = v129;
      v68 = sub_22892E598();
      if (v68)
      {
        v69 = v68;
        [v68 doubleValueForUnit_];
        v71 = v70;

        ++v111;
        v72 = *(v125 + 48);
        v73 = v112;
        sub_22892E558();
        v74 = 0;
        *(v73 + v72) = v71;
      }

      else
      {
        v74 = 1;
        v73 = v112;
      }
    }

    else
    {
      v74 = 1;
      v73 = v112;
      v67 = v129;
    }

    v75 = v125;
    (*v114)(v73, v74, 1, v125);
    v41 = v61;
    (*v122)(v67, v61);
    v76 = (*v113)(v73, 1, v75) == 1;
    v50 = v60;
    if (v76)
    {
      result = sub_2288F1558(v73);
    }

    else
    {
      v77 = v91;
      sub_2288F15E4(v73, v91);
      sub_2288F15E4(v77, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v101 = sub_2288D628C(0, v101[2] + 1, 1, v101);
      }

      v80 = v101[2];
      v79 = v101[3];
      if (v80 >= v79 >> 1)
      {
        v101 = sub_2288D628C((v79 > 1), v80 + 1, 1, v101);
      }

      v81 = v101;
      v101[2] = v80 + 1;
      result = sub_2288F15E4(v98, v81 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v80);
    }
  }

  __break(1u);
  return result;
}

void sub_2288F1298(uint64_t a1)
{
  if (!qword_2813DF6D8[0])
  {
    sub_2288F132C(255);
    v3 = v2;
    v4 = sub_2288BA9D4(&qword_2813DEA88, sub_2288F132C, MEMORY[0x277D842F0]);
    v6 = type metadata accessor for SleepingSampleBaselineCalculator(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_2813DF6D8);
    }
  }
}

void sub_2288F132C(uint64_t a1)
{
  if (!qword_2813DEA80)
  {
    sub_2288F13D8(255, &qword_2813DEAF8, MEMORY[0x277D100B8], MEMORY[0x277D83F98]);
    sub_22892E5A8();
    sub_2288F143C();
    v1 = sub_22892F6F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA80);
    }
  }
}

void sub_2288F13D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2288F143C()
{
  result = qword_2813DEB00;
  if (!qword_2813DEB00)
  {
    sub_2288F13D8(255, &qword_2813DEAF8, MEMORY[0x277D100B8], MEMORY[0x277D83F98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEB00);
  }

  return result;
}

uint64_t sub_2288F14C4(uint64_t a1, uint64_t a2)
{
  sub_2288F13D8(0, &unk_2813DFE18, MEMORY[0x277D100B8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288F1558(uint64_t a1)
{
  sub_2288F13D8(0, &unk_2813DEDC0, sub_2288D6B24, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288F15E4(uint64_t a1, uint64_t a2)
{
  sub_2288D6B24(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2288F1650(uint64_t a1)
{
  sub_22892E5A8();
  if (v1 <= 0x3F)
  {
    sub_2288BC0FC(319, &unk_2813DEC98, 0x277CCD7E8);
    if (v2 <= 0x3F)
    {
      sub_2288BC0FC(319, &unk_2813DEB70, 0x277CCDAB0);
      if (v3 <= 0x3F)
      {
        sub_2288F17EC(319, &qword_2813DED18, sub_2288F17B8, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22892EB18();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2288F17EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2288F1850(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v156 = a2;
  sub_2288BB4E0(0);
  v146 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = &v132 - v9;
  sub_2288B4B3C(0);
  v144 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v132 - v14;
  sub_2288D6B24(0);
  v154 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v136 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v160 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v135 = &v132 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v132 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v132 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v132 - v28;
  v147 = sub_22892EFA8();
  v155 = *(v147 - 8);
  v30 = MEMORY[0x28223BE20](v147);
  v134 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v138 = &v132 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v140 = &v132 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v133 = &v132 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v139 = &v132 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v149 = &v132 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v152 = &v132 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v151 = &v132 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v153 = &v132 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v132 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v132 - v51;
  v53 = sub_22892EAD8();
  v54 = *(a3 + 16);
  if (!v54)
  {
    *a1 = v53;
    v71 = MEMORY[0x277D100C8];
    goto LABEL_12;
  }

  v158 = v53;
  v141 = a1;
  v137 = v13;
  v143 = v8;
  v157 = (*(v154 + 80) + 32) & ~*(v154 + 80);
  v55 = a3 + v157;
  sub_2288F259C(v55, v29, sub_2288D6B24);
  v56 = v155 + 32;
  v57 = *(v155 + 32);
  v58 = v29;
  v59 = v147;
  v57(v50, v58, v147);
  v159 = v52;
  v60 = v50;
  v61 = v57;
  v57(v52, v60, v59);
  v161 = v54;
  v62 = *(v154 + 9);
  sub_2288F259C(v55 + v62 * (v54 - 1), v27, sub_2288D6B24);
  v154 = v61;
  v148 = v56;
  v61(v153, v27, v59);
  v63 = v149;
  sub_22892EED8();
  v64 = v152;
  sub_22892EEF8();
  v66 = (v155 + 8);
  v65 = *(v155 + 8);
  v65(v63, v59);
  v149 = sub_2288BFD2C();
  v67 = sub_22892F038();
  v68 = v59;
  v142 = v65;
  if (v67)
  {
    v69 = v151;
    v154(v151, v64, v59);
    v70 = v155;
  }

  else
  {
    v65(v64, v59);
    v70 = v155;
    v69 = v151;
    (*(v155 + 16))(v151, v156, v59);
  }

  v72 = v159;
  result = sub_22892F048();
  v74 = v143;
  if ((result & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v75 = *(v70 + 16);
  v152 = v66;
  v76 = v145;
  v75(v145, v72, v68);
  v77 = v146;
  v78 = v76 + *(v146 + 48);
  v155 = v70 + 16;
  v132 = v75;
  v75(v78, v69, v68);
  sub_2288F259C(v76, v74, sub_2288BB4E0);
  v79 = *(v77 + 48);
  v80 = v150;
  v154(v150, v74, v68);
  v81 = (v74 + v79);
  v82 = v142;
  v142(v81, v68);
  sub_2288F26D0(v76, v74, sub_2288BB4E0);
  v154((v80 + *(v144 + 36)), (v74 + *(v77 + 48)), v68);
  v83 = v82;
  v82(v74, v68);
  result = sub_22892F048();
  if (result)
  {
    result = sub_22892F028();
    v84 = result << 63 >> 63;
  }

  else
  {
    v84 = 0;
  }

  v85 = v153;
  a1 = v141;
  v86 = v161 + v84;
  v88 = v158;
  v87 = v159;
  if (v161 + v84 >= v158)
  {
    v95 = 0;
    v96 = 0;
    v94 = MEMORY[0x277D84F90];
    do
    {
      v97 = (v95 + 1);
      if (__OFADD__(v95, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_2288F259C(v55, v24, sub_2288D6B24);
      result = sub_22892EEE8();
      if ((result & 1) != 0 || v96 < v88)
      {
        if (__OFADD__(v96++, 1))
        {
          goto LABEL_32;
        }

        sub_2288F26D0(v24, v160, sub_2288D6B24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2288D6734(0, *(v94 + 16) + 1, 1);
          v94 = v162;
        }

        v101 = *(v94 + 16);
        v100 = *(v94 + 24);
        if (v101 >= v100 >> 1)
        {
          sub_2288D6734((v100 > 1), v101 + 1, 1);
          v94 = v162;
        }

        *(v94 + 16) = v101 + 1;
        result = sub_2288F26D0(v160, v94 + v157 + v101 * v62, sub_2288D6B24);
        v88 = v158;
        v87 = v159;
      }

      else
      {
        result = sub_2288F2604(v24, sub_2288D6B24);
      }

      ++v95;
      v55 += v62;
    }

    while (v97 != v161);
    v102 = *(v94 + 16);
    if (v102)
    {
      v103 = v94 + v157;
      v161 = sub_2288D6B24;
      v104 = v135;
      sub_2288F259C(v94 + v157, v135, sub_2288D6B24);
      v105 = v133;
      v106 = v147;
      v107 = v154;
      v154(v133, v104, v147);
      v108 = v139;
      v107(v139, v105, v106);
      v109 = v103 + (v102 - 1) * v62;
      v110 = v136;
      sub_2288F259C(v109, v136, v161);
      v111 = v134;
      v112 = v110;
      v113 = v108;
      v107(v134, v112, v106);
      v114 = v138;
      v107(v138, v111, v106);
      v116 = v150;
      v115 = v151;
    }

    else
    {
      v113 = v139;
      v106 = v147;
      v117 = v132;
      v132(v139, v87, v147);
      v114 = v138;
      v115 = v151;
      v117(v138, v151, v106);
      v116 = v150;
    }

    v118 = v140;
    sub_22892EF08();
    v119 = v142;
    v142(v114, v106);
    v120 = v113;
    v121 = sub_22892F048();
    sub_2288F2604(v116, sub_2288B4B3C);
    v119(v115, v106);
    v119(v153, v106);
    result = (v119)(v159, v106);
    if (v121)
    {
      v122 = v145;
      v123 = v154;
      v154(v145, v120, v106);
      v124 = v146;
      v123(v122 + *(v146 + 48), v118, v106);
      v125 = v143;
      sub_2288F259C(v122, v143, sub_2288BB4E0);
      v161 = *(v124 + 48);
      v123(v137, v125, v106);
      v119(v161 + v125, v106);
      sub_2288F26D0(v122, v125, sub_2288BB4E0);
      v126 = v137;
      v123(&v137[*(v144 + 36)], (v125 + *(v124 + 48)), v106);
      v119(v125, v106);
      sub_2288F2664(0);
      v128 = *(v127 + 48);
      v129 = v141;
      sub_2288F26D0(v126, v141, sub_2288B4B3C);
      *(v129 + v128) = v96;
      v130 = *MEMORY[0x277D100D0];
      v131 = sub_22892EB18();
      (*(*(v131 - 8) + 104))(v129, v130, v131);
      return v94;
    }

    goto LABEL_34;
  }

  v83(v151, v68);
  v83(v85, v68);
  v83(v87, v68);
  sub_2288F2738(0);
  v90 = *(v89 + 48);
  v91 = *(v89 + 64);
  sub_2288F26D0(v150, a1, sub_2288B4B3C);
  *(a1 + v90) = v86;
  *(a1 + v91) = v88;
  v71 = MEMORY[0x277D100C0];
LABEL_12:
  v92 = *v71;
  v93 = sub_22892EB18();
  (*(*(v93 - 8) + 104))(a1, v92, v93);
  return 0;
}

uint64_t sub_2288F259C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288F2604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2288F2664(uint64_t a1)
{
  if (!qword_2813DECC0)
  {
    sub_2288B4B3C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DECC0);
    }
  }
}

uint64_t sub_2288F26D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2288F2738(uint64_t a1)
{
  if (!qword_2813DECC8)
  {
    sub_2288B4B3C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2813DECC8);
    }
  }
}

void sub_2288F27A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2288F27FC();
  }
}

uint64_t sub_2288F27FC()
{
  v97[3] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  sub_2288B5C84(0);
  MEMORY[0x28223BE20](v1 - 8);
  v93 = &v87[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_22892EDE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v94 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v92 = &v87[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v87[-v10];
  MEMORY[0x28223BE20](v9);
  v96 = &v87[-v12];
  v13 = sub_22892EE28();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = v0;
  v17 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  v19 = sub_22892EE38();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_22892EDC8();
  v20 = sub_22892EDD8();
  v21 = sub_22892F398();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v97[0] = v23;
    *v22 = 136446210;
    v24 = sub_22892F948();
    v26 = sub_2288B748C(v24, v25, v97);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2288B2000, v20, v21, "[%{public}s] evaluating widgets reload", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAC47E0](v23, -1, -1);
    MEMORY[0x22AAC47E0](v22, -1, -1);
  }

  v27 = *(v4 + 8);
  v27(v96, v3);
  v28 = [objc_opt_self() sharedBehavior];
  if (!v28)
  {
LABEL_26:
    __break(1u);
  }

  v29 = v28;
  v30 = [v28 isAppleWatch];

  if (v30)
  {
    goto LABEL_20;
  }

  v31 = *(v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_cloudSyncManager);
  if (!v31)
  {
    goto LABEL_20;
  }

  v97[0] = 0;
  v32 = v31;
  v33 = [v32 canPerformCloudSyncWithError_];
  v34 = v97[0];
  if (!v33)
  {
    v41 = v97[0];
    v42 = sub_22892DE38();

    swift_willThrow();
    goto LABEL_20;
  }

  v97[0] = 0;
  v35 = v34;
  v36 = [v32 restoreCompletionDateWithError_];
  v37 = v97[0];
  if (v36)
  {
    v38 = v93;
    sub_22892DEC8();
    v39 = v37;

    v40 = sub_22892DEF8();
    (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
  }

  else
  {
    v43 = sub_22892DEF8();
    v38 = v93;
    (*(*(v43 - 8) + 56))(v93, 1, 1, v43);
    v44 = v37;
  }

  sub_2288F56EC(v38, sub_2288B5C84);
  if (!v37)
  {

    if (!v36)
    {
      goto LABEL_16;
    }

LABEL_20:
    v68 = v94;
    sub_22892EDC8();
    v69 = sub_22892EDD8();
    v70 = sub_22892F398();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = v27;
      v73 = swift_slowAlloc();
      v97[0] = v73;
      *v71 = 136446210;
      v74 = sub_22892F948();
      v76 = v3;
      v77 = sub_2288B748C(v74, v75, v97);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_2288B2000, v69, v70, "[%{public}s] requesting widgets reload", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AAC47E0](v73, -1, -1);
      MEMORY[0x22AAC47E0](v71, -1, -1);

      v72(v68, v76);
    }

    else
    {

      v27(v68, v3);
    }

    v78 = v95;
    v79 = *(v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 24);
    v80 = *(v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 32);
    __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader), v79);
    v81 = OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadReasons;
    swift_beginAccess();
    v82 = *(v80 + 8);

    v82(v83, v79, v80);

    *(v78 + v81) = MEMORY[0x277D84FA0];
  }

  v96 = v4;
  sub_22892EDC8();
  v45 = v37;
  v46 = sub_22892EDD8();
  v47 = sub_22892F378();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v90 = v46;
    v49 = v48;
    v89 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v97[0] = v91;
    *v49 = 136446466;
    v50 = sub_22892F948();
    v88 = v47;
    v52 = sub_2288B748C(v50, v51, v97);
    v93 = v11;
    v53 = v27;
    v54 = v52;

    *(v49 + 4) = v54;
    v27 = v53;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v45;
    v55 = v89;
    *v89 = v37;
    v45 = v45;
    v56 = v90;
    _os_log_impl(&dword_2288B2000, v90, v88, "[%{public}s] Error reading last restore completion date %@", v49, 0x16u);
    sub_2288F56EC(v55, sub_2288D6D64);
    MEMORY[0x22AAC47E0](v55, -1, -1);
    v57 = v91;
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x22AAC47E0](v57, -1, -1);
    MEMORY[0x22AAC47E0](v49, -1, -1);

    v58 = v93;
  }

  else
  {

    v58 = v11;
  }

  v27(v58, v3);

  if (v36)
  {
    goto LABEL_20;
  }

LABEL_16:
  v59 = v3;
  v60 = v92;
  sub_22892EDC8();
  v61 = sub_22892EDD8();
  v62 = sub_22892F398();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v97[0] = v64;
    *v63 = 136446722;
    v65 = sub_22892F948();
    v67 = sub_2288B748C(v65, v66, v97);

    *(v63 + 4) = v67;
    *(v63 + 12) = 1024;
    *(v63 + 14) = 1;
    *(v63 + 18) = 1024;
    *(v63 + 20) = 0;
    _os_log_impl(&dword_2288B2000, v61, v62, "[%{public}s] skipping widgets reload because canPerformCloudSync %{BOOL}d and isRestoreCompleted %{BOOL}d", v63, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x22AAC47E0](v64, -1, -1);
    MEMORY[0x22AAC47E0](v63, -1, -1);
  }

  v27(v60, v59);
  v85 = *(v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 24);
  v86 = *(v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader + 32);
  __swift_project_boxed_opaque_existential_1((v95 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader), v85);
  return (*(v86 + 16))(v85, v86);
}

id sub_2288F3204()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider + 8];
  swift_getObjectType();
  v3 = *(v2 + 16);
  swift_unknownObjectRetain();
  v4 = v0;
  v3();
  swift_unknownObjectRelease();

  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_2288F3420(unsigned __int8 *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22892EE28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  *v11 = v13;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_22892EE38();
  result = (*(v9 + 8))(v11, v8);
  if (v13)
  {
    sub_22892EDC8();
    v16 = sub_22892EDD8();
    v17 = sub_22892F398();
    if (os_log_type_enabled(v16, v17))
    {
      v29 = v4;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136446466;
      v20 = sub_22892F948();
      v22 = sub_2288B748C(v20, v21, v30);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = "SleepingSampleTypesRemoved";
      v24 = 0xD000000000000018;
      if (v12 != 1)
      {
        v24 = 0xD00000000000001ALL;
        v23 = "tion";
      }

      if (v12)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0xD000000000000010;
      }

      if (v12)
      {
        v26 = v23;
      }

      else
      {
        v26 = "SleepingSampleTypesAdded";
      }

      v27 = sub_2288B748C(v25, v26 | 0x8000000000000000, v30);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_2288B2000, v16, v17, "[%{public}s] running reload operation with reason: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v19, -1, -1);
      MEMORY[0x22AAC47E0](v18, -1, -1);

      (*(v5 + 8))(v7, v29);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    swift_beginAccess();
    sub_2288F3E90(&v31, v12);
    swift_endAccess();
    result = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation);
    if (result)
    {
      return [result execute];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288F37AC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v9 = sub_22892EDD8();
  v10 = sub_22892F398();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446210;
    v14 = sub_22892F948();
    v16 = sub_2288B748C(v14, v15, aBlock);
    v27 = v5;
    v17 = v16;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2288B2000, v9, v10, "[%{public}s] profileDidBecomeReady", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAC47E0](v13, -1, -1);
    v18 = v12;
    a1 = v28;
    MEMORY[0x22AAC47E0](v18, -1, -1);

    (*(v6 + 8))(v8, v27);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v19 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider + 8);
  v20 = swift_getObjectType();
  v21 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  (*(v19 + 8))(v2, &off_283BD4620, v21, v20, v19);
  v22 = [a1 database];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = ObjectType;
  aBlock[4] = sub_2288F55F8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288F3CC4;
  aBlock[3] = &block_descriptor_5;
  v25 = _Block_copy(aBlock);

  [v22 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v21 block:v25];
  _Block_release(v25);

  v26 = *(v2 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_didBecomeReady);
  if (v26)
  {
    v26();
  }
}

void sub_2288F3AE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EDC8();
  v6 = sub_22892EDD8();
  v7 = sub_22892F398();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136446210;
    v10 = sub_22892F948();
    v12 = sub_2288B748C(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2288B2000, v6, v7, "[%{public}s] first unlock occurred", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAC47E0](v9, -1, -1);
    MEMORY[0x22AAC47E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    HIBYTE(v15) = 0;
    sub_2288F3420(&v15 + 7);
  }
}

uint64_t sub_2288F3CC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_2288F3E0C(uint64_t a1, uint64_t a2)
{
  sub_22892F458();
  result = sub_22892F568();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2288F3E90(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](a2);
  v6 = sub_22892F8C8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2288F48E8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2288F3FD0(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22892F598();

    if (v17)
    {

      sub_2288BC0FC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22892F588();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2288F4270(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2288F46CC(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_2288F3E0C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2288BC0FC(0, a3, a4);
    v19 = sub_22892F458();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22892F468();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2288F4A34(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2288F4270(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_2288F5610(0, a3, a4, a5, a6);
    v10 = sub_22892F608();
    v23 = v10;
    sub_22892F578();
    if (sub_22892F5A8())
    {
      sub_2288BC0FC(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2288F46CC(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_22892F458();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22892F5A8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2288F4488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2288F5548(0);
  result = sub_22892F5F8();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_22892F8A8();
      MEMORY[0x22AAC3F20](v17);
      result = sub_22892F8C8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2288F46CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_2288F5610(0, a2, a3, a4, a5);
  result = sub_22892F5F8();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_22892F458();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_2288F48E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2288F4488(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2288F4BDC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2288F4E64(v5 + 1);
  }

  v8 = *v3;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v4);
  result = sub_22892F8C8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22892F848();
  __break(1u);
  return result;
}

void sub_2288F4A34(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2288F46CC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2288F4D10(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2288F5078(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_22892F458();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2288BC0FC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22892F468();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22892F848();
  __break(1u);
}

void *sub_2288F4BDC()
{
  v1 = v0;
  sub_2288F5548(0);
  v2 = *v0;
  v3 = sub_22892F5E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_2288F4D10(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_2288F5610(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22892F5E8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

uint64_t sub_2288F4E64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2288F5548(0);
  result = sub_22892F5F8();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_22892F8A8();
      MEMORY[0x22AAC3F20](v16);
      result = sub_22892F8C8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_2288F5078(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_2288F5610(0, a2, a3, a4, a5);
  result = sub_22892F5F8();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_22892F458();
      v21 = -1 << *(v9 + 32);
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
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
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
    *v6 = v9;
  }

  return result;
}

id sub_2288F5280(const char *a1, unsigned __int8 a2, ...)
{
  v27 = a1;
  v4 = v2;
  swift_getObjectType();
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EE28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_22892EE38();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_22892EDC8();
    v16 = sub_22892EDD8();
    v17 = sub_22892F398();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v5;
      v20 = a2;
      v21 = v19;
      v28 = v19;
      *v18 = 136446210;
      v22 = sub_22892F948();
      v24 = sub_2288B748C(v22, v23, &v28);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_2288B2000, v16, v17, v27, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v25 = v21;
      a2 = v20;
      MEMORY[0x22AAC47E0](v25, -1, -1);
      MEMORY[0x22AAC47E0](v18, -1, -1);

      (*(v6 + 8))(v8, v26);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v29 = a2;
    return sub_2288F3420(&v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2288F5548(uint64_t a1)
{
  if (!qword_2813DEAE0)
  {
    sub_2288F55A4();
    v1 = sub_22892F628();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEAE0);
    }
  }
}

unint64_t sub_2288F55A4()
{
  result = qword_2813DFDD8;
  if (!qword_2813DFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DFDD8);
  }

  return result;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_2288F5610(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2288BC0FC(255, a3, a4);
    sub_2288F569C(a5, a3, a4);
    v9 = sub_22892F628();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2288F569C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2288BC0FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2288F56EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288F574C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22892E778();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2288F5830@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v23 = sub_22892E778();
  v4 = *(v23 - 8);
  v5 = MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[10];
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v5);
  v11 = &v22 - v10;
  v12 = v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v15 = &v22 - v14;
  (*(v9 + 16))(v11, &v2[v3[12]], v8);
  sub_22892F1A8();
  v16 = *(*v2 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v7, &v2[v16], v23);
  v17 = &v2[*(*v2 + 112)];
  v18 = *v17;
  v19 = v17[1];
  v20 = *&v2[*(*v2 + 120)];

  swift_unknownObjectRetain();
  return sub_2288F6BD8(v15, v7, v18, v19, v20, v8, v12, v24);
}

uint64_t sub_2288F5AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v35 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v37 = a1;
  v5 = type metadata accessor for SleepingSampleBaselineComparisonEnumerator.Iterator.InnerIteratorResult(0, v3, v4, a3);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v31 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v18 = v17;
  v19 = *(v17 - 8);
  v32 = *(v19 + 56);
  v33 = v19 + 56;
  v32(v16, 2, 2, v17);
  v20 = *(v6 + 16);
  v20(v14, v16, v5);
  v21 = *(v19 + 48);
  v39 = v19 + 48;
  v40 = v18;
  v38 = v21;
  v22 = v21(v14, 2, v18);
  v36 = v6;
  v23 = *(v6 + 8);
  if (v22 == 2)
  {
    v24 = (v36 + 32);
    do
    {
      v23(v14, v5);
      sub_2288F6E80(v37, v11);
      v23(v16, v5);
      (*v24)(v16, v11, v5);
      v20(v14, v16, v5);
    }

    while (v38(v14, 2, v40) == 2);
  }

  v23(v14, v5);
  v25 = v34;
  (*(v36 + 32))(v34, v16, v5);
  v26 = v40;
  if (v38(v25, 2, v40))
  {
    v27 = 1;
    v28 = v35;
  }

  else
  {
    v29 = v25;
    v28 = v35;
    sub_2288C0D18(v29, v35, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v27 = 0;
  }

  return (v32)(v28, v27, 1, v26);
}

uint64_t sub_2288F5E18@<X0>(uint64_t a1@<X8>)
{
  v8 = v1;
  sub_2288D6B24(0);
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v102 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v101 - v13;
  sub_2288B4AD8(0, &qword_2813DFE90, MEMORY[0x277D0FF28], MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v103 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v101 - v18;
  v20 = sub_22892EB18();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22892E5A8();
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(&v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_2288F1298(0);
  v28 = v27;
  v29 = v27[15];
  (*(v21 + 16))(v23, &v29[v8], v20);
  v30 = sub_22892E4D8();
  (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
  v104 = a1;
  result = sub_22892E928();
  v32 = *(v8 + v28[14]);
  if (v32)
  {

    v34 = sub_2288F6820(v33, 0.05);
    if (v35)
    {
    }

    v36 = *&v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_2288FC708(v32);
    }

    v37 = v32[2];
    v38 = v105;
    v101 = v32 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v109[0] = v101;
    v109[1] = v37;
    sub_2288FC730(v109);
    v39 = v32[2];
    v40 = v106;
    if ((v39 * 3) >> 64 == (3 * v39) >> 63)
    {
      v41 = (3 * v39) >> 2;
      if (v41 < v39)
      {
        a1 = *(v38 + 72);
        v42 = *(v106 + 48);
        v5 = *(v101 + v41 * a1 + v42);
        v4 = *(v101 + (v39 >> 2) * a1 + v42);
        v2 = v5 - v4;
        v6 = (v5 - v4) * 1.5;
        v43 = &off_278609000;
        if ((sub_22892EAA8() & 1) == 0)
        {
          goto LABEL_11;
        }

        v44 = sub_22892EAF8();
        v45 = sub_22892EAD8();
        v46 = __OFSUB__(v44, v45);
        v47 = v44 - v45;
        if (!v46)
        {
          v48 = sub_22892EAE8();
          if (!__OFSUB__(v49, v48))
          {
            v50 = v47 / (v49 - v48);
            [*(v8 + v28[10]) doubleValueForUnit_];
            v6 = v6 * v50 + (1.0 - v50) * v51;
LABEL_11:
            v3 = v36;
            v7 = v4 - v6;
            if (*(v8 + v28[12]) != 1)
            {
              goto LABEL_35;
            }

            if (v32[2])
            {
              sub_2288FDB34(v101, v14, sub_2288D6B24);
              v52 = *&v14[*(v40 + 48)];
              v107 = 0;
              v53 = sub_22892EFA8();
              (*(*(v53 - 8) + 8))(v14, v53);
            }

            else
            {
              v107 = 1;
              v52 = 0;
            }

            v54 = sub_22892E598();
            v55 = v54;
            if (v54)
            {
              [v54 doubleValueForUnit_];
              v4 = v56;

              if (v107)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v4 = 0.0;
              if (v107)
              {
LABEL_17:
                v14 = MEMORY[0x277D84F90];
                if (v55)
                {
                  goto LABEL_18;
                }

                goto LABEL_26;
              }
            }

            v14 = sub_2288D6184(0, 1, 1, MEMORY[0x277D84F90]);
            v61 = *(v14 + 2);
            v60 = *(v14 + 3);
            if (v61 >= v60 >> 1)
            {
              v14 = sub_2288D6184((v60 > 1), v61 + 1, 1, v14);
            }

            *(v14 + 2) = v61 + 1;
            *&v14[8 * v61 + 32] = v52;
            v43 = &off_278609000;
            if (v55)
            {
LABEL_18:
              v29 = &off_278609000;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_19:
                v58 = *(v14 + 2);
                v57 = *(v14 + 3);
                v59 = v58 + 1;
                if (v58 >= v57 >> 1)
                {
                  v14 = sub_2288D6184((v57 > 1), v58 + 1, 1, v14);
                }

                *(v14 + 2) = v59;
                *&v14[8 * v58 + 32] = v4;
                v43 = v29;
LABEL_27:
                v62 = *(v14 + 4);
                v63 = v59 - 1;
                if (v59 != 1)
                {
                  v64 = (v14 + 40);
                  do
                  {
                    v65 = *v64++;
                    v66 = v65;
                    if (v65 < v62)
                    {
                      v62 = v66;
                    }

                    --v63;
                  }

                  while (v63);
                }

                if (v7 > v62)
                {
LABEL_36:
                  v67 = v5 + v6;
                  if (*(v8 + v28[11]) != 1)
                  {
                    goto LABEL_61;
                  }

                  v68 = v32[2];
                  if (v68)
                  {
                    v69 = v102;
                    sub_2288FDB34(v101 + (v68 - 1) * a1, v102, sub_2288D6B24);
                    v70 = *(v69 + *(v40 + 48));
                    v108 = 0;
                    v71 = sub_22892EFA8();
                    (*(*(v71 - 8) + 8))(v69, v71);
                  }

                  else
                  {
                    v108 = 1;
                    v70 = 0;
                  }

                  v72 = sub_22892E598();
                  v73 = v72;
                  if (v72)
                  {
                    [v72 *(v43 + 418)];
                    v75 = v74;

                    if (v108)
                    {
                      goto LABEL_42;
                    }
                  }

                  else
                  {
                    v75 = 0;
                    if (v108)
                    {
LABEL_42:
                      v76 = MEMORY[0x277D84F90];
                      if (v73)
                      {
LABEL_43:
                        v77 = v43;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v76 = sub_2288D6184(0, *(v76 + 2) + 1, 1, v76);
                        }

                        v79 = *(v76 + 2);
                        v78 = *(v76 + 3);
                        v80 = v79 + 1;
                        if (v79 >= v78 >> 1)
                        {
                          v76 = sub_2288D6184((v78 > 1), v79 + 1, 1, v76);
                        }

                        *(v76 + 2) = v80;
                        *&v76[8 * v79 + 32] = v75;
                        v43 = v77;
LABEL_53:
                        v83 = *(v76 + 4);
                        v84 = v80 - 1;
                        if (v80 != 1)
                        {
                          v85 = (v76 + 40);
                          do
                          {
                            v86 = *v85++;
                            v87 = v86;
                            if (v83 < v86)
                            {
                              v83 = v87;
                            }

                            --v84;
                          }

                          while (v84);
                        }

                        if (v67 <= v83)
                        {
                          goto LABEL_62;
                        }

                        goto LABEL_61;
                      }

                      goto LABEL_52;
                    }
                  }

                  v76 = sub_2288D6184(0, 1, 1, MEMORY[0x277D84F90]);
                  v82 = *(v76 + 2);
                  v81 = *(v76 + 3);
                  if (v82 >= v81 >> 1)
                  {
                    v76 = sub_2288D6184((v81 > 1), v82 + 1, 1, v76);
                  }

                  *(v76 + 2) = v82 + 1;
                  *&v76[8 * v82 + 32] = v70;
                  if (v73)
                  {
                    goto LABEL_43;
                  }

LABEL_52:
                  v80 = *(v76 + 2);
                  if (v80)
                  {
                    goto LABEL_53;
                  }

LABEL_61:
                  v83 = v67;
LABEL_62:
                  v88 = *(v8 + v28[13]);
                  [*(v8 + v28[9]) *(v43 + 418)];
                  v90 = v3 - v89;
                  v91 = v89 + v3;
                  v92 = objc_opt_self();
                  v93 = [v92 quantityWithUnit:v88 doubleValue:v3];
                  if (v90 >= v62)
                  {
                    v94 = v62;
                  }

                  else
                  {
                    v94 = v90;
                  }

                  v95 = [v92 quantityWithUnit:v88 doubleValue:v94];
                  if (v83 > v91)
                  {
                    v96 = v83;
                  }

                  else
                  {
                    v96 = v91;
                  }

                  v97 = [v92 quantityWithUnit:v88 doubleValue:v96];
                  [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v95 maximum:v97 isMinimumInclusive:1 isMaximumInclusive:1];

                  v98 = [v92 quantityWithUnit:v88 doubleValue:v2];
                  v99 = [v92 quantityWithUnit:v88 doubleValue:v62];
                  v100 = [v92 quantityWithUnit:v88 doubleValue:v83];
                  [objc_allocWithZone(MEMORY[0x277CCD7F8]) initWithMinimum:v99 maximum:v100 isMinimumInclusive:1 isMaximumInclusive:1];

                  sub_22892E4C8();
                  sub_22892E918();
                }

LABEL_35:
                v62 = v7;
                goto LABEL_36;
              }

LABEL_75:
              v14 = sub_2288D6184(0, *(v14 + 2) + 1, 1, v14);
              goto LABEL_19;
            }

LABEL_26:
            v59 = *(v14 + 2);
            if (!v59)
            {

              goto LABEL_35;
            }

            goto LABEL_27;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_73;
  }

  return result;
}

uint64_t sub_2288F6820(uint64_t a1, double a2)
{
  sub_2288D6B24(0);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288FDB9C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288FDC08(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = COERCE_DOUBLE(MEMORY[0x28223BE20](v13));
  v18 = (&v35 - v17);
  v19 = 0;
  v20 = 1.0 - a2;
  v21 = *(a1 + 16);
  v41 = (v9 + 56);
  v42 = v21;
  v39 = a1;
  v40 = (v9 + 48);
  v22 = 0.0;
  v23 = 0.0;
  if (!v21)
  {
    goto LABEL_7;
  }

LABEL_2:
  if (--v21 >= v42)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = v39 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v21;
  v25 = *(v8 + 48);
  *v11 = v19;
  *&result = COERCE_DOUBLE(sub_2288FDB34(v24, v11 + v25, sub_2288D6B24));
  if (__OFADD__(v19++, 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_2288FDC3C(v11, v15, sub_2288FDB9C);
  for (i = 0; ; i = 1)
  {
    (*v41)(v15, i, 1, v8);
    sub_2288FDC3C(v15, v18, sub_2288FDC08);
    if ((*v40)(v18, 1, v8) == 1)
    {
      break;
    }

    v28 = v18 + *(v8 + 48);
    v29 = *&v28[*(v37 + 48)];
    v30 = *v18;
    v31 = sub_22892EFA8();
    v32 = *(v31 - 8);
    v33 = v36;
    (*(v32 + 32))(v36, v28, v31);
    v34 = pow(v20, v30);
    v22 = v22 + v29 * v34;
    v23 = v23 + v34;
    *&result = COERCE_DOUBLE((*(v32 + 8))(v33, v31));
    if (v21)
    {
      goto LABEL_2;
    }

LABEL_7:
    ;
  }

  if (v23 > 0.0)
  {
    *&result = v22 / v23;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_2288F6BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v12 = sub_22892EDE8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22892E778();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SleepingSampleBaselineComparisonEnumerator.Iterator(0, a6, a7, v17);
  *(a8 + *(v18 + 40)) = 0;
  v19 = *(v18 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(a8 + v19, a1, AssociatedTypeWitness);
  v22 = v30;
  (*(v14 + 16))(v16, v30, v13);
  type metadata accessor for SleepingSampleBaselineAccumulator(0);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D84F90];
  *(v23 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates) = MEMORY[0x277D84F90];
  *(v23 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries) = v24;
  *(v23 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete) = v24;
  sub_22892EDC8();
  sub_22892ED48();
  (*(v14 + 32))(v23 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v16, v13);
  v25 = (v23 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider);
  v26 = v32;
  *v25 = v31;
  v25[1] = v26;
  *(v23 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider) = v33;
  (*(v14 + 8))(v22, v13);
  result = (*(v21 + 8))(v29, AssociatedTypeWitness);
  *a8 = v23;
  return result;
}

uint64_t sub_2288F6E80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v84 = a1;
  v86 = a2;
  sub_2288BF284(0);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22892EA78();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BF2B8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  v73 = *(v8 - 1);
  v74 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v67 - v11;
  sub_2288B5D1C(0);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v83 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892E478();
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x28223BE20](v14);
  v79 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22892E778();
  v16 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22892EFA8();
  v85 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v78 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v77 = &v67 - v22;
  v87 = sub_22892E6D8();
  v23 = *(v87 - 8);
  v24 = MEMORY[0x28223BE20](v87);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = v2;
  v30 = *v2;
  v31 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
  swift_beginAccess();
  v32 = *(v30 + v31);
  if (*(v32 + 16))
  {
    v74 = v29;
    swift_beginAccess();
    v33 = v32 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v34 = v87;
    (*(v23 + 16))(v26, v33, v87);
    sub_2288FDA5C(0, 1, sub_2288D5FD8, MEMORY[0x277D0FFC8]);
    swift_endAccess();
    v75 = *(v23 + 32);
    v75(v28, v26, v34);
    v35 = v77;
    sub_22892E5E8();
    v36 = v76;
    (*(v16 + 16))(v18, v30 + OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange, v76);
    v37 = v79;
    sub_22892E708();
    (*(v16 + 8))(v18, v36);
    v38 = v83;
    sub_22892E438();
    (*(v80 + 8))(v37, v81);
    v39 = v85;
    v40 = v78;
    (*(v85 + 16))(v78, v38 + *(v82 + 36), v19);
    sub_2288BA88C(v38, sub_2288B5D1C);
    sub_2288BAA1C(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
    v41 = sub_22892F088();
    v42 = *(v39 + 8);
    v42(v40, v19);
    v42(v35, v19);
    v43 = v87;
    if (v41)
    {
      *(v74 + *(v84 + 40)) = 1;
    }

    v44 = v86;
    v75(v86, v28, v43);
    sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v46 = v45;
    goto LABEL_5;
  }

  v48 = v73;
  v49 = v74;
  v50 = v75;
  v87 = v19;
  if (*(v29 + *(v84 + 40)))
  {
    sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v52 = v51;
    v53 = *(*(v51 - 8) + 56);
    v54 = v86;
    v55 = 1;
  }

  else
  {
    v83 = *(v84 + 40);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_22892F4B8();
    if ((*(v48 + 48))(v50, 1, v49) == 1)
    {
      sub_2288BA88C(v50, sub_2288BF2B8);
      v56 = v72;
      (*(v85 + 56))(v72, 1, 1, v87);
      sub_2288F81BC(v56);
      sub_2288BA88C(v56, sub_2288BF284);
      *(v29 + v83) = 1;
    }

    else
    {
      v57 = v70;
      sub_2288C0D18(v50, v70, &qword_2813DE910, MEMORY[0x277D100B8]);
      v58 = v71;
      sub_2288FDCBC(v57, v71);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2288FDD3C(v57);
        v59 = *v58;
        v60 = *(v58 + 8);
        *(v29 + v83) = 1;
        v44 = v86;
        *v86 = v59;
        *(v44 + 8) = v60;
        sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
        v46 = v61;
LABEL_5:
        swift_storeEnumTagMultiPayload();
        return (*(*(v46 - 8) + 56))(v44, 0, 2, v46);
      }

      v62 = v68;
      v63 = v67;
      v64 = v58;
      v65 = v69;
      (*(v68 + 32))(v67, v64, v69);
      sub_2288F78DC(v63);
      (*(v62 + 8))(v63, v65);
      sub_2288FDD3C(v57);
    }

    sub_2288BF214(0, &qword_2813DE920, MEMORY[0x277D0FFC8]);
    v52 = v66;
    v53 = *(*(v66 - 8) + 56);
    v54 = v86;
    v55 = 2;
  }

  return v53(v54, v55, 2, v52);
}

uint64_t sub_2288F78DC(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  sub_2288BF284(0);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B5D1C(0);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22892E478();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22892EFA8();
  v68 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v53 - v15);
  v17 = sub_22892EA78();
  v70 = *(v17 - 8);
  v71 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v65 = &v53 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v59 = &v53 - v24;
  MEMORY[0x28223BE20](v23);
  v67 = &v53 - v25;
  v26 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates;
  swift_beginAccess();
  v27 = *(*(v1 + v26) + 16);
  if (v27 >= sub_22892E728())
  {
    v28 = *(v1 + v26);
    v29 = *(v28 + 16);
    if (v29)
    {
      v54 = v8;
      v30 = *(v70 + 2);
      v58 = (v70[80] + 32) & ~v70[80];
      v57 = *(v70 + 9);
      v56 = v70 + 16;
      v55 = v30;
      v30(v67, v28 + v58 + v57 * (v29 - 1), v71);
      v31 = v69;
      sub_22892EA48();
      sub_22892EA48();
      v53 = sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
      v32 = sub_22892F018();
      v33 = *(v68 + 8);
      (v33)(v14, v9);
      (v33)(v16, v9);
      if (v32)
      {
        v34 = v54;
        sub_22892E708();
        v35 = v64;
        sub_22892E438();
        (*(v61 + 8))(v34, v63);
        v36 = v62;
        sub_22892EA48();
        if (sub_22892F038())
        {
          v37 = sub_22892F048();
          (v33)(v36, v9);
          sub_2288BA88C(v35, sub_2288B5D1C);
          v16 = v70;
          v14 = v71;
          v33 = v65;
          if (v37)
          {
            v55(v59, v31, v71);
            v38 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete;
            swift_beginAccess();
            v39 = *(v2 + v38);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + v38) = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v39 = sub_2288D6030(0, *(v39 + 2) + 1, 1, v39);
              *(v2 + v38) = v39;
            }

            v42 = *(v39 + 2);
            v41 = *(v39 + 3);
            if (v42 >= v41 >> 1)
            {
              v39 = sub_2288D6030((v41 > 1), v42 + 1, 1, v39);
            }

            *(v39 + 2) = v42 + 1;
            v16[4](&v39[v58 + v42 * v57], v59, v14);
            *(v2 + v38) = v39;
            swift_endAccess();
            v31 = v69;
          }
        }

        else
        {
          (v33)(v36, v9);
          sub_2288BA88C(v35, sub_2288B5D1C);
          v16 = v70;
          v14 = v71;
          v33 = v65;
        }

        v48 = v66;
        sub_22892EA48();
        (*(v68 + 56))(v48, 0, 1, v9);
        sub_2288F81BC(v48);
        sub_2288BA88C(v48, sub_2288BF284);
        (v16[1])(v67, v14);
        v55(v33, v31, v14);
        swift_beginAccess();
        v32 = *(v2 + v26);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v26) = v32;
        if (v49)
        {
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      v32 = sub_2288D6030(0, *(v32 + 16) + 1, 1, v32);
      *(v2 + v26) = v32;
LABEL_18:
      v51 = *(v32 + 16);
      v50 = *(v32 + 24);
      if (v51 >= v50 >> 1)
      {
        v32 = sub_2288D6030((v50 > 1), v51 + 1, 1, v32);
      }

      *(v32 + 16) = v51 + 1;
      v16[4]((v32 + v58 + v51 * v57), v33, v14);
      goto LABEL_21;
    }
  }

  v43 = v70;
  v44 = v71;
  (*(v70 + 2))(v20, v69, v71);
  swift_beginAccess();
  v32 = *(v1 + v26);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v26) = v32;
  if ((v45 & 1) == 0)
  {
    v32 = sub_2288D6030(0, *(v32 + 16) + 1, 1, v32);
    *(v2 + v26) = v32;
  }

  v47 = *(v32 + 16);
  v46 = *(v32 + 24);
  if (v47 >= v46 >> 1)
  {
    v32 = sub_2288D6030((v46 > 1), v47 + 1, 1, v32);
  }

  *(v32 + 16) = v47 + 1;
  v43[4](v32 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + v43[9] * v47, v20, v44);
LABEL_21:
  *(v2 + v26) = v32;
  return swift_endAccess();
}

uint64_t sub_2288F8144@<X0>(uint64_t *a1@<X8>)
{
  sub_2288F5830(a1);
}

uint64_t sub_2288F817C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2288FDDB4(v2, a1, a2);

  return v3;
}

uint64_t sub_2288F81BC(uint64_t a1)
{
  v313 = a1;
  sub_2288B4AD8(0, &unk_2813DFE68, MEMORY[0x277D0FF98], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v300 = &v270 - v3;
  v4 = sub_22892E948();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v299 = &v270 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v298 = &v270 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v297 = &v270 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v296 = &v270 - v12;
  MEMORY[0x28223BE20](v11);
  v295 = &v270 - v13;
  sub_2288BB4E0(0);
  v294 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v293 = &v270 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v292 = &v270 - v17;
  v291 = sub_22892E6D8();
  v309 = *(v291 - 8);
  v18 = MEMORY[0x28223BE20](v291);
  v323 = &v270 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v270 - v20;
  sub_2288B5C84(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v290 = &v270 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v342 = &v270 - v25;
  sub_2288FC50C(0);
  MEMORY[0x28223BE20](v26 - 8);
  v357 = &v270 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288D6B24(0);
  v371 = v28;
  v310 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v325 = &v270 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v303 = &v270 - v31;
  sub_2288FC540(0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v289 = &v270 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v332 = &v270 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v378 = &v270 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v270 - v39;
  v346 = sub_22892E538();
  v375 = *(v346 - 8);
  v41 = MEMORY[0x28223BE20](v346);
  v308 = &v270 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v345 = &v270 - v43;
  sub_2288FC574(0);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v379 = &v270 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v307 = &v270 - v47;
  v376 = sub_22892E5A8();
  v370 = *(v376 - 8);
  v48 = MEMORY[0x28223BE20](v376);
  v356 = &v270 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v327 = &v270 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v343 = &v270 - v53;
  MEMORY[0x28223BE20](v52);
  v328 = &v270 - v54;
  sub_2288F1298(0);
  v326 = v55;
  v56 = MEMORY[0x28223BE20](v55);
  v331 = &v270 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v333 = &v270 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v334 = &v270 - v61;
  MEMORY[0x28223BE20](v60);
  v336 = &v270 - v62;
  sub_2288BF284(0);
  MEMORY[0x28223BE20](v63 - 8);
  v273 = &v270 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = sub_22892EFA8();
  v365 = *(v369 - 8);
  v65 = MEMORY[0x28223BE20](v369);
  v302 = &v270 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v301 = &v270 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v324 = &v270 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v360 = &v270 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v364 = &v270 - v74;
  MEMORY[0x28223BE20](v73);
  v76 = &v270 - v75;
  sub_2288B4B3C(0);
  v311 = v77;
  v78 = MEMORY[0x28223BE20](v77);
  v322 = &v270 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v81 = &v270 - v80;
  v374 = sub_22892ED38();
  v373 = *(v374 - 1);
  v82 = MEMORY[0x28223BE20](v374);
  v372 = &v270 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v85 = &v270 - v84;
  v86 = sub_22892EA78();
  v87 = *(v86 - 8);
  v88 = MEMORY[0x28223BE20](v86);
  v306 = (&v270 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = MEMORY[0x28223BE20](v88);
  v352 = &v270 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v339 = (&v270 - v93);
  MEMORY[0x28223BE20](v92);
  v95 = &v270 - v94;
  v96 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_baselineAggregates;
  result = swift_beginAccess();
  v347 = v1;
  v329 = v96;
  v98 = *(v1 + v96);
  v99 = *(v98 + 16);
  if (v99)
  {
    v100 = v375;
    v305 = v81;
    v272 = v87;
    v102 = *(v87 + 16);
    v101 = v87 + 16;
    v330 = (*(v101 + 64) + 32) & ~*(v101 + 64);
    v351 = *(v101 + 56);
    v304 = v95;
    v377 = v86;
    v367 = v101;
    v366 = v102;
    v102(v95, v98 + v330 + v351 * (v99 - 1), v86);
    sub_22892ED28();
    v103 = sub_22892ED58();
    v104 = sub_22892F428();
    if (sub_22892F478())
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      v106 = sub_22892ED18();
      _os_signpost_emit_with_name_impl(&dword_2288B2000, v103, v104, v106, "SleepingSampleBaselineAccumulator.completeDaySummariesIfPossible", "", v105, 2u);
      MEMORY[0x22AAC47E0](v105, -1, -1);
    }

    v107 = v373;
    v108 = v374;
    (*(v373 + 16))(v372, v85, v374);
    sub_22892EDA8();
    swift_allocObject();
    v270 = sub_22892ED98();
    (*(v107 + 8))(v85, v108);
    v109 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_aggregatesToComplete;
    v110 = v347;
    swift_beginAccess();
    v271 = v109;
    v111 = *(v110 + v109);
    v283 = *(v111 + 16);
    if (!v283)
    {
LABEL_82:
      v261 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
      v262 = v347;
      swift_beginAccess();
      v263 = *(*(v262 + v261) + 16);
      v264 = v271;
      swift_beginAccess();
      v265 = v272;
      v266 = v304;
      v267 = v377;
      if (!v263)
      {
LABEL_85:
        swift_endAccess();
        sub_2288FAEA4(v347, v270);

        return (*(v265 + 8))(v266, v267);
      }

      if (*(*(v347 + v264) + 16) >= v263)
      {
        sub_2288FDA5C(0, v263, sub_2288D6030, MEMORY[0x277D100B8]);
        goto LABEL_85;
      }

      goto LABEL_96;
    }

    v288 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
    v287 = v111 + v330;
    v372 = v365 + 8;
    v312 = (v365 + 48);
    v281 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_warmupProgressProvider;
    v285 = (v100 + 104);
    v278 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_outlierContextProvider;
    v318 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_completedDaySummaries;
    v286 = *MEMORY[0x277CCC938];
    v344 = (v100 + 8);
    v282 = (v370 + 16);
    v363 = (v370 + 56);
    v368 = (v272 + 8);
    v374 = (v370 + 8);
    v362 = (v272 + 56);
    v361 = (v272 + 48);
    v284 = *MEMORY[0x277D0FF70];
    v349 = (v272 + 32);
    v358 = (v370 + 48);
    v355 = (v370 + 32);
    v354 = (v310 + 56);
    v353 = (v310 + 48);
    v277 = (v365 + 32);
    v276 = (v309 + 16);
    v275 = v309 + 32;
    v274 = (v309 + 8);

    v112 = 0;
    v321 = 0;
    v348 = -v351;
    v359 = v40;
    v113 = v305;
    v365 = v76;
    v279 = v21;
    v280 = v111;
    while (2)
    {
      if (v112 >= *(v111 + 16))
      {
LABEL_90:
        __break(1u);
      }

      else
      {
        v335 = v112;
        v366(v339, v287 + v112 * v351, v377);
        sub_22892EA48();
        sub_22892E718();
        v114 = *v372;
        v115 = v369;
        (*v372)(v76, v369);
        v116 = *v312;
        v117 = 1;
        v118 = (*v312)(v313, 1, v115);
        v119 = v321;
        if (v118 != 1)
        {
          v120 = v273;
          sub_2288FDB34(v313, v273, sub_2288BF284);
          v121 = v369;
          if (v116(v120, 1, v369) == 1)
          {
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }

          sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
          if (sub_22892F048())
          {
            v117 = sub_22892F028() ^ 1;
          }

          v118 = v114(v120, v121);
        }

        v370 = v114;
        v122 = v329;
        v123 = *(v347 + v329);
        MEMORY[0x28223BE20](v118);
        v268 = v113;

        v124 = sub_2288FB260(sub_2288FC5DC, (&v270 - 4), v123);
        v126 = v125;

        if (v126)
        {
LABEL_99:
          v382 = 0;
          v383 = 0xE000000000000000;
          sub_22892F648();

          v382 = 0xD000000000000027;
          v383 = 0x8000000228934770;
          v380 = 0;
          v381 = 0xE000000000000000;
          sub_22892F718();
          MEMORY[0x22AAC3770](3943982, 0xE300000000000000);
          sub_22892F718();
          MEMORY[0x22AAC3770](v380, v381);

          v269 = 0;
          v268 = 232;
          result = sub_22892F738();
          __break(1u);
          return result;
        }

        v340 = *(v347 + v122);
        v127 = *(v340 + 16);
        if (v127 >= v124)
        {
          if ((v124 & 0x8000000000000000) == 0)
          {
            v320 = v117;
            v321 = v119;
            v128 = v340;
            v129 = v340 + v330;

            v131 = v339;
            sub_2288EF9D8(v130, v129, v124, ((2 * v127) | 1), v339, v336);
            sub_2288EF97C(v128, v129, v124, ((2 * v127) | 1), v131, v334);
            v350 = v129;
            v373 = v124;
            v319 = ((2 * v127) | 1);
            sub_2288EFA2C(v128, v129, v124, v319, v131, v333);

            v132 = v328;
            sub_22892EA68();
            v133 = objc_opt_self();
            v134 = [v133 _changeInDegreeCelsiusUnit];
            v135 = objc_opt_self();
            v136 = [v135 quantityWithUnit:v134 doubleValue:0.55];

            v137 = [v133 _changeInDegreeCelsiusUnit];
            v341 = [v135 quantityWithUnit:v137 doubleValue:1.1];

            sub_2288FC5FC(0);
            v138 = swift_allocObject();
            v139 = *(*v138 + 104);
            v338 = v138;
            v140 = (v138 + v139);
            sub_2288EF930();
            *v140 = 0;
            v140[1] = 0;
            v141 = MEMORY[0x22AAC3A10](v286);
            v142 = [v141 _unitForChangeInCanonicalUnit];

            v337 = v142;
            if (!v142)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v143 = v345;
            sub_22892E548();
            v144 = v308;
            v145 = v346;
            (*v285)(v308, v284, v346);
            sub_2288BAA1C(&qword_2813DFE88, MEMORY[0x277D0FF80], MEMORY[0x277D0FF88]);
            v146 = sub_22892F088();
            v147 = *v344;
            (*v344)(v144, v145);
            v147(v143, v145);
            v375 = v127;
            if (v146)
            {
              v317 = v136;
              v148 = v127 - 1;
              v149 = v340 + v330 + v351 * v127;
              v150 = v340 + v330 + v351 * (v127 - 1);
              v151 = -v373;
              v152 = v377;
              while (v151 + v148 != -1)
              {
                if (v148 < v373 || v148 >= v127)
                {
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

                v153 = v352;
                v366(v352, v150, v152);
                v154 = v343;
                sub_22892EA68();
                v155 = *v368;
                (*v368)(v153, v152);
                v156 = v345;
                sub_22892E548();
                LOBYTE(v153) = sub_22892E518();
                v157 = v156;
                v127 = v375;
                v152 = v377;
                v147(v157, v346);
                (*v374)(v154, v376);
                --v148;
                v149 += v348;
                v150 += v348;
                if (v153)
                {
                  v158 = v352;
                  v366(v352, v149, v152);
                  v159 = v307;
                  sub_22892EA68();
                  v155(v158, v152);
                  v160 = 0;
                  v40 = v359;
LABEL_25:
                  v162 = v376;
                  v132 = v328;
                  v161 = v282;
                  v163 = v335;
                  v136 = v317;
                  goto LABEL_26;
                }
              }

              v160 = 1;
              v40 = v359;
              v159 = v307;
              goto LABEL_25;
            }

            v161 = v282;
            v159 = v307;
            v162 = v376;
            (*v282)(v307, v132, v376);
            v160 = 0;
            v163 = v335;
LABEL_26:
            v335 = v163 + 1;
            v164 = *v363;
            (*v363)(v159, v160, 1, v162);
            v165 = v338;
            sub_2288FDC3C(v159, v338 + *(*v338 + 112), sub_2288FC574);
            v166 = *v161;
            v167 = v327;
            (*v161)(v327, v132, v162);
            v168 = (v165 + *(*v165 + 96));
            v166(v168, v167, v162);
            v169 = v326;
            *&v168[v326[9]] = v136;
            v170 = v341;
            *&v168[v169[10]] = v341;
            v168[v169[11]] = 0;
            v168[v169[12]] = 1;
            v171 = v169[13];
            v317 = v168;
            v172 = v337;
            *&v168[v171] = v337;
            v316 = v136;
            v315 = v170;
            v341 = v172;
            sub_22892E558();
            v173 = 0;
            v174 = v373;
            v337 = MEMORY[0x277D84F90];
LABEL_48:
            v201 = v377;
            while (1)
            {
              if (v174 == v127)
              {
                v175 = 1;
                v174 = v127;
              }

              else
              {
                if (v174 < v373 || v174 >= v127)
                {
                  __break(1u);
                  goto LABEL_88;
                }

                v366(v40, v350 + v174 * v351, v201);
                v175 = 0;
                ++v174;
              }

              v176 = *v362;
              v177 = 1;
              (*v362)(v40, v175, 1, v201);
              v178 = v40;
              v179 = v378;
              sub_2288FDC3C(v178, v378, sub_2288FC540);
              v180 = *v361;
              if ((*v361)(v179, 1, v201) != 1)
              {
                v181 = v352;
                (*v349)(v352, v378, v201);
                sub_22892EA68();
                (*v368)(v181, v201);
                v177 = 0;
              }

              v182 = v379;
              v183 = v376;
              v164(v379, v177, 1, v376);
              if ((*v358)(v182, 1, v183) == 1)
              {
                break;
              }

              v184 = v356;
              (*v355)(v356, v379, v183);
              v185 = v365;
              sub_22892E558();
              sub_22892EAB8();
              v186 = v360;
              sub_22892EF28();
              sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
              v187 = v369;
              v188 = sub_22892F038();
              v189 = v370;
              v370(v186, v187);
              v189(v185, v187);
              v40 = v359;
              if (v188)
              {
                v190 = sub_22892EAC8();
                v191 = v357;
                v127 = v375;
                if (v173 < v190 && (v192 = sub_22892E598()) != 0)
                {
                  v193 = v192;
                  [v192 doubleValueForUnit_];
                  v195 = v194;

                  ++v173;
                  v196 = *(v371 + 48);
                  sub_22892E558();
                  v197 = 0;
                  *(v191 + v196) = v195;
                }

                else
                {
                  v197 = 1;
                }
              }

              else
              {
                v197 = 1;
                v191 = v357;
                v127 = v375;
              }

              v198 = v371;
              (*v354)(v191, v197, 1, v371);
              (*v374)(v184, v183);
              if ((*v353)(v191, 1, v198) == 1)
              {
                sub_2288BA88C(v191, sub_2288FC50C);
                goto LABEL_48;
              }

              v199 = v303;
              sub_2288FDC3C(v191, v303, sub_2288D6B24);
              sub_2288FDC3C(v199, v325, sub_2288D6B24);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v201 = v377;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v337 = sub_2288D628C(0, v337[2] + 1, 1, v337);
              }

              v203 = v337[2];
              v202 = v337[3];
              if (v203 >= v202 >> 1)
              {
                v337 = sub_2288D628C((v202 > 1), v203 + 1, 1, v337);
              }

              v204 = v337;
              v337[2] = v203 + 1;
              sub_2288FDC3C(v325, v204 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v203, sub_2288D6B24);
            }

            v205 = v369;
            v370(v364, v369);
            v206 = v365;
            v207 = v327;
            sub_22892E558();
            v208 = v326;
            v209 = v317;
            v314 = sub_2288F1850(&v317[v326[15]], v206, v337);

            v210 = *v374;
            (*v374)(v328, v183);
            v370(v206, v205);
            v210(v207, v183);
            *&v209[v208[14]] = v314;
            v211 = *(v347 + v281);
            *(v338 + *(*v338 + 104)) = v211;
            v341 = v211;
            swift_unknownObjectRetain();
            v212 = v373;
            sub_2288F06C4(v340, v350, v373, v319, v339, v331);
            if (sub_22892EA88() & 1) != 0 && (sub_22892EA88() & 1) != 0 && (sub_22892EA88() & 1) != 0 && (sub_22892EA88())
            {
              v213 = sub_22892EA88();
              v214 = v377;
              v215 = v360;
              v216 = v306;
              v217 = v375;
              if (((v320 | v213) & 1) == 0)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v214 = v377;
              v215 = v360;
              v216 = v306;
              v217 = v375;
              if ((v320 & 1) == 0)
              {
LABEL_81:

                v260 = v338;
                swift_setDeallocating();
                sub_2288BA88C(v260 + *(*v260 + 96), sub_2288F1298);
                swift_unknownObjectRelease();
                sub_2288BA88C(v260 + *(*v260 + 112), sub_2288FC574);
                swift_deallocClassInstance();
                sub_2288BA88C(v331, sub_2288F1298);
                sub_2288BA88C(v333, sub_2288F1298);
                sub_2288BA88C(v334, sub_2288F1298);
                sub_2288BA88C(v336, sub_2288F1298);
                (*v368)(v339, v214);
                sub_2288BA88C(v305, sub_2288B4B3C);
                goto LABEL_82;
              }
            }

            if (v217 != v212)
            {
              v220 = (v217 - 1);
              v221 = -v212;
              v222 = v340 + v330 + v351 * (v217 - 1);
              while (1)
              {
                if (v220 < v373 || v220 >= v217)
                {
                  goto LABEL_89;
                }

                v366(v216, v222, v214);
                v223 = v342;
                sub_22892EA28();
                (*v368)(v216, v214);
                v224 = sub_22892DEF8();
                v225 = (*(*(v224 - 8) + 48))(v223, 1, v224);
                sub_2288BA88C(v223, sub_2288B5C84);
                if (v225 != 1)
                {
                  break;
                }

                --v220;
                v222 += v348;
                if (v221 + v220 == -1)
                {
                  v218 = 1;
LABEL_65:
                  v219 = v369;
                  v215 = v360;
                  v212 = v373;
                  goto LABEL_66;
                }
              }

              v366(v332, v222, v214);
              v218 = 0;
              goto LABEL_65;
            }

            v218 = 1;
            v219 = v369;
LABEL_66:
            v176(v332, v218, 1, v214);
            sub_22892EA48();
            v226 = *(v347 + v329);
            if (v212 < *(v226 + 16))
            {
              v227 = v352;
              v366(v352, v226 + v330 + v212 * v351, v214);
              v228 = v365;
              sub_22892EA48();
              v229 = *v368;
              (*v368)(v227, v214);
              v230 = v301;
              sub_22892EA48();
              v231 = v302;
              sub_22892EED8();
              sub_22892EEF8();
              v232 = v370;
              v370(v231, v219);
              v232(v230, v219);
              sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
              if ((sub_22892F048() & 1) == 0)
              {
                goto LABEL_94;
              }

              v375 = v229;
              v233 = *v277;
              v234 = v228;
              v235 = v292;
              (*v277)(v292, v234, v219);
              v236 = v294;
              v233((v235 + *(v294 + 48)), v215, v219);
              v237 = v293;
              sub_2288FDB34(v235, v293, sub_2288BB4E0);
              v238 = *(v236 + 48);
              v239 = v322;
              v233(v322, v237, v219);
              v232((v237 + v238), v219);
              sub_2288FDC3C(v235, v237, sub_2288BB4E0);
              v233(&v239[*(v311 + 36)], (v237 + *(v236 + 48)), v219);
              v232(v237, v219);
              v240 = v289;
              sub_2288FDB34(v332, v289, sub_2288FC540);
              v241 = v377;
              if (v180(v240, 1, v377) == 1)
              {
                sub_2288BA88C(v240, sub_2288FC540);
                v242 = sub_22892DEF8();
                (*(*(v242 - 8) + 56))(v290, 1, 1, v242);
              }

              else
              {
                sub_22892EA28();
                (v375)(v240, v241);
              }

              v243 = v300;
              sub_2288F5E18(v295);
              sub_2288F5E18(v296);
              sub_2288F5E18(v297);
              sub_2288FB5D8(v298);
              sub_2288F5E18(v299);
              v244 = v279;
              sub_22892E5F8();
              if (*(v347 + v278))
              {
                sub_22890217C(v244, v243);
              }

              else
              {
                v245 = sub_22892E638();
                (*(*(v245 - 8) + 56))(v243, 1, 1, v245);
              }

              v246 = v291;
              v247 = v323;
              v40 = v359;
              v113 = v305;
              v76 = v365;
              v111 = v280;
              sub_22892E648();
              v248 = v244;
              v249 = v244;
              v250 = v246;
              (*v276)(v247, v249, v246);
              v251 = v347;
              v252 = v318;
              swift_beginAccess();
              v253 = *(v251 + v252);
              v254 = swift_isUniquelyReferenced_nonNull_native();
              *(v251 + v252) = v253;
              if ((v254 & 1) == 0)
              {
                v253 = sub_2288D5FD8(0, v253[2] + 1, 1, v253);
                *(v347 + v318) = v253;
              }

              v256 = v253[2];
              v255 = v253[3];
              if (v256 >= v255 >> 1)
              {
                v253 = sub_2288D5FD8((v255 > 1), v256 + 1, 1, v253);
              }

              v253[2] = v256 + 1;
              (*(v309 + 32))(v253 + ((*(v309 + 80) + 32) & ~*(v309 + 80)) + *(v309 + 72) * v256, v323, v250);
              v257 = v347;
              *(v347 + v318) = v253;
              swift_endAccess();
              v258 = v329;
              swift_beginAccess();
              if (*(*(v257 + v258) + 16) > v373)
              {
                sub_2288FDA5C(0, v373 + 1, sub_2288D6030, MEMORY[0x277D100B8]);
                swift_endAccess();
                v259 = v338;
                swift_setDeallocating();
                sub_2288BA88C(v259 + *(*v259 + 96), sub_2288F1298);
                swift_unknownObjectRelease();
                sub_2288BA88C(v259 + *(*v259 + 112), sub_2288FC574);
                swift_deallocClassInstance();

                (*v274)(v248, v250);
                sub_2288BA88C(v332, sub_2288FC540);
                sub_2288BA88C(v331, sub_2288F1298);
                sub_2288BA88C(v333, sub_2288F1298);
                sub_2288BA88C(v334, sub_2288F1298);
                sub_2288BA88C(v336, sub_2288F1298);
                (v375)(v339, v377);
                sub_2288BA88C(v113, sub_2288B4B3C);
                v112 = v335;
                if (v335 != v283)
                {
                  continue;
                }

                goto LABEL_82;
              }

LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_92;
  }

  return result;
}

uint64_t sub_2288FAEA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22892ED78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892ED38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22892ED58();
  sub_22892ED88();
  v11 = sub_22892F418();
  if (sub_22892F478())
  {

    sub_22892EDB8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22892ED18();
    _os_signpost_emit_with_name_impl(&dword_2288B2000, v10, v11, v14, "SleepingSampleBaselineAccumulator.completeDaySummariesIfPossible", v12, v13, 2u);
    MEMORY[0x22AAC47E0](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2288FB0F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22892EFA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EA48();
  sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  if (sub_22892F048())
  {
    sub_2288B4B3C(0);
    v6 = sub_22892F028();
  }

  else
  {
    v6 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_2288FB260(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_22892EA78() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2288FB34C()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_queryRange;
  v2 = sub_22892E778();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19HealthBalanceDaemonP33_F8CD1DC1556DB85D27156507F24B2A6E33SleepingSampleBaselineAccumulator_signposter;
  v4 = sub_22892ED68();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepingSampleBaselineAccumulator(uint64_t a1)
{
  result = qword_2813DF690;
  if (!qword_2813DF690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2288FB4CC(uint64_t a1)
{
  result = sub_22892E778();
  if (v2 <= 0x3F)
  {
    result = sub_22892ED68();
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

void sub_2288FB5D8(uint64_t a1@<X8>)
{
  v2 = v1;
  v159 = a1;
  sub_2288BB4E0(0);
  v135 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v134 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v133 = &v123 - v6;
  v140 = sub_22892EFA8();
  v144 = *(v140 - 8);
  v7 = MEMORY[0x28223BE20](v140);
  v137 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v136 = &v123 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v123 - v12;
  MEMORY[0x28223BE20](v11);
  v138 = &v123 - v13;
  sub_2288B4A64(0);
  MEMORY[0x28223BE20](v14 - 8);
  v146 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22892EB18();
  v17 = *(v16 - 8);
  v147 = v16;
  v148 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v132 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v141 = &v123 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v143 = &v123 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v123 - v24;
  sub_2288B4B3C(0);
  v145 = v26;
  v149 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v150 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22892E538();
  v29 = *(v28 - 8);
  v152 = v28;
  v153 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v151 = &v123 - v33;
  sub_2288CD8F0(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22892DDC8();
  v38 = *(v37 - 8);
  v155 = v37;
  v156 = v38;
  MEMORY[0x28223BE20](v37);
  v154 = &v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288FC574(0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22892E5A8();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v142 = &v123 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v157 = &v123 - v47;
  v158 = sub_22892E948();
  v48 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v50 = &v123 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288F5E18(v50);
  v51 = *v1;
  v52 = *(v1 + *(*v1 + 104));
  if (!v52)
  {
    goto LABEL_12;
  }

  sub_2288FDB34(v2 + *(v51 + 112), v42, sub_2288FC574);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    sub_2288BA88C(v42, sub_2288FC574);
LABEL_12:
    (*(v48 + 32))(v159, v50, v158);
    return;
  }

  v131 = v48;
  v53 = v52;
  v54 = v157;
  (*(v44 + 32))();
  swift_unknownObjectRetain();
  sub_22892E588();
  v56 = v155;
  v55 = v156;
  if ((*(v156 + 48))(v36, 1, v155) == 1)
  {
    (*(v44 + 8))(v54, v43);
    swift_unknownObjectRelease();
    sub_2288BA88C(v36, sub_2288CD8F0);
LABEL_11:
    v48 = v131;
    goto LABEL_12;
  }

  v129 = v53;
  v130 = v44;
  v128 = v43;
  (*(v55 + 32))(v154, v36, v56);
  v57 = v151;
  v58 = v55;
  sub_22892E548();
  v59 = v152;
  v60 = v153;
  (*(v153 + 13))(v32, *MEMORY[0x277D0FF60], v152);
  v61 = sub_22892E528();
  v63 = *(v60 + 1);
  v62 = (v60 + 8);
  v63(v32, v59);
  v127 = v63;
  v63(v57, v59);
  if ((v61 & 1) == 0)
  {
    swift_unknownObjectRelease();
    (*(v58 + 8))(v154, v56);
    goto LABEL_10;
  }

  v64 = v56;
  v65 = v154;
  v66 = sub_22891A730(v154);
  if (v67)
  {
    swift_unknownObjectRelease();
    (*(v156 + 8))(v65, v56);
LABEL_10:
    (*(v130 + 8))(v157, v128);
    goto LABEL_11;
  }

  v68 = v66;
  sub_22892E878();
  v69 = v146;
  sub_22892EA98();
  v70 = v147;
  v71 = *(v148 + 8);
  v126 = v148 + 8;
  v125 = v71;
  v71(v25, v147);
  v72 = v149 + 48;
  v73 = *(v149 + 48);
  v74 = v73(v69, 1, v145);
  v48 = v131;
  v153 = v62;
  if (v74 == 1)
  {
    v123 = v73;
    v124 = v68;
    v149 = v72;
    v75 = v138;
    sub_22892E558();
    v76 = v136;
    sub_22892E558();
    v77 = v137;
    sub_22892EED8();
    v78 = v139;
    sub_22892EEF8();
    v79 = v144;
    v80 = (v144 + 8);
    v81 = *(v144 + 8);
    v82 = v77;
    v83 = v140;
    v81(v82, v140);
    v137 = v80;
    v136 = v81;
    v81(v76, v83);
    sub_2288BAA1C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    if ((sub_22892F048() & 1) == 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v84 = *(v79 + 32);
    v85 = v133;
    v84(v133, v75, v83);
    v86 = v135;
    v84((v85 + *(v135 + 48)), v78, v83);
    v87 = v134;
    sub_2288FDB34(v85, v134, sub_2288BB4E0);
    v88 = *(v86 + 48);
    v144 = v79 + 32;
    v89 = v150;
    v84(v150, v87, v83);
    v90 = v136;
    (v136)(v87 + v88, v83);
    sub_2288FDC3C(v85, v87, sub_2288BB4E0);
    v91 = *(v86 + 48);
    v92 = v145;
    v84((v89 + *(v145 + 36)), (v87 + v91), v83);
    v90(v87, v83);
    v93 = v146;
    v94 = v123(v146, 1, v92);
    v70 = v147;
    v64 = v155;
    v68 = v124;
    if (v94 != 1)
    {
      sub_2288BA88C(v93, sub_2288B4A64);
    }
  }

  else
  {
    sub_2288FDC3C(v69, v150, sub_2288B4B3C);
  }

  v95 = v142;
  sub_22892E938();
  v96 = v151;
  sub_22892E548();
  v97 = *(v130 + 8);
  v130 += 8;
  v97(v95, v128);
  v98 = sub_22892E518();
  v127(v96, v152);
  v99 = __OFADD__(v68, v98 & 1);
  v100 = v68 + (v98 & 1);
  if (v99)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (sub_22892E8F8() > 3)
  {
    v153 = v97;
    sub_2288F2738(0);
    v110 = *(v109 + 48);
    v152 = *(v109 + 64);
    sub_2288FDB34(v150, v143, sub_2288B4B3C);
    v111 = v141;
    sub_22892E878();
    v112 = sub_22892EAF8();
    v113 = v125;
    v125(v111, v70);
    v114 = v132;
    sub_22892E878();
    v115 = sub_22892EB08();
    v113(v114, v70);
    v116 = v115 - 1;
    if (!__OFSUB__(v115, 1))
    {
      v99 = __OFSUB__(v116, v100);
      v117 = v116 - v100;
      if (!v99)
      {
        v99 = __OFADD__(v112, v117);
        v118 = v112 + v117;
        v108 = v157;
        v97 = v153;
        if (!v99)
        {
          v119 = v143;
          *(v143 + v110) = v118;
          v103 = v119;
          v120 = v141;
          sub_22892E878();
          v121 = sub_22892EB08();
          v125(v120, v70);
          *(v103 + v152) = v121;
          v64 = v155;
          goto LABEL_28;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_2288EF930();
  v101 = MEMORY[0x22AAC3A10](*MEMORY[0x277CCC938]);
  v102 = [v101 _rollingBaselineConfiguration];

  v103 = v143;
  if (v102)
  {
    v104 = [v102 minimumSampleCount];

    sub_2288F2738(0);
    v106 = *(v105 + 48);
    v107 = *(v105 + 64);
    sub_2288FDB34(v150, v103, sub_2288B4B3C);
    if (!__OFSUB__(v104, v100))
    {
      *(v103 + v106) = &v104[-v100];
      v108 = v157;
      if (!__OFSUB__(v104, 1))
      {
        *(v103 + v107) = v104 - 1;
LABEL_28:
        v122 = v154;
        (*(v148 + 104))(v103, *MEMORY[0x277D100C0], v70);
        sub_22892E888();
        swift_unknownObjectRelease();
        sub_2288BA88C(v150, sub_2288B4B3C);
        (*(v156 + 8))(v122, v64);
        v97(v108, v128);
        goto LABEL_12;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
}

void sub_2288FC5FC(uint64_t a1)
{
  if (!qword_2813DF100[0])
  {
    sub_2288F132C(255);
    v3 = v2;
    v4 = sub_2288FC660();
    v6 = type metadata accessor for SleepingWristTemperatureBaselineCalculator(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_2813DF100);
    }
  }
}

unint64_t sub_2288FC660()
{
  result = qword_2813DEA90;
  if (!qword_2813DEA90)
  {
    sub_2288F132C(255);
    sub_2288BAA1C(&qword_2813DEB08, sub_2288FC5A8, MEMORY[0x277D83FA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEA90);
  }

  return result;
}

uint64_t sub_2288FC730(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22892F7D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2288D6B24(0);
        v6 = sub_22892F248();
        *(v6 + 16) = v5;
      }

      sub_2288D6B24(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_2288FCAB4(v8, v9, a1, v4);
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
    return sub_2288FC85C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2288FC85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_2288D6B24(0);
  v9 = v8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v35 = v22;
    v36 = a3;
    v33 = v25;
    v34 = v24;
    while (1)
    {
      sub_2288FDB34(v25, v19, sub_2288D6B24);
      sub_2288FDB34(v22, v15, sub_2288D6B24);
      v26 = *(v9 + 48);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_2288BA88C(v15, sub_2288D6B24);
      result = sub_2288BA88C(v19, sub_2288D6B24);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v36 + 1;
        v22 = v35 + v31;
        v24 = v34 - 1;
        v25 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_2288FDC3C(v25, v12, sub_2288D6B24);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2288FDC3C(v12, v22, sub_2288D6B24);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2288FCAB4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  sub_2288D6B24(0);
  v10 = v9;
  v119 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v122 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v123 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v121 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_228916EB0(a4);
    }

    v125 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_2288FD418(*v121 + *(v119 + 72) * v104, *v121 + *(v119 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v119 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_228916EB0(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v125 = v105;
        sub_228916E24(a4 - 1);
        result = v125;
        a4 = *(v125 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v110 = a4;
  v124 = v10;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v115 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v119 + 72);
      v5 = *v121 + v25 * v24;
      v118 = *v121;
      v26 = v118;
      sub_2288FDB34(v118 + v25 * v24, v19, sub_2288D6B24);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v123;
      sub_2288FDB34(v27, v123, sub_2288D6B24);
      v30 = *(v10 + 48);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_2288BA88C(v29, sub_2288D6B24);
      result = sub_2288BA88C(v19, sub_2288D6B24);
      v109 = v28;
      v33 = v28 + 2;
      v120 = v25;
      v34 = v118 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_2288FDB34(v34, v19, sub_2288D6B24);
        v35 = v123;
        sub_2288FDB34(v5, v123, sub_2288D6B24);
        v36 = *(v124 + 48);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_2288BA88C(v35, sub_2288D6B24);
        result = sub_2288BA88C(v19, sub_2288D6B24);
        ++v33;
        v34 += v120;
        v5 += v120;
        if (v31 < v32 == v37 >= v38)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v109;
      a4 = v110;
      v10 = v124;
      if (v31 < v32)
      {
        if (v20 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v20)
        {
          v108 = v6;
          v39 = v120 * (v20 - 1);
          v40 = v20 * v120;
          v41 = v20;
          v42 = v20;
          v43 = v109;
          v44 = v109 * v120;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_2288FDC3C(v45 + v44, v114, sub_2288D6B24);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2288FDC3C(v114, v45 + v39, sub_2288D6B24);
            }

            ++v43;
            v39 -= v120;
            v40 -= v120;
            v44 += v120;
          }

          while (v43 < v42);
          v6 = v108;
          v23 = v109;
          a4 = v110;
          v10 = v124;
          v20 = v41;
        }
      }
    }

    v46 = v121[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v121[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v115;
    }

    else
    {
      result = sub_2288D605C(0, *(v115 + 2) + 1, 1, v115);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      result = sub_2288D605C((v48 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_2288FD418(*v121 + *(v119 + 72) * v90, *v121 + *(v119 + 72) * *&v22[16 * v51 + 32], *v121 + *(v119 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_228916EB0(v89);
        }

        v10 = v124;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v125 = v91;
        result = sub_228916E24(v51);
        v22 = v125;
        v5 = *(v125 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v121[1];
    a4 = v110;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v108 = v6;
  v109 = v23;
  a4 = *v121;
  v93 = *(v119 + 72);
  v94 = *v121 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v112 = v93;
  v113 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v120 = v20;
  v116 = v5;
  v117 = v96;
  v118 = v94;
  v97 = v124;
  while (1)
  {
    sub_2288FDB34(v5, v19, sub_2288D6B24);
    v98 = v123;
    sub_2288FDB34(v94, v123, sub_2288D6B24);
    v99 = *(v97 + 48);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_2288BA88C(v98, sub_2288D6B24);
    result = sub_2288BA88C(v19, sub_2288D6B24);
    if (v100 >= v101)
    {
LABEL_85:
      v20 = v120 + 1;
      v21 = v113;
      v94 = v118 + v112;
      v96 = v117 - 1;
      v5 = v116 + v112;
      if (v120 + 1 != v113)
      {
        goto LABEL_86;
      }

      v6 = v108;
      v23 = v109;
      v10 = v124;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v122;
    sub_2288FDC3C(v5, v122, sub_2288D6B24);
    v97 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_2288FDC3C(v102, v94, sub_2288D6B24);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_2288FD418(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  sub_2288D6B24(0);
  v48 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_2288FDB34(v34, v13, sub_2288D6B24);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_2288FDB34(v36, v47, sub_2288D6B24);
          v39 = *(v48 + 48);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_2288BA88C(v42, sub_2288D6B24);
          sub_2288BA88C(v37, sub_2288D6B24);
          if (v40 < v41)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_2288FDB34(a2, v13, sub_2288D6B24);
        v22 = v47;
        sub_2288FDB34(a4, v47, sub_2288D6B24);
        v23 = *(v48 + 48);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_2288BA88C(v22, sub_2288D6B24);
        sub_2288BA88C(v13, sub_2288D6B24);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_228916EC4(&v52, &v51, &v50);
  return 1;
}

unint64_t sub_2288FD910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2288FDA5C(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_2288FD910(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_2288FDB34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2288FDB9C(uint64_t a1)
{
  if (!qword_2813DECD8)
  {
    sub_2288D6B24(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DECD8);
    }
  }
}

uint64_t sub_2288FDC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2288FDCBC(uint64_t a1, uint64_t a2)
{
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288FDD3C(uint64_t a1)
{
  sub_2288BF214(0, &qword_2813DE910, MEMORY[0x277D100B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2288FDDD8(uint64_t a1)
{
  sub_2288BF214(319, &qword_2813DE920, MEMORY[0x277D0FFC8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2288FDE7C(uint64_t a1)
{
  result = type metadata accessor for SleepingSampleBaselineAccumulator(319);
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2288FDF20(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = v9 + ((v8 + 8) & ~v8) + 1;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 48);

        return v17((a1 + v8 + 8) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        return (v16 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_2288FE0FC(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 64) + ((v8 + 8) & ~v8) + 1;
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (*(v6 + 64) + ((v8 + 8) & ~v8) != -1)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_47:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
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

  else if (v11)
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
  if ((v7 & 0x80000000) != 0)
  {
    v18 = *(v6 + 56);

    v18(&a1[v8 + 8] & ~v8, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v17 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v17 = (a2 - 1);
    }

    *a1 = v17;
  }
}

uint64_t sub_2288FE378()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2288FE3E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2288FE428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2288FE474(uint64_t a1)
{
  v28 = a1;
  v1 = sub_22892E9E8();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v25 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22892DFB8();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E048();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22892DEF8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22892EFA8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22892DF58();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22892EA08();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v28)
  {
    sub_22892DF48();
    v18 = sub_22892DF08();
    v22[0] = v19;
    v22[1] = v18;
    (*(v10 + 8))(v12, v9);
    sub_22892DED8();
    v21 = v23;
    v20 = v24;
    (*(v23 + 104))(v5, *MEMORY[0x277CC9830], v24);
    sub_22892DFC8();
    (*(v21 + 8))(v5, v20);
    sub_22892EF48();
    (*(v26 + 104))(v25, *MEMORY[0x277D10078], v27);
    sub_22892E988();
    sub_2288DBD40(v17);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

id sub_2288FE870(void *a1, void *a2)
{
  v4 = a1;
  sub_22892F948();
  v5 = objc_allocWithZone(MEMORY[0x277D10800]);
  v6 = sub_22892F098();

  v7 = [v5 initWithProfile:v4 debugIdentifier:v6 delegate:0];

  v8 = objc_allocWithZone(v2);
  v9 = sub_2288FF65C(v7, a2);

  return v9;
}

id sub_2288FE93C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22892EDE8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  sub_22892EDC8();

  v15 = sub_22892EDD8();
  v16 = sub_22892F398();

  v17 = os_log_type_enabled(v15, v16);
  v53 = v12;
  v50 = a4;
  v51 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v52 = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v49 = a3;
    v21 = v20;
    v54[0] = v20;
    *v19 = 136446466;
    v22 = sub_22892F948();
    v24 = sub_2288B748C(v22, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2288B748C(a1, a2, v54);
    _os_log_impl(&dword_2288B2000, v15, v16, "[%{public}s] Requesting work for %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v25 = v21;
    a3 = v49;
    MEMORY[0x22AAC47E0](v25, -1, -1);
    v26 = v19;
    v9 = v52;
    MEMORY[0x22AAC47E0](v26, -1, -1);
  }

  v27 = v9[1];
  v27(v14, v8);
  v54[0] = 0;
  v28 = [a3 requestWorkWithPriority:2 error:v54];
  v29 = v54[0];
  if (v28)
  {

    return v29;
  }

  else
  {
    v52 = v54[0];
    v31 = v54[0];
    v32 = sub_22892DE38();

    swift_willThrow();
    v33 = v53;
    sub_22892EDC8();

    v34 = v32;
    v35 = sub_22892EDD8();
    v36 = sub_22892F378();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52 = v9;
      v40 = v39;
      v54[0] = v39;
      *v37 = 136446722;
      v41 = sub_22892F948();
      v43 = sub_2288B748C(v41, v42, v54);
      v50 = v8;
      v44 = v43;

      *(v37 + 4) = v44;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_2288B748C(v51, a2, v54);
      *(v37 + 22) = 2114;
      v45 = v32;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 24) = v46;
      *v38 = v46;
      _os_log_impl(&dword_2288B2000, v35, v36, "[%{public}s] Failed to request work for %{public}s: %{public}@", v37, 0x20u);
      sub_2288DDB10(v38);
      MEMORY[0x22AAC47E0](v38, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v40, -1, -1);
      MEMORY[0x22AAC47E0](v37, -1, -1);

      v47 = v53;
      v48 = v50;
    }

    else
    {

      v47 = v33;
      v48 = v8;
    }

    return (v27)(v47, v48);
  }
}

id sub_2288FEE10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductionProfileExtension();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2288FEF04(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_2288BC0FC(0, &unk_27D85BBF8, 0x277D10598);
  sub_22892F218();

  v5 = a2;
  v4();
}

id sub_2288FEFA8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_state;
  v13 = type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State.CacheEntry(0);
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_22892DF48();
  sub_2289001FC(0, &qword_2813DEAB0, type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_228900268(v11, v14 + *(*v14 + *MEMORY[0x277D841D0] + 16), type metadata accessor for SleepingSampleDaySummaryCurrentValueCache.State);
  *&a4[v12] = v14;
  v15 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_changeDetector];
  *v15 = a1;
  *(v15 + 1) = &off_283BD3EE0;
  v16 = &a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_gregorianCalendarProvider];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = a1;

  sub_22892F948();
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v18 = sub_22892F488();
  sub_228900198(0, qword_2813DFB80, sub_2288E29B0, type metadata accessor for ObserverSet);
  v19 = swift_allocObject();
  v20 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v21 = sub_22892F098();

  v22 = [v20 initWithName:v21 loggingCategory:v18];

  *(v19 + 16) = v22;
  *&a4[OBJC_IVAR____TtC19HealthBalanceDaemon41SleepingSampleDaySummaryCurrentValueCache_observers] = v19;
  v28.receiver = a4;
  v28.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 sharedDiagnosticManager];
  [v26 addObject_];

  [*(*&v17[OBJC_IVAR____TtC19HealthBalanceDaemon27SleepingSampleChangeManager_observers] + 16) registerObserver:v25 queue:0];

  return v25;
}

void *sub_2288FF324(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v38 = a9;
  v39 = a10;
  v15 = type metadata accessor for VitalsOutlierNotificationAnalysisStateCache(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a11;
  swift_getMetatypeMetadata();
  v19 = a1;
  sub_22892F808();
  v20 = HKCreateSerialDispatchQueue();
  swift_unknownObjectRelease();
  v21 = objc_allocWithZone(MEMORY[0x277D10838]);
  v22 = sub_22892F098();
  v23 = [v21 initWithProfile:v19 clientIdentifier:v22 eventHandlerQueue:v20];

  v24 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:a4 healthDataSource:v19 currentCountryCode:0];
  v25 = swift_allocObject();
  sub_2288DEA34(0);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  v25[13] = v26;
  sub_228900198(0, &qword_27D85BC08, type metadata accessor for VitalsOutlierNotificationAnalysisState, MEMORY[0x277D83D88]);
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  v28 = &v18[*(v16 + 28)];
  sub_2289001FC(0, &unk_27D85BC10, type metadata accessor for VitalsOutlierNotificationAnalysisStateCache);
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = swift_allocObject();
  *(v29 + ((*(*v29 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_228900268(v18, v29 + *(*v29 + *MEMORY[0x277D841D0] + 16), type metadata accessor for VitalsOutlierNotificationAnalysisStateCache);
  v25[14] = v29;
  v25[2] = a2;
  v25[3] = v23;
  v25[4] = a3;
  v25[5] = &protocol witness table for SleepingSampleDaySummaryCurrentValueCache;
  v30 = v40;
  v31 = v41;
  v25[6] = v24;
  v25[7] = v30;
  v32 = v42;
  v33 = v43;
  v25[8] = v31;
  v25[9] = v32;
  v35 = v38;
  v34 = v39;
  v25[10] = v33;
  v25[11] = v35;
  v25[12] = v34;
  [a2 startObservation_];
  return v25;
}

id sub_2288FF65C(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  *&v2[qword_27D85B940] = a1;
  *&v2[qword_27D85B948] = a2;
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v6 = a1;

  v7 = objc_msgSendSuper2(&v23, sel_init);
  [v6 setDelegate_];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22890015C;
  *(v9 + 24) = v8;
  v10 = a2[3];
  v11 = swift_allocObject();
  v11[2] = sub_228900164;
  v11[3] = v9;
  aBlock[4] = sub_22890016C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288FEF04;
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  [v10 beginReceivingEventsWithHandler_];
  _Block_release(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = sub_22890015C;
  *(v14 + 24) = v8;
  v15 = a2[13];
  v24 = sub_228900174;
  v25 = v14;

  os_unfair_lock_lock((v15 + 32));
  sub_22890017C((v15 + 16));
  os_unfair_lock_unlock((v15 + 32));
  v16 = a2[5];
  v17 = swift_getObjectType();
  (*(v16 + 8))(a2, &off_283BD5418, 0, v17, v16);

  aBlock[0] = 0;
  if ([v13 requestWorkWithPriority:2 error:aBlock])
  {
    v18 = aBlock[0];
  }

  else
  {
    v19 = aBlock[0];
    v20 = sub_22892DE38();

    swift_willThrow();
  }

  return v7;
}

id sub_2288FF978(void *a1)
{
  v2 = v1;
  sub_22892E268();
  v4 = a1;
  v5 = sub_22892E258();
  v6 = objc_allocWithZone(type metadata accessor for SleepingSampleChangeManager());
  v7 = v4;
  v8 = sub_2288E3CF0(v7, 0, 0, v5, 1.0);
  v9 = objc_allocWithZone(type metadata accessor for SleepingSampleDaySummaryCurrentValueCache());
  v10 = sub_2288FEFA8(v8, sub_2288DEC64, 0, v9);
  v11 = OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_currentValueCache;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_currentValueCache] = v10;
  v12 = v7;
  v13 = [v12 daemon];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 behavior];

    v16 = [v15 isAppleWatch];
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() sharedWidgetService];
  v18 = sub_22891DF84(v16);

  v79 = v11;
  v19 = *&v2[v11];
  v20 = v17;

  v21 = v19;
  v22 = [v12 cloudSyncManager];
  v83[3] = &type metadata for BalanceWidgetTimelineReloader;
  v83[4] = &off_283BD4B30;
  LOBYTE(v83[0]) = v16;
  v83[1] = v20;
  v83[2] = v18;
  v23 = type metadata accessor for BalanceWidgetSchedulingManager();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation] = 0;
  sub_2288D3D58(v83, &v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_widgetReloader]);
  v25 = &v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_changeProvider];
  *v25 = v21;
  *(v25 + 1) = &protocol witness table for SleepingSampleDaySummaryCurrentValueCache;
  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_cloudSyncManager] = v22;
  v26 = v12;
  v27 = v22;
  v28 = sub_22892F098();
  v29 = HKCreateSerialDispatchQueue();

  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue] = v29;
  *&v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadReasons] = MEMORY[0x277D84FA0];
  v30 = &v24[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_didBecomeReady];
  *v30 = 0;
  *(v30 + 1) = 0;
  v82.receiver = v24;
  v82.super_class = v23;
  v31 = objc_msgSendSuper2(&v82, sel_init);
  [v26 registerProfileReadyObserver:v31 queue:0];
  v32 = *&v31[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_queue];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = objc_allocWithZone(MEMORY[0x277CCDD98]);
  aBlock[4] = sub_2289000DC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2288F3CC4;
  aBlock[3] = &block_descriptor_6;
  v35 = _Block_copy(aBlock);

  v36 = [v34 initWithMode:1 clock:1 queue:v32 delay:v35 block:1.0];
  _Block_release(v35);

  __swift_destroy_boxed_opaque_existential_0(v83);

  v37 = *&v31[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation];
  *&v31[OBJC_IVAR____TtC19HealthBalanceDaemon30BalanceWidgetSchedulingManager_reloadOperation] = v36;

  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_widgetSchedulingManager] = v31;
  v38 = sub_2288E34E8(v26);
  v39 = OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepingSampleAnalysisFeatureAvailabilityManager;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepingSampleAnalysisFeatureAvailabilityManager] = v38;
  sub_2288BC0FC(0, &unk_2813DEC30, 0x277CCD570);
  sub_22892F3D8();
  v40 = objc_allocWithZone(MEMORY[0x277D10718]);
  v41 = sub_22892F098();

  v42 = [v40 initWithCategory:105 domainName:v41 profile:v26];

  type metadata accessor for ImbalanceUserNotificationCoordinator();
  sub_2288BC0FC(0, &unk_2813DEB10, 0x277D86200);
  v43 = v42;
  v44 = sub_22892F488();
  v45 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v44 healthDataSource:v26];

  v46 = v26;
  v47 = sub_2288DDCCC(v46, v43, v45);

  v48 = OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_imbalanceUserNotificationCoordinator;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_imbalanceUserNotificationCoordinator] = v47;
  sub_2288DB354();
  v50 = v49;
  v51 = 0;
  if (v50)
  {
    sub_2289000FC(0);
    v78 = type metadata accessor for SleepResultsNotificationManagerHealthDelegate();
    v52 = *&v2[v79];
    v53 = *&v2[v39];
    v54 = v46;
    v55 = v43;
    v56 = v43;
    v57 = v52;
    v58 = v53;
    v59 = sub_22892E258();
    v60 = *&v2[v48];
    v61 = v60;
    v62 = v56;
    v43 = v55;
    v63 = sub_2288FF324(v54, v62, v57, v58, v59, v60, sub_22891E83C, 0, sub_22891E8A8, 0, v78);

    v51 = sub_2288FE870(v54, v63);
  }

  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_sleepResultsNotificationManager] = v51;
  v64 = [v46 daemon];
  if (!v64)
  {

    goto LABEL_10;
  }

  v65 = v64;
  v66 = [v64 behavior];
  v67 = [v66 isCompanionCapable];

  if ((v67 & 1) == 0)
  {
LABEL_10:
    v71 = 0;
    goto LABEL_11;
  }

  v68 = sub_22892F488();
  v69 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v68 healthDataSource:v46];

  v70 = objc_allocWithZone(type metadata accessor for AnalyticsDailyMultiEventManager());
  v71 = sub_228908770(v46, v69, 0, 0);
LABEL_11:
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_analyticsDailyEventManager] = v71;
  v72 = *&v2[v48];
  v73 = swift_allocObject();
  *(v73 + 16) = v72;
  type metadata accessor for UITriggerObserver();
  v74 = swift_allocObject();
  *(v74 + 16) = sub_2289000F4;
  *(v74 + 24) = v73;
  *&v2[OBJC_IVAR____TtC19HealthBalanceDaemon26ProductionProfileExtension_uiTriggerObserver] = v74;
  v80.receiver = v2;
  v80.super_class = type metadata accessor for ProductionProfileExtension();
  v75 = v72;
  v76 = objc_msgSendSuper2(&v80, sel_init);

  return v76;
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_2289000FC(uint64_t a1)
{
  if (!qword_27D85BBF0)
  {
    v2 = type metadata accessor for SleepResultsNotificationManagerHealthDelegate();
    v4 = type metadata accessor for SleepResultsNotificationManager(a1, v2, &off_283BD5430, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27D85BBF0);
    }
  }
}

void sub_228900198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2289001FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for os_unfair_lock_s(255);
    v4 = sub_22892F688();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_228900268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2289002D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2289174A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228900D08(v5);
  *a1 = v2;
  return result;
}

unint64_t BalanceWidgetReloadReason.description.getter()
{
  v1 = 0xD000000000000018;
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
    return 0xD000000000000010;
  }
}

uint64_t BalanceWidgetReloadReason.hashValue.getter()
{
  v1 = *v0;
  sub_22892F8A8();
  MEMORY[0x22AAC3F20](v1);
  return sub_22892F8C8();
}

unint64_t sub_228900424()
{
  v1 = 0xD000000000000018;
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
    return 0xD000000000000010;
  }
}

unint64_t sub_228900480()
{
  result = qword_2813DFDD0;
  if (!qword_2813DFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DFDD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BalanceWidgetReloadReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BalanceWidgetReloadReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22890064C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_228900694(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2289006E4(uint64_t *a1, char a2, void *a3, unint64_t a4)
{
  v14 = sub_2289016D4(a1);
  v7 = v6;
  if (a4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22892F588())
  {
    v9 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAC3CC0](v9, a4);
      }

      else
      {
        if (v9 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(a4 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v17 = v10;
      sub_228901974(&v17, v14, v7, a1, a2 & 1, a3);

      ++v9;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_22890080C(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22892EDE8();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    sub_22892EDC8();
    v12 = a1;

    v13 = sub_22892EDD8();
    v14 = sub_22892F378();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v15 = 136446722;
      *(v15 + 4) = sub_2288B748C(0xD00000000000001DLL, 0x8000000228932520, &v26);
      *(v15 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v23 = &v23;
      MEMORY[0x28223BE20](ErrorValue);
      v24 = a2;
      (*(v18 + 16))(&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = sub_22892F0D8();
      v21 = sub_2288B748C(v19, v20, &v26);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2082;
      *(v15 + 24) = sub_2288B748C(v24, a3, &v26);
      _os_log_impl(&dword_2288B2000, v13, v14, "[%{public}s] error invalidating relevance %{public}s for widget of kind %{public}s", v15, 0x20u);
      v22 = v25;
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v22, -1, -1);
      MEMORY[0x22AAC47E0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_228900B08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void *sub_228900B80(uint64_t a1, uint64_t a2)
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

  sub_228901F30(0, &unk_2813DE9E0, &type metadata for BalanceWidgetReloadReason, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_228900C0C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_228900D08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22892F7D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22892F248();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_228900ED0(v7, v8, a1, v4);
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
    return sub_228900E00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228900E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_22892F818(), (result & 1) == 0))
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

uint64_t sub_228900ED0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_228916EB0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2289014AC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22892F818();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22892F818();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2288D605C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2288D605C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2289014AC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_228916EB0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_228916E24(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22892F818(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}