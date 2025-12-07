uint64_t sub_2272F19C0()
{
  sub_226E97D1C(v0[18], &qword_27D7BC950, &unk_22767F840);

  v0[46] = v0[49];

  return MEMORY[0x2822009F8](sub_2272F0BE0, 0, 0);
}

unint64_t sub_2272F1A58()
{
  result = qword_27D7BC958;
  if (!qword_27D7BC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC958);
  }

  return result;
}

unint64_t sub_2272F1AC4()
{
  result = qword_27D7BC960;
  if (!qword_27D7BC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC960);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for TransportSerializableJournalRecorder(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2276624A0();
  (*(*(v6 - 8) + 8))(v5, v6);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

uint64_t sub_2272F1C34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_227663010() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InferenceProvider(0) - 8);
  v9 = (*(v8 + 64) + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2272E9650(a1, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_2272F1D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2272F1DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2272F1E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2272F1F04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for InferenceProvider(0) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_227663FA0() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_227667370() - 8);
  return sub_2272EA784(a1, *(v2 + v6), v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2);
}

uint64_t sub_2272F2064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272F20AC()
{
  v1 = *(type metadata accessor for TransportSerializableJournalRecorder(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_226EDE784(v0 + v2, v6, v7, (v0 + v4));
}

uint64_t type metadata accessor for MetricServiceSubscriptionState(uint64_t a1)
{
  result = qword_281399C78;
  if (!qword_281399C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2272F21D0(uint64_t a1)
{
  result = sub_227665AD0();
  if (v2 <= 0x3F)
  {
    result = sub_2272F2244();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2272F2244()
{
  result = qword_2813989E8;
  if (!qword_2813989E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813989E8);
  }

  return result;
}

void sub_2272F2330(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 type];
  if (!v4)
  {

LABEL_5:
    v6 = sub_227664DD0();
    sub_2272F2A14(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  [a1 duration];
  [a1 leadDuration];
  [a1 startTime];
  sub_227158DC8();
  sub_227663AE0();
  sub_227663C20();
LABEL_6:
}

void *static TrainerEvent.representativeSamples()()
{
  v23 = sub_227663C90();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  sub_2272F2918();
  sub_227158DC8();
  v4 = sub_227663B50();
  sub_226F5D274();
  v5 = sub_22766BE70();
  v6 = sub_22766BE70();
  v7 = sub_22766BE70();
  v38 = v6;
  v39[0] = v3;
  v39[1] = v39;
  v39[2] = &v38;
  v36 = v5;
  v37 = v7;
  v39[3] = &v37;
  v39[4] = &v36;
  v35 = v4;
  v39[5] = &v35;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v32 = v31;
  v33 = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9E0, &qword_22767F9E8);
  v25 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v26 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v27 = v26;
  v28 = v26;
  v29 = sub_226F5BF60(&qword_27D7BC9E8, &qword_27D7BC9E0, &qword_22767F9E8);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    result = sub_226F1F428(0, v9, 0);
    v11 = 0;
    v12 = 0;
    v13 = v24;
    v20 = v0 + 32;
    v14 = v0;
    v22 = v8;
    v21 = v9;
    while (v12 < *(v8 + 16))
    {
      v15 = *(v8 + v11 + 72);
      v16 = *(v8 + v11 + 80);
      v17 = *(v8 + v11 + 88);

      sub_226EB396C(v15, v16, v17);
      sub_227663C20();
      v24 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F1F428((v18 > 1), v19 + 1, 1);
        v13 = v24;
      }

      ++v12;
      *(v13 + 16) = v19 + 1;
      result = (*(v14 + 32))(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v2, v23);
      v11 += 64;
      v8 = v22;
      if (v21 == v12)
      {

        return v13;
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

unint64_t sub_2272F2918()
{
  result = qword_27D7BC9D8;
  if (!qword_27D7BC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC9D8);
  }

  return result;
}

uint64_t sub_2272F29BC(uint64_t a1)
{
  result = sub_2272F2A14(&qword_27D7BC9F0, MEMORY[0x277D503E8], "\rĺZྺZ");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272F2A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2272F2A5C(void *a1)
{
  sub_227663C30();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  v3 = sub_227663C50();
  v5 = v4;
  v7 = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9F8, &qword_22767FA38);
  sub_227663AD0();
  v8 = sub_22766BFD0();
  sub_226EB2DFC(v3, v5, v7);

  [a1 setType_];

  sub_227663C80();
  [a1 setStartTime_];
  sub_227663C60();
  [a1 setDuration_];
  sub_227663C40();
  return [a1 setLeadDuration_];
}

id sub_2272F2B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x277D84F90];
  sub_226F20368(0, v1, 0);
  v4 = a1;
  v2 = v37;
  v5 = a1 + 64;
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v29 = a1 + 72;
  v30 = v1;
  v31 = v9;
  v32 = a1 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_28;
    }

    if (v9 != *(v4 + 36))
    {
      goto LABEL_29;
    }

    v33 = v8;
    if (*(*(v4 + 48) + v7) > 1u)
    {
      if (*(*(v4 + 48) + v7) == 2)
      {
        v12 = 0xD000000000000012;
        v13 = 0x8000000227692380;
      }

      else
      {
        v12 = 0xD000000000000010;
        v13 = 0x80000002276923A0;
      }
    }

    else
    {
      v12 = 0x646C6F6666616373;
      v13 = 0xEF79636E6574614CLL;
      if (*(*(v4 + 48) + v7))
      {
        v13 = 0xED000065726F6353;
      }
    }

    v36 = v13;
    v14 = v12;
    v15 = *(*(v4 + 56) + 8 * v7);
    v16 = v4;
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    v19 = v2;
    result = v15;
    if (v17 >= v18 >> 1)
    {
      v35 = result;
      sub_226F20368((v18 > 1), v17 + 1, 1);
      result = v35;
      v19 = v2;
    }

    *(v19 + 16) = v17 + 1;
    v34 = v19;
    v20 = (v19 + 24 * v17);
    v20[4] = v14;
    v20[5] = v36;
    v20[6] = result;
    v10 = 1 << *(v16 + 32);
    if (v7 >= v10)
    {
      goto LABEL_30;
    }

    v5 = v32;
    v21 = *(v32 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_31;
    }

    v4 = v16;
    v22 = *(v16 + 36);
    v9 = v31;
    if (v31 != v22)
    {
      goto LABEL_32;
    }

    v23 = v21 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (v29 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v7, v31, 0);
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v31, 0);
    }

LABEL_4:
    v8 = v33 + 1;
    v7 = v10;
    v2 = v34;
    if (v33 + 1 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2272F2E98()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2272F2F6C(uint64_t a1)
{
  sub_22766C100();
}

uint64_t sub_2272F302C(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_2272F30FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2272F35BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2272F312C(uint64_t *a1@<X8>)
{
  v2 = 0x646C6F6666616373;
  v3 = 0xEF79636E6574614CLL;
  v4 = 0x8000000227692380;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000002276923A0;
  }

  if (*v1)
  {
    v3 = 0xED000065726F6353;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6;
}

unint64_t sub_2272F31BC()
{
  v0 = sub_22714B338(MEMORY[0x277D84F90]);
  v1 = sub_22766C4E0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22736B9E0(v1, 0, isUniquelyReferenced_nonNull_native);
  v3 = sub_22766BFD0();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22736B9E0(v3, 1, v4);
  v5 = sub_22766C750();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22736B9E0(v5, 2, v6);
  v7 = sub_22766C750();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0;
  sub_22736B9E0(v7, 3, v8);
  v9 = sub_2272F2B8C(v0);

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v10 = sub_22766D010();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v13 = v10;

  sub_22722D490(v11, 1, &v13);

  return v13;
}

uint64_t getEnumTagSinglePayload for CreateScaffoldAnalyticsEvent.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CreateScaffoldAnalyticsEvent.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2272F34C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2272F350C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2272F3568()
{
  result = qword_27D7BCA00;
  if (!qword_27D7BCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCA00);
  }

  return result;
}

unint64_t sub_2272F35BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D030();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2272F36C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = objc_allocWithZone(v5);
  sub_226E93170(a1, v11, a2, a3);
  v13 = sub_2276695D0();
  sub_226E97D1C(a1, a2, a3);
  return v13;
}

uint64_t sub_2272F37D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v8 - 8);
  sub_226E93170(a1, &v12 - v9, a2, a3);
  v10 = sub_2276695D0();
  sub_226E97D1C(a1, a2, a3);
  return v10;
}

uint64_t SeymourServerAPI.ExecuteScoresTasksOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_226E93170(a1, v5, &qword_27D7BCA18, &qword_22767FBB0);
  v7 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA18, &qword_22767FBB0);
  return v7;
}

uint64_t SeymourServerAPI.ExecuteScoresTasksOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v6 - v3, &qword_27D7BCA18, &qword_22767FBB0);
  v4 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA18, &qword_22767FBB0);
  return v4;
}

uint64_t SeymourServerAPI.FetchSyncChangesetOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_226E93170(a1, v5, &qword_27D7BCA20, &qword_22767FBB8);
  v7 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA20, &qword_22767FBB8);
  return v7;
}

uint64_t SeymourServerAPI.FetchSyncChangesetOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v6 - v3, &qword_27D7BCA20, &qword_22767FBB8);
  v4 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA20, &qword_22767FBB8);
  return v4;
}

uint64_t SeymourServerAPI.SubmitSyncChangesetOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_226E93170(a1, v5, &qword_27D7BCA28, &qword_22767FBC0);
  v7 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA28, &qword_22767FBC0);
  return v7;
}

uint64_t SeymourServerAPI.SubmitSyncChangesetOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v6 - v3, &qword_27D7BCA28, &qword_22767FBC0);
  v4 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA28, &qword_22767FBC0);
  return v4;
}

uint64_t SeymourServerAPI.ValidateEncryptionKeyOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_226E93170(a1, v5, &qword_27D7BCA30, &qword_22767FBC8);
  v7 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA30, &qword_22767FBC8);
  return v7;
}

uint64_t SeymourServerAPI.ValidateEncryptionKeyOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v6 - v3, &qword_27D7BCA30, &qword_22767FBC8);
  v4 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA30, &qword_22767FBC8);
  return v4;
}

uint64_t SeymourServerAPI.FetchSyncableCountsOperation.__allocating_init(request:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = objc_allocWithZone(v1);
  sub_226E93170(a1, v5, &qword_27D7BCA38, &qword_22767FBD0);
  v7 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA38, &qword_22767FBD0);
  return v7;
}

uint64_t SeymourServerAPI.FetchSyncableCountsOperation.init(request:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_226E93170(a1, &v6 - v3, &qword_27D7BCA38, &qword_22767FBD0);
  v4 = sub_2276695D0();
  sub_226E97D1C(a1, &qword_27D7BCA38, &qword_22767FBD0);
  return v4;
}

id sub_2272F42CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SeymourServerAPIAsync.submitScores(scores:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B030();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  sub_2272F4FC0(&qword_27D7BCA48, MEMORY[0x277D54520], MEMORY[0x277D54510]);
  sub_22766AD80();
  (*(a5 + 8))(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SeymourServerAPIAsync.fetchScores(identifier:activityType:duration:type:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a8;
  v21 = a9;
  v22 = a7;
  v16 = sub_2276677E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = BYTE4(a3) & 1;
  v28 = a4;
  v29 = BYTE4(a4) & 1;
  v30 = a5;
  v31 = a6;
  sub_2272F4FC0(&qword_27D7BCA50, MEMORY[0x277D52FB0], MEMORY[0x277D52FA8]);
  sub_22766AD80();
  (*(a10 + 16))(v19, v22, v23, v21, a10);
  return (*(v17 + 8))(v19, v16);
}

uint64_t SeymourServerAPIAsync.executeScoresTasks(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766AFF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766AFE0();
  (*(a4 + 24))(v11, a1, a2, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t SeymourServerAPIAsync.fetchSyncChangeset(zoneRequests:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B160();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  sub_2272F4FC0(&qword_281399210, MEMORY[0x277D54560], MEMORY[0x277D54540]);
  sub_22766AD80();
  (*(a5 + 32))(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SeymourServerAPIAsync.submitSyncChangeset(zoneChangesets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B270();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  sub_2272F4FC0(&qword_2813991F8, MEMORY[0x277D545B8], MEMORY[0x277D54598]);
  sub_22766AD80();
  (*(a5 + 40))(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SeymourServerAPIAsync.validateEncryptionKey(encryptionKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B300();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  sub_2272F4FC0(&qword_2813991F0, MEMORY[0x277D545D0], MEMORY[0x277D545C0]);
  sub_22766AD80();
  (*(a5 + 48))(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SeymourServerAPIAsync.fetchSyncableCounts(zones:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B210();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  sub_2272F4FC0(&qword_281399208, MEMORY[0x277D54590], MEMORY[0x277D54580]);
  sub_22766AD80();
  (*(a5 + 56))(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SeymourServerAPIAsync.pingServer(ping:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22766AF60();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_2272F4FC0(&qword_27D7BCA58, MEMORY[0x277D544F8], MEMORY[0x277D544F0]);
  sub_22766AD80();
  (*(a6 + 64))(v15, a3, a4, a5, a6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_2272F4FC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SeymourServerAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_2272F5048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA08, &qword_22767FBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766B030();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitScoresOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA08, &qword_22767FBA0);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA08, &qword_22767FBA0);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F5238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA10, &qword_22767FBA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_2276677E0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchScoresOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA10, &qword_22767FBA8);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA10, &qword_22767FBA8);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F5428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766AFF0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ExecuteScoresTasksOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA18, &qword_22767FBB0);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA18, &qword_22767FBB0);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F5614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766B160();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncChangesetOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA20, &qword_22767FBB8);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA20, &qword_22767FBB8);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F5800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766B270();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitSyncChangesetOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA28, &qword_22767FBC0);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA28, &qword_22767FBC0);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F59EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766B300();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ValidateEncryptionKeyOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA30, &qword_22767FBC8);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA30, &qword_22767FBC8);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F5BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766B210();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncableCountsOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA38, &qword_22767FBD0);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA38, &qword_22767FBD0);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

void sub_2272F5DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA40, &qword_22767FBD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = sub_22766AF60();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.PingServerOperation(0));
  sub_226E93170(v9, v6, &qword_27D7BCA40, &qword_22767FBD8);
  v12 = sub_2276695D0();
  sub_226E97D1C(v9, &qword_27D7BCA40, &qword_22767FBD8);
  v13 = v12;

  sub_2276695A0();

  sub_22766C850();
}

uint64_t SeymourServerAPIAsyncClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SeymourServerAPIAsyncOperation.submitScores(scores:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B030();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_27D7BCA48, MEMORY[0x277D54520], MEMORY[0x277D54510]);
  sub_22766AD80();
  v14 = (*(a5 + 8))(v13, a2, a3, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t SeymourServerAPIAsyncOperation.fetchScores(identifier:activityType:duration:type:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v22 = a9;
  v23 = a7;
  v16 = sub_2276677E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = BYTE4(a3) & 1;
  v29 = a4;
  v30 = BYTE4(a4) & 1;
  v31 = a5;
  v32 = a6;
  sub_2272F4FC0(&qword_27D7BCA50, MEMORY[0x277D52FB0], MEMORY[0x277D52FA8]);
  sub_22766AD80();
  v20 = (*(a10 + 16))(v19, v23, v24, v22, a10);
  (*(v17 + 8))(v19, v16);
  return v20;
}

uint64_t sub_2272F645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    result = sub_2276677A0();
  }

  if ((a4 & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = sub_2276677B0();
    if ((a5 & 0x100000000) != 0)
    {
LABEL_5:
      if (!a7)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  result = sub_2276677D0();
  if (!a7)
  {
    return result;
  }

LABEL_6:

  return sub_2276677C0();
}

uint64_t SeymourServerAPIAsyncOperation.executeScoresTasks(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766AFF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766AFE0();
  v12 = (*(a4 + 24))(v11, a1, a2, a3, a4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t SeymourServerAPIAsyncOperation.fetchSyncChangeset(zoneRequests:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B160();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_281399210, MEMORY[0x277D54560], MEMORY[0x277D54540]);
  sub_22766AD80();
  v14 = (*(a5 + 32))(v13, a2, a3, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t SeymourServerAPIAsyncOperation.submitSyncChangeset(zoneChangesets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B270();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_2813991F8, MEMORY[0x277D545B8], MEMORY[0x277D54598]);
  sub_22766AD80();
  v14 = (*(a5 + 40))(v13, a2, a3, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t SeymourServerAPIAsyncOperation.validateEncryptionKey(encryptionKeys:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B300();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_2813991F0, MEMORY[0x277D545D0], MEMORY[0x277D545C0]);
  sub_22766AD80();
  v14 = (*(a5 + 48))(v13, a2, a3, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t SeymourServerAPIAsyncOperation.fetchSyncableCounts(zones:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22766B210();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  sub_2272F4FC0(&qword_281399208, MEMORY[0x277D54590], MEMORY[0x277D54580]);
  sub_22766AD80();
  v14 = (*(a5 + 56))(v13, a2, a3, a4, a5);
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t sub_2272F6C88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = *(v2 + 16);
  if (*(result + 16))
  {

    return a2(v5);
  }

  return result;
}

uint64_t SeymourServerAPIAsyncOperation.pingServer(ping:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22766AF60();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_2272F4FC0(&qword_27D7BCA58, MEMORY[0x277D544F8], MEMORY[0x277D544F0]);
  sub_22766AD80();
  v16 = (*(a6 + 64))(v15, a3, a4, a5, a6);
  (*(v13 + 8))(v15, v12);
  return v16;
}

uint64_t sub_2272F6E64()
{
  if (*(v0 + 24))
  {

    return sub_22766AF50();
  }

  return result;
}

id sub_2272F6EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA08, &qword_22767FBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766B030();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitScoresOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA08, &qword_22767FBA0);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA08, &qword_22767FBA0);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F7088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA10, &qword_22767FBA8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_2276677E0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchScoresOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA10, &qword_22767FBA8);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA10, &qword_22767FBA8);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F7258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA18, &qword_22767FBB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766AFF0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ExecuteScoresTasksOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA18, &qword_22767FBB0);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA18, &qword_22767FBB0);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F7424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA20, &qword_22767FBB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766B160();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncChangesetOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA20, &qword_22767FBB8);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA20, &qword_22767FBB8);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F75F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA28, &qword_22767FBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766B270();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.SubmitSyncChangesetOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA28, &qword_22767FBC0);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA28, &qword_22767FBC0);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F77BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA30, &qword_22767FBC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766B300();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.ValidateEncryptionKeyOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA30, &qword_22767FBC8);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA30, &qword_22767FBC8);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F7988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA38, &qword_22767FBD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766B210();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.FetchSyncableCountsOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA38, &qword_22767FBD0);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA38, &qword_22767FBD0);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

id sub_2272F7B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCA40, &qword_22767FBD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = sub_22766AF60();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  objc_allocWithZone(type metadata accessor for SeymourServerAPI.PingServerOperation(0));
  sub_226E93170(v11, v8, &qword_27D7BCA40, &qword_22767FBD8);
  v14 = sub_2276695D0();
  sub_226E97D1C(v11, &qword_27D7BCA40, &qword_22767FBD8);
  v15 = v14;

  sub_2276695A0();
  v16 = *(v4 + 16);
  sub_2276695C0();

  return v15;
}

CKDatabase __swiftcall ServerDataAccessType.database(for:)(CKContainer a1)
{
  v2 = &selRef_privateCloudDatabase;
  if ((v1 & 1) == 0)
  {
    v2 = &selRef_publicCloudDatabase;
  }

  v3 = [a1.super.isa *v2];

  return v3;
}

