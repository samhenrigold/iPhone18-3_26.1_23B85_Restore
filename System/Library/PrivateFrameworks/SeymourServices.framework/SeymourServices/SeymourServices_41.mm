uint64_t sub_2272D565C()
{
  v30 = v0;
  (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 648);
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 496);
    v28 = *(v0 + 504);
    v6 = *(v0 + 488);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](*(v0 + 416), *(v0 + 424));
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report plan creation event to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v28, v6);
  }

  else
  {
    v13 = *(v0 + 496);
    v12 = *(v0 + 504);
    v14 = *(v0 + 488);

    (*(v13 + 8))(v12, v14);
  }

  sub_22766A630();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v16, "Reporting plan creation event to CoreAnalytics", v17, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  v18 = *(v0 + 512);
  v19 = *(v0 + 488);
  v20 = *(v0 + 496);

  (*(v20 + 8))(v18, v19);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(v0 + 464);
    v22 = *(v0 + 472);
    v24 = *(v0 + 456);
    sub_226E91B50(Strong + 16, v0 + 216);

    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v25 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v24 - v23) * 1000.0;
    *(v0 + 264) = v22;
    *(v0 + 272) = v25;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2272D5A14()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = sub_2272D5DB0;
  }

  else
  {
    (*(v2[74] + 8))(v2[75], v2[73]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v3 = sub_2272D5B70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D5B70()
{
  sub_2272D6448(v0 + 16);
  sub_22766A630();
  v1 = sub_22766B380();
  v2 = sub_22766C8B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_226E8E000, v1, v2, "Reporting plan creation event to CoreAnalytics", v3, 2u);
    MEMORY[0x22AA9A450](v3, -1, -1);
  }

  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 496);

  (*(v6 + 8))(v4, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(v0 + 464);
    v8 = *(v0 + 472);
    v10 = *(v0 + 456);
    sub_226E91B50(Strong + 16, v0 + 216);

    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v11 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v10 - v9) * 1000.0;
    *(v0 + 264) = v8;
    *(v0 + 272) = v11;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2272D5DB0()
{
  v30 = v0;
  (*(*(v0 + 592) + 8))(*(v0 + 600), *(v0 + 584));
  sub_2272D6448(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  v1 = *(v0 + 672);
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 496);
    v28 = *(v0 + 504);
    v6 = *(v0 + 488);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](*(v0 + 416), *(v0 + 424));
    v11 = sub_226E97AE8(v9, v10, &v29);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report plan creation event to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v28, v6);
  }

  else
  {
    v13 = *(v0 + 496);
    v12 = *(v0 + 504);
    v14 = *(v0 + 488);

    (*(v13 + 8))(v12, v14);
  }

  sub_22766A630();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v16, "Reporting plan creation event to CoreAnalytics", v17, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  v18 = *(v0 + 512);
  v19 = *(v0 + 488);
  v20 = *(v0 + 496);

  (*(v20 + 8))(v18, v19);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(v0 + 464);
    v22 = *(v0 + 472);
    v24 = *(v0 + 456);
    sub_226E91B50(Strong + 16, v0 + 216);

    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v25 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v24 - v23) * 1000.0;
    *(v0 + 264) = v22;
    *(v0 + 272) = v25;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2272D6170()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAnalyticsReporter(uint64_t a1)
{
  result = qword_28139DE98;
  if (!qword_28139DE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272D627C(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2272D6318()
{
  result = qword_27D7BC820;
  if (!qword_27D7BC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC820);
  }

  return result;
}

unint64_t sub_2272D6384()
{
  result = qword_27D7BC830;
  if (!qword_27D7BC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC830);
  }

  return result;
}

uint64_t sub_2272D63D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC838, &unk_22767F500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272D6448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC838, &unk_22767F500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2272D64B0()
{
  result = qword_27D7BC848;
  if (!qword_27D7BC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC848);
  }

  return result;
}

uint64_t sub_2272D6504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272D656C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22766D370();
  sub_22766C100();
  v3 = sub_227669C30();
  MEMORY[0x22AA996B0](v3);
  sub_2273926B4(v5, v1);
  sub_2273923B0(v5, v2);
  return sub_22766D3F0();
}

void sub_2272D65F8(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_22766C100();
  v5 = sub_227669C30();
  MEMORY[0x22AA996B0](v5);
  sub_2273926B4(a1, v3);

  sub_2273923B0(a1, v4);
}

uint64_t sub_2272D6664(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_22766D370();
  sub_22766C100();
  v4 = sub_227669C30();
  MEMORY[0x22AA996B0](v4);
  sub_2273926B4(v6, v2);
  sub_2273923B0(v6, v3);
  return sub_22766D3F0();
}

uint64_t sub_2272D66EC(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  v7 = sub_227669C30();
  if (v7 != sub_227669C30() || (sub_2270340D0(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_227034388(v2, v4);
}

unint64_t sub_2272D67B4()
{
  result = qword_27D7BC858;
  if (!qword_27D7BC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC858);
  }

  return result;
}

void sub_2272D6818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_226F1ED90(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22766CC90();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_226F1ED90((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_226EB526C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_2272D6A40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  v16 = [a1 identifier];
  if (!v16)
  {
    goto LABEL_6;
  }

  v22[3] = a2;
  v17 = v16;
  v22[1] = sub_22766C000();

  v18 = [a1 completedDate];
  if (!v18)
  {

LABEL_6:
    v20 = sub_227664DD0();
    sub_2272D74B8(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
    swift_willThrow();

    return;
  }

  v19 = v18;
  sub_227662710();

  (*(v6 + 32))(v15, v11, v5);
  sub_2274B47BC([a1 selectedModalityIdentifiers]);
  if (v2)
  {
    (*(v6 + 8))(v15, v5);
  }

  else
  {
    (*(v6 + 16))(v8, v15, v5);
    sub_227666610();

    (*(v6 + 8))(v15, v5);
  }
}

void sub_2272D6D20(void *a1, uint64_t a2)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666620();
  v9 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666630();
  v10 = sub_2276626A0();
  (*(v6 + 8))(v8, v5);
  [a1 setCompletedDate_];

  v11 = sub_227666640();
  sub_2272D6818(v11);
  v13 = v12;

  v14 = sub_226F3D770(v13);

  sub_227648160(a2, v14);
  v16 = v15;

  if (!v2)
  {
    [a1 setSelectedModalityIdentifiers_];
  }
}

void *static OnboardingSurveyResult.representativeSamples()()
{
  v25 = sub_227662750();
  v21 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC860, &qword_22767F5E8);
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = v17 - v2;
  v22 = sub_227666650();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_227662630();
  v9 = sub_22766C590();
  v34 = v8;
  v35[0] = v7;
  v35[1] = v35;
  v35[2] = &v34;
  v33 = v9;
  v35[3] = &v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC868, &qword_22767F5F0);
  v27 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v28 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v29 = sub_226F5BF60(&unk_27D7BC870, &qword_27D7BC868, &qword_22767F5F0);
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226F200E8(0, v11, 0);
    v13 = 0;
    v14 = v26;
    v19 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v18 = (v21 + 16);
    v21 = v4;
    v17[1] = v4 + 32;
    v20 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_2272D7388(v19 + *(v1 + 72) * v13, v3);
      (*v18)(v24, &v3[*(v23 + 48)], v25);

      sub_227666610();
      sub_2272D73F8(v3);
      v26 = v14;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F200E8((v15 > 1), v16 + 1, 1);
        v14 = v26;
      }

      ++v13;
      *(v14 + 16) = v16 + 1;
      result = (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v16, v6, v22);
      v10 = v20;
      if (v11 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272D7388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC860, &qword_22767F5E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272D73F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC860, &qword_22767F5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2272D7460(uint64_t a1)
{
  result = sub_2272D74B8(&qword_2813A56A0, MEMORY[0x277D52498], &protocol conformance descriptor for OnboardingSurveyResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272D74B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272D7558(int a1, uint64_t a2, uint64_t a3, void (*a4)(void *, __n128))
{
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v5 = v4;
  v7 = sub_22766B390();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  v13 = sub_22766A8A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2276693C0();
  (*(v14 + 104))(v16, *MEMORY[0x277D4F880], v13);
  v18 = sub_226EC9A38(v16, v17);

  result = (*(v14 + 8))(v16, v13);
  if (v18)
  {
    v47 = a1;
    if (a1)
    {
      sub_22766A6B0();
      v20 = v52;

      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v54 = v24;
        *v23 = 136446210;
        v25 = MEMORY[0x22AA98660](v20, MEMORY[0x277D837D0]);
        v27 = v26;

        v28 = sub_226E97AE8(v25, v27, &v54);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_226E8E000, v21, v22, "Deleting %{public}s for both paired and server sync.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA9A450](v24, -1, -1);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      else
      {
      }

      (*(v48 + 8))(v9, v49);
    }

    else
    {
      sub_22766A6B0();
      v29 = v52;

      v30 = sub_22766B380();
      v31 = sub_22766C8B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v54 = v33;
        *v32 = 136446210;
        v34 = MEMORY[0x22AA98660](v29, MEMORY[0x277D837D0]);
        v36 = v35;

        v37 = sub_226E97AE8(v34, v36, &v54);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_226E8E000, v30, v31, "Inserting %{public}s for both paired and server sync.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x22AA9A450](v33, -1, -1);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      else
      {
      }

      (*(v48 + 8))(v12, v49);
    }

    __swift_project_boxed_opaque_existential_0(v5 + 15, v5[18]);
    LOBYTE(v54) = 8;
    v38 = sub_226F19410();
    v39 = sub_226F19464();
    v44 = v38;
    v40 = sub_22766A130();
    MEMORY[0x28223BE20](v40);
    v43 = v5;
    LOBYTE(v44) = v47 & 1;
    v45 = v50;
    v41 = v53;
    sub_2275CE3DC(v51, &v46[-48], v52);
    v53 = v41;
    v42 = v5[19];
    __swift_project_boxed_opaque_existential_0(v5 + 15, v5[18]);
    LOBYTE(v54) = 8;
    v44 = v38;
    v45 = v39;
    v43 = v42;
    return sub_22766A120();
  }

  return result;
}

uint64_t sub_2272D7F10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5, unsigned int *a6)
{
  v36 = a6;
  v38 = a4;
  v33 = a3;
  v39 = a1;
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227664140();
  MEMORY[0x28223BE20](v12);
  v32 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v18 = *(v9 + 104);
  v31 = *v36;
  v34 = v8;
  v20 = v19;
  v30 = v18;
  v18(v11, v15);

  sub_2276625E0();
  v35 = a2;
  sub_227664100();
  v21 = *(a5 + 3);
  v36 = a5;
  v22 = __swift_project_boxed_opaque_existential_0(a5, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFA8, &qword_227679A68);
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_227670CD0;
  (*(v20 + 16))(v24 + v23, v17, v12);
  v25 = v37;
  sub_22755FCC8(v24, v22[1], *(v22 + 16), v22[3]);

  if (v25)
  {
    return (*(v20 + 8))(v17, v12);
  }

  v27 = *(v20 + 8);
  v27(v17, v12);
  __swift_project_boxed_opaque_existential_0((v33 + 56), *(v33 + 80));
  v30(v11, v31, v34);

  sub_2276625E0();
  v28 = v32;
  sub_227664100();
  sub_2275E7B14(v28, v36);
  return (v27)(v28, v12);
}

uint64_t sub_2272D8258(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D8324, 0, 0);
}

uint64_t sub_2272D8324()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  (*(v4 + 8))(v3, v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = "SeymourServices/KeyDeliverySystem.swift";
  *(v5 + 24) = 39;
  *(v5 + 32) = 2;
  *(v5 + 40) = 55;
  *(v5 + 48) = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = sub_227664900();
  *v6 = v0;
  v6[1] = sub_2272D8470;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272DC2DC, v5, v7);
}

uint64_t sub_2272D8470()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272D85F4, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_2272D85F4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272D8674(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D8734, 0, 0);
}

uint64_t sub_2272D8734(uint64_t a1)
{
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Fetching PlaybackVoucher on public data network activity", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[9] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_2272DC30C;

    return sub_2272D8C64();
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_2272D88D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D8990, 0, 0);
}

uint64_t sub_2272D8990(uint64_t a1)
{
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Fetching PlaybackVoucher on post install activity", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[9] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_2272D8B2C;

    return sub_2272D8C64();
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_2272D8B2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2272D8C64()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v1[10] = *(v4 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = sub_2276637B0();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[22] = v5;
  *v5 = v1;
  v5[1] = sub_2272D8E68;

  return sub_2272DACA0();
}

uint64_t sub_2272D8E68(char a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_2272D8F68, 0, 0);
}

uint64_t sub_2272D8F68(uint64_t a1)
{
  if (*(v1 + 256))
  {
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v1 + 48);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "Skipping playback voucher fetch for subscribed user", v8, 2u);
      MEMORY[0x22AA9A450](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);

    v9 = *(v1 + 8);

    return v9();
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = v11[23];
    v13 = v11[24];
    __swift_project_boxed_opaque_existential_0(v11 + 20, v12);
    v16 = (*(v13 + 8) + **(v13 + 8));
    v14 = swift_task_alloc();
    *(v1 + 184) = v14;
    *v14 = v1;
    v14[1] = sub_2272D9220;
    v15 = *(v1 + 168);

    return v16(v15, 0, v12, v13);
  }
}

uint64_t sub_2272D9220()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2272D9FD8;
  }

  else
  {
    v2 = sub_2272D9334;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272D9334()
{
  v1 = v0[2];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_0(v1 + 20, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_2272D9468;
  v5 = v0[20];

  return v7(v5, 1, v2, v3);
}

uint64_t sub_2272D9468()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2272DA180;
  }

  else
  {
    v2 = sub_2272D957C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272D957C()
{
  v56 = v0;
  v1 = v0[19];
  sub_2271C411C(v0[21], v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  sub_2271C4180(v1);
  if (v4 == 1 && (v5 = v0[18], sub_2271C411C(v0[20], v5), v6 = v3(v5, 1, v2), sub_2271C4180(v5), v6 == 1))
  {
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[2];
    v14 = swift_allocObject();
    *(v14 + 16) = "SeymourServices/KeyDeliverySystem.swift";
    *(v14 + 24) = 39;
    *(v14 + 32) = 2;
    *(v14 + 40) = 90;
    *(v14 + 48) = &unk_22767F6F8;
    *(v14 + 56) = v13;

    sub_227669270();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2272DAAC4;
    *(v15 + 24) = 0;
    (*(v12 + 16))(v9, v7, v11);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = swift_allocObject();
    (*(v12 + 32))(v17 + v16, v9, v11);
    v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = sub_226F5AAF8;
    v18[1] = v15;
    v19 = MEMORY[0x277D84F78];
    sub_227669270();
    v20 = *(v12 + 8);
    v0[27] = v20;
    v0[28] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v7, v11);
    v21 = swift_task_alloc();
    v0[29] = v21;
    *(v21 + 16) = "SeymourServices/KeyDeliverySystem.swift";
    *(v21 + 24) = 39;
    *(v21 + 32) = 2;
    *(v21 + 40) = 100;
    *(v21 + 48) = v8;
    v22 = swift_task_alloc();
    v0[30] = v22;
    *v22 = v0;
    v22[1] = sub_2272D9BB0;

    return MEMORY[0x2822008A0](v22, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D3C, v21, v19 + 8);
  }

  else
  {
    v23 = v0[20];
    v24 = v0[21];
    v26 = v0[16];
    v25 = v0[17];
    sub_22766A730();
    sub_2271C411C(v24, v25);
    sub_2271C411C(v23, v26);
    v27 = sub_22766B380();
    v28 = sub_22766C8B0();
    v29 = os_log_type_enabled(v27, v28);
    v31 = v0[20];
    v30 = v0[21];
    v33 = v0[16];
    v32 = v0[17];
    if (v29)
    {
      v34 = v0[15];
      v54 = v0[7];
      v51 = v0[4];
      v52 = v0[3];
      v53 = v0[21];
      v35 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v35 = 136315394;
      sub_2271C411C(v32, v34);
      v36 = sub_22766C060();
      v38 = v37;
      sub_2271C4180(v32);
      v39 = sub_226E97AE8(v36, v38, &v55);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      sub_2271C411C(v33, v34);
      v40 = sub_22766C060();
      v42 = v41;
      sub_2271C4180(v33);
      v43 = sub_226E97AE8(v40, v42, &v55);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_226E8E000, v27, v28, "Skipping playback voucher fetch due to restriction(s) [backgroundAppRefresh: %s] [recentAPIAccess: %s]", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v50, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);

      (*(v51 + 8))(v54, v52);
      sub_2271C4180(v31);
      v44 = v53;
    }

    else
    {
      v45 = v0[7];
      v46 = v0[3];
      v47 = v0[4];

      sub_2271C4180(v33);
      sub_2271C4180(v32);
      (*(v47 + 8))(v45, v46);
      sub_2271C4180(v31);
      v44 = v30;
    }

    sub_2271C4180(v44);

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_2272D9BB0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_2272D9E0C;
  }

  else
  {
    (*(v2 + 216))(*(v2 + 104), *(v2 + 64));
    v3 = sub_2272D9CF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D9CF8()
{
  v1 = v0[21];
  sub_2271C4180(v0[20]);
  sub_2271C4180(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2272D9E0C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  (*(v0 + 216))(*(v0 + 104), *(v0 + 64));
  sub_2271C4180(v1);
  sub_2271C4180(v2);
  v3 = *(v0 + 248);
  sub_22766A730();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 24);
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "Unable to determine effective restrictions, skipping playback voucher fetch", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2272D9FD8(uint64_t a1)
{
  v2 = v1[24];
  sub_22766A730();
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[3];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v3, v4, "Unable to determine effective restrictions, skipping playback voucher fetch", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);

  v10 = v1[1];

  return v10();
}

uint64_t sub_2272DA180()
{
  sub_2271C4180(v0[21]);
  v1 = v0[26];
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Unable to determine effective restrictions, skipping playback voucher fetch", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2272DA330(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_227664900();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v2[5] = *(v4 + 64);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272DA404, 0, 0);
}

uint64_t sub_2272DA404()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2272DA4A4;
  v2 = *(v0 + 56);

  return MEMORY[0x2821AEF08](v2);
}

uint64_t sub_2272DA4A4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2271E8FDC;
  }

  else
  {
    v2 = sub_2272DA5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272DA5B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_0(v5 + 9, v5[12]);
  (*(v3 + 16))(v2, v1, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = v5;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = *(v6 + 24);

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_2272DA79C;

  return v12();
}

uint64_t sub_2272DA79C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2272DA980;
  }

  else
  {
    v2 = sub_2272DA8CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272DA8CC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[2] + 208), *(v0[2] + 232));
  sub_2271D7EE8();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2272DA980()
{
  (*(v0[4] + 8))(v0[7], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272DAA04(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a2 + 208), *(a2 + 232));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227670CD0;
  *(v3 + 32) = sub_2276648F0();
  *(v3 + 40) = v4;
  sub_2272D7558(0, v3, a1, sub_2272DBF0C);
}