id sub_2272F8688(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC420, qword_22767FED0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_2275425D0(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_2272846AC(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22726F458(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_227262180(MEMORY[0x277D84F98], sub_22711C470, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC420, qword_22767FED0);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F33A44(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_227259C3C(v7, MEMORY[0x277D84F98], sub_22711C470, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC420, qword_22767FED0);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F8AB4(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_227542588(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_2272846C4(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22726FBA8(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_227261F9C(MEMORY[0x277D84F98], sub_22711C41C, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC620, &unk_22767E148);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F337E4(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_227259A50(v7, MEMORY[0x277D84F98], sub_22711C41C, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC620, &unk_22767E148);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F8EE0(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A8, &qword_22767DB40);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_227542F30(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_226EC6320(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_227271878(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_2272650C4(MEMORY[0x277D84F98], sub_22711D384, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC4A8, &qword_22767DB40);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F34164(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_22725CC48(v7, MEMORY[0x277D84F98], sub_22711D384, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC4A8, &qword_22767DB40);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F930C(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_2275424F8(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_227284694(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22726E960(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_227265FE4(MEMORY[0x277D84F98], sub_22711D8A8, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC438, &qword_22767DAD0);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F3465C(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_22725DBA8(v7, MEMORY[0x277D84F98], sub_22711D8A8, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC438, &qword_22767DAD0);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F9738(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_2275424B0(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_22728467C(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22726ED08(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_2272661C8(MEMORY[0x277D84F98], sub_22711D8FC, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC430, &unk_22767FFB0);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F348BC(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_22725DD94(v7, MEMORY[0x277D84F98], sub_22711D8FC, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC430, &unk_22767FFB0);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F9B64(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_2275431B8(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_22724A918(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22727AE58(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_227266958(MEMORY[0x277D84F98], sub_22711DBB8, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC580, &qword_22767DFA0);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F34EC4(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_22725E544(v7, MEMORY[0x277D84F98], sub_22711DBB8, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC580, &qword_22767DFA0);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272F9F90(void *a1)
{
  v37 = a1;
  v2 = sub_227669A90();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_227543200(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v34 = v5;
    v16 = v35;
    v17 = v36;
    v18 = v38;
    result = sub_22723DB40(v37);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v37 = *(v1 + 24);
    v38 = 0;
    if (sub_226EA1E88(v20))
    {
      v21 = sub_22766C2B0();
    }

    else
    {
      v21 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v39 = 1;
    v22 = v20;
    sub_227669760();
    v23 = v34;
    *&v7[*(v34 + 28)] = v19;
    *&v7[*(v23 + 32)] = v22;
    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v25 = sub_227669730();
    if (v39 == 1)
    {
      v26 = v38;
      sub_227266F04(MEMORY[0x277D84F98], sub_22711DD50, 0);
      v38 = v26;
      if (!v26)
      {
        v28 = v27;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC410, &unk_22767DAA0);

        v32 = sub_226F491E0();
        sub_226EDAB78(v32, v37);

        v33 = sub_226F35124(v28);

        return v33;
      }
    }

    else
    {
      v29 = MEMORY[0x22AA99A00](v25);
      v30 = v38;
      v31 = sub_22725EB08(v7, MEMORY[0x277D84F98], sub_22711DD50, 0);
      v38 = v30;
      if (!v30)
      {
        v28 = v31;
        objc_autoreleasePoolPop(v29);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v29);
    }

    return sub_226E97D1C(v7, &qword_27D7BC410, &unk_22767DAA0);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272FA3BC(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_227542468(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_227284664(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22726F800(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_22726897C(MEMORY[0x277D84F98], sub_22711E580, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC5F8, &qword_22767E0D0);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F35A5C(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_2272605F0(v7, MEMORY[0x277D84F98], sub_22711E580, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC5F8, &qword_22767E0D0);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

id sub_2272FA7E8(void *a1)
{
  v38 = a1;
  v2 = sub_227669A90();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_22766A100();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v13 = qword_2813B2078;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v13, v8);
  v14 = sub_227542420(v11, *(v1 + 32), v12);
  (*(v9 + 8))(v11, v8);
  if (!v14)
  {
    v35 = v5;
    v16 = v36;
    v17 = v37;
    v18 = v39;
    result = sub_227284A84(v38);
    if (v18)
    {
      return result;
    }

    v19 = result;
    v20 = *(v1 + 16);
    v38 = *(v1 + 24);
    v39 = 0;
    sub_22727E1A0(v20);
    if (v21)
    {
      v22 = sub_22766C2B0();
    }

    else
    {
      v22 = 0;
    }

    [v19 setRelationshipKeyPathsForPrefetching_];

    (*(v16 + 104))(v4, *MEMORY[0x277D4F000], v17);
    v40 = 1;
    v23 = v20;
    sub_227669760();
    v24 = v35;
    *&v7[*(v35 + 28)] = v19;
    *&v7[*(v24 + 32)] = v23;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v26 = sub_227669730();
    if (v40 == 1)
    {
      v27 = v39;
      sub_227268D44(MEMORY[0x277D84F98], sub_22711E63C, 0);
      v39 = v27;
      if (!v27)
      {
        v29 = v28;
LABEL_18:
        sub_226E97D1C(v7, &qword_27D7BC630, &qword_22767E178);

        v33 = sub_226F491E0();
        sub_226EDAB78(v33, v38);

        v34 = sub_226F361A0(v29);

        return v34;
      }
    }

    else
    {
      v30 = MEMORY[0x22AA99A00](v26);
      v31 = v39;
      v32 = sub_2272609C8(v7, MEMORY[0x277D84F98], sub_22711E63C, 0);
      v39 = v31;
      if (!v31)
      {
        v29 = v32;
        objc_autoreleasePoolPop(v30);
        goto LABEL_18;
      }

      objc_autoreleasePoolPop(v30);
    }

    return sub_226E97D1C(v7, &qword_27D7BC630, &qword_22767E178);
  }

  if (v14 == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  else
  {
    return swift_willThrow();
  }
}

uint64_t sub_2272FAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (*(v10 + 16))
  {

    v11 = sub_226E92000(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAC8, &unk_22767FF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(inited + 32) = sub_227143C7C;
  *(inited + 40) = v15;

  sub_227461698(inited);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22736BA28(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v19;
  swift_endAccess();
  v17 = *(v13 + 16);

  return v17;
}

uint64_t sub_2272FADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a1 + 24);
  if (*(v10 + 16))
  {

    v11 = sub_226E92000(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAD8, &qword_22767FFC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(inited + 32) = sub_227307C34;
  *(inited + 40) = v15;

  sub_227461EE8(inited);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22736BFD0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v19;
  swift_endAccess();
  v17 = *(v13 + 16);

  return v17;
}

uint64_t sub_2272FAF7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v36 = sub_22766B390();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - v13);
  sub_226E93170(a1, &v35 - v13, &qword_27D7BCAB8, &qword_22767FE80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v35 = a1;
    v16 = *v14;
    sub_22766A6C0();

    v17 = v16;
    v18 = sub_22766B380();
    v19 = sub_22766C890();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_226E97AE8(a2, a3, &v40);
      *(v20 + 12) = 2082;
      swift_getErrorValue();
      v22 = MEMORY[0x22AA995D0](v38, v39);
      v24 = sub_226E97AE8(v22, v23, &v40);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_226E8E000, v18, v19, "Handling error for requestIdentifier: %{public}s error: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    else
    {
    }

    v29 = (*(v6 + 8))(v8, v36);
    a1 = v35;
  }

  else
  {
    sub_22766A6C0();

    v25 = sub_22766B380();
    v26 = sub_22766C8B0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_226E97AE8(a2, a3, &v40);
      _os_log_impl(&dword_226E8E000, v25, v26, "Handling success for requestIdentifier: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA9A450](v28, -1, -1);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    (*(v6 + 8))(v11, v36);
    v29 = sub_226E97D1C(v14, &qword_27D7BCAB8, &qword_22767FE80);
  }

  MEMORY[0x28223BE20](v29);
  v30 = v37;
  *(&v35 - 4) = v31;
  *(&v35 - 3) = v30;
  *(&v35 - 2) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAC0, qword_22767FE88);
  v32 = sub_2276696A0();
  v33 = v40;
  MEMORY[0x28223BE20](v32);
  *(&v35 - 2) = a1;
  sub_2275D1888(sub_227306780, (&v35 - 4), v33);
}

uint64_t sub_2272FB428(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = a2 & 1;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v46 = a1;
  v47 = v10;
  if (a2)
  {
    v42 = v11;
    v18 = a3;
    v19 = a1;
    sub_22766A6C0();

    sub_226F04AAC(a1, 1);
    v20 = sub_22766B380();
    v21 = sub_22766C890();

    sub_226EB4548(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = v5;
      v23 = v22;
      v40 = swift_slowAlloc();
      v45 = v40;
      *v23 = 136446466;
      *(v23 + 4) = sub_226E97AE8(v18, a4, &v45);
      *(v23 + 12) = 2082;
      swift_getErrorValue();
      v24 = MEMORY[0x22AA995D0](v43, v44);
      v26 = sub_226E97AE8(v24, v25, &v45);

      *(v23 + 14) = v26;
      v27 = v21;
      a3 = v18;
      _os_log_impl(&dword_226E8E000, v20, v27, "Handling error for requestIdentifier: %{public}s error: %{public}s", v23, 0x16u);
      v28 = v40;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v28, -1, -1);
      v29 = v23;
      v5 = v41;
      MEMORY[0x22AA9A450](v29, -1, -1);

      sub_226EB4548(a1, 1);
      v30 = (*(v12 + 8))(v14, v42);
    }

    else
    {
      sub_226EB4548(a1, 1);

      v30 = (*(v12 + 8))(v14, v42);
      a3 = v18;
    }
  }

  else
  {
    sub_22766A6C0();

    v31 = sub_22766B380();
    v32 = sub_22766C8B0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v11;
      v35 = swift_slowAlloc();
      v45 = v35;
      *v33 = 136446210;
      *(v33 + 4) = sub_226E97AE8(a3, a4, &v45);
      _os_log_impl(&dword_226E8E000, v31, v32, "Handling success for requestIdentifier: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);

      v30 = (*(v12 + 8))(v17, v34);
    }

    else
    {

      v30 = (*(v12 + 8))(v17, v11);
    }
  }

  MEMORY[0x28223BE20](v30);
  *(&v39 - 4) = v5;
  *(&v39 - 3) = a3;
  *(&v39 - 2) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAD0, &qword_22767FFC0);
  v36 = sub_2276696A0();
  v37 = v45;
  MEMORY[0x28223BE20](v36);
  *(&v39 - 2) = &v46;
  sub_2275D1888(sub_227307BE4, (&v39 - 4), v37);
}

uint64_t sub_2272FB890(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, __n128))
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16))
  {

    v9 = sub_226E92000(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();

  (a4)(0, a2, a3);
  swift_endAccess();
  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2272FB990()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);

  return swift_deallocClassInstance();
}

uint64_t sub_2272FBA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v40 = a2;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v38 = *(v8 - 8);
  v39 = v8;
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = v31 - v11;
  v12 = v2[23];
  v32 = v2[22];
  v35 = v12;
  v31[1] = __swift_project_boxed_opaque_existential_0(v2 + 19, v32);
  v33 = *(v5 + 16);
  v13 = a1;
  v14 = v4;
  v33(v7, v13, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = *(v5 + 32);
  v18(v17 + v15, v7, v14);
  v31[0] = v2;
  *(v17 + v16) = v2;

  sub_226ECF5D8(sub_227307DA0, v17, v32, MEMORY[0x277D84F78] + 8, v35, v41);

  v19 = v14;
  v33(v7, v34, v14);
  v20 = swift_allocObject();
  v18(v20 + v15, v7, v19);
  *(v20 + v16) = v31[0];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2273079F4;
  *(v21 + 24) = v20;
  v23 = v38;
  v22 = v39;
  v24 = v36;
  v25 = v41;
  (*(v38 + 16))(v36, v41, v39);
  v26 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v27 = (v37 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v23 + 32))(v28 + v26, v24, v22);
  v29 = (v28 + v27);
  *v29 = sub_227086964;
  v29[1] = v21;
  sub_227663CF0();

  sub_227669270();
  return (*(v23 + 8))(v25, v22);
}

uint64_t sub_2272FBDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_227663CF0();

  return sub_227669270();
}

uint64_t sub_2272FBF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v33 = a2;
  v28 = sub_2276639B0();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v26 - v9;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  sub_2276639A0();
  v14 = sub_227662390();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  v34 = *(a4 + 192);
  v35 = v14;
  v36 = v16;
  v37 = v32;
  v38 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA8, &qword_22767FE68);
  sub_2276696A0();

  if (v39 == 1)
  {
    v18 = v29;
    v19 = v27;
    sub_2272FC2B0(v27, v29);
    v20 = v28;
    (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v28);
    v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    (*(v6 + 32))(v22 + v21, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);

    v23 = v31;
    v24 = sub_227669290();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_2273070E4;
    *(v25 + 24) = v22;

    v24(sub_226E937DC, v25);

    return (*(v30 + 8))(v18, v23);
  }

  return result;
}

uint64_t sub_2272FC2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v41 = a2;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = v7;
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8610, &unk_2276711B0);
  v39 = *(v9 - 8);
  v40 = v9;
  v38 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v28 - v12;
  v13 = *(v2 + 176);
  v36 = *(v3 + 184);
  v31 = __swift_project_boxed_opaque_existential_0((v3 + 152), v13);
  v34 = *(v6 + 16);
  v28 = v5;
  v34(v8, a1, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v29 = *(v6 + 32);
  v29(v15 + v14, v8, v5);
  v16 = sub_227663180();
  v32 = v3;

  v17 = v33;
  sub_226ECF5D8(sub_227307450, v15, v13, v16, v36, v33);

  v18 = v28;
  v34(v8, v35, v28);
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  v29(v19 + v14, v8, v18);
  v21 = v39;
  v20 = v40;
  v22 = v37;
  (*(v39 + 16))(v37, v17, v40);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v24 = (v38 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v21 + 32))(v25 + v23, v22, v20);
  v26 = (v25 + v24);
  *v26 = sub_2273074D0;
  v26[1] = v19;
  type metadata accessor for AssetLoaderResponse(0);

  sub_227669270();
  return (*(v21 + 8))(v17, v20);
}

uint64_t sub_2272FC64C(void (*a1)(uint64_t, char *, uint64_t), uint64_t a2)
{
  v83 = a1;
  v3 = sub_2276639B0();
  v4 = *(v3 - 8);
  v89 = v3;
  v90 = v4;
  MEMORY[0x28223BE20](v3);
  v85 = v5;
  v88 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = &v62 - v7;
  v8 = type metadata accessor for AssetLoaderResponse(0);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v62 - v13);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  v74 = *(v71 - 1);
  MEMORY[0x28223BE20](v71);
  v75 = v15;
  v76 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v62 - v17);
  v19 = sub_2276624A0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v82 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  v84 = a2;
  sub_2276639A0();
  sub_226E93170(v83, v14, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v18 = *v14;
  }

  else
  {
    v30 = v70;
    sub_2273065BC(v14, v70);
    v31 = *(v20 + 16);
    v31(v25, v29, v19);
    v31(v22, v30, v19);
    sub_227663CE0();
    sub_2273073F0(v30, type metadata accessor for AssetLoaderResponse);
  }

  v32 = v20;
  v63 = v19;
  v79 = v29;
  v81 = v18;
  swift_storeEnumTagMultiPayload();
  v68 = v87[22];
  v69 = v87[23];
  v67 = __swift_project_boxed_opaque_existential_0(v87 + 19, v68);
  v33 = *(v20 + 16);
  v70 = v20 + 16;
  v71 = v33;
  v33(v25, v29, v19);
  sub_226E93170(v83, v80, &qword_27D7B9628, &unk_227674860);
  v34 = v25;
  v35 = v90;
  v64 = *(v90 + 16);
  v65 = v90 + 16;
  v64(v88, v84, v89);
  v36 = *(v20 + 80);
  v72 = v20;
  v37 = (v36 + 24) & ~v36;
  v38 = (v82 + *(v73 + 80) + v37) & ~*(v73 + 80);
  v39 = *(v35 + 80);
  v40 = (v11 + v39 + v38) & ~v39;
  v66 = v36 | v39;
  v41 = swift_allocObject();
  *(v41 + 16) = v87;
  v42 = *(v32 + 32);
  v73 = v32 + 32;
  v83 = v42;
  v43 = v41 + v37;
  v44 = v34;
  v45 = v34;
  v46 = v63;
  v42(v43, v45, v63);
  sub_226E95D18(v80, v41 + v38, &qword_27D7B9628, &unk_227674860);
  v47 = *(v35 + 32);
  v90 = v35 + 32;
  v80 = v47;
  v48 = v41 + v40;
  v49 = v88;
  v50 = v89;
  v47(v48, v88, v89);

  sub_226ECF5D8(sub_227307150, v41, v68, MEMORY[0x277D84F78] + 8, v69, v86);

  v64(v49, v84, v50);
  v51 = v76;
  sub_226E93170(v81, v76, &qword_27D7BCAB8, &qword_22767FE80);
  v71(v44, v79, v46);
  v52 = (v39 + 16) & ~v39;
  v53 = (v85 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + *(v74 + 80) + 8) & ~*(v74 + 80);
  v55 = (v75 + v36 + v54) & ~v36;
  v56 = swift_allocObject();
  v80(v56 + v52, v88, v89);
  *(v56 + v53) = v87;
  sub_226E95D18(v51, v56 + v54, &qword_27D7BCAB8, &qword_22767FE80);
  v83(v56 + v55, v44, v46);

  v57 = v78;
  v58 = v86;
  v59 = sub_227669290();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_22730729C;
  *(v60 + 24) = v56;

  v59(sub_226EB4544, v60);

  (*(v77 + 8))(v58, v57);
  sub_226E97D1C(v81, &qword_27D7BCAB8, &qword_22767FE80);
  return (*(v72 + 8))(v79, v46);
}

uint64_t sub_2272FCEB4(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4)
{
  v130 = a1;
  v131 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA0, &qword_22767FE58);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v112 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v6;
  MEMORY[0x28223BE20](v7);
  v126 = &v108 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v136 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v108 - v11;
  MEMORY[0x28223BE20](v12);
  v122 = &v108 - v13;
  v116 = v14;
  MEMORY[0x28223BE20](v15);
  v123 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v108 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v108 - v21;
  v135 = sub_2276639B0();
  v129 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v127 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v138 = &v108 - v25;
  v132 = v26;
  MEMORY[0x28223BE20](v27);
  v139 = &v108 - v28;
  v29 = sub_2276624A0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a3;
  sub_2276639A0();
  v33 = sub_227662390();
  v35 = v34;
  (*(v30 + 8))(v32, v29);
  v137 = a4;
  v140 = *(a4 + 192);
  v141 = v33;
  v120 = v33;
  v128 = v35;
  v142 = v35;
  v143 = v130;
  v144 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA8, &qword_22767FE68);
  sub_2276696A0();
  if (v145 != 1)
  {
  }

  sub_22766C0A0();
  v36 = sub_227664AE0();
  (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  (*(v30 + 56))(v19, 1, 1, v29);
  v37 = v139;
  sub_227663980();

  sub_226E97D1C(v19, &unk_27D7BB570, &unk_227670FC0);
  sub_226E97D1C(v22, &qword_27D7B9688, &qword_2276776E0);
  v38 = v129;
  v39 = *(v129 + 16);
  v130 = v129 + 16;
  v131 = v39;
  v40 = v138;
  v41 = v135;
  v39(v138, v37, v135);
  v42 = *(v38 + 80);
  v43 = v132;
  v109 = ((v42 + 24) & ~v42) + v132;
  v110 = ((v42 + 24) & ~v42);
  v44 = swift_allocObject();
  *(v44 + 16) = v137;
  v45 = *(v38 + 32);
  v45(v44 + ((v42 + 24) & ~v42), v40, v41);
  v124 = v45;
  v125 = v38 + 32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB0, &unk_22767FE70);
  v46 = v126;
  sub_227669280();
  v131(v40, v139, v41);
  v114 = (v42 + 16) & ~v42;
  v111 = ((v43 + v114 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v47 = (v43 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = v47;
  v48 = swift_allocObject();
  v45(v48 + ((v42 + 16) & ~v42), v40, v41);
  v49 = v137;
  *(v48 + v47) = v137;
  v50 = v117;
  v51 = v112;
  v52 = v118;
  (*(v117 + 16))(v112, v46, v118);
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v115 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v50 + 32))(v55 + v53, v51, v52);
  v56 = (v55 + v54);
  *v56 = sub_227306310;
  v56[1] = v48;
  v115 = type metadata accessor for AssetLoaderResponse(0);
  v57 = v49;

  v58 = v134;
  sub_227669270();
  (*(v50 + 8))(v126, v52);
  v59 = v138;
  v60 = v135;
  v61 = v131;
  v131(v138, v133, v135);
  v62 = v127;
  v61(v127, v139, v60);
  v63 = (v109 + v42) & ~v42;
  v64 = swift_allocObject();
  *(v64 + 16) = v57;
  v65 = v124;
  v124(v110 + v64, v59, v60);
  v65(v64 + v63, v62, v60);
  v66 = v136;
  v67 = *(v136 + 16);
  v118 = v136 + 16;
  v126 = v67;
  v68 = v119;
  v69 = v121;
  (v67)(v119, v58, v121);
  v70 = *(v66 + 80);
  v117 = v70;
  v71 = (v70 + 16) & ~v70;
  v112 = v71;
  v72 = (v116 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109 = v72;
  v73 = swift_allocObject();
  v110 = *(v66 + 32);
  v116 = v66 + 32;
  v110(v73 + v71, v68, v69);
  v74 = (v73 + v72);
  *v74 = sub_227306350;
  v74[1] = v64;
  v75 = v137;

  v76 = v122;
  sub_227669270();
  v77 = *(v66 + 8);
  v136 = v66 + 8;
  v119 = v77;
  v78 = v69;
  (v77)(v134, v69);
  v79 = v138;
  v80 = v135;
  v81 = v131;
  v131(v138, v133, v135);
  v82 = v127;
  v81(v127, v139, v80);
  v108 = v42;
  v83 = (v111 + v42) & ~v42;
  v84 = swift_allocObject();
  v85 = v80;
  v86 = v80;
  v87 = v124;
  v124(v84 + v114, v79, v86);
  *(v84 + v113) = v75;
  v87(v84 + v83, v82, v85);
  v88 = swift_allocObject();
  *(v88 + 16) = sub_227306428;
  *(v88 + 24) = v84;
  v89 = v134;
  v90 = v76;
  (v126)(v134, v76, v78);
  v91 = v109;
  v92 = swift_allocObject();
  v110(&v112[v92], v89, v78);
  v93 = (v92 + v91);
  *v93 = sub_2273064E0;
  v93[1] = v88;
  v94 = v75;

  v95 = v123;
  sub_227669270();
  v96 = v78;
  v97 = v119;
  (v119)(v90, v78);
  v98 = v138;
  v131(v138, v139, v85);
  v99 = v113;
  v100 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  v124(v101 + v114, v98, v85);
  *(v101 + v99) = v94;
  v102 = (v101 + v100);
  v103 = v128;
  *v102 = v120;
  v102[1] = v103;

  v104 = v96;
  v105 = sub_227669290();
  v106 = swift_allocObject();
  *(v106 + 16) = sub_227306510;
  *(v106 + 24) = v101;

  v105(sub_226E93814, v106);

  v97(v95, v104);
  return (*(v129 + 8))(v139, v85);
}

uint64_t sub_2272FDC28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v68 = a3;
  v74 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v6;
  MEMORY[0x28223BE20](v7);
  v77 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = v10;
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v61 - v12;
  v13 = sub_2276639B0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  v19 = sub_22766B390();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v22 = *(v14 + 16);
  v72 = a2;
  v64 = v22;
  v22(v18, a2, v13);
  v23 = sub_22766B380();
  v24 = sub_22766C8B0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v62 = v19;
    v26 = v25;
    v27 = swift_slowAlloc();
    v81 = v27;
    *v26 = 141558274;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v28 = sub_22766D140();
    v29 = v13;
    v31 = v30;
    v32 = v18;
    v33 = v29;
    (*(v14 + 8))(v32, v29);
    v34 = sub_226E97AE8(v28, v31, &v81);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_226E8E000, v23, v24, "Reload - fetching %{mask.hash}s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AA9A450](v27, -1, -1);
    MEMORY[0x22AA9A450](v26, -1, -1);

    (*(v63 + 8))(v21, v62);
  }

  else
  {

    v35 = v18;
    v33 = v13;
    (*(v14 + 8))(v35, v13);
    (*(v63 + 8))(v21, v19);
  }

  v36 = v68;
  v37 = v68[22];
  v63 = v68[23];
  __swift_project_boxed_opaque_existential_0(v68 + 19, v37);
  v38 = v65;
  v39 = v72;
  v40 = v33;
  v64(v65, v72, v33);
  v41 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v42 = (v66 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v14 + 32))(v43 + v41, v38, v40);
  *(v43 + v42) = v36;

  v44 = v80;
  sub_226ECF5D8(sub_227306A20, v43, v37, MEMORY[0x277D84F78] + 8, v63, v80);

  v45 = v67[3];
  v46 = v67[4];
  __swift_project_boxed_opaque_existential_0(v67, v45);
  v47 = v77;
  (*(v46 + 32))(v39, v45, v46);
  v48 = v78;
  v49 = v79;
  v50 = v73;
  (*(v78 + 16))(v73, v47, v79);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v51, v50, v49);
  v54 = v75;
  v53 = v76;
  v55 = v70;
  (*(v75 + 16))(v70, v44, v76);
  v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v57 = (v69 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v54 + 32))(v58 + v56, v55, v53);
  v59 = (v58 + v57);
  *v59 = sub_227306A4C;
  v59[1] = v52;
  type metadata accessor for AssetLoaderResponse(0);
  sub_227669270();
  (*(v48 + 8))(v47, v49);
  return (*(v54 + 8))(v80, v53);
}

uint64_t sub_2272FE328@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v69 = a1;
  v65 = a3;
  v80 = a5;
  v79 = type metadata accessor for AssetLoaderResponse(0);
  v66 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v67 = v7;
  v81 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276639B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v58 = &v57 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v72 = *(v74 - 8);
  v71 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v77 = *(v17 - 8);
  v78 = v17;
  v76 = *(v77 + 64);
  MEMORY[0x28223BE20](v17);
  v75 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v73 = &v57 - v20;
  v60 = a2;
  v21 = a2[23];
  v61 = a2[22];
  v63 = v21;
  v62 = __swift_project_boxed_opaque_existential_0(a2 + 19, v61);
  v22 = *(v9 + 16);
  v22(v13, v65, v8);
  v22(&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v68, v8);
  v23 = v81;
  sub_227145B00(a1, v81);
  v24 = *(v9 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v24 + v26 + 8) & ~v24;
  v28 = *(v66 + 80);
  v29 = (v10 + v28 + v27) & ~v28;
  v68 = v28 | 7;
  v30 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v30 + v25, v58, v8);
  v32 = v60;
  *(v30 + v26) = v60;
  v31(v30 + v27, v59, v8);
  sub_2273065BC(v23, v30 + v29);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  v34 = v64;
  sub_226ECF5D8(sub_2273067E4, v30, v61, v33, v63, v64);

  v35 = swift_allocObject();
  *(v35 + 16) = sub_2273068EC;
  *(v35 + 24) = v32;
  v36 = v72;
  v37 = v70;
  v38 = v74;
  (*(v72 + 16))(v70, v34, v74);
  v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v40 = (v71 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v36 + 32))(v41 + v39, v37, v38);
  v42 = (v41 + v40);
  *v42 = sub_227306918;
  v42[1] = v35;

  v43 = v73;
  sub_227669270();
  (*(v36 + 8))(v34, v38);
  v44 = v81;
  sub_227145B00(v69, v81);
  v45 = swift_allocObject();
  sub_2273065BC(v44, v45 + ((v28 + 16) & ~v28));
  v46 = swift_allocObject();
  *(v46 + 16) = sub_227306948;
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2273069B8;
  *(v47 + 24) = v46;
  v48 = v77;
  v49 = v78;
  v50 = v75;
  (*(v77 + 16))(v75, v43, v78);
  v51 = v48;
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v76 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v51 + 32))(v54 + v52, v50, v49);
  v55 = (v54 + v53);
  *v55 = sub_2273069E8;
  v55[1] = v47;
  sub_227669270();
  return (*(v51 + 8))(v43, v49);
}

uint64_t sub_2272FE9E8@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v131 = a4;
  v141 = a3;
  v147 = a1;
  v126 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v130 = v125 - v7;
  v8 = sub_227663180();
  v136 = *(v8 - 8);
  v137 = v8;
  MEMORY[0x28223BE20](v8);
  v133 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = v125 - v11;
  v12 = sub_2276624A0();
  isa = v12[-1].isa;
  v140 = v12;
  MEMORY[0x28223BE20](v12);
  v129 = v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v138 = v125 - v15;
  v16 = sub_2276639B0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v125 - v21;
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v135 = v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = v125 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = v125 - v29;
  sub_22766A6C0();
  v151 = v17;
  v31 = *(v17 + 16);
  v143 = a2;
  v145 = v31;
  v146 = (v17 + 16);
  v31(v22, a2, v16);
  v32 = sub_22766B380();
  v33 = sub_22766C8B0();
  v34 = os_log_type_enabled(v32, v33);
  v132 = v19;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *&v128 = swift_slowAlloc();
    v150[0] = v128;
    *v35 = 141558274;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v36 = sub_22766D140();
    v142 = v24;
    v37 = v23;
    v39 = v38;
    v40 = v16;
    v41 = *(v151 + 8);
    v42 = v22;
    v43 = v40;
    v41(v42);
    v44 = sub_226E97AE8(v36, v39, v150);
    v23 = v37;
    v24 = v142;

    *(v35 + 14) = v44;
    _os_log_impl(&dword_226E8E000, v32, v33, "Reload - removing old key request %{mask.hash}s", v35, 0x16u);
    v45 = v128;
    __swift_destroy_boxed_opaque_existential_0(v128);
    v46 = v147;
    MEMORY[0x22AA9A450](v45, -1, -1);
    MEMORY[0x22AA9A450](v35, -1, -1);

    v47 = *(v24 + 8);
    v47(v30, v23);
    v48 = v43;
    v49 = v47;
  }

  else
  {

    v48 = v16;
    v41 = *(v151 + 8);
    (v41)(v22, v48);
    v49 = *(v24 + 8);
    v49(v30, v23);
    v46 = v147;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v50 = (*(v151 + 80) + 32) & ~*(v151 + 80);
  v51 = swift_allocObject();
  v128 = xmmword_227670CD0;
  *(v51 + 16) = xmmword_227670CD0;
  v145(v51 + v50, v143, v48);
  v52 = v144;
  sub_227078AE0(v51, v46);
  if (v52)
  {
    swift_setDeallocating();
    (v41)(v51 + v50, v48);
    return swift_deallocClassInstance();
  }

  else
  {
    v142 = v24;
    v144 = v23;
    swift_setDeallocating();
    v53 = v151 + 8;
    v151 = v48;
    v143 = v41;
    v125[1] = v53;
    (v41)(v51 + v50, v48);
    swift_deallocClassInstance();
    v54 = __swift_project_boxed_opaque_existential_0(v46, v46[3]);
    v55 = *v54;
    v56 = v54[1];
    v57 = *(v54 + 16);
    v58 = v54[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
    v59 = swift_allocObject();
    v60 = v55;
    v61 = v56;

    sub_22766A070();
    *(v59 + 16) = v60;
    *(v59 + 24) = v61;
    *(v59 + 32) = v57;
    *(v59 + 40) = v58;
    swift_getKeyPath();
    v62 = v138;
    sub_2276639A0();
    v63 = sub_227662390();
    v65 = v64;
    (*(isa + 1))(v62, v140);
    v150[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v150[0] = v63;
    v150[1] = v65;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v66 = sub_22766C820();
    sub_226E93170(v150, v148, &unk_27D7BC990, &qword_227670A30);
    v67 = v149;
    if (v149)
    {
      v68 = __swift_project_boxed_opaque_existential_0(v148, v149);
      v138 = v125;
      v69 = v49;
      v70 = *(v67 - 8);
      v71 = MEMORY[0x28223BE20](v68);
      v73 = v125 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v70 + 16))(v73, v71);
      v74 = sub_22766D170();
      (*(v70 + 8))(v73, v67);
      v49 = v69;
      __swift_destroy_boxed_opaque_existential_0(v148);
    }

    else
    {
      v74 = 0;
    }

    v75 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v76 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

    sub_226E97D1C(v150, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v77 = v76;
    v78 = sub_22766A080();
    v80 = v79;
    MEMORY[0x22AA985C0]();
    if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v78(v150, 0);
    swift_endAccess();

    v82 = sub_2272F8688(0x64);
    swift_setDeallocating();

    v83 = qword_2813B2078;
    v84 = sub_22766A100();
    (*(*(v84 - 8) + 8))(v59 + v83, v84);
    swift_deallocClassInstance();
    v85 = v127;
    sub_22766A6C0();

    v86 = sub_22766B380();
    v87 = sub_22766C8B0();

    v88 = os_log_type_enabled(v86, v87);
    v125[0] = v49;
    v138 = v82;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v150[0] = v90;
      *v89 = 141558274;
      *(v89 + 4) = 1752392040;
      *(v89 + 12) = 2080;
      sub_227307D58(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
      v91 = sub_22766C610();
      v93 = sub_226E97AE8(v91, v92, v150);

      *(v89 + 14) = v93;
      _os_log_impl(&dword_226E8E000, v86, v87, "Reload - deleted old AssetEntries %{mask.hash}s", v89, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x22AA9A450](v90, -1, -1);
      MEMORY[0x22AA9A450](v89, -1, -1);
    }

    v49(v85, v144);
    v94 = v134;
    v95 = v136;
    v96 = v133;
    v98 = isa;
    v97 = v140;
    v99 = v130;
    (*(isa + 2))(v130, v131, v140);
    (*(v98 + 7))(v99, 0, 1, v97);
    v100 = v141;
    sub_2276639A0();
    type metadata accessor for AssetLoaderResponse(0);
    sub_227663150();
    sub_22766A6C0();
    v101 = v132;
    v102 = v151;
    v145(v132, v100, v151);
    v146 = *(v95 + 16);
    v146(v96, v94, v137);
    v103 = sub_22766B380();
    v104 = sub_22766C8B0();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v150[0] = v145;
      *v105 = 141558786;
      *(v105 + 4) = 1752392040;
      LODWORD(v141) = v104;
      *(v105 + 12) = 2080;
      sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v140 = v103;
      v106 = sub_22766D140();
      v108 = v107;
      v143(v101, v102);
      v109 = sub_226E97AE8(v106, v108, v150);

      *(v105 + 14) = v109;
      *(v105 + 22) = 2160;
      *(v105 + 24) = 1752392040;
      *(v105 + 32) = 2080;
      sub_227307D58(&qword_28139BD48, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCC0]);
      v110 = v137;
      v111 = sub_22766D140();
      v113 = v112;
      v114 = v96;
      v115 = *(v136 + 8);
      v115(v114, v110);
      v116 = sub_226E97AE8(v111, v113, v150);
      v94 = v134;

      *(v105 + 34) = v116;
      v117 = v140;
      _os_log_impl(&dword_226E8E000, v140, v141, "Reload - load succeeded for request: %{mask.hash}s. Saving entry: %{mask.hash}s", v105, 0x2Au);
      v118 = v145;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v118, -1, -1);
      v119 = v105;
      v95 = v136;
      MEMORY[0x22AA9A450](v119, -1, -1);

      (v125[0])(v135, v144);
    }

    else
    {

      v120 = v96;
      v115 = *(v95 + 8);
      v121 = v137;
      v115(v120, v137);
      v143(v101, v102);
      (v125[0])(v135, v144);
      v110 = v121;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
    v122 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v123 = swift_allocObject();
    *(v123 + 16) = v128;
    v146((v123 + v122), v94, v110);
    v124 = sub_226F4AE10(v123);
    swift_setDeallocating();
    v115((v123 + v122), v110);
    swift_deallocClassInstance();
    sub_227079538(v124, v147);
    v115(v94, v110);

    *v126 = v138;
  }

  return result;
}

id sub_2272FFAF0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v58 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v49[-v8];
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = v11;
  v56 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v49[-v13];
  v15 = sub_22766B390();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v52 = *(v10 + 16);
  v52(v14, a2, v9);
  v18 = a1;
  v19 = sub_22766B380();
  v20 = sub_22766C890();
  v62 = a1;

  v21 = os_log_type_enabled(v19, v20);
  v57 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v65 = v51;
    *v22 = 141558786;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v50 = v20;
    v23 = sub_22766D140();
    v24 = v9;
    v25 = a4;
    v27 = v26;
    v28 = *(v10 + 8);
    v29 = v24;
    v28(v14, v24);
    v30 = sub_226E97AE8(v23, v27, &v65);
    a4 = v25;

    *(v22 + 14) = v30;
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2080;
    swift_getErrorValue();
    v31 = MEMORY[0x22AA995D0](v63, v64);
    v33 = sub_226E97AE8(v31, v32, &v65);

    *(v22 + 34) = v33;
    _os_log_impl(&dword_226E8E000, v19, v50, "Reload - Failed for request: %{mask.hash}s, error: %{mask.hash}s", v22, 0x2Au);
    v34 = v51;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v34, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {

    v35 = *(v10 + 8);
    v29 = v9;
    v35(v14, v9);
  }

  (*(v53 + 8))(v17, v54);
  v36 = v58;
  v37 = v58[22];
  v54 = v58[23];
  __swift_project_boxed_opaque_existential_0(v58 + 19, v37);
  v38 = v56;
  v52(v56, a4, v29);
  v39 = v57;
  v40 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v41 = (v55 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v39 + 32))(v42 + v40, v38, v29);
  *(v42 + v41) = v36;

  v43 = v59;
  sub_226ECF5D8(sub_2273067B8, v42, v37, MEMORY[0x277D84F78] + 8, v54, v59);

  v44 = v61;
  v45 = sub_227669290();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v45(sub_226E9F7B0, v46);

  (*(v60 + 8))(v43, v44);
  v47 = v62;
  swift_willThrow();
  return v47;
}

uint64_t sub_227300090(void *a1, uint64_t a2)
{
  v36 = a1;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22766B390();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v34 = *(v5 + 16);
  v35 = a2;
  v34(v7, a2, v4);
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = v8;
    v14 = v13;
    v30 = swift_slowAlloc();
    v37 = v30;
    *v14 = 141558274;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v29 = v12;
    v15 = sub_22766D140();
    v32 = v2;
    v16 = v4;
    v17 = v5;
    v19 = v18;
    v20 = v7;
    v21 = *(v17 + 8);
    v21(v20, v16);
    v22 = sub_226E97AE8(v15, v19, &v37);
    v5 = v17;
    v4 = v16;

    *(v14 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v11, v29, "Reload - Deleting asset request created for reload because reload failed: %{mask.hash}s", v14, 0x16u);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA9A450](v23, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v33 + 8))(v10, v31);
  }

  else
  {

    v24 = v7;
    v21 = *(v5 + 8);
    v21(v24, v4);
    (*(v33 + 8))(v10, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_227670CD0;
  v34((v26 + v25), v35, v4);
  sub_227078AE0(v26, v36);
  swift_setDeallocating();
  v21((v26 + v25), v4);
  return swift_deallocClassInstance();
}

uint64_t sub_22730045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a1;
  v22 = a3;
  v19 = a2;
  v20 = sub_2276624A0();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for AssetLoaderResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v12);
  v14 = (&v19 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  MEMORY[0x28223BE20](v15);
  v17 = (&v19 - v16);
  sub_226E93170(v21, v14, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v17 = *v14;
  }

  else
  {
    sub_2273065BC(v14, v11);
    sub_2276639A0();
    (*(v5 + 16))(v7, v11, v20);
    sub_227663CE0();
    sub_2273073F0(v11, type metadata accessor for AssetLoaderResponse);
  }

  swift_storeEnumTagMultiPayload();
  sub_2272FAF7C(v17, v23, v24);
  return sub_226E97D1C(v17, &qword_27D7BCAB8, &qword_22767FE80);
}

uint64_t sub_22730070C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  result = sub_226F92230(v7);
  if (!v2)
  {
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    (*(v6 + 48))(a2, v5, v6);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return result;
}

uint64_t sub_2273007B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v64 = a1;
  v65 = a2;
  v69 = a4;
  v4 = sub_2276624A0();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276639B0();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 8);
  MEMORY[0x28223BE20](v9);
  v66 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v55 - v12;
  MEMORY[0x28223BE20](v13);
  v59 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_227665490();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  sub_226E93170(v64, v17, &qword_27D7BD9F0, qword_2276873A0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_226E97D1C(v17, &qword_27D7BD9F0, qword_2276873A0);
    v25 = v8;
    sub_22766A6C0();
    v27 = v67;
    v26 = v68;
    v28 = *(v67 + 2);
    v29 = v61;
    v30 = v65;
    v28(v61, v65, v68);
    v28(v66, v30, v26);
    v31 = sub_22766B380();
    v32 = sub_22766C890();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70 = v65;
      *v33 = 136446722;
      v34 = sub_227663910();
      v36 = v35;
      v37 = *(v27 + 1);
      v37(v29, v26);
      v38 = sub_226E97AE8(v34, v36, &v70);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2080;
      v67 = v25;
      v39 = v56;
      v40 = v66;
      sub_2276639A0();
      v41 = sub_227662390();
      v43 = v42;
      (*(v57 + 8))(v39, v58);
      v37(v40, v26);
      v44 = sub_226E97AE8(v41, v43, &v70);

      *(v33 + 24) = v44;
      _os_log_impl(&dword_226E8E000, v31, v32, "Not pausing request [%{public}s, %{mask.hash}s] because no resumable load exists.", v33, 0x20u);
      v45 = v65;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v45, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);

      (*(v62 + 8))(v67, v63);
    }

    else
    {

      v54 = *(v27 + 1);
      v54(v66, v26);
      v54(v29, v26);
      (*(v62 + 8))(v25, v63);
    }

    return sub_2276692A0();
  }

  else
  {
    v62 = *(v19 + 32);
    v55 = v24;
    (v62)(v24, v17, v18);
    v46 = v60[23];
    v64 = v60[22];
    v66 = v46;
    v63 = __swift_project_boxed_opaque_existential_0(v60 + 19, v64);
    (*(v19 + 16))(v21, v24, v18);
    v47 = v67;
    v48 = v68;
    v49 = v59;
    (*(v67 + 2))(v59, v65, v68);
    v50 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v51 = (v20 + v47[80] + v50) & ~v47[80];
    v52 = swift_allocObject();
    (v62)(v52 + v50, v21, v18);
    (*(v47 + 4))(v52 + v51, v49, v48);
    sub_226ECF5D8(sub_227307C78, v52, v64, MEMORY[0x277D84F78] + 8, v66, v69);

    return (*(v19 + 8))(v55, v18);
  }
}

uint64_t sub_227300E94(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_227665490();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22766B390();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A6C0();
  v47 = v10;
  v16 = v10 + 16;
  v17 = *(v10 + 16);
  v18 = v9;
  v44 = v17;
  v45 = v16;
  v17(v12, a2, v9);
  v19 = *(v6 + 16);
  v41 = v5;
  v19(v8, a3, v5);
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48 = v39;
    *v22 = 141558786;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    sub_227307D58(&qword_27D7BCAE0, MEMORY[0x277D51680], MEMORY[0x277D51698]);
    v38 = v21;
    v23 = sub_22766D140();
    v40 = a2;
    v25 = v24;
    (*(v47 + 8))(v12, v18);
    v26 = sub_226E97AE8(v23, v25, &v48);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v27 = v41;
    v28 = sub_22766D140();
    v30 = v29;
    (*(v6 + 8))(v8, v27);
    v31 = sub_226E97AE8(v28, v30, &v48);
    a2 = v40;

    *(v22 + 34) = v31;
    _os_log_impl(&dword_226E8E000, v20, v38, "Tracking resumable load [%{mask.hash}s] for request [%{mask.hash}s]", v22, 0x2Au);
    v32 = v39;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v41);
    (*(v47 + 8))(v12, v18);
  }

  (*(v42 + 8))(v15, v43);
  v33 = __swift_project_boxed_opaque_existential_0(v46, v46[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE620, &unk_22767FFD0);
  v34 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_227670CD0;
  v44(v35 + v34, a2, v18);
  sub_227567234(v35, v33[1], *(v33 + 16), v33[3]);
}

uint64_t sub_227301394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v46 = a4;
  v39 = sub_227663180();
  v5 = *(v39 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = sub_2276639B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAA0, &qword_22767FE58);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v37 - v14;
  sub_227663120();
  v15 = sub_227664570();
  if (v15 == sub_227664570())
  {
    v16 = v39;
    (*(v5 + 16))(&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v39);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    type metadata accessor for AssetLoaderResponse(0);
    return sub_227669280();
  }

  else
  {
    v39 = *(v8 + 16);
    (v39)(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v7);
    v20 = *(v8 + 80);
    v21 = swift_allocObject();
    v22 = v43;
    *(v21 + 16) = v43;
    v23 = v7;
    v38 = v7;
    v24 = *(v8 + 32);
    v24(v21 + ((v20 + 24) & ~v20), &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v25 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB0, &unk_22767FE70);
    sub_227669280();
    v26 = v38;
    (v39)(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v38);
    v27 = (v20 + 16) & ~v20;
    v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v24(v29 + v27, v10, v26);
    *(v29 + v28) = v25;
    v31 = v40;
    v30 = v41;
    v32 = v45;
    v33 = v42;
    (*(v41 + 16))(v40, v45, v42);
    v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v35 = swift_allocObject();
    (*(v30 + 32))(v35 + v34, v31, v33);
    v36 = (v35 + ((v12 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_227307620;
    v36[1] = v29;
    type metadata accessor for AssetLoaderResponse(0);

    sub_227669270();
    return (*(v30 + 8))(v32, v33);
  }
}

uint64_t sub_22730182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227663180();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_22750DD6C(v7, a2);
}

uint64_t sub_227301900@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  if ((*(v7 + 24))(v6, v7))
  {
    return sub_2273019C4(a2, a1, a3);
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  return (*(v10 + 32))(a2, v9, v10);
}

uint64_t sub_2273019C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a2;
  v63 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A0, &qword_227684EF0);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = v6;
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v52 - v8;
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = v11;
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v66 = v10;
  v19 = *(v10 + 16);
  v55 = a1;
  v56 = v19;
  v65 = v10 + 16;
  v19(v14, a1, v9);
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v53 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v4;
    v25 = v24;
    *&v68[0] = v24;
    *v23 = 141558274;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2080;
    sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v26 = sub_22766D140();
    v27 = v9;
    v29 = v28;
    (*(v66 + 8))(v14, v27);
    v30 = sub_226E97AE8(v26, v29, v68);
    v9 = v27;

    *(v23 + 14) = v30;
    _os_log_impl(&dword_226E8E000, v20, v21, "Handling resume fetch for request: %{mask.hash}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v31 = v25;
    v4 = v54;
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);

    (*(v16 + 8))(v18, v53);
  }

  else
  {

    (*(v66 + 8))(v14, v9);
    (*(v16 + 8))(v18, v15);
  }

  v32 = v4[22];
  v33 = v4[23];
  v54 = __swift_project_boxed_opaque_existential_0(v4 + 19, v32);
  v34 = v58;
  v36 = v55;
  v35 = v56;
  v56(v58, v55, v9);
  v37 = v66;
  v38 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v57 += v38;
  v39 = swift_allocObject();
  v66 = *(v37 + 32);
  (v66)(v39 + v38, v34, v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9368, &unk_22767FFA0);
  sub_226ECF5D8(sub_2273077F4, v39, v32, v40, v33, v67);

  v35(v34, v36, v9);
  sub_226E91B50(v59, v68);
  v41 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (v66)(v42 + v38, v34, v9);
  sub_226F19770(v68, v42 + v41);
  v44 = v61;
  v43 = v62;
  v45 = v67;
  v46 = v64;
  (*(v62 + 16))(v61, v67, v64);
  v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v48 = (v60 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v43 + 32))(v49 + v47, v44, v46);
  v50 = (v49 + v48);
  *v50 = sub_227307870;
  v50[1] = v42;
  type metadata accessor for AssetLoaderResponse(0);
  sub_227669270();
  return (*(v43 + 8))(v45, v46);
}