uint64_t sub_2272DAAC4(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v7 = a1;
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x22AA995D0](v17[3], v17[4]);
    v15 = sub_226E97AE8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v8, v9, "Failed to fetch playback voucher with error %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2272DACA0()
{
  v1[20] = v0;
  v2 = sub_22766B390();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v1[26] = *(v4 + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v1[31] = *(v6 + 64);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v1[34] = v7;
  v8 = *(v7 - 8);
  v1[35] = v8;
  v1[36] = *(v8 + 64);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272DAEE0, 0, 0);
}

uint64_t sub_2272DAEE0()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 160) + 248), *(*(v0 + 160) + 272));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 16);
  if (*(v0 + 40))
  {
    sub_226E92AB8((v0 + 16), v0 + 56);
    sub_226E91B50(v0 + 56, v0 + 96);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_226F099DC();
    v4 = swift_allocError();
    *v5 = 0;
    *(swift_allocObject() + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v36 = *(v0 + 296);
  v37 = *(v0 + 288);
  v38 = *(v0 + 312);
  v6 = *(v0 + 280);
  v34 = *(v0 + 304);
  v35 = *(v0 + 272);
  v7 = *(v0 + 240);
  v32 = *(v0 + 256);
  v33 = *(v0 + 248);
  v8 = *(v0 + 224);
  v30 = *(v0 + 264);
  v31 = *(v0 + 232);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  (*(v11 + 16))(v9, v8, v12);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v13, v9, v12);
  v16 = (v15 + v14);
  *v16 = sub_2272DB830;
  v16[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v11 + 8))(v8, v12);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2272DB94C;
  *(v17 + 24) = 0;
  (*(v7 + 16))(v32, v30, v31);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v32, v31);
  v20 = (v19 + ((v33 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_2272DBCB0;
  v20[1] = v17;
  v21 = MEMORY[0x277D839B0];
  sub_227669270();
  (*(v7 + 8))(v30, v31);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2272DBA38;
  *(v22 + 24) = 0;
  (*(v6 + 16))(v36, v34, v35);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v36, v35);
  v25 = (v24 + ((v37 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2272DBCE0;
  v25[1] = v22;
  sub_227669270();
  v26 = *(v6 + 8);
  *(v0 + 320) = v26;
  *(v0 + 328) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v34, v35);
  v27 = swift_task_alloc();
  *(v0 + 336) = v27;
  *(v27 + 16) = "SeymourServices/KeyDeliverySystem.swift";
  *(v27 + 24) = 39;
  *(v27 + 32) = 2;
  *(v27 + 40) = 123;
  *(v27 + 48) = v38;
  v28 = swift_task_alloc();
  *(v0 + 344) = v28;
  *v28 = v0;
  v28[1] = sub_2272DB460;

  return MEMORY[0x2822008A0](v0 + 360, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272DBD10, v27, v21);
}

uint64_t sub_2272DB460()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2272DB650, 0, 0);
  }

  else
  {
    v4 = *(v2 + 360);

    (*(v2 + 320))(*(v2 + 312), *(v2 + 272));

    v5 = *(v3 + 8);

    return v5(v4);
  }
}

uint64_t sub_2272DB650()
{
  v1 = *(v0 + 352);
  (*(v0 + 320))(*(v0 + 312), *(v0 + 272));
  sub_22766A730();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to determine subscription state with error %@, returning isSubscribed=false", v7, 0xCu);
    sub_226F2534C(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_2272DB830(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2272DB94C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v6 = sub_227665AA0();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6 & 1;
  return result;
}

uint64_t sub_2272DBA38@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v8 = a1;
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_226E8E000, v9, v10, "Error %@ fetching subscription status, returning isSubscribed=false", v12, 0xCu);
    sub_226F2534C(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    a2 = v18;
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  *a2 = 0;
  return result;
}

void *sub_2272DBBF8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  return v0;
}

uint64_t sub_2272DBC58()
{
  sub_2272DBBF8();

  return swift_deallocClassInstance();
}

uint64_t sub_2272DBD28(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2272DA330(a1, v1);
}

uint64_t sub_2272DBDC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2272DC310@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CC8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2272DC384@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2276644D0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2272DC3AC(uint64_t a1)
{
  *(a1 + 24) = sub_2272DC414(&qword_2813A57C8, &unk_22767D4A0);
  result = sub_2272DC414(&qword_2813A57C0, MEMORY[0x277D50980]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2272DC414(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227664530();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2272DC458(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 18;
  switch(a1)
  {
    case 13:
      result = 5;
      break;
    case 16:
      result = 9;
      break;
    case 20:
      result = 28;
      break;
    case 21:
      result = 27;
      break;
    case 24:
      result = 24;
      break;
    case 35:
      result = 12;
      break;
    case 37:
      return result;
    case 44:
      result = 11;
      break;
    case 46:
      result = 19;
      break;
    case 52:
      result = 16;
      break;
    case 57:
      result = 6;
      break;
    case 59:
      result = 30;
      break;
    case 61:
    case 67:
      result = 23;
      break;
    case 63:
      result = 22;
      break;
    case 65:
      result = 34;
      break;
    case 66:
      result = 32;
      break;
    case 70:
      result = 20;
      break;
    case 71:
      result = 21;
      break;
    case 72:
      result = 31;
      break;
    case 77:
      result = 7;
      break;
    case 80:
      result = 29;
      break;
    case 83:
      result = 33;
      break;
    default:
      sub_22766A6D0();
      v7 = sub_22766B380();
      v8 = sub_22766C890();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = a1;
        v15 = v10;
        *v9 = 136315138;
        type metadata accessor for HKWorkoutActivityType(0);
        v11 = sub_22766C060();
        v13 = sub_226E97AE8(v11, v12, &v15);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_226E8E000, v7, v8, "Unknown HKWorkoutActivityType: %s. Giving Generic Workout.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x22AA9A450](v10, -1, -1);
        MEMORY[0x22AA9A450](v9, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      result = 14;
      break;
  }

  return result;
}

uint64_t sub_2272DC6E4(uint64_t a1, unsigned int a2)
{
  v35 = a2;
  v4 = sub_2276660A0();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v29[1] = v2;
  v38 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v7, 0);
  v8 = v38;
  v9 = a1 + 56;
  result = sub_22766CC90();
  v11 = result;
  v12 = 0;
  v30 = a1 + 64;
  v31 = v7;
  v32 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 36);
    v36 = v12;
    v37 = v15;
    v16 = (*(a1 + 48) + 16 * v11);
    v17 = a1;
    v18 = v16[1];
    *v6 = *v16;
    v6[1] = v18;
    swift_storeEnumTagMultiPayload();
    v38 = v8;
    v19 = v6;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);

    if (v21 >= v20 >> 1)
    {
      sub_226F1FBA8((v20 > 1), v21 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v21 + 1;
    result = sub_2272F1DC0(v19, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, MEMORY[0x277D52060]);
    v13 = 1 << *(v17 + 32);
    if (v11 >= v13)
    {
      goto LABEL_23;
    }

    a1 = v17;
    v9 = v32;
    v22 = *(v32 + 8 * v14);
    if ((v22 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v6 = v19;
    v23 = v22 & (-2 << (v11 & 0x3F));
    if (v23)
    {
      v13 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v14 << 6;
      v25 = v14 + 1;
      v26 = (v30 + 8 * v14);
      while (v25 < (v13 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v11, v37, 0);
          v13 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_226EB526C(v11, v37, 0);
LABEL_19:
      v6 = v19;
    }

    v12 = v36 + 1;
    v11 = v13;
    if (v36 + 1 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2272DC9E4(uint64_t a1, void (*a2)(void), uint64_t a3, unsigned int a4)
{
  v37 = a4;
  v35 = a2;
  v36 = a3;
  v6 = sub_2276660A0();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v29 = v4;
  v43 = MEMORY[0x277D84F90];
  v31 = v7;
  sub_226F1FBA8(0, v10, 0);
  v11 = v43;
  v39 = v31 + 56;
  result = sub_22766CC90();
  v13 = result;
  v14 = v31;
  v15 = 0;
  v30 = v31 + 64;
  v32 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v39 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v38 = *(v14 + 36);
    v40 = *(*(v14 + 48) + v13);
    v35();
    sub_227663B80();
    v18 = v42;
    *v9 = v41;
    v9[16] = v18;
    swift_storeEnumTagMultiPayload();
    v43 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_226F1FBA8((v19 > 1), v20 + 1, 1);
      v11 = v43;
    }

    *(v11 + 16) = v20 + 1;
    v21 = v9;
    result = sub_2272F1DC0(v9, v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, MEMORY[0x277D52060]);
    v16 = 1 << *(v14 + 32);
    if (v13 >= v16)
    {
      goto LABEL_22;
    }

    v22 = *(v39 + 8 * v17);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(v14 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v17 << 6;
      v25 = v17 + 1;
      v26 = (v30 + 8 * v17);
      while (v25 < (v16 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v13, v38, 0);
          v14 = v31;
          v16 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v13, v38, 0);
      v14 = v31;
    }

LABEL_4:
    ++v15;
    v13 = v16;
    v9 = v21;
    if (v15 == v32)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2272DCD18(uint64_t a1)
{
  v34 = sub_227666FF0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227666F70();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_2272DD020(uint64_t a1)
{
  v54 = sub_2276660A0();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v56 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v47 = xmmword_227670CD0;
  v48 = a1;
  v49 = v17;
  v50 = v6;
  v51 = v2;
  while (v16)
  {
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = *(a1 + 48);
    v55 = *(v2 + 72);
    v21 = MEMORY[0x277D52060];
    v22 = v53;
    sub_2272F1D58(v20 + v55 * (v19 | (v11 << 6)), v53, MEMORY[0x277D52060]);
    v23 = v22;
    v24 = v56;
    sub_2272F1DC0(v23, v56, MEMORY[0x277D52060]);
    sub_2272F1D58(v24, v6, v21);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 1;
        break;
      case 2u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 2;
        break;
      case 3u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 3;
        break;
      case 4u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 5;
        break;
      case 5u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 6;
        break;
      case 6u:
        v26 = sub_227664010();
        (*(*(v26 - 8) + 8))(v6, v26);
        v25 = 4;
        break;
      case 7u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 7;
        break;
      case 8u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 8;
        break;
      case 9u:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 9;
        break;
      case 0xAu:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 10;
        break;
      case 0xBu:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 11;
        break;
      case 0xCu:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 12;
        break;
      default:
        sub_2272F1E28(v6, MEMORY[0x277D52060]);
        v25 = 0;
        break;
    }

    v28 = sub_226F3A9E4(v25);
    v29 = v12[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_37;
    }

    v32 = v27;
    if (v12[3] < v31)
    {
      sub_226FE4394(v31, 1);
      v12 = v57;
      v33 = sub_226F3A9E4(v25);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_39;
      }

      v28 = v33;
    }

    if (v32)
    {
      v35 = v12[7];
      sub_2272F1DC0(v56, v52, MEMORY[0x277D52060]);
      v36 = *(v35 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v28) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_2273A52C0(0, v36[2] + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_2273A52C0((v38 > 1), v39 + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v6 = v50;
      v2 = v51;
      v36[2] = v39 + 1;
      sub_2272F1DC0(v52, v36 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v39 * v55, MEMORY[0x277D52060]);
      a1 = v48;
      v17 = v49;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
      v40 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v47;
      sub_2272F1DC0(v56, v41 + v40, MEMORY[0x277D52060]);
      v12[(v28 >> 6) + 8] |= 1 << v28;
      *(v12[6] + v28) = v25;
      *(v12[7] + 8 * v28) = v41;
      v42 = v12[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_38;
      }

      v12[2] = v44;
      v6 = v50;
      v2 = v51;
      v17 = v49;
    }
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_2272DD664(uint64_t a1, uint64_t a2)
{

  v3 = sub_2272DD020(a2);
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  v57[0] = MEMORY[0x277D84F90];
  v6 = v3 + 8;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v3[8];
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v54 = v5;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(v4[7] + 8 * v13);
      v15 = *(v4[6] + v13);

      v16 = sub_22750F910(v15, v14);

      if (v16)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x22AA985C0](v17);
    if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v54 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v54 = v57[0];
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = v6[v18];
    ++v11;
    if (v9)
    {
      v11 = v18;
      goto LABEL_4;
    }
  }

  v20 = sub_2272DD020(v19);
  v21 = v20;
  v57[0] = v5;
  v22 = v20 + 8;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20[8];
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  if (!v25)
  {
    goto LABEL_19;
  }

  do
  {
LABEL_17:
    while (1)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v29 = v28 | (v27 << 6);
      v30 = *(v21[7] + 8 * v29);
      v31 = *(v21[6] + v29);

      v32 = sub_227511F10(v31, v30);

      if (v32)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_19;
      }
    }

    MEMORY[0x22AA985C0](v33);
    if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v5 = v57[0];
  }

  while (v25);
LABEL_19:
  while (1)
  {
    v34 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v34 >= v26)
    {

      v35 = sub_226F7AE64(v54);
      v36 = sub_226F7AE64(v5);
      sub_22745F2F8(v36);
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2276728D0;
      *(v38 + 32) = sub_227664C10();
      *(v38 + 40) = v39;
      *(v38 + 48) = sub_227664C10();
      *(v38 + 56) = v40;
      swift_getKeyPath();
      v57[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v57[0] = v38;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v41 = sub_22766C820();
      sub_226E93170(v57, v55, &unk_27D7BC990, &qword_227670A30);
      v42 = v56;
      if (v56)
      {
        v43 = __swift_project_boxed_opaque_existential_0(v55, v56);
        v44 = *(v42 - 8);
        v45 = MEMORY[0x28223BE20](v43);
        v47 = &v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = sub_22766D170();
        (*(v44 + 8))(v47, v42);
        __swift_destroy_boxed_opaque_existential_0(v55);
      }

      else
      {
        v48 = 0;
      }

      v49 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v50 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

      sub_226E97D1C(v57, &unk_27D7BC990, &qword_227670A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670B30;
      *(inited + 32) = v50;
      v57[0] = v37;
      sub_22745F2F8(inited);
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v52 = sub_22766C2B0();

      [objc_opt_self() andPredicateWithSubpredicates_];

      return;
    }

    v25 = v22[v34];
    ++v27;
    if (v25)
    {
      v27 = v34;
      goto LABEL_17;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_2272DDC00(uint64_t a1)
{
  v3 = v1;
  v4 = sub_227284784(0);
  if (v2)
  {
    return v3;
  }

  v5 = v4;
  [v4 setResultType_];
  [v5 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227670CD0;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v7 = sub_22766C820();
  v8 = [v7 keyPath];

  v9 = sub_22766C000();
  v11 = v10;

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v12 = sub_22766C2B0();

  [v5 setPropertiesToFetch_];

  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v13 = sub_22766C9E0();
  v15 = sub_2273C20B4(v13);

  if (!v15)
  {
    v21 = sub_227664DD0();
    sub_2272F2064(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v3 = swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51018], v21);
    swift_willThrow();

    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  if (!v17)
  {
LABEL_11:

    if (*(v16 + 16))
    {
      v3 = *(v16 + 32);
    }

    else
    {
      v3 = 0;
    }

    return v3;
  }

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    v19 = v18 + 1;

    result = sub_22745EF20(v20);
    v18 = v19;
    if (v17 == v19)
    {
      v16 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2272DDED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[130] = v3;
  v4[129] = a3;
  v4[128] = a2;
  v4[127] = a1;
  v5 = sub_227667400();
  v4[131] = v5;
  v4[132] = *(v5 - 8);
  v4[133] = swift_task_alloc();
  v4[134] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8540, &qword_22767F770);
  v4[135] = swift_task_alloc();
  v6 = sub_227665C20();
  v4[136] = v6;
  v4[137] = *(v6 - 8);
  v4[138] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC890, &qword_22767F778);
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v7 = sub_227666D60();
  v4[141] = v7;
  v4[142] = *(v7 - 8);
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v4[146] = *(sub_227667BA0() - 8);
  v4[147] = swift_task_alloc();
  v8 = sub_227662A40();
  v4[148] = v8;
  v4[149] = *(v8 - 8);
  v4[150] = swift_task_alloc();
  v9 = sub_2276686C0();
  v4[151] = v9;
  v4[152] = *(v9 - 8);
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v10 = sub_227662EC0();
  v4[155] = v10;
  v4[156] = *(v10 - 8);
  v4[157] = swift_task_alloc();
  v11 = sub_227669890();
  v4[158] = v11;
  v4[159] = *(v11 - 8);
  v4[160] = swift_task_alloc();
  v12 = sub_2276671E0();
  v4[161] = v12;
  v4[162] = *(v12 - 8);
  v4[163] = swift_task_alloc();
  v13 = sub_227662D20();
  v4[164] = v13;
  v4[165] = *(v13 - 8);
  v4[166] = swift_task_alloc();
  v4[167] = swift_task_alloc();
  v14 = sub_227666D20();
  v4[168] = v14;
  v4[169] = *(v14 - 8);
  v4[170] = swift_task_alloc();
  sub_227662AD0();
  v4[171] = swift_task_alloc();
  v15 = sub_227668F90();
  v4[172] = v15;
  v16 = *(v15 - 8);
  v4[173] = v16;
  v4[174] = *(v16 + 64);
  v4[175] = swift_task_alloc();
  v4[176] = swift_task_alloc();
  v4[177] = swift_task_alloc();
  v4[178] = swift_task_alloc();
  v4[179] = swift_task_alloc();
  v4[180] = swift_task_alloc();
  v17 = sub_227668EF0();
  v4[181] = v17;
  v4[182] = *(v17 - 8);
  v4[183] = swift_task_alloc();
  v18 = sub_227662CC0();
  v4[184] = v18;
  v4[185] = *(v18 - 8);
  v4[186] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v4[187] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC8A0, &qword_22767F788);
  v4[188] = swift_task_alloc();
  v19 = sub_227662750();
  v4[189] = v19;
  v4[190] = *(v19 - 8);
  v4[191] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  v4[192] = swift_task_alloc();
  v20 = sub_2276629D0();
  v4[193] = v20;
  v4[194] = *(v20 - 8);
  v4[195] = swift_task_alloc();
  v4[196] = swift_task_alloc();
  v21 = sub_227668630();
  v4[197] = v21;
  v4[198] = *(v21 - 8);
  v4[199] = swift_task_alloc();
  v22 = sub_227662B00();
  v4[200] = v22;
  v4[201] = *(v22 - 8);
  v4[202] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v4[203] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC8A8, &unk_22767F790);
  v4[204] = swift_task_alloc();
  v23 = sub_227662F70();
  v4[205] = v23;
  v4[206] = *(v23 - 8);
  v4[207] = swift_task_alloc();
  v4[208] = swift_task_alloc();
  v24 = sub_227662AB0();
  v4[209] = v24;
  v4[210] = *(v24 - 8);
  v4[211] = swift_task_alloc();
  v4[212] = swift_task_alloc();
  v25 = type metadata accessor for InferenceProvider(0);
  v4[213] = v25;
  v26 = *(v25 - 8);
  v4[214] = v26;
  v4[215] = *(v26 + 64);
  v4[216] = swift_task_alloc();
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v4[219] = swift_task_alloc();
  v4[220] = swift_task_alloc();
  v27 = sub_2276627D0();
  v4[221] = v27;
  v4[222] = *(v27 - 8);
  v4[223] = swift_task_alloc();
  v4[224] = swift_task_alloc();
  v28 = sub_22766C940();
  v4[225] = v28;
  v4[226] = *(v28 - 8);
  v4[227] = swift_task_alloc();
  v4[228] = sub_22766CA10();
  v4[229] = swift_task_alloc();
  sub_22766B3F0();
  v4[230] = swift_task_alloc();
  v29 = sub_2276624A0();
  v4[231] = v29;
  v4[232] = *(v29 - 8);
  v4[233] = swift_task_alloc();
  v4[234] = swift_task_alloc();
  v30 = type metadata accessor for TransportSerializableJournalRecorder(0);
  v4[235] = v30;
  v31 = *(v30 - 8);
  v4[236] = v31;
  v4[237] = *(v31 + 64);
  v4[238] = swift_task_alloc();
  v4[239] = swift_task_alloc();
  v32 = sub_22766B390();
  v4[240] = v32;
  v4[241] = *(v32 - 8);
  v4[242] = swift_task_alloc();
  v4[243] = swift_task_alloc();
  v4[244] = swift_task_alloc();
  v4[245] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272DEBD8, 0, 0);
}

uint64_t sub_2272DEBD8(uint64_t a1)
{
  v2 = *(v1 + 1960);
  v3 = *(v1 + 1928);
  v4 = *(v1 + 1920);
  v27 = *(v1 + 1880);
  v28 = *(v1 + 1912);
  v5 = *(v1 + 1864);
  v6 = *(v1 + 1856);
  v7 = *(v1 + 1848);
  v23 = *(v1 + 1872);
  v8 = *(v1 + 1808);
  v24 = *(v1 + 1816);
  v25 = *(v1 + 1800);
  v32 = *(v1 + 1776);
  v30 = *(v1 + 1792);
  v31 = *(v1 + 1768);
  v34 = *(v1 + 1760);
  v35 = *(v1 + 1712);
  v29 = *(v1 + 1040);
  v33 = *(v1 + 1032);
  sub_22766A680();
  sub_22766B370();
  v9 = *(v3 + 8);
  *(v1 + 1968) = v9;
  *(v1 + 1976) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  sub_227662330();
  sub_2276623F0();
  v26 = *(v6 + 8);
  v26(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  sub_227669730();
  v22 = *(v1 + 793);
  sub_226E99364(0, &unk_28139D250, 0x277D85C90);
  sub_22766B3D0();
  *(v1 + 856) = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_28139D260, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8B0, &qword_227678490);
  sub_226E9CFD0(&qword_28139D2D0, &unk_27D7BC8B0, &qword_227678490, MEMORY[0x277D83970]);
  sub_22766CC80();
  (*(v8 + 104))(v24, *MEMORY[0x277D85268], v25);
  v10 = sub_22766CA20();
  *(v28 + v27[8]) = 10;
  (*(v6 + 16))(v28, v23, v7);
  *(v28 + v27[6]) = v10;
  *(v28 + v27[7]) = v22;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v28 + v27[5]) = v11;
  v12 = v11;
  v13 = sub_22766BFD0();
  [v12 setDateFormat_];

  v26(v23, v7);
  sub_22766CE20();

  sub_227668F40();
  *(v1 + 1984) = sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v14 = sub_22766D140();
  MEMORY[0x22AA98450](v14);

  v15 = *(v32 + 8);
  *(v1 + 1992) = v15;
  *(v1 + 2000) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v30, v31);
  sub_2272EC59C(0xD00000000000001ELL, 0x800000022769D160, v33, v28);

  sub_2272F1D58(v29, v34, type metadata accessor for InferenceProvider);
  v16 = *(v35 + 80);
  *(v1 + 2160) = v16;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  *(v1 + 2008) = v18;
  sub_2272F1DC0(v34, v18 + v17, type metadata accessor for InferenceProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();
  v19 = swift_task_alloc();
  *(v1 + 2016) = v19;
  *v19 = v1;
  v19[1] = sub_2272DF1A0;
  v20 = *(v1 + 1696);

  return sub_2272E3B9C(v20);
}

uint64_t sub_2272DF1A0()
{

  return MEMORY[0x2822009F8](sub_2272DF29C, 0, 0);
}

uint64_t sub_2272DF29C()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1040);
  v3 = (*(v0 + 2160) + 16) & ~*(v0 + 2160);
  v4 = (v2 + *(*(v0 + 1704) + 32));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v5);
  sub_2272F1D58(v2, v1, type metadata accessor for InferenceProvider);
  v7 = swift_allocObject();
  *(v0 + 2024) = v7;
  sub_2272F1DC0(v1, v7 + v3, type metadata accessor for InferenceProvider);
  v10 = (*(v6 + 24) + **(v6 + 24));
  v8 = swift_task_alloc();
  *(v0 + 2032) = v8;
  *v8 = v0;
  v8[1] = sub_2272DF47C;

  return v10(v0 + 840, sub_2272ECAD4, v7, &type metadata for ModalityIdentifierMap, v5, v6);
}

uint64_t sub_2272DF47C()
{
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v2 = sub_2272E0E0C;
  }

  else
  {

    v2 = sub_2272DF598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272DF598()
{
  v3 = *(v0 + 840);
  *(v0 + 2048) = v3;
  v1 = swift_task_alloc();
  *(v0 + 2064) = v1;
  *v1 = v0;
  v1[1] = sub_2272DF644;

  return sub_2272EDCC0(v3);
}

uint64_t sub_2272DF644(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2072) = v1;

  if (v1)
  {

    v5 = sub_2272E0730;
  }

  else
  {
    *(v4 + 2080) = a1;
    v5 = sub_2272DF780;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272DF780()
{
  v150 = v0;
  v1 = v0[259];
  v0[261] = sub_226F212FC(v0[260]);

  v149[0] = sub_227668D20();

  sub_2272EAA9C(v149);
  if (v1)
  {
  }

  else
  {
    v121 = v0;

    v3 = v149[0];
    v4 = *(v149[0] + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = v0;
      v7 = v0[201];
      v8 = v0[198];
      v9 = v0[194];
      v10 = v121[190];
      v149[0] = MEMORY[0x277D84F90];
      sub_226F1F788(0, v4, 0);
      v11 = v149[0];
      v12 = *(v8 + 16);
      v8 += 16;
      v13 = v3 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v130 = *(v8 + 56);
      v131 = v12;
      v146 = (v9 + 8);
      v126 = (v9 + 48);
      v128 = (v10 + 8);
      v124 = (v8 - 8);
      v125 = (v9 + 16);
      v123 = (v9 + 32);
      do
      {
        v141 = v13;
        v143 = v4;
        v14 = v121[195];
        v15 = v121[193];
        v16 = v121[192];
        v17 = v121[191];
        v18 = v121[189];
        v131(v121[199]);
        sub_227668610();
        sub_227668620();
        sub_227662980();
        (*v128)(v17, v18);
        v139 = *v146;
        (*v146)(v14, v15);
        sub_227662990();
        v19 = *v126;
        v20 = (*v126)(v16, 1, v15);
        v21 = v121[193];
        v22 = v121[192];
        v148 = v11;
        if (v20 == 1)
        {
          sub_2276629C0();
          if (v19(v22, 1, v21) != 1)
          {
            sub_226E97D1C(v121[192], &unk_27D7BF3D0, &unk_227675740);
          }
        }

        else
        {
          (*v123)(v121[196], v22, v21);
        }

        v23 = v121[199];
        v136 = v121[197];
        v24 = v121[196];
        v25 = v121[195];
        v26 = v121[193];
        *(v121 + 199) = sub_227668600();
        sub_22766D140();
        sub_2276685F0();
        sub_227668620();
        (*v125)(v25, v24, v26);
        sub_227662AF0();
        v139(v24, v26);
        (*v124)(v23, v136);
        v11 = v148;
        v149[0] = v148;
        v28 = *(v148 + 16);
        v27 = *(v148 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_226F1F788((v27 > 1), v28 + 1, 1);
          v11 = v149[0];
        }

        v29 = v121[202];
        v30 = v121[200];
        *(v11 + 16) = v28 + 1;
        (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, v29, v30);
        v13 = v141 + v130;
        v4 = v143 - 1;
      }

      while (v143 != 1);

      v5 = MEMORY[0x277D84F90];
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
      v6 = v0;
    }

    v6[262] = v11;
    v31 = v6[203];
    sub_227668D50();
    v32 = sub_2276638D0();
    v33 = v6;
    v34 = *(v32 - 8);
    v35 = (*(v34 + 48))(v31, 1, v32);
    v36 = v33[204];
    v37 = v33[203];
    if (v35 == 1)
    {
      sub_226E97D1C(v37, &unk_27D7BB920, &unk_227672480);
      v38 = sub_227662B30();
      (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    }

    else
    {
      sub_226FAF290(v36);
      (*(v34 + 8))(v37, v32);
    }

    v39 = v121;
    v40 = sub_227668D80();
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = v121[185];
      v43 = v121[182];
      v149[0] = v5;
      sub_226F1F768(0, v41, 0);
      v44 = v149[0];
      v46 = *(v43 + 16);
      v45 = v43 + 16;
      v47 = v40 + ((*(v45 + 64) + 32) & ~*(v45 + 64));
      v137 = *(v45 + 56);
      v140 = v46;
      do
      {
        v48 = v121[183];
        v49 = v121[181];
        v140(v48, v47, v49);
        sub_227668EE0();
        v50 = sub_227668EC0();
        sub_227331C58(v50);

        sub_227668EA0();
        sub_227668ED0();
        sub_227668EB0();
        sub_227662CB0();
        (*(v45 - 8))(v48, v49);
        v149[0] = v44;
        v51 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v51 >= v52 >> 1)
        {
          sub_226F1F768((v52 > 1), v51 + 1, 1);
          v44 = v149[0];
        }

        v53 = v121[186];
        v54 = v121[184];
        *(v44 + 16) = v51 + 1;
        (*(v42 + 32))(v44 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v51, v53, v54);
        v47 += v137;
        --v41;
      }

      while (v41);
    }

    v55 = v121[187];
    (*(v121[210] + 16))(v121[211], v121[212], v121[209]);
    sub_227668D30();
    v56 = sub_227666650();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      sub_226E97D1C(v121[187], &unk_27D7BB8C0, &qword_22767F780);
      v58 = 1;
    }

    else
    {
      v59 = v121[187];
      sub_227666630();
      sub_227666640();
      v39 = v121;
      sub_227662BE0();
      (*(v57 + 8))(v59, v56);
      v58 = 0;
    }

    v132 = v39[256];
    v134 = v39[257];
    v60 = *(v39 + 2160);
    v102 = v39[238];
    v103 = v39[239];
    v107 = v39[236];
    v108 = v39[237];
    v100 = v39[219];
    v105 = v39[218];
    v114 = v39[217];
    v116 = v39[216];
    v144 = v39[215];
    v117 = v39[208];
    v118 = v39[206];
    v119 = v39[207];
    v120 = v39[205];
    v61 = v39[188];
    v62 = v39[180];
    v99 = v62;
    v101 = v39[179];
    v113 = v39[178];
    v122 = v39[177];
    v63 = v39;
    v129 = v39[174];
    v64 = v39[173];
    v65 = v63[172];
    v115 = (v60 + 16) & ~v60;
    v110 = v63[170];
    v111 = v63[169];
    v112 = v63[168];
    v66 = v63[130];
    v67 = v63[128];
    v68 = sub_227662BF0();
    (*(*(v68 - 8) + 56))(v61, v58, 1, v68);
    v69 = *(v64 + 16);
    v63[263] = v69;
    v63[264] = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v69(v62, v67, v65);
    sub_2272F1D58(v66, v100, type metadata accessor for InferenceProvider);
    v70 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v127 = v70;
    v104 = ((v70 + v129 + v60) & ~v60) + v144;
    v106 = (v70 + v129 + v60) & ~v60;
    v71 = swift_allocObject();
    v72 = *(v64 + 32);
    v73 = v71;
    v72(v71 + v70, v99, v65);
    sub_2272F1DC0(v100, v73 + v106, type metadata accessor for InferenceProvider);
    v69(v101, v67, v65);
    sub_2272F1D58(v103, v102, type metadata accessor for TransportSerializableJournalRecorder);
    sub_2272F1D58(v66, v105, type metadata accessor for InferenceProvider);
    v74 = (v70 + v129 + *(v107 + 80)) & ~*(v107 + 80);
    v75 = (v108 + v60 + v74) & ~v60;
    v109 = swift_allocObject();
    v72(v109 + v127, v101, v65);
    sub_2272F1DC0(v102, v109 + v74, type metadata accessor for TransportSerializableJournalRecorder);
    sub_2272F1DC0(v105, v109 + v75, type metadata accessor for InferenceProvider);
    v76 = (v109 + ((v144 + v75 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v76 = v132;
    v76[1] = v134;

    sub_227668D70();
    sub_22739A08C();
    (*(v111 + 8))(v110, v112);
    v69(v113, v67, v65);
    sub_2272F1D58(v66, v114, type metadata accessor for InferenceProvider);
    v77 = swift_allocObject();
    v72(v77 + v127, v113, v65);
    sub_2272F1DC0(v114, v77 + v106, type metadata accessor for InferenceProvider);
    v78 = (v77 + ((v104 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v78 = v132;
    v78[1] = v134;
    sub_2272F1D58(v66, v116, type metadata accessor for InferenceProvider);
    v79 = swift_allocObject();
    sub_2272F1DC0(v116, v79 + v115, type metadata accessor for InferenceProvider);

    sub_227662F60();
    sub_227668F40();
    (*(v118 + 16))(v119, v117, v120);
    sub_227668F50();
    sub_227668D60();
    sub_227668F60();
    sub_227662D10();
    sub_22766A680();
    v69(v122, v67, v65);
    v80 = sub_22766B380();
    v81 = sub_22766C880();
    if (os_log_type_enabled(v80, v81))
    {
      v138 = v63[249];
      v147 = v63[246];
      v142 = v63[240];
      v145 = v63[244];
      v82 = v63[224];
      v83 = v63[221];
      v135 = v81;
      v84 = v63[177];
      v85 = v63[173];
      v133 = v63[172];
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v149[0] = v87;
      *v86 = 136315138;
      sub_227668F40();
      v88 = sub_22766D140();
      v90 = v89;
      v138(v82, v83);
      v91 = *(v85 + 8);
      v91(v84, v133);
      v92 = sub_226E97AE8(v88, v90, v149);

      *(v86 + 4) = v92;
      _os_log_impl(&dword_226E8E000, v80, v135, "[Inference] [%s] Submitting inference request to generate plans.", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x22AA9A450](v87, -1, -1);
      MEMORY[0x22AA9A450](v86, -1, -1);

      v147(v145, v142);
    }

    else
    {
      v93 = v63[246];
      v94 = v63[244];
      v95 = v63[240];
      v96 = v63[177];
      v97 = v63[173];
      v98 = v63[172];

      v91 = *(v97 + 8);
      v91(v96, v98);
      v93(v94, v95);
    }

    v63[265] = v91;

    return MEMORY[0x282200930](v63 + 2, v63 + 113, sub_2272E1500, v63 + 100);
  }
}

uint64_t sub_2272E0730()
{
  (*(v0[210] + 8))(v0[212], v0[209]);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E07B0, v0 + 92);
}

uint64_t sub_2272E07CC()
{
  v38 = v0;
  v1 = v0[259];
  v2 = v0[175];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[249];
    v36 = v0[246];
    v34 = v0[240];
    v35 = v0[242];
    v9 = v0[224];
    v10 = v0[221];
    v11 = v1;
    v12 = v0[175];
    v13 = v0[173];
    v29 = v0[172];
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v14 = 136315394;
    v30 = v8;
    sub_227668F40();
    v15 = sub_22766D140();
    v17 = v16;
    v31(v9, v10);
    (*(v13 + 8))(v12, v29);
    v18 = sub_226E97AE8(v15, v17, v37);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v32 = v20;
    _os_log_impl(&dword_226E8E000, v7, v30, "[Inference] [%s] Failed to fetch plans: %@ ", v14, 0x16u);
    sub_226E97D1C(v32, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v36(v35, v34);
  }

  else
  {
    v21 = v0[246];
    v22 = v0[242];
    v23 = v0[240];
    v24 = v0[175];
    v25 = v0[173];
    v26 = v0[172];

    (*(v25 + 8))(v24, v26);
    v21(v22, v23);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_2272E0E0C()
{
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[209];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E0EA4, v0 + 82);
}

uint64_t sub_2272E0EC0()
{
  v38 = v0;
  v1 = v0[255];
  v2 = v0[175];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[249];
    v36 = v0[246];
    v34 = v0[240];
    v35 = v0[242];
    v9 = v0[224];
    v10 = v0[221];
    v11 = v1;
    v12 = v0[175];
    v13 = v0[173];
    v29 = v0[172];
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v14 = 136315394;
    v30 = v8;
    sub_227668F40();
    v15 = sub_22766D140();
    v17 = v16;
    v31(v9, v10);
    (*(v13 + 8))(v12, v29);
    v18 = sub_226E97AE8(v15, v17, v37);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v32 = v20;
    _os_log_impl(&dword_226E8E000, v7, v30, "[Inference] [%s] Failed to fetch plans: %@ ", v14, 0x16u);
    sub_226E97D1C(v32, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v36(v35, v34);
  }

  else
  {
    v21 = v0[246];
    v22 = v0[242];
    v23 = v0[240];
    v24 = v0[175];
    v25 = v0[173];
    v26 = v0[172];

    (*(v25 + 8))(v24, v26);
    v21(v22, v23);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_2272E1500()
{
  *(v1 + 2128) = v0;
  if (v0)
  {

    v2 = sub_2272E339C;
  }

  else
  {
    v2 = sub_2272E15AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272E15AC()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  sub_227662A00();
  swift_allocObject();
  swift_unknownObjectRetain();
  v0[267] = sub_2276629F0();
  sub_22766A7F0();
  (*(v3 + 16))(v2, v1, v4);
  sub_226E9DD3C("InferenceProvider.fetchPersonalizedWorkoutPlans", 47, 2, &dword_226E8E000, 1, v0 + 87);
  v9 = (*MEMORY[0x277D49430] + MEMORY[0x277D49430]);
  v5 = swift_task_alloc();
  v0[268] = v5;
  *v5 = v0;
  v5[1] = sub_2272E1708;
  v6 = v0[166];
  v7 = v0[157];

  return v9(v7, v6);
}

uint64_t sub_2272E1708()
{
  *(*v1 + 2152) = v0;

  if (v0)
  {

    v2 = sub_2272E27A8;
  }

  else
  {
    v2 = sub_2272E1850;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272E1850()
{
  v185 = v0;
  v169 = v0[249];
  v178 = v0[239];
  v156 = v0[224];
  v159 = v0[221];
  v148 = v0[166];
  v122 = v0[165];
  v143 = v0[164];
  v134 = v0[163];
  v151 = v0[160];
  v145 = v0[159];
  v150 = v0[158];
  v1 = v0[157];
  v137 = v0[156];
  v140 = v0[155];
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[151];
  v6 = v0[150];
  v7 = v0[149];
  v8 = v0[148];
  sub_227662EB0();
  sub_22709422C(v2);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 16))(v3, v2, v5);
  v9 = sub_227662EA0();
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  sub_2275F29E0(sub_2272EF278, v10, v9);

  sub_2276671D0();
  (*(v4 + 8))(v2, v5);
  (*(v137 + 8))(v1, v140);
  __swift_project_boxed_opaque_existential_0(v0 + 87, v0[90]);
  sub_227669930();
  v121 = *(v122 + 8);
  v121(v148, v143);
  (*(v145 + 8))(v151, v150);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  sub_22766CE20();

  v183 = 0xD00000000000001BLL;
  v184 = 0x800000022769D1B0;
  sub_227668F40();
  v11 = sub_22766D140();
  MEMORY[0x22AA98450](v11);

  v169(v156, v159);
  sub_2272ECB50(0xD00000000000001BLL, 0x800000022769D1B0, v134, v178);

  v12 = sub_2276671C0();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v0[146];
    v173 = v0[142];
    v15 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v179 = *(v14 + 72);
    v16 = (v173 + 32);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v18 = v0[147];
      v19 = v0[141];
      v20 = v0[140];
      v21 = v0[139];
      sub_2272F1D58(v15, v18, MEMORY[0x277D53198]);
      sub_227667B90();
      sub_2272EF298(v21, v20);
      sub_2272F1E28(v18, MEMORY[0x277D53198]);
      if ((*(v173 + 48))(v20, 1, v19) == 1)
      {
        sub_226E97D1C(v0[140], &unk_27D7BC890, &qword_22767F778);
      }

      else
      {
        v22 = *v16;
        (*v16)(v0[145], v0[140], v0[141]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = v17;
        }

        else
        {
          v23 = sub_2273A50F8(0, v17[2] + 1, 1, v17);
        }

        v25 = v23[2];
        v24 = v23[3];
        if (v25 >= v24 >> 1)
        {
          v23 = sub_2273A50F8((v24 > 1), v25 + 1, 1, v23);
        }

        v26 = v0[145];
        v27 = v0[141];
        v23[2] = v25 + 1;
        v17 = v23;
        v22(v23 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v25, v26, v27);
      }

      v15 += v179;
      --v13;
    }

    while (v13);

    isUniquelyReferenced_nonNull_native = v17;
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  v131 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v131)
  {
    v32 = 0;
    v123 = v0 + 97;
    v33 = v0[142];
    v129 = isUniquelyReferenced_nonNull_native + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v128 = (v0[137] + 8);
    v144 = v0[132];
    v130 = v33;
    v126 = (v33 + 8);
    v152 = v0[256];
    v180 = v0[134];
    v157 = v0;
    v127 = isUniquelyReferenced_nonNull_native;
LABEL_18:
    if (v32 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_57;
    }

    v42 = v0[138];
    v43 = v0[136];
    v149 = v32 + 1;
    v146 = *(v130 + 16);
    v146(v0[144], v129 + *(v130 + 72) * v32, v0[141]);
    sub_227666D40();
    v44 = sub_227665BD0();
    (*v128)(v42, v43);
    v45 = v44 + 64;
    v46 = -1 << *(v44 + 32);
    if (-v46 < 64)
    {
      v47 = ~(-1 << -v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & *(v44 + 64);
    v49 = (63 - v46) >> 6;

    v50 = 0;
    v153 = MEMORY[0x277D84F90];
    v132 = v49;
    if (!v48)
    {
      goto LABEL_25;
    }

    do
    {
LABEL_29:
      while (1)
      {
        v52 = v0[135];
        v53 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v54 = v53 | (v50 << 6);
        v55 = *(v44 + 48);
        v56 = sub_227665440();
        (*(*(v56 - 8) + 16))(v52, v55 + *(*(v56 - 8) + 72) * v54, v56);
        v57 = *(*(v44 + 56) + 8 * v54);
        *(v52 + *(v180 + 48)) = v57;
        v58 = *(v57 + 16);

        if (v58)
        {
          v59 = sub_227665400();
          if (MEMORY[0x22AA95620](v59) != 7)
          {
            break;
          }
        }

        isUniquelyReferenced_nonNull_native = sub_226E97D1C(v0[135], &qword_27D7B8540, &qword_22767F770);
        if (!v48)
        {
          goto LABEL_25;
        }
      }

      v60 = *(v57 + 16);
      if (v60)
      {
        v182 = MEMORY[0x277D84F90];
        isUniquelyReferenced_nonNull_native = sub_226F1EF90();
        v61 = 0;
        v135 = v57 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v138 = v60;
        v62 = v182;
        v141 = v44;
        while (1)
        {
          if (v61 >= *(v57 + 16))
          {
            goto LABEL_56;
          }

          v174 = v62;
          v170 = v61;
          (*(v144 + 16))(v0[133], v135 + *(v144 + 72) * v61, v0[131]);
          v63 = sub_2276673E0();
          if (!*(v152 + 16))
          {
            break;
          }

          v65 = sub_226E92000(v63, v64);
          v67 = v66;

          if ((v67 & 1) == 0)
          {
            goto LABEL_38;
          }

          v68 = *(v152 + 56) + 24 * v65;
          v69 = *(v68 + 16);
          *v123 = *v68;
          *(v123 + 16) = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_22713A9EC();
          v70 = sub_227663B60();
LABEL_39:
          v72 = v71;
          v73 = v0[133];
          v160 = v70;
          v165 = v0[131];
          v183 = 40;
          v184 = 0xE100000000000000;
          v0[119] = sub_2276673F0();
          v74 = sub_22766D140();
          MEMORY[0x22AA98450](v74);

          MEMORY[0x22AA98450](41, 0xE100000000000000);
          v76 = v183;
          v75 = v184;
          v183 = v160;
          v184 = v72;

          MEMORY[0x22AA98450](v76, v75);

          v77 = v183;
          v78 = v184;
          isUniquelyReferenced_nonNull_native = (*(v144 + 8))(v73, v165);
          v62 = v174;
          v79 = *(v174 + 16);
          if (v79 >= *(v174 + 24) >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_226F1EF90();
            v62 = v174;
          }

          v61 = v170 + 1;
          *(v62 + 16) = v79 + 1;
          v80 = v62 + 16 * v79;
          *(v80 + 32) = v77;
          *(v80 + 40) = v78;
          v44 = v141;
          v0 = v157;
          if (v138 == v170 + 1)
          {
            goto LABEL_44;
          }
        }

LABEL_38:
        v70 = sub_2276673E0();
        goto LABEL_39;
      }

      v62 = MEMORY[0x277D84F90];
LABEL_44:
      v175 = v0[135];
      v0[125] = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_226E9CFD0(&qword_27D7BC8C0, &qword_27D7B84E0, &qword_22767C6B0, MEMORY[0x277D83958]);
      v81 = sub_22766BF70();
      v83 = v82;

      v183 = sub_2276692E0();
      v184 = v84;
      MEMORY[0x22AA98450](91, 0xE100000000000000);
      MEMORY[0x22AA98450](v81, v83);

      MEMORY[0x22AA98450](93, 0xE100000000000000);
      v85 = v183;
      v86 = v184;
      sub_226E97D1C(v175, &qword_27D7B8540, &qword_22767F770);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_226EB3F78(0, *(v153 + 16) + 1, 1, v153);
        v153 = isUniquelyReferenced_nonNull_native;
      }

      v49 = v132;
      v88 = *(v153 + 16);
      v87 = *(v153 + 24);
      if (v88 >= v87 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_226EB3F78((v87 > 1), v88 + 1, 1, v153);
        v153 = isUniquelyReferenced_nonNull_native;
      }

      *(v153 + 16) = v88 + 1;
      v89 = v153 + 16 * v88;
      *(v89 + 32) = v85;
      *(v89 + 40) = v86;
    }

    while (v48);
LABEL_25:
    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v49)
      {
        v171 = v0[263];
        v90 = v0[176];
        v91 = v0[172];
        v92 = v0[143];
        v161 = v0[141];
        v166 = v0[144];
        v93 = v0[128];

        v0[126] = v153;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_226E9CFD0(&qword_27D7BC8C0, &qword_27D7B84E0, &qword_22767C6B0, MEMORY[0x277D83958]);
        v142 = sub_22766BF70();
        v95 = v94;

        sub_22766A680();
        v171(v90, v93, v91);
        v146(v92, v166, v161);

        v96 = sub_22766B380();
        v97 = sub_22766C880();

        v176 = v96;
        v98 = os_log_type_enabled(v96, v97);
        v99 = v0[265];
        if (v98)
        {
          v125 = v0[249];
          v167 = v0[246];
          v162 = v0[243];
          v154 = v0[240];
          v100 = v0[224];
          v101 = v0[221];
          v139 = v97;
          v102 = v0[176];
          v124 = v0[172];
          v147 = v0[144];
          v103 = v0[143];
          v133 = v0[141];
          v104 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v183 = v136;
          *v104 = 136315650;
          sub_227668F40();
          v105 = sub_22766D140();
          v107 = v106;
          v125(v100, v101);
          v99(v102, v124);
          v108 = sub_226E97AE8(v105, v107, &v183);

          *(v104 + 4) = v108;
          *(v104 + 12) = 2080;
          sub_227666D50();
          v109 = sub_227665F30();
          v111 = v110;
          v112 = *v126;
          (*v126)(v103, v133);
          v113 = sub_226E97AE8(v109, v111, &v183);

          *(v104 + 14) = v113;
          *(v104 + 22) = 2080;
          v114 = sub_226E97AE8(v142, v95, &v183);

          *(v104 + 24) = v114;
          _os_log_impl(&dword_226E8E000, v176, v139, "[Inference] [%s] Plan Schedule %s: %s", v104, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v136, -1, -1);
          MEMORY[0x22AA9A450](v104, -1, -1);

          v167(v162, v154);
          v112(v147, v133);
        }

        else
        {
          v164 = v0[246];
          v34 = v0[243];
          v35 = v0[240];
          v36 = v0[176];
          v37 = v0[172];
          v38 = v0[144];
          v39 = v0[143];
          v40 = v0[141];

          v41 = *v126;
          (*v126)(v39, v40);
          v99(v36, v37);
          v164(v34, v35);
          v41(v38, v40);
        }

        v32 = v149;
        v0 = v157;
        isUniquelyReferenced_nonNull_native = v127;
        if (v149 == v131)
        {
          goto LABEL_52;
        }

        goto LABEL_18;
      }

      v48 = *(v45 + 8 * v51);
      ++v50;
      if (v48)
      {
        v50 = v51;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
LABEL_52:

    v115 = v0[210];
    v116 = v0[206];
    v155 = v0[205];
    v158 = v0[208];
    v117 = v0[167];
    v118 = v0[164];
    v177 = v0[163];
    v181 = v0[212];
    v119 = v0[162];
    v168 = v0[161];
    v172 = v0[209];
    v163 = v0[127];

    v121(v117, v118);
    (*(v116 + 8))(v158, v155);
    (*(v115 + 8))(v181, v172);
    (*(v119 + 32))(v163, v177, v168);
    v29 = sub_2272E2FA8;
    isUniquelyReferenced_nonNull_native = (v0 + 2);
    v28 = v0 + 113;
    v30 = v0 + 120;
  }

  return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v28, v29, v30);
}

uint64_t sub_2272E27A8()
{
  v1 = v0[210];
  v14 = v0[209];
  v15 = v0[212];
  v13 = v0[208];
  v2 = v0[206];
  v12 = v0[205];
  v3 = v0[165];
  v4 = v0[164];
  v10 = v0[160];
  v11 = v0[167];
  v5 = v0[159];
  v8 = v0[166];
  v9 = v0[158];
  __swift_project_boxed_opaque_existential_0(v0 + 87, v0[90]);
  sub_227669930();
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0(v0 + 87, v0[90]);
  sub_227669920();
  v6 = *(v3 + 8);
  v6(v8, v4);
  (*(v5 + 8))(v10, v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);

  v6(v11, v4);
  (*(v2 + 8))(v13, v12);
  (*(v1 + 8))(v15, v14);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E294C, v0 + 114);
}

uint64_t sub_2272E2968()
{
  v38 = v0;
  v1 = v0[269];
  v2 = v0[175];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[249];
    v36 = v0[246];
    v34 = v0[240];
    v35 = v0[242];
    v9 = v0[224];
    v10 = v0[221];
    v11 = v1;
    v12 = v0[175];
    v13 = v0[173];
    v29 = v0[172];
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v14 = 136315394;
    v30 = v8;
    sub_227668F40();
    v15 = sub_22766D140();
    v17 = v16;
    v31(v9, v10);
    (*(v13 + 8))(v12, v29);
    v18 = sub_226E97AE8(v15, v17, v37);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v32 = v20;
    _os_log_impl(&dword_226E8E000, v7, v30, "[Inference] [%s] Failed to fetch plans: %@ ", v14, 0x16u);
    sub_226E97D1C(v32, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v36(v35, v34);
  }

  else
  {
    v21 = v0[246];
    v22 = v0[242];
    v23 = v0[240];
    v24 = v0[175];
    v25 = v0[173];
    v26 = v0[172];

    (*(v25 + 8))(v24, v26);
    v21(v22, v23);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_2272E2FC4()
{
  sub_2272F1E28(*(v0 + 1912), type metadata accessor for TransportSerializableJournalRecorder);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272E339C()
{
  v1 = v0[212];
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[208];
  v5 = v0[206];
  v6 = v0[205];
  (*(v0[165] + 8))(v0[167], v0[164]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x282200920](v0 + 2, v0 + 113, sub_2272E3474, v0 + 108);
}

uint64_t sub_2272E3490()
{
  v38 = v0;
  v1 = v0[266];
  v2 = v0[175];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[128];
  sub_2272F1E28(v0[239], type metadata accessor for TransportSerializableJournalRecorder);
  sub_22766A680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[249];
    v36 = v0[246];
    v34 = v0[240];
    v35 = v0[242];
    v9 = v0[224];
    v10 = v0[221];
    v11 = v1;
    v12 = v0[175];
    v13 = v0[173];
    v29 = v0[172];
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v14 = 136315394;
    v30 = v8;
    sub_227668F40();
    v15 = sub_22766D140();
    v17 = v16;
    v31(v9, v10);
    (*(v13 + 8))(v12, v29);
    v18 = sub_226E97AE8(v15, v17, v37);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v32 = v20;
    _os_log_impl(&dword_226E8E000, v7, v30, "[Inference] [%s] Failed to fetch plans: %@ ", v14, 0x16u);
    sub_226E97D1C(v32, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v36(v35, v34);
  }

  else
  {
    v21 = v0[246];
    v22 = v0[242];
    v23 = v0[240];
    v24 = v0[175];
    v25 = v0[173];
    v26 = v0[172];

    (*(v25 + 8))(v24, v26);
    v21(v22, v23);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t sub_2272E3AD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2272E3AF0, 0, 0);
}

uint64_t sub_2272E3AF0()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for InferenceProvider(0);
  __swift_project_boxed_opaque_existential_0((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_2272E3B9C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2272E3BBC, 0, 0);
}

uint64_t sub_2272E3BBC()
{
  v1 = *(v0 + 40);
  v2 = (v1 + *(type metadata accessor for InferenceProvider(0) + 32));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  *v5 = v0;
  v5[1] = sub_2272E3D30;

  return v8(v0 + 16, sub_2272EA868, 0, v6, v3, v4);
}

uint64_t sub_2272E3D30()
{

  if (v0)
  {

    v1 = sub_2272E3EC8;
  }

  else
  {
    v1 = sub_2272E3E48;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2272E3E48()
{
  if (!*(v0 + 24))
  {
  }

  sub_227662AA0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272E3EC8()
{

  sub_227662AA0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272E3F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2276627D0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_227668F90();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_22766B390();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E40B4, 0, 0);
}

uint64_t sub_2272E40B4(uint64_t a1)
{
  v33 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[3];
  sub_22766A680();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C880();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[12];
  v9 = v1[13];
  v12 = v1[10];
  v11 = v1[11];
  v14 = v1[8];
  v13 = v1[9];
  if (v8)
  {
    v31 = v1[11];
    v16 = v1[6];
    v15 = v1[7];
    log = v6;
    v17 = v1[5];
    v27 = v1[8];
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v18 = 136315138;
    v30 = v9;
    sub_227668F40();
    sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_22766D140();
    v26 = v7;
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v27);
    v22 = sub_226E97AE8(v19, v21, &v32);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_226E8E000, log, v26, "[Inference] [%s] Catalog query request received.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v18, -1, -1);

    (*(v10 + 8))(v30, v31);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = swift_task_alloc();
  v1[14] = v23;
  *v23 = v1;
  v23[1] = sub_2272E435C;
  v24 = v1[2];

  return sub_2272E44C8(v24);
}

uint64_t sub_2272E435C(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2272E44C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC968, qword_22767F860);
  v2[5] = swift_task_alloc();
  v3 = sub_227662D00();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_227666B60();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_227663040();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_227665850();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v7 = sub_227663010();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v2[20] = *(v8 + 64);
  v2[21] = swift_task_alloc();
  v9 = sub_227662FA0();
  v2[22] = v9;
  v2[23] = *(v9 - 8);
  v2[24] = swift_task_alloc();
  v10 = type metadata accessor for InferenceProvider(0);
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v2[27] = *(v11 + 64);
  v2[28] = swift_task_alloc();
  v12 = sub_227663FA0();
  v2[29] = v12;
  v2[30] = *(v12 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E4854, 0, 0);
}

uint64_t sub_2272E4854()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 200) + 32);
  *(v0 + 304) = v4;
  v5 = *(v3 + v4 + 24);
  v6 = *(v3 + v4 + 32);
  __swift_project_boxed_opaque_existential_0((v3 + v4), v5);
  sub_2272F1D58(v3, v1, type metadata accessor for InferenceProvider);
  v7 = *(v2 + 80);
  *(v0 + 308) = v7;
  v8 = (v7 + 16) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  sub_2272F1DC0(v1, v9 + v8, type metadata accessor for InferenceProvider);
  v14 = (*(v6 + 24) + **(v6 + 24));
  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_2272E4A30;
  v11 = *(v0 + 248);
  v12 = *(v0 + 232);

  return v14(v11, sub_2272F2158, v9, v12, v5, v6);
}

uint64_t sub_2272E4A30()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2272E500C;
  }

  else
  {

    v2 = sub_2272E4B4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272E4B4C(uint64_t a1)
{
  v3 = *(v1 + 240);
  v2 = *(v1 + 248);
  v4 = *(v1 + 232);
  v6 = *(v1 + 184);
  v5 = *(v1 + 192);
  v7 = *(v1 + 176);
  v8 = sub_227663E90();
  (*(v3 + 8))(v2, v4);
  sub_227662FF0();
  v9 = sub_227662F90();
  v10 = *(v6 + 8);
  v10(v5, v7);
  v45 = sub_2272E9194(v9, v8);

  sub_227662FF0();
  v11 = sub_227662F80();
  v10(v5, v7);
  v44 = sub_2272E9194(v11, v8);

  v12 = sub_227662FD0();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v1 + 128);
    v15 = *(v1 + 104);
    v52 = MEMORY[0x277D84F90];
    sub_226F203A8(0, v13, 0);
    v16 = v52;
    v17 = *(v15 + 16);
    v15 += 16;
    v18 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v48 = *(v15 + 56);
    v50 = v17;
    v19 = (v15 - 8);
    do
    {
      v20 = *(v1 + 112);
      v21 = *(v1 + 96);
      v50(v20, v18, v21);
      sub_227663030();
      sub_227663020();
      sub_227665860();
      (*v19)(v20, v21);
      v23 = *(v52 + 16);
      v22 = *(v52 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F203A8((v22 > 1), v23 + 1, 1);
      }

      v24 = *(v1 + 136);
      v25 = *(v1 + 120);
      *(v52 + 16) = v23 + 1;
      (*(v14 + 32))(v52 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v24, v25);
      v18 += v48;
      --v13;
    }

    while (v13);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v26 = *(v1 + 308);
  v27 = *(v1 + 224);
  v28 = *(v1 + 160);
  v29 = *(v1 + 168);
  v43 = *(v1 + 216);
  v31 = *(v1 + 144);
  v30 = *(v1 + 152);
  v32 = *(v1 + 24);
  v33 = *(v1 + 32);
  v34 = (v33 + *(v1 + 304));
  v51 = v34[3];
  v46 = v27;
  v49 = v34[4];
  __swift_project_boxed_opaque_existential_0(v34, v51);
  (*(v30 + 16))(v29, v32, v31);
  sub_2272F1D58(v33, v27, type metadata accessor for InferenceProvider);
  v35 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v36 = (v28 + v26 + v35) & ~v26;
  v37 = (v43 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v1 + 280) = v39;
  (*(v30 + 32))(v39 + v35, v29, v31);
  sub_2272F1DC0(v46, v39 + v36, type metadata accessor for InferenceProvider);
  *(v39 + v37) = v44;
  *(v39 + v38) = v45;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v47 = (*(v49 + 24) + **(v49 + 24));
  v40 = swift_task_alloc();
  *(v1 + 288) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  *v40 = v1;
  v40[1] = sub_2272E50F8;

  return v47(v1 + 16, sub_2272F1C34, v39, v41, v51, v49);
}

uint64_t sub_2272E500C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272E50F8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_2272E552C;
  }

  else
  {

    v2 = sub_2272E5214;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2272E5214()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[2] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v27 = (v2 + 48);
  v24 = v0[7];
  v25 = (v2 + 32);
  v28 = v0[2];

  v11 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = v0[11];
    v14 = v0[9];
    v16 = v0[5];
    v15 = v0[6];
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v1 + 16))(v13, *(v28 + 48) + *(v1 + 72) * (v17 | (v11 << 6)), v14);
    sub_2273AA468(v16);
    (*(v1 + 8))(v13, v14);
    if ((*v27)(v16, 1, v15) == 1)
    {
      sub_226E97D1C(v0[5], &qword_27D7BC968, qword_22767F860);
    }

    else
    {
      v18 = *v25;
      (*v25)(v0[8], v0[5], v0[6]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2273A6A64(0, *(v26 + 2) + 1, 1, v26);
      }

      v20 = *(v26 + 2);
      v19 = *(v26 + 3);
      if (v20 >= v19 >> 1)
      {
        v26 = sub_2273A6A64((v19 > 1), v20 + 1, 1, v26);
      }

      v21 = v0[8];
      v22 = v0[6];
      *(v26 + 2) = v20 + 1;
      v18(&v26[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v21, v22);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v23 = v0[1];

  v23(v26);
}

uint64_t sub_2272E552C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272E5618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_227662E90();
  v7[9] = swift_task_alloc();
  sub_227662C90();
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for WorkoutPlanScheduleResult(0);
  v7[12] = swift_task_alloc();
  v8 = sub_2276627D0();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v9 = sub_227668F90();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v10 = sub_22766B390();
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = sub_227662CA0();
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v12 = sub_227662C60();
  v7[27] = v12;
  v7[28] = *(v12 - 8);
  v7[29] = swift_task_alloc();
  v13 = sub_2276688C0();
  v7[30] = v13;
  v7[31] = *(v13 - 8);
  v7[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E5950, 0, 0);
}

uint64_t sub_2272E5950()
{
  v59 = v0;
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v55 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  sub_227662F30();
  sub_226FFF5EC(v1);
  (*(v3 + 8))(v2, v55);
  sub_227662F40();
  (*(v5 + 32))(v6, v4, v7);
  v8 = (*(v5 + 88))(v6, v7);
  if (v8 == *MEMORY[0x277D494D8])
  {
    v9 = 1;
    goto LABEL_8;
  }

  if (v8 != *MEMORY[0x277D494E0])
  {
    if (v8 == *MEMORY[0x277D494E8])
    {
      v9 = 2;
      goto LABEL_8;
    }

    (*(v0[24] + 8))(v0[25], v0[23]);
  }

  v9 = 0;
LABEL_8:
  v56 = v9;
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v13 = v0[4];
  sub_22766A680();
  (*(v11 + 16))(v10, v13, v12);
  v14 = sub_22766B380();
  v15 = sub_22766C880();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[17];
  v22 = v0[18];
  if (v16)
  {
    v54 = v0[20];
    v23 = v0[16];
    log = v14;
    v25 = v0[13];
    v24 = v0[14];
    v50 = v15;
    v26 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57 = v51;
    *v26 = 136315394;
    v53 = v17;
    sub_227668F40();
    sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = v18;
    v27 = v25;
    v28 = sub_22766D140();
    v30 = v29;
    (*(v24 + 8))(v23, v27);
    (*(v22 + 8))(v20, v21);
    v31 = sub_226E97AE8(v28, v30, &v57);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v32 = sub_227665F30();
    v34 = sub_226E97AE8(v32, v33, &v57);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_226E8E000, log, v50, "[Inference] [%s] Schedule generator called for scaffold %s.", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v51, -1, -1);
    MEMORY[0x22AA9A450](v26, -1, -1);

    (*(v49 + 8))(v53, v54);
  }

  else
  {

    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);
  }

  v35 = v0[32];
  v36 = v0[16];
  v37 = v0[13];
  v38 = v0[14];
  v39 = v0[5];
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_22766CE20();

  v57 = 0xD00000000000001BLL;
  v58 = 0x800000022769D1D0;
  sub_227668F40();
  sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v40 = sub_22766D140();
  MEMORY[0x22AA98450](v40);

  v41 = *(v38 + 8);
  v0[33] = v41;
  v0[34] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v36, v37);
  sub_2272ED864(v57, v58, v35, v39);

  sub_227662F20();
  v42 = swift_task_alloc();
  v0[35] = v42;
  *v42 = v0;
  v42[1] = sub_2272E5E50;
  v43 = v0[32];
  v44 = v0[15];
  v45 = v0[12];
  v46 = v0[7];
  v47 = v0[8];

  return sub_2272E6240(v45, v43, v44, v56, v46, v47);
}

uint64_t sub_2272E5E50()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  *(*v1 + 288) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_2272E6134;
  }

  else
  {
    v5 = sub_2272E5FD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272E5FD0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[12];
  v5 = v0[9];
  sub_22735BF38(v0[10]);
  sub_22739FB64(v5);
  sub_227662F50();
  sub_2272F1E28(v4, type metadata accessor for WorkoutPlanScheduleResult);
  (*(v1 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2272E6134()
{
  (*(v0[31] + 8))(v0[32], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272E6240(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 26) = a4;
  *(v7 + 64) = a3;
  *(v7 + 72) = a5;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v8 = sub_22766B390();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  v9 = sub_227664EC0();
  *(v7 + 136) = v9;
  *(v7 + 144) = *(v9 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v10 = sub_227668B10();
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 - 8);
  *(v7 + 200) = swift_task_alloc();
  v11 = sub_227668240();
  *(v7 + 208) = v11;
  *(v7 + 216) = *(v11 - 8);
  *(v7 + 224) = swift_task_alloc();
  sub_2276639D0();
  *(v7 + 232) = swift_task_alloc();
  v12 = type metadata accessor for InferenceProvider(0);
  *(v7 + 240) = v12;
  v13 = *(v12 - 8);
  *(v7 + 248) = v13;
  *(v7 + 256) = *(v13 + 64);
  *(v7 + 264) = swift_task_alloc();
  v14 = sub_227663FA0();
  *(v7 + 272) = v14;
  *(v7 + 280) = *(v14 - 8);
  *(v7 + 288) = swift_task_alloc();
  v15 = sub_227667370();
  *(v7 + 296) = v15;
  *(v7 + 304) = *(v15 - 8);
  *(v7 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E65A4, 0, 0);
}

uint64_t sub_2272E65A4()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[11];
  v4 = (v3 + *(v0[30] + 32));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v5);
  sub_2272F1D58(v3, v1, type metadata accessor for InferenceProvider);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[40] = v8;
  sub_2272F1DC0(v1, v8 + v7, type metadata accessor for InferenceProvider);
  v13 = (*(v6 + 24) + **(v6 + 24));
  v9 = swift_task_alloc();
  v0[41] = v9;
  *v9 = v0;
  v9[1] = sub_2272E6774;
  v10 = v0[36];
  v11 = v0[34];

  return v13(v10, sub_2272F2158, v8, v11, v5, v6);
}

uint64_t sub_2272E6774()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2272E6C00;
  }

  else
  {

    v2 = sub_2272E6890;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272E6890(uint64_t a1)
{
  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  v4 = *(v1 + 272);
  sub_227663E60();
  (*(v3 + 8))(v2, v4);
  sub_2276639C0();
  v5 = sub_227668870();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v1 + 216);
    v8 = *(v1 + 192);
    v31 = MEMORY[0x277D84F90];
    sub_226F203C8(0, v6, 0);
    v9 = v31;
    v10 = *(v8 + 16);
    v8 += 16;
    v11 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v29 = *(v8 + 56);
    v30 = v10;
    v28 = (v8 - 8);
    do
    {
      v12 = *(v1 + 200);
      v13 = *(v1 + 184);
      v30(v12, v11, v13);
      sub_227668AE0();
      sub_227668B00();
      sub_227668AF0();
      sub_227668210();
      (*v28)(v12, v13);
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F203C8((v14 > 1), v15 + 1, 1);
      }

      v16 = *(v1 + 224);
      v17 = *(v1 + 208);
      *(v31 + 16) = v15 + 1;
      (*(v7 + 32))(v31 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
      v11 += v29;
      --v6;
    }

    while (v6);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v18 = *(v1 + 232);
  v19 = *(v1 + 26);
  *(v1 + 40) = v18[4];
  v32 = sub_22766D140();
  v33 = v20;
  MEMORY[0x22AA98450](46, 0xE100000000000000);
  MEMORY[0x22AA98450](v18[5], v18[6]);
  *(v1 + 344) = v33;
  v21 = sub_226F46364(v9);
  *(v1 + 352) = v21;

  sub_227668880();
  *(v1 + 25) = v19;
  sub_2272F1AC4();
  sub_227663B80();
  sub_227668890();
  *(v1 + 360) = sub_2276688B0();
  v22 = swift_task_alloc();
  *(v1 + 368) = v22;
  *v22 = v1;
  v22[1] = sub_2272E7340;
  v23 = *(v1 + 72);
  v24 = *(v1 + 80);
  v25 = *(v1 + 64);
  v26 = *(v1 + 48);

  return sub_227043188(v26, v32, v33, v21, v25, v23, v24, 1);
}

uint64_t sub_2272E6C00()
{

  v1 = *(v0 + 336);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);

    (*(v6 + 32))(v4, v3, v7);
    sub_22766A680();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 160);
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v15 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v8(v16, v12, v13);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v13;
      v19 = *(v14 + 8);
      v19(v12, v18);
      *(v15 + 4) = v17;
      *v57 = v17;
      _os_log_impl(&dword_226E8E000, v9, v10, "[Inference] WorkoutPlanError: Failed to build schedule: %@", v15, 0xCu);
      sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    else
    {

      v30 = v13;
      v19 = *(v14 + 8);
      v19(v12, v30);
    }

    v31 = *(*(v0 + 104) + 8);
    v31(*(v0 + 128), *(v0 + 96));
    v32 = sub_2274FFE78();
    v33 = *(v0 + 168);
    if (v32 == 13)
    {
      v58 = v19;
      v34 = *(v0 + 152);
      v35 = *(v0 + 136);
      sub_22766A680();
      v36 = v8;
      v8(v34, v33, v35);
      v37 = sub_22766B380();
      v38 = sub_22766C890();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 152);
      v41 = *(v0 + 136);
      if (v39)
      {
        v42 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v42 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        v8(v43, v40, v41);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        v45 = v41;
        v46 = v58;
        v58(v40, v45);
        *(v42 + 4) = v44;
        *v56 = v44;
        v36 = v8;
        _os_log_impl(&dword_226E8E000, v37, v38, "[Inference] Unmapped Inference error: %@", v42, 0xCu);
        sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v56, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      else
      {

        v50 = v41;
        v46 = v58;
        v58(v40, v50);
      }

      v51 = *(v0 + 168);
      v52 = *(v0 + 136);
      v31(*(v0 + 120), *(v0 + 96));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v36(v53, v51, v52);
      swift_willThrow();
      v46(v51, v52);
    }

    else
    {
      v47 = v32;
      v48 = *(v0 + 136);
      sub_2272F1A58();
      swift_allocError();
      *v49 = v47;
      swift_willThrow();
      v19(v33, v48);
    }
  }

  else
  {

    sub_22766A680();
    v20 = v1;
    v21 = sub_22766B380();
    v22 = sub_22766C890();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_226E8E000, v21, v22, "[Inference] Unhandled schedule error: %@", v23, 0xCu);
      sub_226E97D1C(v24, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v29 = *(v0 + 96);

    (*(v27 + 8))(v28, v29);
    swift_willThrow();
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2272E7340()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_2272E75D0;
  }

  else
  {
    v2 = sub_2272E748C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272E748C()
{
  v1 = v0[29];
  (*(v0[38] + 8))(v0[39], v0[37]);
  sub_2272F1E28(v1, MEMORY[0x277D501E8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2272E75D0()
{
  v1 = *(v0 + 232);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
  sub_2272F1E28(v1, MEMORY[0x277D501E8]);
  v2 = *(v0 + 376);
  *(v0 + 32) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);

    (*(v7 + 32))(v5, v4, v8);
    sub_22766A680();
    v9 = *(v7 + 16);
    v9(v6, v5, v8);
    v10 = sub_22766B380();
    v11 = sub_22766C890();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v16 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v9(v17, v13, v14);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      v19 = v14;
      v20 = *(v15 + 8);
      v20(v13, v19);
      *(v16 + 4) = v18;
      *v58 = v18;
      _os_log_impl(&dword_226E8E000, v10, v11, "[Inference] WorkoutPlanError: Failed to build schedule: %@", v16, 0xCu);
      sub_226E97D1C(v58, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    else
    {

      v31 = v14;
      v20 = *(v15 + 8);
      v20(v13, v31);
    }

    v32 = *(*(v0 + 104) + 8);
    v32(*(v0 + 128), *(v0 + 96));
    v33 = sub_2274FFE78();
    v34 = *(v0 + 168);
    if (v33 == 13)
    {
      v59 = v20;
      v35 = *(v0 + 152);
      v36 = *(v0 + 136);
      sub_22766A680();
      v37 = v9;
      v9(v35, v34, v36);
      v38 = sub_22766B380();
      v39 = sub_22766C890();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 152);
      v42 = *(v0 + 136);
      if (v40)
      {
        v43 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v43 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        v9(v44, v41, v42);
        v45 = _swift_stdlib_bridgeErrorToNSError();
        v46 = v42;
        v47 = v59;
        v59(v41, v46);
        *(v43 + 4) = v45;
        *v57 = v45;
        v37 = v9;
        _os_log_impl(&dword_226E8E000, v38, v39, "[Inference] Unmapped Inference error: %@", v43, 0xCu);
        sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v57, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      else
      {

        v51 = v42;
        v47 = v59;
        v59(v41, v51);
      }

      v52 = *(v0 + 168);
      v53 = *(v0 + 136);
      v32(*(v0 + 120), *(v0 + 96));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v37(v54, v52, v53);
      swift_willThrow();
      v47(v52, v53);
    }

    else
    {
      v48 = v33;
      v49 = *(v0 + 136);
      sub_2272F1A58();
      swift_allocError();
      *v50 = v48;
      swift_willThrow();
      v20(v34, v49);
    }
  }

  else
  {

    sub_22766A680();
    v21 = v2;
    v22 = sub_22766B380();
    v23 = sub_22766C890();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_226E8E000, v22, v23, "[Inference] Unhandled schedule error: %@", v24, 0xCu);
      sub_226E97D1C(v25, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    v28 = *(v0 + 104);
    v29 = *(v0 + 112);
    v30 = *(v0 + 96);

    (*(v28 + 8))(v29, v30);
    swift_willThrow();
  }

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_2272E7D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2276627D0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_227668F90();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_22766B390();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_227662CA0();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = sub_227662C60();
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();
  v10 = sub_2276688C0();
  v4[22] = v10;
  v4[23] = *(v10 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272E7FDC, 0, 0);
}

uint64_t sub_2272E7FDC()
{
  v45 = v0;
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v42 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[15];
  sub_227662F30();
  sub_226FFF5EC(v1);
  (*(v3 + 8))(v2, v42);
  sub_227662F40();
  (*(v5 + 32))(v6, v4, v7);
  v8 = (*(v5 + 88))(v6, v7);
  if (v8 != *MEMORY[0x277D494D8] && v8 != *MEMORY[0x277D494E0] && v8 != *MEMORY[0x277D494E8])
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = v0[3];
  sub_22766A680();
  (*(v10 + 16))(v9, v12, v11);
  v13 = sub_22766B380();
  v14 = sub_22766C880();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v21 = v0[9];
  v20 = v0[10];
  if (v15)
  {
    v43 = v0[12];
    log = v13;
    v23 = v0[7];
    v22 = v0[8];
    v37 = v0[13];
    v24 = v0[6];
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v25 = 136315394;
    v41 = v16;
    sub_227668F40();
    sub_2272F2064(&unk_28139BD90, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_22766D140();
    v38 = v14;
    v28 = v27;
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    v29 = sub_226E97AE8(v26, v28, &v44);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = sub_227665F30();
    v32 = sub_226E97AE8(v30, v31, &v44);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_226E8E000, log, v38, "[Inference] [%s] Scaffold validator called with scaffold for %s.", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v39, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);

    (*(v37 + 8))(v41, v43);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
  }

  v33 = swift_task_alloc();
  v0[25] = v33;
  *v33 = v0;
  v33[1] = sub_2272E83CC;
  v34 = v0[24];
  v35 = v0[5];

  return sub_2272EF4F0(v34, v35);
}

uint64_t sub_2272E83CC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2272E85B8;
  }

  else
  {
    v2 = sub_2272E84E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272E84E0()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272E85B8()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2272E8690(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2272E86B0, 0, 0);
}

uint64_t sub_2272E86B0()
{
  sub_2272E8710();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2272E8710()
{
  v95 = sub_227662A90();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v2 - 8);
  v87 = v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v81 - v8;
  v10 = sub_227667100();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x28223BE20](v10);
  v82 = v11;
  v83 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v81 - v13;
  v81[3] = *(v0 + *(type metadata accessor for InferenceProvider(0) + 36));
  v84 = v14;
  sub_22739FED0(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8F0, &unk_22767F810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276707E0;
  *(inited + 32) = 0;
  v81[2] = inited + 32;
  v96 = sub_227662E50();
  LOBYTE(v97) = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
  sub_2272EF388(&unk_27D7BC900, &qword_27D7B8C38, &unk_227682250);
  sub_22766CDA0();
  v88 = inited;
  *(inited + 80) = 9;
  sub_227662E30();
  v17 = sub_2276627D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v9, 1, v17) == 1)
  {
    sub_226E97D1C(v9, &unk_27D7BB9D0, &qword_227671550);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_227662770();
    v21 = v22;
    (*(v18 + 8))(v9, v17);
  }

  v96 = v20;
  v97 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_2272EF388(&unk_27D7BC910, &qword_27D7BBC30, &unk_2276720D0);
  v23 = v88;
  sub_22766CDA0();
  *(v23 + 128) = 3;
  sub_227662E40();
  if (v19(v6, 1, v17) == 1)
  {
    sub_226E97D1C(v6, &unk_27D7BB9D0, &qword_227671550);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = sub_227662770();
    v25 = v26;
    (*(v18 + 8))(v6, v17);
  }

  v96 = v24;
  v97 = v25;
  v27 = v88;
  sub_22766CDA0();
  *(v27 + 176) = 7;
  v28 = sub_227662DA0();
  v29 = *(v28 + 16);
  if (v29)
  {
    v104 = MEMORY[0x277D84F90];
    sub_226F1FC48(0, v29, 0);
    v30 = v104;
    v31 = v93;
    v32 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v81[1] = v28;
    v33 = v28 + v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v91 = *(v31 + 16);
    v92 = v34;
    v93 = v31 + 16;
    v89 = *(v31 + 72);
    v90 = (v31 + 8);
    while (1)
    {
      v91(v94, v33, v95);
      v101[0] = 0x644961657261;
      v101[1] = 0xE600000000000000;
      v96 = sub_227662A70();
      v97 = v35;
      sub_22766CDA0();
      v102[0] = 0x74656B637562;
      v102[1] = 0xE600000000000000;
      v96 = sub_227662A80();
      sub_22766CDA0();
      v103[0] = 0x6E656D7461657274;
      v103[1] = 0xEB00000000644974;
      v96 = sub_227662A60();
      v97 = v36;
      sub_22766CDA0();
      v37 = sub_22766D010();

      sub_226E93170(v101, &v96, &qword_27D7BC920, &qword_22767F820);
      v39 = v96;
      v38 = v97;
      result = sub_226E92000(v96, v97);
      if (v41)
      {
        break;
      }

      v42 = v37 + 8;
      *(v37 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v43 = (v37[6] + 16 * result);
      *v43 = v39;
      v43[1] = v38;
      v44 = v37[7] + 40 * result;
      v45 = v98;
      v46 = v99;
      *(v44 + 32) = v100;
      *v44 = v45;
      *(v44 + 16) = v46;
      v47 = v37[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_22;
      }

      v37[2] = v49;
      sub_226E93170(v102, &v96, &qword_27D7BC920, &qword_22767F820);
      v50 = v96;
      v51 = v97;
      result = sub_226E92000(v96, v97);
      if (v52)
      {
        break;
      }

      *(v42 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v53 = (v37[6] + 16 * result);
      *v53 = v50;
      v53[1] = v51;
      v54 = v37[7] + 40 * result;
      v55 = v98;
      v56 = v99;
      *(v54 + 32) = v100;
      *v54 = v55;
      *(v54 + 16) = v56;
      v57 = v37[2];
      v48 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v48)
      {
        goto LABEL_22;
      }

      v37[2] = v58;
      sub_226E93170(v103, &v96, &qword_27D7BC920, &qword_22767F820);
      v59 = v96;
      v60 = v97;
      result = sub_226E92000(v96, v97);
      if (v61)
      {
        break;
      }

      *(v42 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v62 = (v37[6] + 16 * result);
      *v62 = v59;
      v62[1] = v60;
      v63 = v37[7] + 40 * result;
      v64 = v98;
      v65 = v99;
      *(v63 + 32) = v100;
      *v63 = v64;
      *(v63 + 16) = v65;
      v66 = v37[2];
      v48 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v48)
      {
        goto LABEL_22;
      }

      v37[2] = v67;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC920, &qword_22767F820);
      swift_arrayDestroy();
      (*v90)(v94, v95);
      v104 = v30;
      v69 = *(v30 + 16);
      v68 = *(v30 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_226F1FC48((v68 > 1), v69 + 1, 1);
        v30 = v104;
      }

      *(v30 + 16) = v69 + 1;
      *(v30 + 8 * v69 + 32) = v37;
      v33 += v89;
      if (!--v29)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
LABEL_20:
    v96 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC928, &qword_22767F828);
    sub_2272EF3F0();
    v70 = v88;
    sub_22766CDA0();
    v95 = sub_227149C78(v70);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB778, &qword_22767AE10);
    swift_arrayDestroy();
    v71 = v87;
    sub_22766C490();
    v72 = sub_22766C4B0();
    (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
    v73 = swift_allocObject();
    swift_weakInit();
    v75 = v84;
    v74 = v85;
    v76 = v83;
    v77 = v86;
    (*(v85 + 16))(v83, v84, v86);
    v78 = (*(v74 + 80) + 40) & ~*(v74 + 80);
    v79 = (v82 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    *(v80 + 2) = 0;
    *(v80 + 3) = 0;
    *(v80 + 4) = v73;
    (*(v74 + 32))(&v80[v78], v76, v77);
    *&v80[v79] = v95;
    sub_2272CA940(0, 0, v71, &unk_22767CF40, v80);

    return (*(v74 + 8))(v75, v77);
  }

  return result;
}

uint64_t sub_2272E9134@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InferenceProvider(0);
  __swift_project_boxed_opaque_existential_0((a2 + *(v6 + 28)), *(a2 + *(v6 + 28) + 24));
  return sub_226EAF48C(a1, a3);
}

uint64_t sub_2272E9194(char *a1, uint64_t a2)
{
  v52 = a1;
  v3 = 0;
  v4 = sub_227664010();
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v60 = v8 + 16;
  v61 = v8;
  v57 = (v8 + 8);
  v53 = (v8 + 40);
  v54 = (v8 + 32);
  v62 = a2;

  v16 = MEMORY[0x277D84F98];
  v51 = 0;
  v55 = v15;
  v56 = a2 + 56;
  v58 = v10;
  v59 = v6;
  while (v14)
  {
    v17 = v16;
    v18 = v6;
    v64 = v17;
    v19 = v3;
LABEL_12:
    v21 = *(v62 + 48);
    v63 = *(v61 + 72);
    v22 = *(v61 + 16);
    v6 = v4;
    v22(v10, v21 + v63 * (__clz(__rbit64(v14)) | (v19 << 6)), v4);
    v23 = sub_227663FD0();
    v25 = v24;
    v22(v18, v10, v4);
    v26 = v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v26;
    v29 = sub_226E92000(v23, v25);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226FF44EC();
      }
    }

    else
    {
      sub_226FEBD5C(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_226E92000(v23, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_37;
      }

      v29 = v34;
    }

    v4 = v6;
    v14 &= v14 - 1;
    if (v33)
    {

      v16 = v65;
      v6 = v59;
      (*v53)(v65[7] + v29 * v63, v59, v4);
      v10 = v58;
      (*v57)(v58, v4);
    }

    else
    {
      v16 = v65;
      v65[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v16[6] + 16 * v29);
      *v36 = v23;
      v36[1] = v25;
      v6 = v59;
      (*v54)(v16[7] + v29 * v63, v59, v4);
      v10 = v58;
      (*v57)(v58, v4);
      v37 = v16[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_35;
      }

      v16[2] = v39;
    }

    v3 = v19;
    v15 = v55;
    v11 = v56;
  }

  while (1)
  {
    v19 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v3;
    if (v14)
    {
      v20 = v16;
      v18 = v6;
      v64 = v20;
      goto LABEL_12;
    }
  }

  v67 = MEMORY[0x277D84FA0];
  v40 = v52;
  v41 = v52 + 56;
  v42 = 1 << v52[32];
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v52 + 7);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  v6 = v51;
  if (!v44)
  {
LABEL_25:
    while (1)
    {
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_33;
      }

      if (v47 >= v45)
      {

        return v67;
      }

      v44 = *&v41[8 * v47];
      ++v46;
      if (v44)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v47 = v46;
LABEL_28:
    v48 = *(v40 + 6) + ((v47 << 10) | (16 * __clz(__rbit64(v44))));
    v49 = *v48;
    LOBYTE(v48) = *(v48 + 8);
    v65 = v49;
    v66 = v48;

    sub_2272E99B4(&v67, &v65, v16);
    if (v6)
    {
      break;
    }

    v44 &= v44 - 1;

    v46 = v47;
    if (!v44)
    {
      goto LABEL_25;
    }
  }

LABEL_36:

  __break(1u);
LABEL_37:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2272E9650@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_227662FE0();
  sub_227663000();
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  sub_2272DD664(a2, a3);
  v15 = v14;
  swift_beginAccess();
  v16 = sub_22766A080();
  v18 = v17;
  v19 = v15;
  MEMORY[0x22AA985C0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v16(v30, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  sub_22766A0F0();
  swift_endAccess();
  v20 = v31;
  v21 = sub_226EE010C(100);
  if (v20)
  {
    swift_setDeallocating();

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v11 + v22, v23);
    return swift_deallocClassInstance();
  }

  else
  {
    v25 = v21;
    swift_setDeallocating();

    v26 = qword_2813B2078;
    v27 = sub_22766A100();
    (*(*(v27 - 8) + 8))(v11 + v26, v27);
    result = swift_deallocClassInstance();
    *a4 = v25;
  }

  return result;
}

uint64_t sub_2272E997C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226F87F74(a1);
  if (!v2)
  {
    result = sub_22704DD68(result);
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_2272E99B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276660A0();
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - v13;
  v15 = sub_227664010();
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v21 = *a2;
  v22 = *(a2 + 8);
  if (v22 > 4)
  {
    if (*(a2 + 8) > 7u)
    {
      if (v22 == 8)
      {
        v64 = sub_2272DC6E4(*a2, 0xAu);
        v65 = *(v64 + 16);
        if (v65)
        {
          v66 = v64 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v67 = *(v97 + 72);
          do
          {
            sub_2272F1D58(v66, v8, MEMORY[0x277D52060]);
            sub_2270B8C34(v11, v8);
            sub_2272F1E28(v11, MEMORY[0x277D52060]);
            v66 += v67;
            --v65;
          }

          while (v65);
        }
      }

      else if (v22 == 9)
      {
        v32 = sub_2272DC9E4(*a2, sub_226F50E1C, MEMORY[0x277D519F8], 0xBu);
        v33 = *(v32 + 16);
        if (v33)
        {
          v34 = v32 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v35 = *(v97 + 72);
          do
          {
            sub_2272F1D58(v34, v8, MEMORY[0x277D52060]);
            sub_2270B8C34(v11, v8);
            sub_2272F1E28(v11, MEMORY[0x277D52060]);
            v34 += v35;
            --v33;
          }

          while (v33);
        }
      }

      else
      {
        v80 = sub_2272DC6E4(*a2, 0xCu);
        v81 = *(v80 + 16);
        if (v81)
        {
          v82 = v80 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v83 = *(v97 + 72);
          do
          {
            sub_2272F1D58(v82, v8, MEMORY[0x277D52060]);
            sub_2270B8C34(v11, v8);
            sub_2272F1E28(v11, MEMORY[0x277D52060]);
            v82 += v83;
            --v81;
          }

          while (v81);
        }
      }
    }

    else
    {
      v23 = *a2;
      if (v22 == 5)
      {
        v60 = sub_2272DC6E4(v23, 5u);
        v61 = *(v60 + 16);
        if (v61)
        {
          v62 = v60 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v63 = *(v97 + 72);
          do
          {
            sub_2272F1D58(v62, v8, MEMORY[0x277D52060]);
            sub_2270B8C34(v11, v8);
            sub_2272F1E28(v11, MEMORY[0x277D52060]);
            v62 += v63;
            --v61;
          }

          while (v61);
        }
      }

      else if (v22 == 6)
      {
        v24 = sub_2272DC6E4(v23, 7u);
        v25 = *(v24 + 16);
        if (v25)
        {
          v26 = v24 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v27 = *(v97 + 72);
          do
          {
            sub_2272F1D58(v26, v8, MEMORY[0x277D52060]);
            sub_2270B8C34(v11, v8);
            sub_2272F1E28(v11, MEMORY[0x277D52060]);
            v26 += v27;
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        v76 = sub_2272DC6E4(v23, 8u);
        v77 = *(v76 + 16);
        if (v77)
        {
          v78 = v76 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v79 = *(v97 + 72);
          do
          {
            sub_2272F1D58(v78, v8, MEMORY[0x277D52060]);
            sub_2270B8C34(v11, v8);
            sub_2272F1E28(v11, MEMORY[0x277D52060]);
            v78 += v79;
            --v77;
          }

          while (v77);
        }
      }
    }

LABEL_66:

    return;
  }

  v95 = v14;
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v56 = sub_2272DC6E4(v21, 1u);
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = v56 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
        v59 = *(v97 + 72);
        do
        {
          sub_2272F1D58(v58, v8, MEMORY[0x277D52060]);
          sub_2270B8C34(v11, v8);
          sub_2272F1E28(v11, MEMORY[0x277D52060]);
          v58 += v59;
          --v57;
        }

        while (v57);
      }
    }

    else if (v22 == 3)
    {
      v28 = sub_2272DC6E4(v21, 3u);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v28 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
        v31 = *(v97 + 72);
        do
        {
          sub_2272F1D58(v30, v8, MEMORY[0x277D52060]);
          sub_2270B8C34(v11, v8);
          sub_2272F1E28(v11, MEMORY[0x277D52060]);
          v30 += v31;
          --v29;
        }

        while (v29);
      }
    }

    else
    {
      v68 = sub_2272DC6E4(v21, 4u);
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = v68 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
        v71 = *(v97 + 72);
        do
        {
          sub_2272F1D58(v70, v8, MEMORY[0x277D52060]);
          sub_2270B8C34(v11, v8);
          sub_2272F1E28(v11, MEMORY[0x277D52060]);
          v70 += v71;
          --v69;
        }

        while (v69);
      }
    }

    goto LABEL_66;
  }

  if (v22)
  {
    v72 = sub_2272DC9E4(v21, sub_226ED978C, MEMORY[0x277D50588], 0);
    v73 = *(v72 + 16);
    if (v73)
    {
      v74 = v72 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
      v75 = *(v97 + 72);
      do
      {
        sub_2272F1D58(v74, v8, MEMORY[0x277D52060]);
        sub_2270B8C34(v11, v8);
        sub_2272F1E28(v11, MEMORY[0x277D52060]);
        v74 += v75;
        --v73;
      }

      while (v73);
    }

    goto LABEL_66;
  }

  v91 = v17;
  v92 = &v84 - v18;
  v87 = v19;
  v88 = v6;
  v96 = a3;
  v93 = v3;
  v36 = 1 << *(v21 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v21 + 56);
  v39 = (v36 + 63) >> 6;
  v89 = v19 + 16;
  v90 = v20;
  v85 = (v19 + 8);
  v86 = v19 + 32;

  v40 = 0;
  v94 = MEMORY[0x277D84F90];
  while (v38)
  {
LABEL_32:
    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v98 = *(*(v21 + 48) + ((v40 << 9) | (8 * v42)));
    v43 = sub_22766D140();
    if (*(v96 + 16))
    {
      v45 = sub_226E92000(v43, v44);
      v47 = v46;

      if (v47)
      {
        v48 = v87;
        v49 = *(v96 + 56) + *(v87 + 72) * v45;
        v84 = *(v87 + 16);
        v50 = v91;
        v84(v90, v49, v91);
        v51 = v92;
        (*(v48 + 32))(v92, v90, v50);
        v84(v95, v51, v50);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_2273A52C0(0, v94[2] + 1, 1, v94);
        }

        v53 = v94[2];
        v52 = v94[3];
        if (v53 >= v52 >> 1)
        {
          v94 = sub_2273A52C0((v52 > 1), v53 + 1, 1, v94);
        }

        (*v85)();
        v55 = v94;
        v54 = v95;
        v94[2] = v53 + 1;
        sub_2272F1DC0(v54, v55 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v53, MEMORY[0x277D52060]);
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      sub_227125A04(v94);

      return;
    }

    v38 = *(v21 + 56 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_32;
    }
  }

  __break(1u);
}