uint64_t sub_227301FC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41[0] = a3;
  v41[1] = a2;
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  sub_2276639A0();
  v16 = sub_227662390();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v44[0] = v16;
  v44[1] = v18;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v44, v42, &unk_27D7BC990, &qword_227670A30);
  v20 = v43;
  if (v43)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

  sub_226E97D1C(v44, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v44, 0);
  swift_endAccess();

  v33 = v44[5];
  v34 = sub_227238EB8(100);
  if (v33)
  {
    swift_setDeallocating();

    v35 = qword_2813B2078;
    v36 = sub_22766A100();
    (*(*(v36 - 8) + 8))(v13 + v35, v36);
    return swift_deallocClassInstance();
  }

  else
  {
    v38 = v34;
    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v13 + v39, v40);
    result = swift_deallocClassInstance();
    *v41[0] = v38;
  }

  return result;
}

uint64_t sub_22730252C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_2276639B0();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_227665490();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22722AF30(*a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v35 = a3;
    sub_226E97D1C(v15, &qword_27D7BD9F0, qword_2276873A0);
    sub_22766A6C0();
    (*(v38 + 16))(v9, a2, v7);
    v20 = sub_22766B380();
    v21 = sub_22766C890();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v24 = sub_22766D140();
      v25 = a2;
      v27 = v26;
      (*(v38 + 8))(v9, v7);
      v28 = sub_226E97AE8(v24, v27, &v40);
      a2 = v25;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_226E8E000, v20, v21, "Missing AssetResumableLoad for request %{mask.hash}s. Recovering by starting a new load.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v9, v7);
    }

    (*(v36 + 8))(v12, v37);
    v33 = v35[3];
    v34 = v35[4];
    __swift_project_boxed_opaque_existential_0(v35, v33);
    return (*(v34 + 32))(a2, v33, v34);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v29 = a2;
    v30 = a3[3];
    v31 = a3[4];
    __swift_project_boxed_opaque_existential_0(a3, v30);
    (*(v31 + 56))(v29, v19, v30, v31);
    return (*(v17 + 8))(v19, v16);
  }
}

void sub_2273029E4(void (***a1)(char *, uint64_t, uint64_t), void *a2, NSObject *a3, void *a4, uint64_t a5)
{
  v271 = a5;
  v275 = a4;
  v263 = a2;
  v279 = a1;
  v237 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v237);
  v236 = v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v7 - 8);
  v240 = v230 - v8;
  v243 = sub_227663CD0();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v241 = v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_2276639B0();
  v270 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v260 = v230 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v249 = v230 - v12;
  MEMORY[0x28223BE20](v13);
  v248 = v230 - v14;
  v267 = sub_22766B390();
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v265 = v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v250 = v230 - v17;
  MEMORY[0x28223BE20](v18);
  v254 = v230 - v19;
  v20 = sub_2276624A0();
  v21 = *(v20 - 8);
  v22 = v21;
  MEMORY[0x28223BE20](v20);
  v245 = v230 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v244 = v230 - v25;
  MEMORY[0x28223BE20](v26);
  v259 = v230 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v28 - 8);
  v256 = v230 - v29;
  v269 = type metadata accessor for AssetLoaderResponse(0);
  MEMORY[0x28223BE20](v269);
  v261 = v230 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  MEMORY[0x28223BE20](v257);
  v258 = (v230 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v273 = (v230 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  MEMORY[0x28223BE20](v34 - 8);
  v274 = (v230 - v35);
  v36 = sub_227663180();
  v276 = *(v36 - 8);
  v277 = v36;
  MEMORY[0x28223BE20](v36);
  v247 = v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v253 = v230 - v39;
  MEMORY[0x28223BE20](v40);
  v246 = v230 - v41;
  MEMORY[0x28223BE20](v42);
  v252 = v230 - v43;
  MEMORY[0x28223BE20](v44);
  v272 = v230 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
  v47 = *(v21 + 80);
  v48 = (v47 + 32) & ~v47;
  v238 = *(v21 + 72);
  v239 = v46;
  v49 = swift_allocObject();
  v255 = xmmword_227670CD0;
  *(v49 + 16) = xmmword_227670CD0;
  v50 = v22 + 16;
  v51 = *(v22 + 16);
  v264 = a3;
  v51(v49 + v48, a3, v20);
  v52 = sub_226F4F878(v49);
  swift_setDeallocating();
  v251 = v22;
  v55 = *(v22 + 8);
  v54 = v22 + 8;
  v53 = v55;
  v262 = v20;
  v55(v49 + v48, v20);
  swift_deallocClassInstance();
  v56 = ObjectType;
  v57 = sub_22707B7C4(v52, v279);

  if (!v56)
  {
    v58 = v273;
    ObjectType = 0;
    v59 = v275;
    v230[1] = v47;
    v231 = (v47 + 32) & ~v47;
    v232 = v51;
    v234 = v50;
    v233 = v53;
    v235 = v54;
    v60 = v274;
    sub_22722AE54(v57, v274);

    v62 = v276;
    v61 = v277;
    if ((*(v276 + 48))(v60, 1, v277) == 1)
    {
      sub_226E97D1C(v60, &qword_27D7B8620, &qword_2276711C0);
      v63 = sub_227663190();
      sub_227307D58(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      swift_allocError();
      (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D4FD08], v63);
      swift_willThrow();
      return;
    }

    v65 = v61;
    v66 = v272;
    (*(v62 + 32))(v272, v60, v65);
    sub_226E93170(v59, v58, &qword_27D7B9628, &unk_227674860);
    sub_227664540();
    v67 = sub_227664570();
    if (v67 == sub_227664570())
    {
      v68 = v265;
      sub_22766A6C0();
      v69 = v270;
      v70 = v260;
      v71 = v271;
      v72 = v268;
      v274 = *(v270 + 16);
      v275 = (v270 + 16);
      (v274)(v260, v271, v268);
      v73 = sub_22766B380();
      v74 = sub_22766C8B0();
      v75 = os_log_type_enabled(v73, v74);
      v76 = ObjectType;
      if (v75)
      {
        v77 = ObjectType;
        v78 = v70;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v282[0] = v80;
        *v79 = 141558274;
        *(v79 + 4) = 1752392040;
        *(v79 + 12) = 2080;
        sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
        v81 = sub_22766D140();
        v82 = v72;
        v84 = v83;
        v85 = v78;
        v76 = v77;
        (*(v69 + 8))(v85, v82);
        v86 = sub_226E97AE8(v81, v84, v282);

        *(v79 + 14) = v86;
        _os_log_impl(&dword_226E8E000, v73, v74, "Load cancelled for request: %{mask.hash}s", v79, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x22AA9A450](v80, -1, -1);
        MEMORY[0x22AA9A450](v79, -1, -1);

        v71 = v271;
        (*(v266 + 8))(v265, v267);
      }

      else
      {

        (*(v69 + 8))(v70, v72);
        (*(v266 + 8))(v68, v267);
      }

      v96 = __swift_project_boxed_opaque_existential_0(v279, v279[3]);
      v97 = *v96;
      v98 = v96[1];
      v99 = *(v96 + 16);
      v100 = v96[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
      v101 = swift_allocObject();
      v102 = v97;
      v103 = v98;

      sub_22766A070();
      *(v101 + 16) = v102;
      *(v101 + 24) = v103;
      *(v101 + 32) = v99;
      *(v101 + 40) = v100;
      swift_getKeyPath();
      v104 = sub_227662390();
      v106 = v105;
      v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v282[0] = v104;
      v282[1] = v106;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v107 = sub_22766C820();
      sub_226E93170(v282, &v280, &unk_27D7BC990, &qword_227670A30);
      v108 = v281;
      if (v281)
      {
        v109 = __swift_project_boxed_opaque_existential_0(&v280, v281);
        v110 = v76;
        v111 = *(v108 - 8);
        v112 = MEMORY[0x28223BE20](v109);
        v114 = v230 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v111 + 16))(v114, v112);
        v115 = sub_22766D170();
        (*(v111 + 8))(v114, v108);
        v76 = v110;
        v71 = v271;
        __swift_destroy_boxed_opaque_existential_0(&v280);
      }

      else
      {
        v115 = 0;
      }

      v119 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v120 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

      sub_226E97D1C(v282, &unk_27D7BC990, &qword_227670A30);
      swift_beginAccess();
      v121 = v120;
      v122 = sub_22766A080();
      v124 = v123;
      MEMORY[0x22AA985C0]();
      if (*((*v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v122(v282, 0);
      swift_endAccess();

      __swift_project_boxed_opaque_existential_0(v263 + 2, v263[5]);
      v125 = sub_2272322B8(100);
      if (v76)
      {

        (*(v276 + 8))(v272, v277);
      }

      else
      {
        v126 = sub_22707488C(v125, v279);
        v127 = v277;
        v183 = v126;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
        v184 = (*(v270 + 80) + 32) & ~*(v270 + 80);
        v185 = swift_allocObject();
        *(v185 + 16) = v255;
        (v274)(v185 + v184, v71, v268);
        v186 = sub_22700A628(v185, v183);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v187 = *(v186 + 16);

        if (v187)
        {
          (*(v276 + 8))(v272, v127);
        }

        else
        {
          v222 = v231;
          v223 = swift_allocObject();
          *(v223 + 16) = v255;
          v224 = v262;
          v232(v223 + v222, v264, v262);
          v225 = sub_226F4F878(v223);
          swift_setDeallocating();
          v233(v223 + v222, v224);
          swift_deallocClassInstance();
          sub_22707984C(v225, v279);
          (*(v276 + 8))(v272, v127);
        }

        swift_setDeallocating();

        v188 = qword_2813B2078;
        v189 = sub_22766A100();
        (*(*(v189 - 8) + 8))(v101 + v188, v189);
        swift_deallocClassInstance();
      }
    }

    else
    {
      sub_227663120();
      v87 = sub_227664570();
      v88 = sub_227664570();
      v89 = v59;
      v90 = v258;
      sub_226E93170(v89, v258, &qword_27D7B9628, &unk_227674860);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v92 = v233;
      v93 = v270;
      v94 = ObjectType;
      if (EnumCaseMultiPayload == 1)
      {
        v95 = *v90;
        if (v87 != v88)
        {
          (*(v251 + 56))(v256, 1, 1, v262);
          sub_227663170();
          sub_227663130();
          v128 = v253;
          sub_227663150();
          v129 = v250;
          sub_22766A6C0();
          v130 = v249;
          v131 = v268;
          (*(v93 + 16))(v249, v271, v268);
          v132 = v247;
          v133 = v95;
          v273 = *(v276 + 16);
          v274 = (v276 + 16);
          v273(v247, v128, v277);
          v134 = v95;
          v135 = sub_22766B380();
          v136 = sub_22766C8B0();

          LODWORD(v269) = v136;
          v137 = os_log_type_enabled(v135, v136);
          v275 = v133;
          if (v137)
          {
            v138 = swift_slowAlloc();
            v264 = v135;
            v139 = v130;
            v140 = v138;
            v265 = swift_slowAlloc();
            v282[0] = v265;
            *v140 = 141559042;
            *(v140 + 4) = 1752392040;
            *(v140 + 12) = 2080;
            sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
            v141 = sub_22766D140();
            v143 = v142;
            (*(v93 + 8))(v139, v131);
            v144 = sub_226E97AE8(v141, v143, v282);

            *(v140 + 14) = v144;
            *(v140 + 22) = 2160;
            *(v140 + 24) = 1752392040;
            *(v140 + 32) = 2080;
            sub_227307D58(&qword_28139BD48, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCC0]);
            v145 = v277;
            v146 = sub_22766D140();
            v148 = v147;
            v149 = v276;
            v150 = v132;
            v151 = *(v276 + 8);
            v151(v150, v145);
            v152 = sub_226E97AE8(v146, v148, v282);

            *(v140 + 34) = v152;
            *(v140 + 42) = 2082;
            swift_getErrorValue();
            v153 = MEMORY[0x22AA995D0](v285, v286);
            v155 = sub_226E97AE8(v153, v154, v282);

            *(v140 + 44) = v155;
            v156 = v264;
            _os_log_impl(&dword_226E8E000, v264, v269, "Load failed for request %{mask.hash}s, entry %{mask.hash}s with error %{public}s", v140, 0x34u);
            v157 = v265;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v157, -1, -1);
            MEMORY[0x22AA9A450](v140, -1, -1);

            (*(v266 + 8))(v250, v267);
          }

          else
          {

            v190 = v276;
            v145 = v277;
            v191 = v132;
            v151 = *(v276 + 8);
            v151(v191, v277);
            (*(v93 + 8))(v130, v131);
            (*(v266 + 8))(v129, v267);
            v149 = v190;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
          v192 = (*(v149 + 80) + 32) & ~*(v149 + 80);
          v193 = swift_allocObject();
          *(v193 + 16) = v255;
          v194 = v253;
          v273((v193 + v192), v253, v145);
          v195 = sub_226F4AE10(v193);
          swift_setDeallocating();
          v151((v193 + v192), v145);
          swift_deallocClassInstance();
          v196 = ObjectType;
          sub_227079538(v195, v279);
          if (v196)
          {

            v151(v194, v145);
            v151(v272, v145);
            return;
          }

          v151(v194, v145);

          v66 = v272;
          v92 = v233;
          v95 = v275;
        }

        v202 = sub_227663960();
        if (v203)
        {
          v204 = v202;
          v205 = v203;
          v206 = v245;
          sub_2276639A0();
          sub_22708048C(v206, v204, v205, v279);

          v92(v206, v262);
          (*(v276 + 8))(v66, v277);
        }

        else
        {
          (*(v276 + 8))(v66, v277);
        }
      }

      else
      {
        v116 = v261;
        sub_2273065BC(v90, v261);
        if (v87 == v88)
        {
          v117 = v279;
          v118 = v94;
        }

        else
        {
          v158 = v256;
          v159 = v262;
          v232(v256, v116, v262);
          (*(v251 + 56))(v158, 0, 1, v159);
          sub_227663170();
          v160 = v252;
          sub_227663150();
          sub_22766A6C0();
          v161 = v248;
          v162 = v268;
          (*(v93 + 16))(v248, v271, v268);
          v164 = v276;
          v163 = v277;
          v165 = v246;
          v274 = *(v276 + 16);
          v275 = (v276 + 16);
          (v274)(v246, v160, v277);
          v166 = sub_22766B380();
          v167 = sub_22766C8B0();
          if (os_log_type_enabled(v166, v167))
          {
            v168 = v93;
            v169 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            v282[0] = v170;
            *v169 = 141558786;
            *(v169 + 4) = 1752392040;
            *(v169 + 12) = 2080;
            sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
            LODWORD(v273) = v167;
            v171 = sub_22766D140();
            v172 = v162;
            v174 = v173;
            (*(v168 + 8))(v161, v172);
            v175 = sub_226E97AE8(v171, v174, v282);

            *(v169 + 14) = v175;
            *(v169 + 22) = 2160;
            *(v169 + 24) = 1752392040;
            *(v169 + 32) = 2080;
            sub_227307D58(&qword_28139BD48, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCC0]);
            v176 = sub_22766D140();
            v178 = v177;
            v179 = v276;
            v180 = *(v276 + 8);
            v180(v165, v277);
            v181 = sub_226E97AE8(v176, v178, v282);

            *(v169 + 34) = v181;
            _os_log_impl(&dword_226E8E000, v166, v273, "Load succeeded for request %{mask.hash}s using entry %{mask.hash}s", v169, 0x2Au);
            swift_arrayDestroy();
            v182 = v170;
            v163 = v277;
            MEMORY[0x22AA9A450](v182, -1, -1);
            MEMORY[0x22AA9A450](v169, -1, -1);

            (*(v266 + 8))(v254, v267);
          }

          else
          {

            v180 = *(v164 + 8);
            v180(v165, v163);
            (*(v93 + 8))(v161, v162);
            (*(v266 + 8))(v254, v267);
            v179 = v164;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
          v197 = (*(v179 + 80) + 32) & ~*(v179 + 80);
          v198 = swift_allocObject();
          *(v198 + 16) = v255;
          v199 = v252;
          (v274)(v198 + v197, v252, v163);
          v200 = sub_226F4AE10(v198);
          swift_setDeallocating();
          v180((v198 + v197), v163);
          swift_deallocClassInstance();
          v201 = ObjectType;
          v117 = v279;
          sub_227079538(v200, v279);
          if (v201)
          {

            v180(v199, v163);
            sub_2273073F0(v261, type metadata accessor for AssetLoaderResponse);
            v180(v272, v163);
            return;
          }

          v180(v199, v163);

          v118 = 0;
          v92 = v233;
        }

        v207 = v271;
        v208 = sub_227663960();
        v210 = v262;
        if (v209)
        {
          v211 = v208;
          v212 = v209;
          v213 = v244;
          sub_2276639A0();
          sub_227080718(v213, v211, v212, v117);
          if (v118)
          {

            v92(v213, v210);
            sub_2273073F0(v261, type metadata accessor for AssetLoaderResponse);
            (*(v276 + 8))(v272, v277);
            return;
          }

          v92(v213, v210);
        }

        v214 = v263;
        __swift_project_boxed_opaque_existential_0(v263 + 7, v263[10]);
        sub_226F92230(v282);
        v215 = v272;
        v216 = v264;
        if (v118)
        {
          sub_2273073F0(v261, type metadata accessor for AssetLoaderResponse);
          (*(v276 + 8))(v215, v277);
        }

        else
        {
          v217 = v283;
          v218 = v284;
          __swift_project_boxed_opaque_existential_0(v282, v283);
          v219 = v240;
          sub_2273A01F8(v217, v218, v240, 1.0);
          v220 = v242;
          v221 = v243;
          if ((*(v242 + 48))(v219, 1, v243) == 1)
          {
            sub_226E97D1C(v219, &qword_27D7B9648, &unk_227674880);
            __swift_destroy_boxed_opaque_existential_0(v282);
          }

          else
          {
            (*(v220 + 32))(v241, v219, v221);
            __swift_destroy_boxed_opaque_existential_0(v282);
            v279 = v214[18];
            ObjectType = swift_getObjectType();
            v226 = v221;
            v227 = v236;
            v232(v236, v216, v210);
            v228 = v241;
            (*(v220 + 16))(v227 + *(v237 + 20), v241, v226);
            sub_227307D58(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
            sub_2276699D0();
            sub_2273073F0(v227, type metadata accessor for AssetProgressUpdated);
            (*(v220 + 8))(v228, v226);
          }

          sub_227306ACC(v207, v117);
          v229 = v276;
          sub_2273073F0(v261, type metadata accessor for AssetLoaderResponse);
          (*(v229 + 8))(v272, v277);
        }
      }
    }
  }
}

uint64_t sub_227304A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8) == 1)
  {
    v41 = v16;
    v42 = a3;
    v43 = a5;
    v19 = *a1;
    v20 = *a1;
    sub_22766A6C0();
    (*(v11 + 16))(v13, a2, v10);
    v21 = v19;
    v22 = sub_22766B380();
    v23 = sub_22766C890();
    sub_226EB4548(v19, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v23;
      v25 = v24;
      v39 = swift_slowAlloc();
      v46 = v39;
      *v25 = 141558530;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v26 = sub_22766D140();
      v40 = a4;
      v28 = v27;
      (*(v11 + 8))(v13, v10);
      v29 = sub_226E97AE8(v26, v28, &v46);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      swift_getErrorValue();
      v30 = MEMORY[0x22AA995D0](v44, v45);
      v32 = sub_226E97AE8(v30, v31, &v46);

      *(v25 + 24) = v32;
      a4 = v40;
      _os_log_impl(&dword_226E8E000, v22, v38, "Failed to write load result AssetEntry for request %{mask.hash}s, with error: %{public}s", v25, 0x20u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      sub_226EB4548(v19, 1);
    }

    else
    {

      sub_226EB4548(v19, 1);
      (*(v11 + 8))(v13, v10);
    }

    (*(v15 + 8))(v18, v41);
  }

  v34 = sub_227662390();
  sub_2272FAF7C(a4, v34, v35);
}

uint64_t sub_227304E3C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v87 = a1;
  v76 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v65 - v5;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v79 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2276639B0();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_227663180();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v21 = swift_allocObject();
  v77 = xmmword_227670CD0;
  *(v21 + 16) = xmmword_227670CD0;
  v84 = a2;
  sub_2276639A0();
  v22 = sub_226F4F878(v21);
  swift_setDeallocating();
  v23 = v7;
  v26 = *(v7 + 8);
  v25 = v7 + 8;
  v24 = v26;
  v27 = v21 + v20;
  v28 = v87;
  v26(v27, v6);
  swift_deallocClassInstance();
  v29 = v86;
  v30 = sub_22707B7C4(v22, v28);

  if (!v29)
  {
    v66 = v24;
    v67 = v25;
    v68 = v23;
    v32 = v81;
    v86 = v6;
    sub_22722AE54(v30, v19);

    v33 = v82;
    sub_226E93170(v19, v82, &qword_27D7B8620, &qword_2276711C0);
    v34 = v83;
    v35 = v85;
    v36 = (v83[6])(v33, 1, v85);
    v69 = v19;
    if (v36 == 1)
    {
      sub_226E97D1C(v33, &qword_27D7B8620, &qword_2276711C0);
LABEL_4:
      (*(v68 + 56))(v78, 1, 1, v86);
      sub_2276639A0();
      sub_227663150();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
      v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v77;
      (v34[2])(v38 + v37, v32, v35);
      v39 = sub_226F4AE10(v38);
      swift_setDeallocating();
      (v34[1])(v38 + v37, v35);
      swift_deallocClassInstance();
      sub_227079538(v39, v87);
      sub_226E97D1C(v69, &qword_27D7B8620, &qword_2276711C0);

      return (v34[4])(v76, v32, v35);
    }

    v40 = v34;
    v42 = v34[4];
    v41 = v34 + 4;
    v43 = v80;
    v82 = v42;
    (v42)(v80, v33, v35);
    sub_227663120();
    v44 = sub_227664570();
    if (v44 != sub_227664570())
    {
      sub_227663120();
      v45 = sub_227664570();
      if (v45 != sub_227664570())
      {
        v34 = v40;
        v35 = v85;
        (v40[1])(v43, v85);
        goto LABEL_4;
      }
    }

    v46 = v75;
    sub_22766A6C0();
    v48 = v70;
    v47 = v71;
    v49 = v74;
    (*(v71 + 16))(v70, v84, v74);
    v50 = sub_22766B380();
    v51 = sub_22766C8B0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      LODWORD(v84) = v51;
      v53 = v47;
      v54 = v52;
      v83 = swift_slowAlloc();
      v88 = v83;
      *v54 = 141558274;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2080;
      v55 = v79;
      sub_2276639A0();
      sub_227307D58(&qword_28139BDD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v56 = v86;
      v57 = sub_22766D140();
      v87 = v41;
      v59 = v58;
      v66(v55, v56);
      (*(v53 + 8))(v48, v74);
      v60 = sub_226E97AE8(v57, v59, &v88);
      v61 = v50;
      v62 = v85;

      *(v54 + 14) = v60;
      _os_log_impl(&dword_226E8E000, v61, v84, "Found existing completed or paused entry for URL: %{mask.hash}s", v54, 0x16u);
      v63 = v83;
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x22AA9A450](v63, -1, -1);
      MEMORY[0x22AA9A450](v54, -1, -1);

      (*(v72 + 8))(v75, v73);
      sub_226E97D1C(v69, &qword_27D7B8620, &qword_2276711C0);
      v64 = v76;
    }

    else
    {

      (*(v47 + 8))(v48, v49);
      (*(v72 + 8))(v46, v73);
      sub_226E97D1C(v69, &qword_27D7B8620, &qword_2276711C0);
      v64 = v76;
      v62 = v85;
    }

    return (v82)(v64, v80, v62);
  }

  return result;
}