Swift::Int __swiftcall PersonalizedWorkoutPlanScaffold.countSplits()()
{
  v0 = sub_227668B10();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2276688A0();
  if (result < -9)
  {
    goto LABEL_47;
  }

  v5 = result;
  v6 = result / 5;
  v7 = result / 5 + 1;
  if (result < -4)
  {
    v8 = MEMORY[0x277D84F90];
    if (result / 5 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = sub_22766C380();
    v8 = result;
    *(result + 16) = v7;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8[4] = 0;
  if ((v5 + 4) >= 9)
  {
    bzero(v8 + 5, 8 * v6);
  }

LABEL_8:
  if (!v8[2])
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8[4] = 1;
  result = sub_227668870();
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v30 = v5;
    v31 = v10;
    v11 = 0;
    v38 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v36 = v1 + 8;
    v37 = v1 + 16;
    v34 = v1;
    v35 = v0;
    v32 = result;
    v33 = v3;
    while (v11 < *(v9 + 16))
    {
      (*(v1 + 16))(v3, v38 + *(v1 + 72) * v11, v0);

      v12 = sub_227668B00();
      result = (*(v1 + 8))(v3, v0);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = v8;
        while (v14 < *(v12 + 16))
        {
          v16 = *(v12 + 32 + 8 * v14);
          v17 = v16 / 5;
          if (v16 >= 5 && v6 >= v17)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v19 = v8[2];
              if (v19)
              {
LABEL_22:
                v20 = 0;
                v21 = v15 + 8 * v17 + 32;
                while ((v17 + v20) < *(v15 + 16))
                {
                  v22 = v8[v20 + 4];
                  v23 = *(v21 + 8 * v20);
                  v24 = __OFADD__(v23, v22);
                  v25 = v23 + v22;
                  if (v24)
                  {
                    goto LABEL_43;
                  }

                  *(v21 + 8 * v20) = v25;
                  if (v6 - v17 == v20)
                  {
                    goto LABEL_14;
                  }

                  if (++v20 >= v19)
                  {
                    goto LABEL_41;
                  }
                }

                goto LABEL_42;
              }
            }

            else
            {
              result = sub_2272EC328(v15);
              v15 = result;
              v19 = v8[2];
              if (v19)
              {
                goto LABEL_22;
              }
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            break;
          }

LABEL_14:
          if (++v14 == v13)
          {

            v8 = v15;
            v1 = v34;
            v0 = v35;
            v9 = v32;
            v3 = v33;
            v10 = v31;
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_32:
      if (++v11 == v10)
      {

        v5 = v30;
        goto LABEL_35;
      }
    }

    goto LABEL_46;
  }

LABEL_35:
  if (v5 < 5)
  {
    goto LABEL_49;
  }

  if (v8[2] > v6)
  {
    v26 = 0;
    for (i = 5; ; ++i)
    {
      v28 = v8[i];
      v24 = __OFADD__(v26, v28);
      v26 += v28;
      if (v24)
      {
        break;
      }

      if (!--v6)
      {

        return v26;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2272EA784@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  result = sub_226EB16F8(a1);
  if (!v4)
  {
    v10 = sub_2272DCD18(result);

    type metadata accessor for InferenceProvider(0);
    v11 = sub_226F3E6A8(v10);

    v12 = sub_227663E90();
    v13 = sub_22703BF7C(v11, a2, v12, a3, a1);

    *a4 = v13;
  }

  return result;
}

uint64_t sub_2272EA868@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  KeyPath = swift_getKeyPath();
  v13 = sub_2272DDC00(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v15 = qword_2813B2078;
    v16 = sub_22766A100();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
    return swift_deallocClassInstance();
  }

  else
  {
    v18 = v13;
    v19 = v14;

    swift_setDeallocating();

    v20 = qword_2813B2078;
    v21 = sub_22766A100();
    (*(*(v21 - 8) + 8))(v9 + v20, v21);
    result = swift_deallocClassInstance();
    *a2 = v18;
    a2[1] = v19;
  }

  return result;
}

void sub_2272EAA9C(void *a1)
{
  v2 = *(sub_227668630() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117648(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2272EAB44(v5);
  *a1 = v3;
}

void sub_2272EAB44(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227668630();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227668630() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2272EB010(v8, v9, a1, v4);
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
    sub_2272EAC70(0, v2, 1, a1);
  }
}

void sub_2272EAC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_227662750();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_227668630();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_227668620();
      v32 = v59;
      sub_227668620();
      v62 = sub_2276626B0();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2272EB010(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_227662750();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_227668630();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_2271171D0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_2272EBC10(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2271171D0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_227117144(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_227668620();
      v34 = v159;
      sub_227668620();
      LODWORD(v149) = sub_2276626B0();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_227668620();
        v46 = v159;
        sub_227668620();
        LOBYTE(v162) = sub_2276626B0() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2273A4F9C(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_2273A4F9C((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_2272EBC10(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2271171D0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_227117144(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_227668620();
    v120 = v159;
    sub_227668620();
    LODWORD(v162) = sub_2276626B0();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_2272EBC10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_227662750();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_227668630();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_227668620();
            v48 = v66;
            sub_227668620();
            v68 = sub_2276626B0();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_227668620();
        v28 = v66;
        sub_227668620();
        v68 = sub_2276626B0();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_2271171E4(&v75, &v74, &v73);
}

uint64_t type metadata accessor for InferenceProvider(uint64_t a1)
{
  result = qword_2813A2B20;
  if (!qword_2813A2B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272EC3B0(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    sub_2272EC504(319, qword_2813A4CD8, &protocol descriptor for BagConsuming);
    if (v2 <= 0x3F)
    {
      sub_2272EC504(319, qword_28139F340, &protocol descriptor for CatalogDataStoreProtocol);
      if (v3 <= 0x3F)
      {
        sub_2272EC504(319, qword_28139DD58, &protocol descriptor for ConfigurationDataStoreProtocol);
        if (v4 <= 0x3F)
        {
          sub_2272EC504(319, &qword_28139F240, &protocol descriptor for PersistenceStoreProtocol);
          if (v5 <= 0x3F)
          {
            type metadata accessor for WorkoutPlanAnalyticsReporter(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for WorkoutPlanInputValidator();
              if (v7 <= 0x3F)
              {
                type metadata accessor for WorkoutPlanProvider(319);
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

uint64_t sub_2272EC504(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2272EC59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v24 = a1;
  v6 = sub_22766B3B0();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22766B3F0();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransportSerializableJournalRecorder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_227668D90();
  v32[3] = v14;
  v32[4] = MEMORY[0x277D53890];
  v32[5] = MEMORY[0x277D53898];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a3, v14);
  sub_2272F1D58(a4, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v32, v31);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2272F1DC0(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for TransportSerializableJournalRecorder);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  sub_2272EF36C(v31, (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_107;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v8, v21);
  _Block_release(v21);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v10, v27);

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_2272EC9F8(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceProvider(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_2272E3AD0(a1, v1 + v5);
}

uint64_t sub_2272ECB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v24 = a1;
  v6 = sub_22766B3B0();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22766B3F0();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransportSerializableJournalRecorder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_2276671E0();
  v32[3] = v14;
  v32[4] = MEMORY[0x277D52C50];
  v32[5] = MEMORY[0x277D52C58];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a3, v14);
  sub_2272F1D58(a4, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v32, v31);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2272F1DC0(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for TransportSerializableJournalRecorder);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  sub_2272EF36C(v31, (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272EF384;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_24;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v8, v21);
  _Block_release(v21);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v10, v27);

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_2272ECFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v24 = a1;
  v6 = sub_22766B3B0();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22766B3F0();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransportSerializableJournalRecorder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_227668850();
  v32[3] = v14;
  v32[4] = MEMORY[0x277D53600];
  v32[5] = MEMORY[0x277D53608];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a3, v14);
  sub_2272F1D58(a4, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v32, v31);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2272F1DC0(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for TransportSerializableJournalRecorder);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  sub_2272EF36C(v31, (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_121;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v8, v21);
  _Block_release(v21);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v10, v27);

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_2272ED408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v24 = a1;
  v6 = sub_22766B3B0();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22766B3F0();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransportSerializableJournalRecorder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_2276689A0();
  v32[3] = v14;
  v32[4] = MEMORY[0x277D536A0];
  v32[5] = MEMORY[0x277D536A8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a3, v14);
  sub_2272F1D58(a4, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v32, v31);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2272F1DC0(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for TransportSerializableJournalRecorder);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  sub_2272EF36C(v31, (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_114;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v8, v21);
  _Block_release(v21);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v10, v27);

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_2272ED864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v24 = a1;
  v6 = sub_22766B3B0();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22766B3F0();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransportSerializableJournalRecorder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = sub_2276688C0();
  v32[3] = v14;
  v32[4] = MEMORY[0x277D53620];
  v32[5] = MEMORY[0x277D53628];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a3, v14);
  sub_2272F1D58(a4, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransportSerializableJournalRecorder);
  sub_2272EF308(v32, v31);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_2272F1DC0(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for TransportSerializableJournalRecorder);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  sub_2272EF36C(v31, (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)));
  aBlock[4] = sub_2272F2170;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_68;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_2272F2064(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v10, v8, v21);
  _Block_release(v21);
  (*(v28 + 8))(v8, v6);
  (*(v26 + 8))(v10, v27);

  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t sub_2272EDCC0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227664010();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_227667370();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v2[13] = *(v5 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProvider(0);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v2[18] = *(v7 + 64);
  v2[19] = swift_task_alloc();
  v8 = sub_227663FA0();
  v2[20] = v8;
  v9 = *(v8 - 8);
  v2[21] = v9;
  v2[22] = *(v9 + 64);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272EDF08, 0, 0);
}

uint64_t sub_2272EDF08()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 40);
  v4 = *(*(v0 + 128) + 32);
  *(v0 + 248) = v4;
  v5 = *(v3 + v4 + 24);
  v6 = *(v3 + v4 + 32);
  __swift_project_boxed_opaque_existential_0((v3 + v4), v5);
  sub_2272F1D58(v3, v1, type metadata accessor for InferenceProvider);
  v7 = *(v2 + 80);
  *(v0 + 252) = v7;
  v8 = (v7 + 16) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  sub_2272F1DC0(v1, v9 + v8, type metadata accessor for InferenceProvider);
  v14 = (*(v6 + 24) + **(v6 + 24));
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_2272EE0E4;
  v11 = *(v0 + 192);
  v12 = *(v0 + 160);

  return v14(v11, sub_2272F2158, v9, v12, v5, v6);
}

uint64_t sub_2272EE0E4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2272EE6B4;
  }

  else
  {

    v2 = sub_2272EE200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272EE200(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 56);
  v40 = *(v1 + 48);
  sub_227663E60();
  *(v1 + 16) = sub_227663E90();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  sub_226E9CFD0(&qword_27D7B9E50, &unk_27D7BC9C0, &unk_227676780, MEMORY[0x277D83B68]);
  sub_22766C200();

  sub_226E93170(v3, v2, &qword_27D7BC9B8, &unk_227682440);
  v5 = (*(v4 + 48))(v2, 1, v40);
  v6 = *(v1 + 80);
  if (v5 != 1)
  {
    v8 = *(v1 + 64);
    v9 = *(v1 + 48);
    v10 = *(v1 + 56);
    (*(v10 + 32))(v8, *(v1 + 72), v9);
    v11 = sub_227664000();
    (*(v10 + 8))(v8, v9);
    result = sub_226E97D1C(v6, &qword_27D7BC9B8, &unk_227682440);
    v13 = v11 / 60.0;
    if (COERCE__INT64(fabs(v11 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v7 = v13;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_226E97D1C(*(v1 + 80), &qword_27D7BC9B8, &unk_227682440);
  v7 = 45;
LABEL_7:
  v38 = v7;
  v14 = *(v1 + 184);
  v15 = *(v1 + 168);
  v16 = *(v1 + 152);
  v17 = *(v1 + 160);
  v32 = *(v1 + 144);
  v33 = v17;
  v18 = *(v1 + 112);
  v30 = *(v1 + 192);
  v31 = *(v1 + 120);
  v35 = v18;
  v19 = *(v1 + 96);
  v36 = *(v1 + 176);
  v20 = *(v1 + 88);
  v34 = v20;
  v21 = *(v1 + 40);
  v29 = (*(v1 + 252) + 16) & ~*(v1 + 252);
  v22 = (v21 + *(v1 + 248));
  v41 = v22[3];
  v37 = v22[4];
  __swift_project_boxed_opaque_existential_0(v22, v41);
  sub_2272F1D58(v21, v16, type metadata accessor for InferenceProvider);
  (*(v15 + 16))(v14, v30, v17);
  (*(v19 + 16))(v18, v31, v20);
  v23 = (v29 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v25 = (v36 + *(v19 + 80) + v24) & ~*(v19 + 80);
  v26 = swift_allocObject();
  *(v1 + 224) = v26;
  sub_2272F1DC0(v16, v26 + v29, type metadata accessor for InferenceProvider);
  *(v26 + v23) = v38;
  (*(v15 + 32))(v26 + v24, v14, v33);
  (*(v19 + 32))(v26 + v25, v35, v34);
  v39 = (*(v37 + 24) + **(v37 + 24));
  v27 = swift_task_alloc();
  *(v1 + 232) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9D0, &unk_2276766A0);
  *v27 = v1;
  v27[1] = sub_2272EE780;

  return v39(v1 + 24, sub_2272F1F04, v26, v28, v41, v37);
}

uint64_t sub_2272EE6B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272EE780()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2272EEC14;
  }

  else
  {
    v2 = sub_2272EE8B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2272EE8B4()
{
  v34 = v0;
  v1 = v0[3];
  v32 = v0[4];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v4)
  {
    v7 = v4;
LABEL_10:
    v4 = (v7 - 1) & v7;
    if (*(v32 + 16))
    {
      v9 = __clz(__rbit64(v7)) | (v6 << 6);
      v10 = (*(v1 + 48) + 16 * v9);
      v11 = *(*(v1 + 56) + 8 * v9);
      v12 = *v10;
      v13 = v10[1];

      v14 = sub_226E92000(v12, v13);
      if (v15)
      {
        v16 = *(v32 + 56) + 24 * v14;
        v17 = *v16;
        v18 = *(v16 + 8);
        v29 = *(v16 + 16);
        sub_226EB396C(*v16, v18, v29);

        v30 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2273A4FB0(0, v31[2] + 1, 1, v31);
        }

        v20 = v31[2];
        v19 = v31[3];
        if (v20 >= v19 >> 1)
        {
          v31 = sub_2273A4FB0((v19 > 1), v20 + 1, 1, v31);
        }

        v31[2] = v20 + 1;
        v21 = &v31[4 * v20];
        v21[4] = v30;
        v21[5] = v18;
        *(v21 + 48) = v29;
        v21[7] = v11;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v5)
    {
      break;
    }

    v7 = *(v1 + 64 + 8 * v8);
    ++v6;
    if (v7)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

  if (v31[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9980, qword_22767F8E0);
    v22 = sub_22766D010();
  }

  else
  {
    v22 = MEMORY[0x277D84F98];
  }

  v23 = v0[30];
  v33 = v22;
  sub_22704B3FC(v31, 1, &v33);
  if (v23)
  {

    swift_unexpectedError();
  }

  else
  {
    v24 = v0[24];
    v25 = v0[20];
    v26 = v0[21];
    (*(v0[12] + 8))(v0[15], v0[11]);
    (*(v26 + 8))(v24, v25);
    v27 = v33;

    v28 = v0[1];

    v28(v27);
  }
}

uint64_t sub_2272EEC14()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[12] + 8))(v0[15], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2272EED10(uint64_t a1)
{
  v4 = *(sub_227668F90() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for InferenceProvider(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226F17854;

  return sub_2272E3F38(a1, v1 + v5, v1 + v8);
}

uint64_t sub_2272EEE44(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_227668F90() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for TransportSerializableJournalRecorder(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for InferenceProvider(0) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (v2 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v5 + 16) = v18;
  *v18 = v5;
  v18[1] = sub_226E92F34;

  return sub_2272E5618(a1, a2, v2 + v8, v2 + v11, v2 + v14, v16, v17);
}

uint64_t sub_2272EF02C(uint64_t a1)
{
  v4 = *(sub_227668F90() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for InferenceProvider(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226E93028;

  return sub_2272E7D40(a1, v1 + v5, v1 + v8, v9);
}

uint64_t sub_2272EF1A0(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceProvider(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E92F34;

  return sub_2272E8690(a1, v1 + v5);
}

uint64_t sub_2272EF298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC890, &qword_22767F778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272EF308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2272EF36C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_2272EF388(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2272EF3F0()
{
  result = qword_27D7BC930;
  if (!qword_27D7BC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC928, &qword_22767F828);
    sub_2272EF474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC930);
  }

  return result;
}

unint64_t sub_2272EF474()
{
  result = qword_27D7BC938;
  if (!qword_27D7BC938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC940, &qword_22767F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC938);
  }

  return result;
}

uint64_t sub_2272EF4F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = sub_227664EC0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC950, &unk_22767F840);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = sub_227668B10();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for InferenceProvider(0);
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v3[24] = *(v8 + 64);
  v3[25] = swift_task_alloc();
  v9 = sub_227663FA0();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v10 = sub_227667370();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272EF808, 0, 0);
}

uint64_t sub_2272EF808(uint64_t a1)
{
  v2 = *(sub_227668870() + 16);

  if (v2)
  {
    if (sub_227668890() >= 2)
    {
      v3 = v1[25];
      v4 = v1[23];
      v5 = v1[5];
      v6 = (v5 + *(v1[22] + 32));
      v7 = v6[3];
      v8 = v6[4];
      __swift_project_boxed_opaque_existential_0(v6, v7);
      sub_2272F1D58(v5, v3, type metadata accessor for InferenceProvider);
      v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v10 = swift_allocObject();
      v1[32] = v10;
      sub_2272F1DC0(v3, v10 + v9, type metadata accessor for InferenceProvider);
      v18 = (*(v8 + 24) + **(v8 + 24));
      v11 = swift_task_alloc();
      v1[33] = v11;
      *v11 = v1;
      v11[1] = sub_2272EFB10;
      v12 = v1[28];
      v13 = v1[26];

      return v18(v12, sub_2272F1AAC, v10, v13, v7, v8);
    }

    v15 = 10;
  }

  else
  {
    v15 = 8;
  }

  sub_2272F1A58();
  swift_allocError();
  *v16 = v15;
  swift_willThrow();

  v17 = v1[1];

  return v17();
}

uint64_t sub_2272EFB10()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2272EFFB4;
  }

  else
  {

    v2 = sub_2272EFC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272EFC2C(uint64_t a1)
{
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  sub_227663E60();
  (*(v3 + 8))(v2, v4);
  v5 = sub_227668870();
  v6 = *(v5 + 16);
  v43 = v1;
  if (v6)
  {
    v7 = v1[20];
    v44 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v8 = v44;
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v41 = *(v7 + 56);
    v42 = v9;
    v11 = (v7 - 8);
    do
    {
      v12 = v43[21];
      v13 = v43[19];
      v42(v12, v10, v13);
      v14 = sub_227668AE0();
      v16 = v15;
      (*v11)(v12, v13);
      v17 = *(v44 + 16);
      if (v17 >= *(v44 + 24) >> 1)
      {
        sub_226F1EF90();
      }

      *(v44 + 16) = v17 + 1;
      v18 = v44 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v10 += v41;
      --v6;
    }

    while (v6);

    v1 = v43;
    v20 = *(v44 + 16);
    if (v20)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
LABEL_7:
      v21 = 0;
      v22 = v1[4];
      v23 = -v20;
      v24 = v8 + 40;
      v25 = MEMORY[0x277D84F90];
      while (1)
      {
        v26 = (v24 + 16 * v21++);
        while (1)
        {
          if ((v21 - 1) >= *(v8 + 16))
          {
            __break(1u);
            return result;
          }

          if (*(v22 + 16))
          {
            break;
          }

LABEL_9:
          ++v21;
          v26 += 2;
          if (v23 + v21 == 1)
          {
            goto LABEL_22;
          }
        }

        v27 = *(v26 - 1);
        v28 = *v26;

        v29 = sub_226E92000(v27, v28);
        if ((v30 & 1) == 0)
        {
          break;
        }

        v31 = *(v22 + 56) + 24 * v29;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        sub_226EB396C(*v31, v33, v34);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2273A59E0(0, v25[2] + 1, 1, v25);
          v25 = result;
        }

        v36 = v25[2];
        v35 = v25[3];
        if (v36 >= v35 >> 1)
        {
          result = sub_2273A59E0((v35 > 1), v36 + 1, 1, v25);
          v25 = result;
        }

        v25[2] = v36 + 1;
        v37 = &v25[3 * v36];
        v37[4] = v32;
        v37[5] = v33;
        *(v37 + 48) = v34;
        v24 = v8 + 40;
        v1 = v43;
        if (!(v23 + v21))
        {
          goto LABEL_22;
        }
      }

      goto LABEL_9;
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_22:
  v38 = v1[22];
  v39 = v1[5];

  v1[35] = sub_2276688B0();
  v1[36] = *(v39 + *(v38 + 40));
  v1[37] = sub_226F43CE0(v25);

  v1[38] = sub_227668880();
  v40 = swift_task_alloc();
  v1[39] = v40;
  *v40 = v1;
  v40[1] = sub_2272F06F4;

  return sub_2275A6B80();
}

uint64_t sub_2272EFFB4()
{

  v1 = *(v0 + 272);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);

    (*(v6 + 32))(v4, v3, v7);
    sub_22766A680();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v15 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v8(v16, v12, v13);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v13;
      v19 = *(v14 + 8);
      v19(v12, v18);
      *(v15 + 4) = v17;
      *v57 = v17;
      _os_log_impl(&dword_226E8E000, v9, v10, "[Inference] WorkoutPlanError: Failed to validate scaffold criteria: %@", v15, 0xCu);
      sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    else
    {

      v30 = v13;
      v19 = *(v14 + 8);
      v19(v12, v30);
    }

    v31 = *(*(v0 + 56) + 8);
    v31(*(v0 + 80), *(v0 + 48));
    v32 = sub_2274FFE78();
    v33 = *(v0 + 120);
    if (v32 == 13)
    {
      v58 = v19;
      v34 = *(v0 + 104);
      v35 = *(v0 + 88);
      sub_22766A680();
      v36 = v8;
      v8(v34, v33, v35);
      v37 = sub_22766B380();
      v38 = sub_22766C890();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);
      if (v39)
      {
        v42 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v42 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        v8(v43, v40, v41);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        v45 = v41;
        v46 = v58;
        v58(v40, v45);
        *(v42 + 4) = v44;
        *v56 = v44;
        v36 = v8;
        _os_log_impl(&dword_226E8E000, v37, v38, "[Inference] Unmapped Inference error: %@", v42, 0xCu);
        sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v56, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      else
      {

        v50 = v41;
        v46 = v58;
        v58(v40, v50);
      }

      v51 = *(v0 + 120);
      v52 = *(v0 + 88);
      v31(*(v0 + 72), *(v0 + 48));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v36(v53, v51, v52);
      swift_willThrow();
      v46(v51, v52);
    }

    else
    {
      v47 = v32;
      v48 = *(v0 + 88);
      sub_2272F1A58();
      swift_allocError();
      *v49 = v47;
      swift_willThrow();
      v19(v33, v48);
    }
  }

  else
  {

    sub_22766A680();
    v20 = v1;
    v21 = sub_22766B380();
    v22 = sub_22766C890();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_226E8E000, v21, v22, "[Inference] Unhandled validation error: %@", v23, 0xCu);
      sub_226E97D1C(v24, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    v27 = *(v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);

    (*(v27 + 8))(v28, v29);
    swift_willThrow();
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2272F06F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 320) = v3;

  if (v3)
  {

    v7[46] = v3;
    v8 = sub_2272F0BE0;
  }

  else
  {
    v7[41] = a2;
    v7[42] = a1;
    v8 = sub_2272F084C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2272F084C()
{
  v1 = v0[42];
  v2 = v0[37];

  v4 = sub_2275B3628(v1, v2, v3);

  v5 = sub_2274CFDA4(v4);
  LOBYTE(v2) = v6;

  v10 = *&v5;
  if (v2)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  if (v0[38] < v10)
  {
    v12 = v0[11];
    v13 = v0[12];
    sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v14 = swift_allocError();
    (*(v13 + 104))(v15, *MEMORY[0x277D511F8], v12);
    swift_willThrow();

    v0[46] = v14;
    v7 = sub_2272F0BE0;
    v8 = 0;
    v9 = 0;

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v16 = *(v0[35] + 16);
  v17 = sub_227667250();
  v0[43] = v17;
  v18 = swift_task_alloc();
  v0[44] = v18;
  *v18 = v0;
  v18[1] = sub_2272F0AAC;
  v19 = v0[37];
  v20 = v0[38];
  v21 = v0[18];

  return sub_2275AA00C(v21, v19, v20, v16, v17);
}

uint64_t sub_2272F0AAC(char a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_2272F15AC;
  }

  else
  {

    *(v4 + 408) = a1 & 1;
    v5 = sub_2272F1330;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272F0BE0()
{
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  v1 = *(v0 + 368);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);

    (*(v6 + 32))(v4, v3, v7);
    sub_22766A680();
    v8 = *(v6 + 16);
    v8(v5, v4, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v15 = 138412290;
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v8(v16, v12, v13);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v13;
      v19 = *(v14 + 8);
      v19(v12, v18);
      *(v15 + 4) = v17;
      *v57 = v17;
      _os_log_impl(&dword_226E8E000, v9, v10, "[Inference] WorkoutPlanError: Failed to validate scaffold criteria: %@", v15, 0xCu);
      sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    else
    {

      v30 = v13;
      v19 = *(v14 + 8);
      v19(v12, v30);
    }

    v31 = *(*(v0 + 56) + 8);
    v31(*(v0 + 80), *(v0 + 48));
    v32 = sub_2274FFE78();
    v33 = *(v0 + 120);
    if (v32 == 13)
    {
      v58 = v19;
      v34 = *(v0 + 104);
      v35 = *(v0 + 88);
      sub_22766A680();
      v36 = v8;
      v8(v34, v33, v35);
      v37 = sub_22766B380();
      v38 = sub_22766C890();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);
      if (v39)
      {
        v42 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v42 = 138412290;
        sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
        swift_allocError();
        v8(v43, v40, v41);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        v45 = v41;
        v46 = v58;
        v58(v40, v45);
        *(v42 + 4) = v44;
        *v56 = v44;
        v36 = v8;
        _os_log_impl(&dword_226E8E000, v37, v38, "[Inference] Unmapped Inference error: %@", v42, 0xCu);
        sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v56, -1, -1);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      else
      {

        v50 = v41;
        v46 = v58;
        v58(v40, v50);
      }

      v51 = *(v0 + 120);
      v52 = *(v0 + 88);
      v31(*(v0 + 72), *(v0 + 48));
      sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      v36(v53, v51, v52);
      swift_willThrow();
      v46(v51, v52);
    }

    else
    {
      v47 = v32;
      v48 = *(v0 + 88);
      sub_2272F1A58();
      swift_allocError();
      *v49 = v47;
      swift_willThrow();
      v19(v33, v48);
    }
  }

  else
  {

    sub_22766A680();
    v20 = v1;
    v21 = sub_22766B380();
    v22 = sub_22766C890();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_226E8E000, v21, v22, "[Inference] Unhandled validation error: %@", v23, 0xCu);
      sub_226E97D1C(v24, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    v27 = *(v0 + 56);
    v28 = *(v0 + 64);
    v29 = *(v0 + 48);

    (*(v27 + 8))(v28, v29);
    swift_willThrow();
  }

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2272F1330(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 408) != 1)
  {
    v9 = *(v3 + 136);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    sub_226E93170(*(v3 + 144), v9, &qword_27D7BC950, &unk_22767F840);
    sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v11 + 48);
    v16 = v15(v9, 1, v10);
    v17 = *(v3 + 136);
    v18 = *(v3 + 96);
    if (v16 == 1)
    {
      v19 = v14;
      v20 = *(v3 + 88);
      (*(v18 + 104))(v19, *MEMORY[0x277D51200]);
      if (v15(v17, 1, v20) != 1)
      {
        sub_226E97D1C(*(v3 + 136), &qword_27D7BC950, &unk_22767F840);
      }
    }

    else
    {
      (*(v18 + 32))(v14, *(v3 + 136), *(v3 + 88));
    }

    v21 = *(v3 + 144);
    swift_willThrow();
    sub_226E97D1C(v21, &qword_27D7BC950, &unk_22767F840);

    *(v3 + 368) = v12;
    a1 = sub_2272F0BE0;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v4 = *(v3 + 304);
  v5 = *(*(v3 + 280) + 16);
  *(v3 + 376) = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = swift_task_alloc();
  *(v3 + 384) = v6;
  *v6 = v3;
  v6[1] = sub_2272F1634;
  v7 = *(v3 + 296);

  return sub_2275A8F38(v7, 0, 2);
}

uint64_t sub_2272F15AC()
{

  *(v0 + 368) = *(v0 + 360);

  return MEMORY[0x2822009F8](sub_2272F0BE0, 0, 0);
}

uint64_t sub_2272F1634(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_2272F19C0;
  }

  else
  {
    *(v4 + 400) = a1;
    v5 = sub_2272F175C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272F175C()
{
  if (v0[47] >= v0[50])
  {
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];
    sub_226E97D1C(v0[18], &qword_27D7BC950, &unk_22767F840);

    (*(v6 + 8))(v7, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v1 = v0[18];
    v2 = v0[11];
    v3 = v0[12];
    sub_2272F2064(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v4 = swift_allocError();
    (*(v3 + 104))(v5, *MEMORY[0x277D51200], v2);
    swift_willThrow();
    sub_226E97D1C(v1, &qword_27D7BC950, &unk_22767F840);

    v0[46] = v4;

    return MEMORY[0x2822009F8](sub_2272F0BE0, 0, 0);
  }
}