uint64_t sub_22730573C(void (***a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_227663990() != 33)
  {
    goto LABEL_4;
  }

  v11 = sub_227663960();
  if (v12)
  {

LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
    v13 = sub_2276639B0();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_227670CD0;
    (*(v14 + 16))(v16 + v15, a2, v13);
    v17 = sub_226F4FB98(v16);
    swift_setDeallocating();
    (*(v14 + 8))(v16 + v15, v13);
    swift_deallocClassInstance();
    sub_22707C950(v17, a1);
  }

  v19 = v11;
  v82 = v8;
  v83 = a3;
  v90 = a2;
  v20 = a1[3];
  v84 = a1;
  v21 = __swift_project_boxed_opaque_existential_0(a1, v20);
  v22 = *v21;
  v23 = v21[1];
  LODWORD(v81) = *(v21 + 16);
  v24 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v25 = swift_allocObject();
  v26 = v22;
  v27 = v23;

  sub_22766A070();
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v81;
  *(v25 + 40) = v24;
  KeyPath = swift_getKeyPath();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v87 = v81;
  v85 = v19;
  v86 = 0;
  v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v80 = v29;
  v30 = sub_22766C820();
  sub_226E93170(&v85, v88, &unk_27D7BC990, &qword_227670A30);
  v31 = v89;
  if (v89)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v88, v89);
    v78 = &v76;
    v79 = KeyPath;
    v33 = v30;
    v34 = v25;
    v35 = *(v31 - 8);
    v36 = MEMORY[0x28223BE20](v32);
    v38 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v31);
    v25 = v34;
    v30 = v33;
    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  else
  {
    v39 = 0;
  }

  v78 = objc_opt_self();
  v40 = [v78 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0, &qword_22767FF20);
  v41 = [objc_allocWithZone(v77) initWithLeftExpression:v30 rightExpression:v40 modifier:0 type:4 options:0];

  sub_226E97D1C(&v85, &unk_27D7BC990, &qword_227670A30);
  v42 = qword_2813B2078;
  swift_beginAccess();
  v43 = v41;
  v79 = v42;
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v76 = *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(&v85, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_2276639A0();
  v47 = sub_227662390();
  v49 = v48;
  (*(v82 + 8))(v10, v7);
  v87 = v81;
  v85 = v47;
  v86 = v49;

  v50 = sub_22766C820();
  sub_226E93170(&v85, v88, &unk_27D7BC990, &qword_227670A30);
  v51 = v89;
  if (v89)
  {
    v52 = __swift_project_boxed_opaque_existential_0(v88, v89);
    v53 = v25;
    v54 = *(v51 - 8);
    v55 = MEMORY[0x28223BE20](v52);
    v57 = &v76 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v54 + 16))(v57, v55);
    v58 = sub_22766D170();
    (*(v54 + 8))(v57, v51);
    v25 = v53;
    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  else
  {
    v58 = 0;
  }

  v59 = [v78 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v60 = [objc_allocWithZone(v77) initWithLeftExpression:v50 rightExpression:v59 modifier:0 type:4 options:0];

  sub_226E97D1C(&v85, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v61 = v60;
  v62 = sub_22766A080();
  v64 = v63;
  MEMORY[0x22AA985C0]();
  if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v62(&v85, 0);
  swift_endAccess();

  __swift_project_boxed_opaque_existential_0((v83 + 16), *(v83 + 40));
  v65 = sub_2272322B8(100);
  a1 = v84;
  a2 = v90;
  if (!v3)
  {
    v66 = sub_22707488C(v65, v84);

    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = sub_2274CD768(*(v66 + 16), 0);
      v69 = *(sub_2276639B0() - 8);
      sub_2274CDD80(&v85, &v68[(*(v69 + 80) + 32) & ~*(v69 + 80)], v67, v66);
      v71 = v70;
      sub_226EBB21C(v85);
      if (v71 == v67)
      {
LABEL_20:
        sub_227078AE0(v68, a1);

        swift_setDeallocating();

        v74 = qword_2813B2078;
        v75 = sub_22766A100();
        (*(*(v75 - 8) + 8))(v25 + v74, v75);
        swift_deallocClassInstance();
        goto LABEL_4;
      }

      __break(1u);
    }

    v68 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  swift_setDeallocating();

  v72 = qword_2813B2078;
  v73 = sub_22766A100();
  (*(*(v73 - 8) + 8))(v25 + v72, v73);
  return swift_deallocClassInstance();
}

uint64_t sub_22730617C(uint64_t a1)
{
  v3 = sub_2276639B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_227663CF0();

  return sub_227669270();
}

uint64_t sub_227306350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v2 + 16);
  v9 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_2272FE328(a1, v8, v2 + v7, v9, a2);
}

id sub_227306428(void *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2272FFAF0(a1, v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4));
}

uint64_t sub_227306510(uint64_t a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_22730045C(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_2273065BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetLoaderResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227306620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  type metadata accessor for AssetLoaderResponse(0);

  return sub_227669270();
}

uint64_t sub_2273066B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_2273067E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v6 + ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6;
  v10 = *(type metadata accessor for AssetLoaderResponse(0) - 8);
  return sub_2272FE9E8(a1, (v2 + v7), (v2 + v9), v2 + ((v8 + *(v10 + 80) + v9) & ~*(v10 + 80)), a2);
}

uint64_t sub_227306948@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetLoaderResponse(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_227145B00(v4, a1);
}

uint64_t sub_227306A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void sub_227306ACC(uint64_t a1, void *a2)
{
  v43 = a1;
  v44 = sub_2276624A0();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  v40 = v13;
  v41 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v14 = v9;
  *(v11 + 32) = v9;
  v48 = v10;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  sub_2276639A0();
  v15 = sub_227662390();
  v17 = v16;
  (*(v3 + 8))(v5, v44);
  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v47[0] = v15;
  v47[1] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v47, v45, &unk_27D7BC990, &qword_227670A30);
  v19 = v46;
  if (v46)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v45, v46);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

  sub_226E97D1C(v47, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v47, 0);
  swift_endAccess();

  v33 = sub_227542588(v11 + v28, v14, v48);
  if (v33)
  {
    if (v33 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v34 = v42;
    v35 = sub_2272846C4(0);
    if (!v34)
    {
      v36 = v35;
      [v35 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v37 = sub_22766C9E0();
      v38 = sub_226EDAB24(v37);

      sub_226EDAB78(v38, v40);

      return;
    }
  }
}

uint64_t sub_227306FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_2276639B0() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_2273070AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2272FAC14(v1[2], v1[3], v1[4], v1[5], v1[6]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_227307150(void (***a1)(char *, uint64_t, uint64_t))
{
  v3 = *(sub_2276624A0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2276639B0() - 8);
  sub_2273029E4(a1, *(v1 + 16), (v1 + v4), (v1 + v7), v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)));
}

uint64_t sub_22730729C(uint64_t a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2276624A0() - 8);
  v10 = *(v1 + v5);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_227304A78(a1, v1 + v4, v10, v1 + v7, v11);
}

uint64_t sub_2273073F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2273074D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_227301394(a1, v6, v7, a2);
}

uint64_t sub_227307594@<X0>(uint64_t a1@<X8>)
{
  sub_2276639B0();
  __swift_project_boxed_opaque_existential_0((*(v1 + 16) + 56), *(*(v1 + 16) + 80));
  return sub_226F92230(a1);
}

uint64_t sub_227307638(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_2276639B0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t objectdestroy_134Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227307870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22730252C(a1, v2 + v6, v7, a2);
}

uint64_t sub_227307944(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void))
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return a2(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2273079F4()
{
  v1 = *(sub_2276639B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2272FBDC8(v0 + v2, v3);
}

uint64_t sub_227307AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227307BAC@<X0>(void (*a1)(void, uint64_t, uint64_t, __n128)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2272FB890(v2[2], v2[3], v2[4], a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_227307BE4(uint64_t (**a1)(uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  v6 = v4;
  v7 = v2;
  return v3(&v6);
}

uint64_t sub_227307C34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_227307C78(void *a1)
{
  v3 = *(sub_227665490() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2276639B0() - 8);
  return sub_227300E94(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_227307D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227307DF0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return swift_deallocClassInstance();
}

void sub_227307E64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v77 = &v77 - v3;
  v80 = sub_227664AE0();
  MEMORY[0x28223BE20](v80);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2276668A0();
  v78 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276639B0();
  MEMORY[0x28223BE20](v7);
  v91 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v77 - v10;
  MEMORY[0x28223BE20](v11);
  v97 = &v77 - v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v77 - v14;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v19 = &v77 - v16;
  v20 = *(a1 + 16);
  v96 = v17;
  v88 = v5;
  v90 = v20;
  if (!v20)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_25:
    v102 = v26[2];
    if (!v102)
    {
      v98 = MEMORY[0x277D84F90];
      v49 = v96;
LABEL_39:

      v66 = v98;
      v67 = *(v98 + 2);
      if (v67)
      {
        v103 = MEMORY[0x277D84F90];
        sub_226F1F4E8(0, v67, 0);
        v68 = v103;
        v70 = *(v49 + 16);
        v69 = v49 + 16;
        v71 = &v66[(*(v69 + 64) + 32) & ~*(v69 + 64)];
        v101 = *(v69 + 56);
        v102 = v70;
        v96 = v69;
        v72 = v77;
        do
        {
          v73 = v91;
          (v102)(v91, v71, v7);
          sub_22730884C(v73, v72);
          (*(v69 - 8))(v73, v7);
          v103 = v68;
          v75 = *(v68 + 2);
          v74 = *(v68 + 3);
          if (v75 >= v74 >> 1)
          {
            sub_226F1F4E8((v74 > 1), v75 + 1, 1);
            v68 = v103;
          }

          *(v68 + 2) = v75 + 1;
          (*(v93 + 32))(&v68[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v75], v72, v92);
          v71 += v101;
          --v67;
        }

        while (v67);
      }

      else
      {

        v68 = MEMORY[0x277D84F90];
      }

      v103 = v68;
      sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
      v76 = sub_22766C950();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
      sub_22718622C();
      sub_227669240();

      return;
    }

    v48 = 0;
    v49 = v96;
    v101 = v96 + 16;
    v90 = (v78 + 8);
    v99 = (v96 + 8);
    v94 = (v78 + 32);
    v95 = (v96 + 32);
    v98 = MEMORY[0x277D84F90];
    v50 = v80;
    v100 = v26;
    while (1)
    {
      if (v48 >= v26[2])
      {
        goto LABEL_48;
      }

      v51 = v26;
      v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v53 = *(v49 + 72);
      (*(v49 + 16))(v97, v51 + v52 + v53 * v48, v7, v18);
      sub_227663970();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v54 = v84;
        v55 = v5;
        v56 = v5;
        v57 = v50;
        v58 = v85;
        (*v94)(v84, v55, v85);
        v59 = sub_227666850();
        v60 = v58;
        v50 = v57;
        v5 = v56;
        (*v90)(v54, v60);
        if (v59)
        {
          v61 = *v95;
          (*v95)(v83, v97, v7);
          v62 = v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v62;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226F1F508(0, *(v62 + 2) + 1, 1);
            v62 = v103;
          }

          v65 = *(v62 + 2);
          v64 = *(v62 + 3);
          if (v65 >= v64 >> 1)
          {
            sub_226F1F508((v64 > 1), v65 + 1, 1);
            v62 = v103;
          }

          *(v62 + 2) = v65 + 1;
          v98 = v62;
          v61(&v62[v52 + v65 * v53], v83, v7);
          v49 = v96;
          v50 = v80;
          v5 = v88;
          goto LABEL_29;
        }
      }

      else
      {
        sub_226F32360(v5);
      }

      (*v99)(v97, v7);
LABEL_29:
      ++v48;
      v26 = v100;
      if (v102 == v48)
      {
        goto LABEL_39;
      }
    }
  }

  v21 = 0;
  v23 = *(v17 + 16);
  v22 = v17 + 16;
  v100 = v23;
  v82 = *(v22 + 64);
  v94 = ((v82 + 32) & ~v82);
  v89 = v94 + a1;
  v24 = *(v22 + 56);
  v101 = v22;
  v102 = v24;
  v25 = (v22 - 8);
  v26 = MEMORY[0x277D84F90];
  v81 = xmmword_227670CD0;
  v86 = &v77 - v16;
  v99 = (v22 - 8);
  (v23)(v19, v94 + a1, v7);
  while (1)
  {
    v28 = sub_227663960();
    if (!v29)
    {
      v27 = *v25;
LABEL_4:
      v27(v19, v7);
      goto LABEL_5;
    }

    v30 = v29;
    v87 = v25 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v95 = v21;
    v31 = v7;
    v32 = v26[2];
    v33 = v98;
    if (!v32)
    {
      break;
    }

    v34 = v28;
    v35 = 0;
    v36 = v94 + v26;
    v37 = v26;
    while (1)
    {
      if (v35 >= v26[2])
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      (v100)(v33, v36, v31);
      v38 = sub_227663960();
      if (!v39)
      {
        (*v99)(v33, v31);
        goto LABEL_11;
      }

      if (v38 == v34 && v39 == v30)
      {
        break;
      }

      v40 = sub_22766D190();

      v33 = v98;
      v27 = *v99;
      (*v99)(v98, v31);
      if (v40)
      {

        v5 = v88;
        v26 = v37;
        v7 = v31;
        v19 = v86;
        v21 = v95;
        v25 = v99;
        goto LABEL_4;
      }

LABEL_11:
      ++v35;
      v36 = &v102[v36];
      v26 = v37;
      if (v32 == v35)
      {
        goto LABEL_18;
      }
    }

    v25 = v99;
    v47 = *v99;
    v7 = v31;
    (*v99)(v98, v31);

    v5 = v88;
    v19 = v86;
    v21 = v95;
    v47(v86, v7);
LABEL_5:
    v21 = (v21 + 1);
    if (v21 == v90)
    {
      goto LABEL_25;
    }

    (v100)(v19, &v89[v102 * v21], v7);
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v41 = v94;
  v42 = swift_allocObject();
  *(v42 + 16) = v81;
  v43 = v41 + v42;
  v19 = v86;
  v7 = v31;
  (v100)(v43, v86, v31);
  v44 = v26[2];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  if (!v45 || (v46 = v26[3] >> 1, v46 <= v44))
  {
    v26 = sub_2273A4EA4(v45, v44 + 1, 1, v26);
    v46 = v26[3] >> 1;
  }

  v5 = v88;
  v21 = v95;
  v25 = v99;
  if (v46 > v26[2])
  {
    swift_arrayInitWithCopy();

    ++v26[2];
    (*v25)(v19, v7);
    goto LABEL_5;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_22730884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_22766B390();
  v114 = *(v3 - 8);
  v115 = v3;
  MEMORY[0x28223BE20](v3);
  v110 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2276639B0();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v103 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v5;
  MEMORY[0x28223BE20](v6);
  v121 = &v94 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v8;
  MEMORY[0x28223BE20](v9);
  v104 = &v94 - v10;
  v120 = sub_2276624A0();
  v101 = *(v120 - 1);
  v11 = *(v101 + 64);
  MEMORY[0x28223BE20](v120);
  v97 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v108 = v15;
  v109 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v126 = &v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v118 = *(v18 - 8);
  v119 = v18;
  MEMORY[0x28223BE20](v18);
  v116 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v19;
  MEMORY[0x28223BE20](v20);
  v117 = &v94 - v21;
  v22 = sub_227664AE0();
  MEMORY[0x28223BE20](v22);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2276668A0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v98 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v94 - v29;
  sub_227663970();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v96 = v26;
    v31 = *(v26 + 32);
    v114 = v26 + 32;
    v115 = v31;
    v105 = v30;
    v95 = v25;
    v31(v30, v24, v25);
    v94 = v14;
    v99 = a1;
    sub_2276639A0();
    v32 = v123[16];
    v33 = v123[17];
    __swift_project_boxed_opaque_existential_0(v123 + 13, v32);
    v34 = v101;
    v35 = v97;
    v36 = v120;
    (*(v101 + 16))(v97, v14, v120);
    v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v38 = swift_allocObject();
    (*(v34 + 32))(v38 + v37, v35, v36);
    v39 = v104;
    sub_226ECF5D8(sub_22730E10C, v38, v32, v36, v33, v104);

    v40 = swift_allocObject();
    *(v40 + 16) = sub_22730D388;
    *(v40 + 24) = 0;
    v41 = v106;
    v42 = v102;
    v43 = v107;
    (*(v106 + 16))(v102, v39, v107);
    v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v45 = (v100 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v41 + 32))(v46 + v44, v42, v43);
    v47 = (v46 + v45);
    *v47 = sub_22730E188;
    v47[1] = v40;
    sub_227669270();
    (*(v41 + 8))(v39, v43);
    (*(v34 + 8))(v94, v120);
    v48 = v96;
    v49 = v98;
    v50 = v95;
    (*(v96 + 16))(v98, v105, v95);
    v51 = v125;
    v52 = *(v125 + 16);
    v110 = (v125 + 16);
    v120 = v52;
    v53 = v121;
    v54 = v127;
    v52(v121, v99, v127);
    v55 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v56 = *(v51 + 80);
    v57 = (v27 + v56 + v55) & ~v56;
    v107 = v56 | 7;
    v58 = (v122 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v115(v59 + v55, v49, v50);
    v125 = *(v51 + 32);
    (v125)(v59 + v57, v53, v54);
    *(v59 + v58) = v123;
    v60 = v111;
    v61 = v109;
    v62 = v113;
    (*(v111 + 16))(v109, v126, v113);
    v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v64 = (v108 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    (*(v60 + 32))(v65 + v63, v61, v62);
    v66 = (v65 + v64);
    *v66 = sub_22730E1B8;
    v66[1] = v59;

    v67 = v117;
    sub_227669270();
    (*(v60 + 8))(v126, v62);
    v68 = v121;
    v69 = v127;
    v120(v121, v99, v127);
    v70 = swift_allocObject();
    (v125)(v70 + ((v56 + 16) & ~v56), v68, v69);
    v72 = v118;
    v71 = v119;
    v73 = v116;
    (*(v118 + 16))(v116, v67, v119);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = (v112 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    (*(v72 + 32))(v76 + v74, v73, v71);
    v77 = (v76 + v75);
    *v77 = sub_22730E380;
    v77[1] = v70;
    sub_227669270();
    (*(v72 + 8))(v67, v71);
    return (*(v96 + 8))(v105, v95);
  }

  else
  {
    sub_226F32360(v24);
    v79 = v110;
    sub_22766A690();
    v80 = v125;
    v81 = v103;
    v82 = v127;
    (*(v125 + 16))(v103, a1, v127);
    v83 = sub_22766B380();
    v84 = sub_22766C890();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v128 = v86;
      *v85 = 141558274;
      *(v85 + 4) = 1752392040;
      *(v85 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v87 = sub_22766D140();
      v89 = v88;
      (*(v80 + 8))(v81, v82);
      v90 = sub_226E97AE8(v87, v89, &v128);

      *(v85 + 14) = v90;
      _os_log_impl(&dword_226E8E000, v83, v84, "[Keys] Deletion - Asset request %{mask.hash}s is not a key request", v85, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x22AA9A450](v86, -1, -1);
      MEMORY[0x22AA9A450](v85, -1, -1);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }

    (*(v114 + 8))(v79, v115);
    v91 = sub_227663190();
    sub_226EB0F68(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v92 = swift_allocError();
    (*(*(v91 - 8) + 104))(v93, *MEMORY[0x277D4FCF0], v91);
    *(swift_allocObject() + 16) = v92;
    return sub_227669280();
  }
}

uint64_t sub_2273095CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v252 = a4;
  v250 = a3;
  v8 = sub_2276668A0();
  v234 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v245 = v9;
  v246 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v233 = *(v244 - 8);
  v10 = *(v233 + 64);
  MEMORY[0x28223BE20](v244);
  v223 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v243 = &v193 - v12;
  v232 = sub_227662750();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v227 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v13;
  MEMORY[0x28223BE20](v14);
  v242 = &v193 - v15;
  v215 = sub_22766B360();
  v214 = *(v215 - 1);
  MEMORY[0x28223BE20](v215);
  v216 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B340();
  MEMORY[0x28223BE20](v17 - 8);
  v213 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v198 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v19;
  MEMORY[0x28223BE20](v20);
  v200 = &v193 - v21;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAE8, &qword_227680060);
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v201 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = v22;
  MEMORY[0x28223BE20](v23);
  v204 = &v193 - v24;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v207 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v25;
  MEMORY[0x28223BE20](v26);
  v209 = &v193 - v27;
  v222 = sub_227669890();
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v247 = &v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v253 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v217 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v219 = &v193 - v31;
  MEMORY[0x28223BE20](v32);
  v248 = &v193 - v33;
  v212 = v34;
  MEMORY[0x28223BE20](v35);
  v241 = &v193 - v36;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v226 = &v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v37;
  MEMORY[0x28223BE20](v38);
  v228 = &v193 - v39;
  v254 = sub_2276639B0();
  v40 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v42 = &v193 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v220 = &v193 - v44;
  v218 = v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v193 - v47;
  v49 = sub_22766B390();
  v237 = *(v49 - 8);
  v238 = v49;
  MEMORY[0x28223BE20](v49);
  v51 = &v193 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v193 - v53;
  v55 = *a1;
  v239 = a1[1];
  v240 = v55;
  v251 = a2;
  v56 = (v40 + 16);
  if (sub_227666850())
  {
    v235 = v8;
    v236 = a5;
    sub_22766A690();
    v57 = *v56;
    v195 = v40 + 16;
    v194 = v57;
    v57(v48, v250, v254);
    v58 = sub_22766B380();
    v59 = sub_22766C8B0();
    v60 = os_log_type_enabled(v58, v59);
    v196 = v10;
    v193 = v40;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v255 = v62;
      *v61 = 141558274;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v63 = v40;
      v64 = v254;
      v65 = sub_22766D140();
      v67 = v66;
      (*(v63 + 8))(v48, v64);
      v68 = sub_226E97AE8(v65, v67, &v255);

      *(v61 + 14) = v68;
      _os_log_impl(&dword_226E8E000, v58, v59, "[Keys] Deletion - Starting handshake for high value key %{mask.hash}s", v61, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AA9A450](v62, -1, -1);
      MEMORY[0x22AA9A450](v61, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v48, v254);
    }

    (*(v237 + 8))(v54, v238);
    v79 = __swift_project_boxed_opaque_existential_0((v252 + 56), *(v252 + 80));
    v238 = sub_227666860();
    v81 = v80;
    v82 = sub_227666830();
    v84 = v83;
    v85 = sub_227666840();
    v87 = v86;
    v88 = sub_227666870();
    v89 = *v79;
    sub_22766A800();
    v90 = swift_allocObject();
    *(v90 + 16) = "SeymourServices/KeyProvider.swift";
    *(v90 + 24) = 33;
    *(v90 + 32) = 2;
    *(v90 + 40) = 263;
    *(v90 + 48) = &unk_227680078;
    *(v90 + 56) = v89;
    sub_2276624A0();

    v91 = v200;
    sub_227669270();
    v92 = swift_allocObject();
    *(v92 + 2) = v85;
    *(v92 + 3) = v87;
    v93 = v238;
    *(v92 + 4) = v89;
    *(v92 + 5) = v93;
    *(v92 + 6) = v81;
    *(v92 + 7) = v82;
    *(v92 + 8) = v84;
    *(v92 + 9) = v88;
    v94 = v202;
    v95 = v198;
    v96 = v203;
    (*(v202 + 16))(v198, v91, v203);
    v97 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v98 = (v197 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    (*(v94 + 32))(v99 + v97, v95, v96);
    v100 = (v99 + v98);
    *v100 = sub_22730E490;
    v100[1] = v92;
    sub_226E99364(0, &qword_281398B38, 0x277CEE6D0);

    v101 = v204;
    sub_227669270();
    (*(v94 + 8))(v91, v96);
    v102 = v206;
    v103 = v201;
    v104 = v208;
    (*(v206 + 16))(v201, v101, v208);
    v105 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v106 = (v199 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = swift_allocObject();
    (*(v102 + 32))(v107 + v105, v103, v104);
    v108 = (v107 + v106);
    *v108 = sub_22730E4EC;
    v108[1] = v89;
    sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

    v109 = v209;
    sub_227669270();
    (*(v102 + 8))(v101, v104);
    v110 = swift_allocObject();
    *(v110 + 16) = sub_22734CC58;
    *(v110 + 24) = 0;
    v111 = v210;
    v112 = v207;
    v113 = v211;
    (*(v210 + 16))(v207, v109, v211);
    v114 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v115 = (v205 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
    v116 = swift_allocObject();
    (*(v111 + 32))(v116 + v114, v112, v113);
    v117 = (v116 + v115);
    *v117 = sub_22730E5B8;
    v117[1] = v110;
    v118 = v248;
    sub_227669270();
    (*(v111 + 8))(v109, v113);
    sub_2276697A0();
    swift_allocObject();
    v119 = sub_227669770();
    v120 = v216;
    sub_227669880();

    sub_22766B350();
    sub_22766B330();
    (*(v214 + 8))(v120, v215);
    sub_227669880();
    sub_22766A920();
    swift_allocObject();
    v121 = sub_22766A8F0();
    v210 = v121;
    v255 = v119;
    v122 = sub_22766C060();
    v209 = v122;
    v124 = v123;
    v125 = v242;
    sub_227662720();
    v126 = swift_allocObject();
    v211 = v119;
    *(v126 + 16) = v119;
    *(v126 + 24) = v121;
    *(v126 + 32) = v122;
    *(v126 + 40) = v124;
    v208 = v124;
    *(v126 + 48) = "KeyProvider.fetchOfflineNonce";
    *(v126 + 56) = 29;
    *(v126 + 64) = 2;

    v127 = v243;
    sub_227669270();
    v128 = v253;
    v129 = *(v253 + 16);
    v237 = v253 + 16;
    v238 = v129;
    v130 = v217;
    v131 = v249;
    v129(v217, v118, v249);
    v132 = v128;
    v216 = *(v128 + 80);
    v212 += (v216 + 16) & ~v216;
    v133 = (v216 + 16) & ~v216;
    v214 = v133;
    v134 = swift_allocObject();
    v135 = *(v132 + 32);
    v213 = (v132 + 32);
    v215 = v135;
    v135(v134 + v133, v130, v131);
    v136 = v233;
    v137 = v223;
    v138 = v244;
    (*(v233 + 16))(v223, v127, v244);
    v139 = (*(v136 + 80) + 16) & ~*(v136 + 80);
    v140 = (v196 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
    v141 = swift_allocObject();
    (*(v136 + 32))(v141 + v139, v137, v138);
    v142 = (v141 + v140);
    *v142 = sub_22730E5EC;
    v142[1] = v134;
    v143 = v219;
    sub_227669270();
    v144 = v231;
    v145 = v227;
    v146 = v125;
    v147 = v232;
    (*(v231 + 16))(v227, v146, v232);
    v148 = (*(v144 + 80) + 49) & ~*(v144 + 80);
    v149 = (v224 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
    v150 = swift_allocObject();
    v151 = v208;
    *(v150 + 16) = v209;
    *(v150 + 24) = v151;
    *(v150 + 32) = "KeyProvider.fetchOfflineNonce";
    *(v150 + 40) = 29;
    *(v150 + 48) = 2;
    (*(v144 + 32))(v150 + v148, v145, v147);
    *(v150 + v149) = v210;
    *(v150 + ((v149 + 15) & 0xFFFFFFFFFFFFFFF8)) = v211;
    v152 = v249;
    v238(v130, v143, v249);
    v153 = (v212 + 7) & 0xFFFFFFFFFFFFFFF8;
    v224 = v153;
    v154 = swift_allocObject();
    v215(v154 + v214, v130, v152);
    v155 = (v154 + v153);
    *v155 = sub_22730E63C;
    v155[1] = v150;

    sub_227669270();
    v156 = v253 + 8;
    v157 = *(v253 + 8);
    v157(v143, v152);
    v227 = v157;
    v253 = v156;
    (*(v136 + 8))(v243, v244);
    (*(v144 + 8))(v242, v147);
    v157(v248, v152);
    (*(v221 + 8))(v247, v222);

    v158 = v234;
    v159 = *(v234 + 16);
    v244 = v234 + 16;
    v247 = v159;
    v160 = v246;
    (v159)(v246, v251, v235);
    v161 = v220;
    v162 = v254;
    v194(v220, v250, v254);
    v163 = *(v158 + 80);
    v164 = (v163 + 40) & ~v163;
    v250 = v163 | 7;
    v165 = v193;
    v166 = (v245 + *(v193 + 80) + v164) & ~*(v193 + 80);
    v167 = swift_allocObject();
    v168 = v239;
    v169 = v240;
    *(v167 + 2) = v252;
    *(v167 + 3) = v169;
    *(v167 + 4) = v168;
    v170 = *(v158 + 32);
    v171 = v160;
    v172 = v235;
    v170(&v167[v164], v171, v235);
    (*(v165 + 32))(&v167[v166], v161, v162);
    v173 = v248;
    v174 = v249;
    v175 = v241;
    v238(v248, v241, v249);
    v176 = v224;
    v177 = swift_allocObject();
    v178 = v173;
    v179 = v174;
    v215(v177 + v214, v178, v174);
    v180 = (v177 + v176);
    *v180 = sub_22730E718;
    v180[1] = v167;
    v181 = v252;

    sub_226F5E0B4(v240, v239);
    sub_227666230();
    v182 = v228;
    sub_227669270();
    (v227)(v175, v179);
    v183 = v246;
    (v247)(v246, v251, v172);
    v184 = swift_allocObject();
    *(v184 + 16) = v181;
    v170((v184 + ((v163 + 24) & ~v163)), v183, v172);
    v185 = v229;
    v186 = v226;
    v187 = v230;
    (*(v229 + 16))(v226, v182, v230);
    v188 = (*(v185 + 80) + 16) & ~*(v185 + 80);
    v189 = (v225 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
    v190 = swift_allocObject();
    (*(v185 + 32))(v190 + v188, v186, v187);
    v191 = (v190 + v189);
    *v191 = sub_22730E82C;
    v191[1] = v184;

    sub_227669270();
    return (*(v185 + 8))(v182, v187);
  }

  else
  {
    sub_22766A690();
    (*v56)(v42, v250, v254);
    v69 = sub_22766B380();
    v70 = sub_22766C8B0();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v236 = a5;
      v72 = v71;
      v73 = swift_slowAlloc();
      v255 = v73;
      *v72 = 141558274;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v74 = v254;
      v75 = sub_22766D140();
      v77 = v76;
      (*(v40 + 8))(v42, v74);
      v78 = sub_226E97AE8(v75, v77, &v255);

      *(v72 + 14) = v78;
      _os_log_impl(&dword_226E8E000, v69, v70, "[Keys] Deletion - Not notifying server of low value key deletion %{mask.hash}s", v72, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AA9A450](v73, -1, -1);
      MEMORY[0x22AA9A450](v72, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v42, v254);
    }

    (*(v237 + 8))(v51, v238);
    return sub_2276692A0();
  }
}

uint64_t sub_22730AF78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v61 = a5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v53 = *(v60 - 8);
  v59 = *(v53 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - v9;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = *a1;
  v52 = a1[1];
  v18 = sub_227666860();
  v48 = v19;
  v49 = v18;
  v54 = v16;
  sub_2276639A0();
  sub_226E99364(0, &unk_281398AB0, 0x277CE64D8);
  v20 = sub_22766C990();
  v21 = [objc_opt_self() contentKeySessionWithKeySystem_];

  v47 = a2;
  swift_beginAccess();
  v22 = v21;
  sub_2270BE37C(v62, v22);
  swift_endAccess();

  v23 = *(v11 + 16);
  v50 = v10;
  v23(v13, v16, v10);
  v24 = *(v11 + 80);
  v51 = v11;
  v25 = (v24 + 32) & ~v24;
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v48;
  *(v28 + 16) = v49;
  *(v28 + 24) = v29;
  (*(v11 + 32))(v28 + v25, v13, v10);
  v30 = (v28 + v26);
  v31 = v17;
  *v30 = v17;
  v32 = v52;
  v30[1] = v52;
  *(v28 + v27) = v22;
  v33 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v56;
  v34 = v57;
  *v33 = v56;
  v33[1] = v34;
  v36 = v22;
  sub_226F5E0B4(v31, v32);
  sub_226F5E0B4(v35, v34);
  sub_227666230();
  v37 = v55;
  sub_227669270();
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  *(v38 + 24) = v36;
  v39 = v53;
  v40 = v58;
  v41 = v60;
  (*(v53 + 16))(v58, v37, v60);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v59 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v40, v41);
  v45 = (v44 + v43);
  *v45 = sub_22730EF84;
  v45[1] = v38;

  sub_227669270();
  (*(v39 + 8))(v37, v41);
  return (*(v51 + 8))(v54, v50);
}

uint64_t sub_22730B3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v168 = a3;
  v5 = sub_227662750();
  v166 = *(v5 - 8);
  v167 = v5;
  v165 = *(v166 + 64);
  MEMORY[0x28223BE20](v5);
  v164 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v182 = &v135 - v8;
  v9 = sub_22766B360();
  v172 = *(v9 - 8);
  v173 = v9;
  MEMORY[0x28223BE20](v9);
  v171 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B340();
  MEMORY[0x28223BE20](v11 - 8);
  v170 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v145 = *(v147 - 8);
  v144 = *(v145 + 64);
  MEMORY[0x28223BE20](v147);
  v143 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v142 = &v135 - v15;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v151 = *(v152 - 8);
  v150 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v148 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v146 = &v135 - v18;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v155 = *(v169 - 8);
  v154 = *(v155 + 64);
  MEMORY[0x28223BE20](v169);
  v153 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v149 = &v135 - v21;
  v22 = sub_227666230();
  v23 = *(v22 - 8);
  v181 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - v27;
  v163 = sub_227669890();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v175 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v179 = *(v157 - 8);
  v156 = v179[8];
  MEMORY[0x28223BE20](v157);
  v158 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v177 = &v135 - v32;
  MEMORY[0x28223BE20](v33);
  v159 = &v135 - v34;
  MEMORY[0x28223BE20](v35);
  v176 = &v135 - v36;
  MEMORY[0x28223BE20](v37);
  v174 = &v135 - v38;
  MEMORY[0x28223BE20](v39);
  v161 = &v135 - v40;
  v41 = __swift_project_boxed_opaque_existential_0((a2 + 56), *(a2 + 80));
  v139 = sub_227666840();
  v138 = v42;
  v141 = sub_227666830();
  v140 = v43;
  v137 = sub_227666870();
  v44 = *v41;
  sub_22766A800();
  v45 = v23;
  v46 = *(v23 + 16);
  v180 = v28;
  v46(v28, a1, v22);
  v47 = v28;
  v48 = v22;
  v178 = v22;
  v46(v25, v47, v22);
  v49 = *(v45 + 80);
  v50 = v45;
  v160 = v45;
  v51 = swift_allocObject();
  *(v51 + 16) = v44;
  v135 = v44;
  v136 = *(v50 + 32);
  v136(v51 + ((v49 + 24) & ~v49), v25, v48);
  v52 = swift_allocObject();
  *(v52 + 16) = "SeymourServices/KeyProvider.swift";
  *(v52 + 24) = 33;
  *(v52 + 32) = 2;
  *(v52 + 40) = 324;
  *(v52 + 48) = &unk_227680088;
  *(v52 + 56) = v51;
  sub_2276624A0();

  v53 = v142;
  sub_227669270();
  v54 = v25;
  v55 = v178;
  v46(v25, v180, v178);
  v56 = (v49 + 40) & ~v49;
  v57 = (v181 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v138;
  *(v58 + 2) = v139;
  *(v58 + 3) = v59;
  v60 = v135;
  *(v58 + 4) = v135;
  v136(v58 + v56, v54, v55);
  v61 = (v58 + v57);
  v62 = v140;
  *v61 = v141;
  v61[1] = v62;
  *(v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8)) = v137;
  v63 = v145;
  v64 = v143;
  v65 = v53;
  v66 = v147;
  (*(v145 + 16))(v143, v53, v147);
  v67 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v68 = (v144 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v69 + v67;
  v71 = v66;
  (*(v63 + 32))(v70, v64, v66);
  v72 = (v69 + v68);
  *v72 = sub_22730EA88;
  v72[1] = v58;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v73 = v146;
  sub_227669270();
  (*(v63 + 8))(v65, v71);
  v74 = swift_allocObject();
  *(v74 + 16) = sub_22734E920;
  *(v74 + 24) = 0;
  v75 = v151;
  v76 = v148;
  v77 = v73;
  v78 = v73;
  v79 = v152;
  (*(v151 + 16))(v148, v77, v152);
  v80 = v75;
  v81 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v82 = (v150 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (*(v80 + 32))(v83 + v81, v76, v79);
  v84 = (v83 + v82);
  *v84 = sub_22730EB74;
  v84[1] = v74;
  v85 = v149;
  sub_227669270();
  (*(v80 + 8))(v78, v79);
  v86 = v155;
  v87 = v153;
  v88 = v85;
  v89 = v169;
  (*(v155 + 16))(v153, v85, v169);
  v90 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v91 = (v154 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  (*(v86 + 32))(v92 + v90, v87, v89);
  v93 = (v92 + v91);
  *v93 = sub_22730EBA4;
  v93[1] = v60;

  v94 = v174;
  sub_227669270();
  (*(v86 + 8))(v88, v89);
  sub_2276697A0();
  swift_allocObject();
  v95 = sub_227669770();
  v96 = v171;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (v172[1])(v96, v173);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v97 = sub_22766A8F0();
  v154 = v97;
  v183 = v95;
  v98 = sub_22766C060();
  v153 = v98;
  v100 = v99;
  sub_227662720();
  v101 = swift_allocObject();
  v155 = v95;
  *(v101 + 16) = v95;
  *(v101 + 24) = v97;
  *(v101 + 32) = v98;
  *(v101 + 40) = v100;
  v152 = v100;
  *(v101 + 48) = "KeyProvider.submitOfflineContextInvalidation";
  *(v101 + 56) = 44;
  *(v101 + 64) = 2;

  v102 = v176;
  sub_227669270();
  v103 = v179;
  v104 = v179 + 2;
  v181 = v179[2];
  v105 = v177;
  v106 = v157;
  v181(v177, v94, v157);
  v173 = v104;
  v107 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v108 = v107 + v156;
  v169 = *(v103 + 80);
  v156 = swift_allocObject();
  v109 = v103[4];
  v170 = v107;
  v109(v156 + v107, v105, v106);
  v171 = v109;
  v172 = v103 + 4;
  v110 = v158;
  v111 = v106;
  v181(v158, v102, v106);
  v112 = (v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = swift_allocObject();
  v109(v113 + v107, v110, v106);
  v114 = (v113 + v112);
  v115 = v156;
  *v114 = sub_226EC15F4;
  v114[1] = v115;
  v116 = v159;
  sub_227669270();
  v117 = v166;
  v118 = v167;
  v119 = v164;
  (*(v166 + 16))(v164, v182, v167);
  v120 = (*(v117 + 80) + 49) & ~*(v117 + 80);
  v121 = (v165 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  v123 = v152;
  *(v122 + 16) = v153;
  *(v122 + 24) = v123;
  *(v122 + 32) = "KeyProvider.submitOfflineContextInvalidation";
  *(v122 + 40) = 44;
  *(v122 + 48) = 2;
  (*(v117 + 32))(v122 + v120, v119, v118);
  *(v122 + v121) = v154;
  *(v122 + ((v121 + 15) & 0xFFFFFFFFFFFFFFF8)) = v155;
  v124 = v177;
  v181(v177, v116, v111);
  v125 = swift_allocObject();
  (v171)(&v170[v125], v124, v111);
  v126 = (v125 + v112);
  *v126 = sub_22730EDD8;
  v126[1] = v122;

  v127 = v161;
  sub_227669270();
  v128 = v179[1];
  v128(v116, v111);
  v128(v176, v111);
  (*(v117 + 8))(v182, v118);
  v129 = v174;
  v128(v174, v111);
  (*(v160 + 8))(v180, v178);
  (*(v162 + 8))(v175, v163);

  v130 = swift_allocObject();
  v130[2] = 0xD00000000000002DLL;
  v130[3] = 0x800000022769D8A0;
  v130[4] = 91;
  v131 = swift_allocObject();
  *(v131 + 16) = sub_226F323BC;
  *(v131 + 24) = v130;
  v181(v129, v127, v111);
  v132 = swift_allocObject();
  (v171)(&v170[v132], v129, v111);
  v133 = (v132 + v112);
  *v133 = sub_226F323DC;
  v133[1] = v131;
  sub_227669270();
  return (v128)(v127, v111);
}

uint64_t sub_22730C5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  if (*(a1 + 8) == 1)
  {
    v45 = v12;
    v18 = *a1;
    v19 = *a1;
    sub_22766A690();
    (*(v5 + 16))(v10, a2, v4);
    v20 = v18;
    v21 = sub_22766B380();
    v22 = sub_22766C890();
    sub_226EB4548(v18, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v23 = 141558530;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v24 = sub_22766D140();
      v44 = v11;
      v26 = v25;
      (*(v5 + 8))(v10, v4);
      v27 = sub_226E97AE8(v24, v26, &v48);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2082;
      swift_getErrorValue();
      v28 = MEMORY[0x22AA995D0](v46, v47);
      v30 = sub_226E97AE8(v28, v29, &v48);

      *(v23 + 24) = v30;
      _os_log_impl(&dword_226E8E000, v21, v22, "[Keys] Deletion - failed for request %{mask.hash}s with error %{public}s", v23, 0x20u);
      v31 = v43;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);

      sub_226EB4548(v18, 1);
      return (*(v45 + 8))(v17, v44);
    }

    else
    {

      sub_226EB4548(v18, 1);
      (*(v5 + 8))(v10, v4);
      return (*(v45 + 8))(v17, v11);
    }
  }

  else
  {
    sub_22766A690();
    (*(v5 + 16))(v7, a2, v4);
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v12;
      v37 = v36;
      v48 = v36;
      *v35 = 141558274;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v38 = sub_22766D140();
      v44 = v11;
      v39 = v38;
      v41 = v40;
      (*(v5 + 8))(v7, v4);
      v42 = sub_226E97AE8(v39, v41, &v48);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_226E8E000, v33, v34, "[Keys] Deletion - completed successfully for request %{mask.hash}s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);

      return (*(v45 + 8))(v14, v44);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v12 + 8))(v14, v11);
    }
  }
}

uint64_t sub_22730CB88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v51 - v9;
  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  swift_getKeyPath();
  v18 = sub_227662390();
  v20 = v19;
  v57[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v57[0] = v18;
  v57[1] = v20;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v21 = sub_22766C820();
  sub_226E93170(v57, v55, &unk_27D7BC990, &qword_227670A30);
  v22 = v56;
  if (v56)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v55, v56);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x28223BE20](v23);
    v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = sub_22766D170();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v30 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

  sub_226E97D1C(v57, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v31 = v30;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  v35 = v58;
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v32(v57, 0);
  swift_endAccess();

  v36 = MEMORY[0x22AA99A00]();
  v37 = v54;
  sub_227544DD4(v35);
  if (v37)
  {
    objc_autoreleasePoolPop(v36);
    swift_setDeallocating();

    v38 = qword_2813B2078;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v15 + v38, v39);
    return swift_deallocClassInstance();
  }

  objc_autoreleasePoolPop(v36);
  swift_setDeallocating();

  v41 = qword_2813B2078;
  v42 = sub_22766A100();
  (*(*(v42 - 8) + 8))(v15 + v41, v42);
  swift_deallocClassInstance();
  sub_226E93170(v35, v7, &qword_27D7B8620, &qword_2276711C0);
  v43 = sub_227663180();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v7, 1, v43) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8620, &qword_2276711C0);
    v45 = sub_2276624A0();
    v46 = v53;
    (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
LABEL_11:
    sub_226E97D1C(v46, &unk_27D7BB570, &unk_227670FC0);
    v49 = sub_227663190();
    sub_226EB0F68(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D4FD58], v49);
    swift_willThrow();
    return sub_226E97D1C(v35, &qword_27D7B8620, &qword_2276711C0);
  }

  v46 = v53;
  sub_227663160();
  (*(v44 + 8))(v7, v43);
  v47 = sub_2276624A0();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    goto LABEL_11;
  }

  sub_226E97D1C(v35, &qword_27D7B8620, &qword_2276711C0);
  return (*(v48 + 32))(v52, v46, v47);
}

uint64_t sub_22730D388@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2276624C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_22730D3B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v60 = a8;
  v56 = a7;
  v55 = a6;
  v63 = a1;
  v57 = a9;
  v14 = sub_2276624A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v58 = v16;
  v59 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v52 = sub_22766B390();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v64 = v15;
  v22 = *(v15 + 16);
  v61 = a5;
  v62 = v14;
  v54 = v15 + 16;
  v53 = v22;
  v22(v19, a5, v14);

  v23 = sub_22766B380();
  v24 = sub_22766C8B0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v50 = a2;
    v26 = v25;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v26 = 136446722;
    *(v26 + 4) = sub_226E97AE8(a3, a4, aBlock);
    *(v26 + 12) = 2160;
    *(v26 + 14) = 1752392040;
    *(v26 + 22) = 2080;
    v27 = sub_227662390();
    v29 = v28;
    v30 = v19;
    v31 = v62;
    (*(v64 + 8))(v30, v62);
    v32 = sub_226E97AE8(v27, v29, aBlock);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_226E8E000, v23, v24, "[Keys] Invalidating local FairPlay keys for workoutIdentifier: %{public}s, keyURL: %{mask.hash}s", v26, 0x20u);
    v33 = v49;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v33, -1, -1);
    v34 = v26;
    a2 = v50;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {

    v35 = v19;
    v31 = v62;
    (*(v64 + 8))(v35, v62);
  }

  (*(v51 + 8))(v21, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF8, &qword_227680090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v37 = *MEMORY[0x277CE5D18];
  *(inited + 32) = *MEMORY[0x277CE5D18];
  v38 = v55;
  v39 = v56;
  *(inited + 40) = v55;
  *(inited + 48) = v39;
  v40 = v37;
  sub_226F5E0B4(v38, v39);
  v41 = sub_22714B360(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &qword_27D7BCB00, qword_227680098);
  v42 = sub_227662560();
  sub_227332924(v41);

  type metadata accessor for AVContentKeySessionServerPlaybackContextOption(0);
  sub_226EB0F68(&qword_27D7B8360, type metadata accessor for AVContentKeySessionServerPlaybackContextOption, &unk_227670588);
  v43 = sub_22766BE90();

  v44 = v59;
  v53(v59, v61, v31);
  v45 = v64;
  v46 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v63;
  *(v47 + 3) = a2;
  *(v47 + 4) = a3;
  *(v47 + 5) = a4;
  (*(v45 + 32))(&v47[v46], v44, v31);
  aBlock[4] = sub_22730F07C;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FD32A0;
  aBlock[3] = &block_descriptor_25;
  v48 = _Block_copy(aBlock);

  [v60 invalidatePersistableContentKey:v42 options:v43 completionHandler:v48];
  _Block_release(v48);
}

uint64_t sub_22730D9B8(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v58 = a2;
  v55[0] = a7;
  v55[1] = a6;
  v63 = a5;
  v64 = a4;
  v56 = a1;
  v9 = sub_22766B390();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v55 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  MEMORY[0x28223BE20](v62);
  v61 = (v55 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v55 - v17;
  v19 = sub_2276624A0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227666230();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_22766A690();
    v28 = a3;
    v29 = sub_22766B380();
    v30 = sub_22766C890();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69 = v32;
      *v31 = 136446210;
      swift_getErrorValue();
      v67 = MEMORY[0x22AA995D0](v65, v66);
      v68 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v34 = sub_22766CB80();
      v36 = v35;

      v37 = sub_226E97AE8(v34, v36, &v69);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_226E8E000, v29, v30, "[Keys] AV failed to invalidate persistable key with error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    (*(v59 + 8))(v11, v60);
    v38 = v61;
    *v61 = a3;
    swift_storeEnumTagMultiPayload();
    v39 = a3;
  }

  else
  {
    v40 = v56;
    v41 = v58;
    if (v58 >> 60 != 15)
    {
      (*(v20 + 16))(v22, v57, v19, v25);
      v53 = sub_227664900();
      (*(*(v53 - 8) + 56))(v18, 1, 1, v53);
      sub_226FB1554(v40, v41);

      sub_2276661E0();
      v54 = v61;
      (*(v24 + 16))(v61, v27, v23);
      swift_storeEnumTagMultiPayload();
      v64(v54);
      sub_226E97D1C(v54, &qword_27D7B96C8, &qword_227674900);
      return (*(v24 + 8))(v27, v23);
    }

    sub_22766A690();
    v42 = sub_22766B380();
    v43 = sub_22766C890();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = 0;
      v69 = v45;
      *v44 = 136446210;
      v67 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v46 = sub_22766CB80();
      v48 = sub_226E97AE8(v46, v47, &v69);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_226E8E000, v42, v43, "[Keys] invalidatePersistableContentKey failed with error: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA9A450](v45, -1, -1);
      MEMORY[0x22AA9A450](v44, -1, -1);
    }

    (*(v59 + 8))(v14, v60);
    v49 = sub_227663190();
    sub_226EB0F68(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D4FDC0], v49);
    v38 = v61;
    *v61 = v50;
    swift_storeEnumTagMultiPayload();
  }

  v64(v38);
  return sub_226E97D1C(v38, &qword_27D7B96C8, &qword_227674900);
}

void sub_22730E0B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v4 = sub_22700D178(a3);
  swift_endAccess();
}

uint64_t sub_22730E1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276668A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2276639B0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2273095CC(a1, v2 + v6, v2 + v9, v10, a2);
}

uint64_t objectdestroy_7Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22730E380(uint64_t a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22730C5FC(a1, v4);
}

uint64_t sub_22730E3F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22734BB0C(a1, v1);
}

uint64_t sub_22730E51C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_22730E63C(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2273539BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22730E718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2276668A0();
  sub_2276639B0();
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];

  return sub_22730AF78(a1, v5, v6, v7, a2);
}

uint64_t sub_22730E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2276668A0();
  v5 = *(v2 + 16);

  return sub_22730B3E8(a1, v5, a2);
}

uint64_t objectdestroy_68Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22730E9A4(uint64_t a1)
{
  v4 = *(sub_227666230() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22734D698(a1, v6, v1 + v5);
}

uint64_t sub_22730EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666230() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 40) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 32);
  v9 = (v2 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v7);

  return sub_22734D8B8(a1, v8, v10, v11, v12, a2);
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_22730EC50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22730EDD8(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_227353A88(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22730EEB4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_22730D3B8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22730EFB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22730F07C(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_2276624A0() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_22730D9B8(a1, a2, a3, v8, v9, v10, v11, v12);
}

void sub_22730F118(uint64_t a1)
{
  v1 = sub_227665650();
  v2 = v1;
  v3 = v1 + 56;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v2 + 48) + ((v8 << 10) | (16 * v10));
      if ((*(v11 + 8) & 1) == 0)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v13 = *v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2273A5120(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v15 = *(v9 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v20 = v14 + 1;
      v17 = v9;
      v18 = *(v9 + 2);
      v19 = sub_2273A5120((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v20;
      v9 = v19;
    }

    *(v9 + 2) = v16;
    *&v9[8 * v14 + 32] = v13;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_22730F2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v14 = sub_227662190();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662940();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_2276629D0();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_227665400();
  sub_227665410();
  sub_227665420();
  sub_227665430();
  sub_227662180();
  v11 = sub_2276620D0();
  (*(v6 + 8))(v8, v14);
  return v11;
}

void sub_22730F570(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 seed];
  if (v4)
  {
    v5 = v4;
    v6 = sub_227662590();
    v8 = v7;

    v9 = [a1 workoutIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22766C000();
      v13 = v12;

      *a2 = v6;
      a2[1] = v8;
      a2[2] = v11;
      a2[3] = v13;
      return;
    }

    sub_226EDC420(v6, v8);
  }

  v14 = sub_227664DD0();
  sub_226FC4F70();
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51028], v14);
  swift_willThrow();
}

void sub_22730F6C4(void *a1)
{
  v2 = sub_227662560();
  [a1 setSeed_];

  v3 = sub_22766BFD0();
  [a1 setWorkoutIdentifier_];
}

void _s15SeymourServices17StreamingKeyNonceV21representativeSamplesSayACGyFZ_0(uint64_t a1)
{
  v1 = sub_2276624D0();
  v16 = sub_22766C090();
  v17[0] = v1;
  v17[1] = v17;
  v17[2] = &v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v2 = sub_2276638E0();

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_226F20468(0, v3, 0);
    v4 = 0;
    v5 = (v2 + 56);
    v13 = v3;
    v14 = v2;
    while (v4 < *(v2 + 16))
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;
      sub_226F5E0B4(v6, v7);
      v10 = *(v15 + 16);
      v11 = *(v15 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_226F20468((v11 > 1), v10 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v10 + 1;
      v12 = (v15 + 32 * v10);
      v12[4] = v6;
      v12[5] = v7;
      v12[6] = v9;
      v12[7] = v8;
      v5 += 4;
      v2 = v14;
      if (v13 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

unint64_t sub_22730F928(uint64_t a1)
{
  result = sub_22730F950();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22730F950()
{
  result = qword_27D7BCB08;
  if (!qword_27D7BCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCB08);
  }

  return result;
}

uint64_t sub_22730F9A4(char a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  sub_22766A730();
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_226E8E000, v8, v9, "using ServiceSubscriptionFakingProvider with subscribed = %{BOOL,public}d", v10, 8u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v2;
}

uint64_t sub_22730FB24(void *a1, void (*a2)(void *, void, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB10, &unk_2276801D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_22766BD00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    v14 = sub_227333070();
    a2(v14, 0, 1);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v13(v6, 1, 1, v7);
    sub_226E97D1C(v6, &qword_27D7BCB10, &unk_2276801D8);
    return (a2)(a1, 0, 1);
  }
}

uint64_t sub_22730FD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x277D84F90];
  sub_226F1EFF0(0, v2, 0);
  v3 = v28;
  v27 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v25 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v6));
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_226F1EFF0((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v27 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v3;
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

uint64_t sub_22730FF6C(uint64_t a1)
{
  v47 = sub_227669360();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v7;
  v8 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = a1 + 56;
  v10 = v52;
  v11 = -1;
  v12 = -1 << *(a1 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(a1 + 56);
  v14 = (63 - v12) >> 6;
  v48 = a1;
  v49 = v2;
  v45 = v8;
  if (v8)
  {
    v43 = v2 + 8;
    v44 = v2 + 16;

    v15 = 0;
    v16 = 0;
    while (v13)
    {
      v17 = v10;
LABEL_11:
      v19 = v49;
      v20 = *(a1 + 48) + *(v49 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v21 = v46;
      v22 = v47;
      (*(v49 + 16))(v46, v20, v47);
      v23 = sub_227669350();
      v50 = v24;
      v51 = v23;
      (*(v19 + 8))(v21, v22);
      v10 = v17;
      v52 = v17;
      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      ++v15;
      v13 &= v13 - 1;
      *(v10 + 16) = v25 + 1;
      v26 = v10 + 16 * v25;
      v27 = v50;
      *(v26 + 32) = v51;
      *(v26 + 40) = v27;
      a1 = v48;
      if (v15 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        goto LABEL_29;
      }

      v13 = *(v9 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v10;
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = 0;
LABEL_16:
    v28 = v49;
    v50 = v49 + 16;
    v45 = v49 + 8;
    v46 = (v49 + 32);
    if (!v13)
    {
      goto LABEL_18;
    }

    do
    {
      v51 = v10;
LABEL_22:
      v30 = *(a1 + 48) + *(v28 + 72) * (__clz(__rbit64(v13)) | (v16 << 6));
      v31 = v42;
      v32 = v47;
      (*(v28 + 16))(v42, v30, v47);
      v33 = v41;
      (*(v28 + 32))(v41, v31, v32);
      v34 = sub_227669350();
      v36 = v35;
      (*(v28 + 8))(v33, v32);
      v10 = v51;
      v52 = v51;
      v37 = *(v51 + 16);
      if (v37 >= *(v51 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v52;
      }

      v13 &= v13 - 1;
      *(v10 + 16) = v37 + 1;
      v38 = v10 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      a1 = v48;
      v28 = v49;
    }

    while (v13);
LABEL_18:
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v14)
      {

        return v10;
      }

      v13 = *(v9 + 8 * v29);
      ++v16;
      if (v13)
      {
        v51 = v10;
        v16 = v29;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227310350(uint64_t a1, uint64_t a2)
{
  v2 = sub_227664F60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E048], v6);
    sub_227669980();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_227310564(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = sub_2276699A0();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227664F60();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A760();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[1] = a3;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Received Bookmark Update. Sending Event.", v16, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);

  sub_227664F40();
  swift_getObjectType();
  v18 = v24;
  (*(v5 + 16))(v23, v9, v24);
  v19 = v25;
  sub_227669990();
  v20 = v28;
  sub_2276699D0();
  (*(v26 + 8))(v19, v20);
  return (*(v5 + 8))(v9, v18);
}

uint64_t sub_227310898(uint64_t a1, uint64_t a2)
{
  v2 = sub_227665250();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E050], v6);
    sub_227669A20();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_227310AAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = sub_227669A40();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227665250();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A760();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22[1] = a3;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Received Playlist Update. Sending Event.", v16, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);

  sub_227665240();
  swift_getObjectType();
  v18 = v24;
  (*(v5 + 16))(v23, v9, v24);
  v19 = v25;
  sub_227669A30();
  v20 = v28;
  sub_2276699D0();
  (*(v26 + 8))(v19, v20);
  return (*(v5 + 8))(v9, v18);
}

uint64_t sub_227310DE0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_227310E6C()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227310F2C, 0, 0);
}

uint64_t sub_227310F2C(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v6);
  v8 = *(v7 + 24);

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v1[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v9 = v1;
  v9[1] = sub_226F9D924;
  v11 = v1[3];

  return (v13)(v1 + 2, sub_2273170A0, v11, v10, v6, v7);
}

uint64_t sub_2273110FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2276641B0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311220, 0, 0);
}

uint64_t sub_227311220(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[6];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v7[17];
  v11 = v7[18];
  __swift_project_boxed_opaque_existential_0(v7 + 14, v10);
  (*(v6 + 16))(v5, v9, v8);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v1[12] = v13;
  *(v13 + 16) = v7;
  (*(v6 + 32))(v13 + v12, v5, v8);
  v14 = *(v11 + 24);

  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  v1[13] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v15 = v1;
  v15[1] = sub_227311478;

  return (v18)(v1 + 2, sub_22731725C, v13, v16, v10, v11);
}

uint64_t sub_227311478()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_227317448;
  }

  else
  {

    v2 = sub_227317470;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227311594(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311654, 0, 0);
}

uint64_t sub_227311654(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[17];
  v8 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v11 = v1;
  v11[1] = sub_227311858;

  return (v14)(v1 + 2, sub_2273173E0, v9, v12, v7, v8);
}

uint64_t sub_227311858()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22731744C;
  }

  else
  {

    v2 = sub_227317474;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227311974(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311A34, 0, 0);
}

uint64_t sub_227311A34(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[17];
  v8 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v11 = v1;
  v11[1] = sub_227311858;

  return (v14)(v1 + 2, sub_22731736C, v9, v12, v7, v8);
}

uint64_t sub_227311C38@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = sub_227315FB4(a2, a1);
  if (!v3)
  {
    v6 = sub_2272391B8(0x64);

    *a3 = v6;
  }

  return result;
}

uint64_t sub_227311C98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311D58, 0, 0);
}

uint64_t sub_227311D58(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[17];
  v8 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v11 = v1;
  v11[1] = sub_227311858;

  return (v14)(v1 + 2, sub_227317350, v9, v12, v7, v8);
}

uint64_t sub_227311F5C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227316B70(a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v7 = sub_2272391B8(0x64);

  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_227311FD8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227312098, 0, 0);
}

uint64_t sub_227312098(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[17];
  v8 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  *v11 = v1;
  v11[1] = sub_227204F34;
  v12 = MEMORY[0x277D83B88];

  return (v14)(v1 + 2, sub_227317328, v9, v12, v7, v8);
}

void sub_22731228C(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_227315FB4(a2, a1);
  if (!v3)
  {
    v5 = sub_22728494C(0);
    [v5 setResultType_];
    [v5 setFetchLimit_];
    [v5 setFetchOffset_];
    [v5 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v6 = sub_22766C9D0();

    *a3 = v6;
  }
}

uint64_t sub_227312390(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2276641B0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273124B4, 0, 0);
}

uint64_t sub_2273124B4(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[6];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v10 = v7[17];
  v11 = v7[18];
  __swift_project_boxed_opaque_existential_0(v7 + 14, v10);
  (*(v6 + 16))(v5, v9, v8);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v1[12] = v13;
  *(v13 + 16) = v7;
  (*(v6 + 32))(v13 + v12, v5, v8);
  v14 = *(v11 + 24);

  v18 = (v14 + *v14);
  v15 = swift_task_alloc();
  v1[13] = v15;
  *v15 = v1;
  v15[1] = sub_227204A68;
  v16 = MEMORY[0x277D83B88];

  return (v18)(v1 + 2, sub_2273171DC, v13, v16, v10, v11);
}

uint64_t sub_2273126FC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = sub_2275183DC(a2, a1);
  if (!v3)
  {
    v6 = *(result + 16);

    *a3 = v6;
  }

  return result;
}

uint64_t sub_227312748(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227312808, 0, 0);
}

uint64_t sub_227312808(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  sub_22766A760();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  v7 = v5[17];
  v8 = v5[18];
  __swift_project_boxed_opaque_existential_0(v5 + 14, v7);
  v9 = swift_allocObject();
  v1[8] = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v1[9] = v11;
  *v11 = v1;
  v11[1] = sub_227311858;
  v12 = MEMORY[0x277D83B88];

  return (v14)(v1 + 2, sub_2273171B4, v9, v12, v7, v8);
}

void sub_2273129FC(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227316B70(a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v7 = sub_22728494C(0);
  if (v3)
  {
  }

  else
  {
    v8 = v7;
    [v7 setResultType_];
    [v8 setFetchLimit_];
    [v8 setFetchOffset_];
    [v8 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v9 = sub_22766C9D0();

    *a3 = v9;
  }
}

uint64_t sub_227312B18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276699A0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227664F60();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227312C40, 0, 0);
}

uint64_t sub_227312C40()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_227312DD0;

  return v8();
}

uint64_t sub_227312DD0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_227313054;
  }

  else
  {

    v2 = sub_227312EEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227312EEC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + 160), *(v0[3] + 184));
  sub_2271D7EE8();

  sub_227664F40();
  swift_getObjectType();
  (*(v4 + 16))(v1, v2, v3);
  sub_227669990();
  sub_2276699D0();
  (*(v6 + 8))(v5, v9);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227313054()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2273130E0(void *a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v80 = a1;
  v79 = sub_22766B390();
  v4 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v66 - v7;
  v8 = sub_227669360();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v12);
  v75 = &v66 - v15;
  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v85 = v13 + 16;
  v86 = v13;
  v74 = v13 + 32;
  v87 = (v13 + 8);
  v78 = (v4 + 8);
  v81 = a2;
  v21 = v14;

  v22 = 0;
  *&v23 = 136315138;
  v68 = v23;
  v73 = xmmword_227670CD0;
  v76 = v21;
  v72 = v16;
  v71 = v20;
  v69 = v8;
  v77 = v11;
  if (v19)
  {
    while (1)
    {
      v24 = v22;
      v25 = v84;
LABEL_9:
      v26 = *(v81 + 48);
      v27 = v86;
      v82 = *(v86 + 72);
      v28 = *(v86 + 16);
      v29 = v75;
      v28(v75, v26 + v82 * (__clz(__rbit64(v19)) | (v24 << 6)), v8);
      (*(v27 + 32))(v11, v29, v8);
      sub_22766A730();
      v30 = v76;
      v83 = v28;
      v28(v76, v11, v8);
      v31 = sub_22766B380();
      v32 = v8;
      v33 = sub_22766C8B0();
      if (os_log_type_enabled(v31, v33))
      {
        v34 = v30;
        v35 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v89 = v70;
        *v35 = v68;
        sub_22731701C();
        v36 = sub_22766D140();
        v37 = v32;
        v38 = v36;
        v40 = v39;
        v41 = *v87;
        (*v87)(v34, v37);
        v42 = sub_226E97AE8(v38, v40, &v89);

        *(v35 + 4) = v42;
        _os_log_impl(&dword_226E8E000, v31, v33, "Inserting %s", v35, 0xCu);
        v43 = v70;
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x22AA9A450](v43, -1, -1);
        MEMORY[0x22AA9A450](v35, -1, -1);

        v44 = *v78;
        (*v78)(v84, v79);
        v8 = v69;
      }

      else
      {

        v41 = *v87;
        (*v87)(v30, v32);
        v44 = *v78;
        (*v78)(v25, v79);
        v8 = v32;
      }

      v45 = __swift_project_boxed_opaque_existential_0(v80, v80[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0F8, &qword_227679B00);
      v46 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v73;
      v11 = v77;
      v83(v47 + v46, v77, v8);
      v48 = v88;
      sub_227562F00(v47, v45[1], *(v45 + 16), v45[3]);
      v88 = v48;
      if (v48)
      {
        break;
      }

      v19 &= v19 - 1;

      v41(v11, v8);
      v22 = v24;
      v16 = v72;
      v20 = v71;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v52 = v66;
    sub_22766A770();
    v53 = v88;
    v54 = v88;
    v55 = sub_22766B380();
    v56 = sub_22766C8B0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v41;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v89 = v59;
      *v58 = v68;
      swift_getErrorValue();
      v60 = sub_22766D250();
      v62 = sub_226E97AE8(v60, v61, &v89);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_226E8E000, v55, v56, "ERROR: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v63 = v59;
      v11 = v77;
      MEMORY[0x22AA9A450](v63, -1, -1);
      v64 = v58;
      v41 = v57;
      MEMORY[0x22AA9A450](v64, -1, -1);

      v65 = v66;
    }

    else
    {

      v65 = v52;
    }

    v44(v65, v79);
    swift_willThrow();

    v41(v11, v69);
  }

  else
  {
LABEL_5:
    v25 = v84;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v49 = v81;

        __swift_project_boxed_opaque_existential_0((v67 + 160), *(v67 + 184));
        v50 = v88;
        v51 = sub_22730FF6C(v49);
        sub_2272D7E8C(0, v51, v80);

        v88 = v50;
        return;
      }

      v19 = *(v16 + 8 * v24);
      ++v22;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}