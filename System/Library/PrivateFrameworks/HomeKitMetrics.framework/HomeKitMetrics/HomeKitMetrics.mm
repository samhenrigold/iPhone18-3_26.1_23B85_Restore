Swift::Void __swiftcall CounterGroup.incrementCounter(_:by:)(Swift::String _, Swift::Int by)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = sub_22B0DF0E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v2 + 22);
  v10 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(by, countAndFlagsBits, object, v9);

  (*(v7 + 8))(v9, v6);
  os_unfair_lock_unlock(v2 + 22);
}

uint64_t sub_22B076354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B07639C(uint64_t a1)
{
  sub_22B0DF0E0();
  sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
  v2 = sub_22B0DF2A0();

  return sub_22B0766FC(a1, v2);
}

uint64_t sub_22B076420(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B0DF0E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B0766FC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22B0DF0E0();
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
      sub_22B076420(&qword_2813EAD70, MEMORY[0x277CC9598]);
      v15 = sub_22B0DF2F0();
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

unint64_t sub_22B0768A8(uint64_t a1, uint64_t a2)
{
  sub_22B0DFD40();
  sub_22B0DF380();
  v4 = sub_22B0DFD80();

  return sub_22B076920(a1, a2, v4);
}

unint64_t sub_22B076920(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22B0DFC60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B0769D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B086778(v16, a4 & 1);
      result = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22B0847AC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_22B076C3C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B076C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B076CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B076DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22B076DB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22B076DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 124);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B076F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 124);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t _s14HomeKitMetrics15TapToRadarDraftV19RemoteDeviceClassesVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14HomeKitMetrics15TapToRadarDraftV19RemoteDeviceClassesVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22B077088()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5988, &qword_22B0E3E58);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B0770B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for FlatFileCounterStore.State(255, *a1, a1[1], a4);
  return sub_22B0DF170();
}

uint64_t sub_22B077108()
{
  v1 = sub_22B0DF0E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B0771EC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AB8, &qword_22B0E44D0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B077254@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22B0772AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics28ProcessLaunchSummaryLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22B077300()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5B88, "Pl");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B077330(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for DailyScheduler.State(255, *a1, a1[1], a4);
  return sub_22B0DF170();
}

uint64_t sub_22B077380()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0773B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_22B077408()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077440()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077490()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0774C8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077504()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B07753C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077574()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B0775AC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B0775E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for CoalescingRepeatingScheduler.State(255, *a1, a1[1], a4);
  return sub_22B0DF170();
}

uint64_t sub_22B077630()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077668()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B077748()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5EF0, &qword_22B0E5478);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B077870()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B0778AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22B077904(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics23ProcessExitInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_22B07795C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

void sub_22B077970(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR___HMMEphemeralContainerState_lock);
  os_unfair_lock_lock(v4 + 4);
  LOBYTE(v3) = *(v3 + OBJC_IVAR___HMMEphemeralContainerState__isActive);
  os_unfair_lock_unlock(v4 + 4);
  *a2 = v3;
}

uint64_t sub_22B0779CC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6140, &qword_22B0E57B0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B0779FC()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077A34()
{
  v1 = type metadata accessor for TapToRadarDraft(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  if (*(v0 + v3 + 72))
  {
  }

  v6 = *(v1 + 88);
  v7 = sub_22B0DF0E0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 124);
  v10 = sub_22B0DEF00();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22B077C74()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6338, &qword_22B0E5DD8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22B077CA4(_OWORD *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for BaseMetricsManagerGeneric.State(255, v3);
  return sub_22B0DF170();
}

uint64_t sub_22B077D00()
{
  MEMORY[0x23188A5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077D38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B077D70()
{
  v1 = sub_22B0DF990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B077E3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B077E88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_22B077ED8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B077F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  return sub_22B07D124(v3 + v4, a2);
}

BOOL sub_22B077F9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B0DFB70();

  return v2 != 0;
}

BOOL sub_22B078040(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22B078070@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22B07809C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22B078174@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22B0781A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_22B078208(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(v2 + 16) + 16) newBackgroundContext];
  v4 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v3 setMergePolicy_];

  sub_22B0DF710();
}

void sub_22B078304(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v206 = a7;
  v204 = a5;
  v169 = a3;
  v182 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v10 - 8);
  v180 = &v150 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v189 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v198 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v202 = &v150 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v196 = sub_22B0DF780();
  v203 = *(v196 - 8);
  v17 = MEMORY[0x28223BE20](v196);
  v195 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v194 = (&v150 - v19);
  v20 = sub_22B0DF0E0();
  v168 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v155 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v185 = &v150 - v24;
  MEMORY[0x28223BE20](v23);
  v156 = &v150 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v154 = a6;
  v153 = a4;
  v28 = swift_getAssociatedConformanceWitness();
  v197 = AssociatedTypeWitness;
  v207 = AssociatedTypeWitness;
  v208 = AssociatedConformanceWitness;
  v209 = v27;
  v210 = v28;
  type metadata accessor for CounterSet(255, &v207);
  v29 = swift_getTupleTypeMetadata2();
  v167 = sub_22B0DF780();
  v30 = *(v167 - 8);
  v31 = MEMORY[0x28223BE20](v167);
  v165 = &v150 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v166 = &v150 - v33;
  v34 = sub_22B0BFD58(a2);
  if (v34)
  {
    v35 = v169;
    v36 = *(v169 + 64);
    v152 = v169 + 64;
    v37 = 1 << *(v169 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    a2 = v38 & v36;
    v151 = (v37 + 63) >> 6;
    v162 = v29;
    v161 = v29 - 8;
    v39 = v168;
    v183 = (v168 + 16);
    v170 = (v168 + 32);
    v164 = (v30 + 32);
    v160 = v206 + 32;
    v159 = "";
    v157 = (v168 + 8);
    v193 = TupleTypeMetadata2 - 8;
    v201 = (v189 + 16);
    v205 = (v189 + 32);
    v192 = (v203 + 32);
    v187 = v206 + 136;
    v190 = (v189 + 8);
    v175 = v206 + 152;
    v179 = v206 + 64;
    v178 = v206 + 88;
    v177 = (v168 + 56);
    v176 = v206 + 112;
    v181 = v34;
    v163 = v34;

    v40 = 0;
    *(&v41 + 1) = 4;
    v158 = xmmword_22B0E2760;
    *&v41 = 138543874;
    v150 = v41;
    v42 = v198;
    v203 = TupleTypeMetadata2;
    v43 = v185;
    v186 = v20;
    if (!a2)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_16:
      v45 = v40;
LABEL_17:
      v173 = (a2 - 1) & a2;
      v50 = __clz(__rbit64(a2)) | (v45 << 6);
      v51 = v156;
      v52 = v186;
      (*(v39 + 16))(v156, *(v35 + 48) + *(v39 + 72) * v50, v186);
      v53 = (*(v35 + 56) + 16 * v50);
      v54 = v39;
      LODWORD(v200) = *v53;
      v55 = *(v53 + 1);
      v46 = v162;
      v56 = v165;
      v57 = &v165[*(v162 + 48)];
      (*(v54 + 32))(v165, v51, v52);
      *v57 = v200;
      *(v57 + 1) = v55;
      v47 = *(v46 - 8);
      (*(v47 + 56))(v56, 0, 1, v46);

      v172 = v45;
      v49 = v56;
      v43 = v185;
LABEL_18:
      v58 = v166;
      (*v164)(v166, v49, v167);
      v59 = (*(v47 + 48))(v58, 1, v46);
      v60 = v204;
      if (v59 == 1)
      {
LABEL_55:

        sub_22B096BB4(v182);
        v149 = v163;

        return;
      }

      v61 = &v58[*(v46 + 48)];
      LODWORD(v188) = *v61;
      v200 = *(v61 + 1);
      v62 = v58;
      v63 = v186;
      (*v170)(v43, v62, v186);
      v64 = (*(v206 + 32))(v60);
      sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
      v65 = swift_allocObject();
      *(v65 + 16) = v158;
      *(v65 + 56) = type metadata accessor for ManagedNamedGroup();
      *(v65 + 64) = sub_22B07B068(&qword_2813EA430, type metadata accessor for ManagedNamedGroup, MEMORY[0x277D85388]);
      v66 = v163;
      *(v65 + 32) = v163;
      v184 = v66;
      v67 = sub_22B0DF070();
      *(v65 + 96) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
      *(v65 + 104) = sub_22B07BAE4();
      *(v65 + 72) = v67;
      v68 = sub_22B0DF660();
      [v64 setPredicate_];

      v171 = v64;
      v69 = v174;
      v70 = sub_22B0DF720();
      if (!v69)
      {
        break;
      }

      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v71 = sub_22B0DF1B0();
      __swift_project_value_buffer(v71, qword_2813EBE90);
      v72 = v155;
      v43 = v185;
      (*v183)(v155, v185, v63);
      v73 = v184;
      v74 = v69;
      v75 = sub_22B0DF190();
      v76 = sub_22B0DF690();

      LODWORD(v200) = v76;
      v77 = os_log_type_enabled(v75, v76);
      a2 = v173;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        i = v79;
        v199 = swift_slowAlloc();
        v207 = v199;
        *v78 = v150;
        *(v78 + 4) = v73;
        *v79 = v181;
        *(v78 + 12) = 2080;
        sub_22B07B068(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v80 = v73;
        v188 = v75;
        v81 = sub_22B0DFC20();
        v83 = v82;
        v84 = *v157;
        (*v157)(v72, v186);
        v85 = sub_22B07B428(v81, v83, &v207);

        *(v78 + 14) = v85;
        *(v78 + 22) = 2112;
        v86 = v69;
        v87 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 24) = v87;
        v88 = i;
        *(i + 1) = v87;
        v89 = v188;
        _os_log_impl(&dword_22B074000, v188, v200, "Error getting counters for group %{public}@ on date %s: %@", v78, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
        swift_arrayDestroy();
        MEMORY[0x23188A520](v88, -1, -1);
        v90 = v199;
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x23188A520](v90, -1, -1);
        v91 = v78;
        v42 = v198;
        MEMORY[0x23188A520](v91, -1, -1);

        v43 = v185;
        v84(v185, v186);
      }

      else
      {

        v140 = *v157;
        (*v157)(v72, v63);
        v140(v43, v63);
        TupleTypeMetadata2 = v203;
      }

      v174 = 0;
      v40 = v172;
      v39 = v168;
      v35 = v169;
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    i = &v150;
    v207 = v70;
    v92 = MEMORY[0x28223BE20](v70);
    *(&v150 - 4) = v153;
    *(&v150 - 3) = v60;
    v93 = v206;
    *(&v150 - 2) = v154;
    *(&v150 - 1) = v93;
    v199 = v92;
    sub_22B0DF550();
    swift_getTupleTypeMetadata2();
    swift_getWitnessTable();
    v94 = sub_22B0DF420();
    v174 = 0;

    v207 = v94;
    sub_22B0DF550();
    swift_getWitnessTable();
    v199 = sub_22B0DF250();
    v95 = 0;
    v96 = v200;
    v97 = (v200 + 64);
    v98 = 1 << *(v200 + 32);
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    else
    {
      v99 = -1;
    }

    v100 = v99 & *(v200 + 64);
    v101 = (v98 + 63) >> 6;
    v102 = v197;
    for (i = (v200 + 64); ; v97 = i)
    {
      if (!v100)
      {
        if (v101 <= v95 + 1)
        {
          v115 = v95 + 1;
        }

        else
        {
          v115 = v101;
        }

        v116 = v115 - 1;
        while (1)
        {
          v114 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            break;
          }

          if (v114 >= v101)
          {
            v130 = *(TupleTypeMetadata2 - 8);
            v128 = v195;
            (*(v130 + 56))(v195, 1, 1, TupleTypeMetadata2);
            v100 = 0;
            v95 = v116;
            goto LABEL_41;
          }

          v100 = *(v97 + v114);
          ++v95;
          if (v100)
          {
            v95 = v114;
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_55;
      }

      v114 = v95;
LABEL_40:
      v117 = __clz(__rbit64(v100));
      v100 &= v100 - 1;
      v118 = v117 | (v114 << 6);
      v119 = *(v96 + 56);
      v120 = (*(v96 + 48) + 16 * v118);
      v122 = *v120;
      v121 = v120[1];
      v123 = v189;
      v124 = v202;
      (*(v189 + 16))(v202, v119 + *(v189 + 72) * v118, v102);
      v125 = v203;
      v126 = *(v203 + 48);
      v127 = v102;
      v128 = v195;
      *v195 = v122;
      *(v128 + 1) = v121;
      v129 = v124;
      TupleTypeMetadata2 = v125;
      (*(v123 + 32))(&v128[v126], v129, v127);
      v130 = *(TupleTypeMetadata2 - 8);
      (*(v130 + 56))(v128, 0, 1, TupleTypeMetadata2);

LABEL_41:
      v131 = v194;
      (*v192)(v194, v128, v196);
      if ((*(v130 + 48))(v131, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v133 = *v131;
      v132 = v131[1];
      v134 = v131 + *(TupleTypeMetadata2 + 48);
      v135 = v197;
      (*v205)(v42, v134, v197);
      v207 = v133;
      v208 = v132;

      v136 = v135;
      v137 = v204;
      sub_22B0DF280();

      v104 = v211;
      if (v211)
      {
        v102 = v136;

        if (v188)
        {
          v42 = v198;
          (*(v206 + 152))(v198, v204);
        }

        else
        {
          v138 = v202;
          v42 = v198;
          (*v201)(v202, v198, v102);
          v139 = v138;
          TupleTypeMetadata2 = v203;
          (*(v206 + 136))(v139, v204);
        }
      }

      else
      {
        v103 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v104 = [v103 initWithContext_];
        v105 = *(v206 + 64);
        v106 = v184;
        v105(v181, v137, v206);
        v107 = v206;
        (*(v206 + 88))(v133, v132, v137, v206);
        v108 = v180;
        v109 = v186;
        (*v183)(v180, v185, v186);
        (*v177)(v108, 0, 1, v109);
        (*(v107 + 112))(v108, v137, v107);
        v110 = v202;
        v111 = v198;
        (*v201)(v202, v198, v136);
        v112 = *(v107 + 136);
        v113 = v107;
        TupleTypeMetadata2 = v203;
        v112(v110, v137, v113);
        v102 = v136;
        v42 = v111;
      }

      v96 = v200;

      (*v190)(v42, v102);
    }

    v43 = v185;
    (*v157)(v185, v186);

    v40 = v172;
    v35 = v169;
    v39 = v168;
    a2 = v173;
    if (v173)
    {
      goto LABEL_16;
    }

LABEL_8:
    if (v151 <= v40 + 1)
    {
      v44 = v40 + 1;
    }

    else
    {
      v44 = v151;
    }

    while (1)
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v45 >= v151)
      {
        v172 = v44 - 1;
        v46 = v162;
        v47 = *(v162 - 8);
        v48 = v165;
        (*(v47 + 56))(v165, 1, 1, v162);
        v49 = v48;
        v173 = 0;
        goto LABEL_18;
      }

      a2 = *(v152 + 8 * v45);
      ++v40;
      if (a2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  if (qword_2813E9AA8 != -1)
  {
LABEL_57:
    swift_once();
  }

  v141 = sub_22B0DF1B0();
  __swift_project_value_buffer(v141, qword_2813EBE90);

  v142 = sub_22B0DF190();
  v143 = sub_22B0DF690();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v207 = v145;
    *v144 = 136446210;
    v146 = (*(*a2 + 96))();
    v148 = sub_22B07B428(v146, v147, &v207);

    *(v144 + 4) = v148;
    _os_log_impl(&dword_22B074000, v142, v143, "Failed to load group for %{public}s. Cannot save counters.", v144, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x23188A520](v145, -1, -1);
    MEMORY[0x23188A520](v144, -1, -1);
  }
}

uint64_t sub_22B079820(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + 16) newBackgroundContext];
  v5 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v4 setMergePolicy_];

  sub_22B0DF710();
  if (!v3)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void sub_22B079978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v8 = [*(v5 + 16) newBackgroundContext];
  v9 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v8 setMergePolicy_];

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22B0DF710();
}

uint64_t sub_22B079A60(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v5[1] = *(*v2 + 80);
  v5[2] = v3;
  v6 = a1;
  v7 = a2;
  return sub_22B079820(sub_22B07BBCC, v5) & 1;
}

void sub_22B079AE4(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, BOOL *a5@<X8>)
{
  v11 = sub_22B0DF0E0();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B0BFD58(a1);
  if (v13)
  {
    v14 = v13;
    v48 = v11;
    v50 = a5;
    v15 = (*(a4 + 32))(a3, a4);
    sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22B0E2760;
    *(v16 + 56) = type metadata accessor for ManagedNamedGroup();
    *(v16 + 64) = sub_22B07B068(&qword_2813EA430, type metadata accessor for ManagedNamedGroup, MEMORY[0x277D85388]);
    *(v16 + 32) = v14;
    v49 = v14;
    v47 = a2;
    v17 = sub_22B0DF070();
    *(v16 + 96) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
    *(v16 + 104) = sub_22B07BAE4();
    *(v16 + 72) = v17;
    v18 = v15;
    v19 = sub_22B0DF660();
    [v15 setPredicate_];

    v20 = sub_22B0DF720();
    if (v5)
    {
      v21 = v49;
      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v22 = sub_22B0DF1B0();
      __swift_project_value_buffer(v22, qword_2813EBE90);
      v23 = v51;
      v24 = v52;
      v25 = v48;
      (*(v51 + 16))(v52, v47, v48);
      v26 = v21;
      v27 = v5;
      v28 = sub_22B0DF190();
      v29 = sub_22B0DF690();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v23;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v29;
        v33 = v32;
        v49 = swift_slowAlloc();
        v53 = v49;
        *v31 = 138543874;
        *(v31 + 4) = v26;
        *v33 = v14;
        *(v31 + 12) = 2080;
        sub_22B07B068(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v47 = v18;
        v45 = v26;
        v34 = v28;
        v35 = v52;
        v36 = sub_22B0DFC20();
        v38 = v37;
        (*(v30 + 8))(v35, v25);
        v39 = sub_22B07B428(v36, v38, &v53);

        *(v31 + 14) = v39;
        *(v31 + 22) = 2112;
        v40 = v5;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 24) = v41;
        v33[1] = v41;
        _os_log_impl(&dword_22B074000, v34, v46, "Error getting counters for group %{public}@ on date %s: %@", v31, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
        swift_arrayDestroy();
        MEMORY[0x23188A520](v33, -1, -1);
        v42 = v49;
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x23188A520](v42, -1, -1);
        MEMORY[0x23188A520](v31, -1, -1);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
      }

      v43 = 0;
    }

    else
    {
      v53 = v20;
      sub_22B0DF550();
      swift_getWitnessTable();
      v44 = sub_22B0DF640();

      v43 = (v44 & 1) == 0;
    }

    a5 = v50;
  }

  else
  {
    v43 = 0;
  }

  *a5 = v43;
}

uint64_t sub_22B07A044(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v6[1] = *(*v2 + 80);
  v6[2] = v3;
  v7 = a1;
  v8 = a2;
  v9[0] = swift_getAssociatedTypeWitness();
  v9[1] = swift_getAssociatedConformanceWitness();
  v9[2] = swift_getAssociatedConformanceWitness();
  v9[3] = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for CounterSet(0, v9);
  sub_22B095B54(sub_22B07B148, v6, v4);
  return LOBYTE(v9[0]);
}

uint64_t sub_22B07A184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a6;
  v84 = a4;
  v15 = sub_22B0DF0E0();
  v82 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v81 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_22B0BFD58(a2);
  if (v17)
  {
    v18 = v17;
    v76 = v15;
    v80 = a8;
    v78 = a1;
    v19 = *(a7 + 32);
    v20 = a3;
    v21 = v17;
    v22 = v19(a5, a7);
    v77 = v8;
    v23 = v22;
    sub_22B07BA9C(0, &unk_2813E99A0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5F00, &unk_22B0E29F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22B0E2760;
    *(v24 + 56) = type metadata accessor for ManagedNamedGroup();
    *(v24 + 64) = sub_22B07B068(&qword_2813EA430, type metadata accessor for ManagedNamedGroup, MEMORY[0x277D85388]);
    *(v24 + 32) = v21;
    v25 = v21;
    v26 = v20;
    v27 = v23;
    v79 = v25;
    v28 = sub_22B0DF070();
    *(v24 + 96) = sub_22B07BA9C(0, &unk_2813E9978, 0x277CBEAA8);
    *(v24 + 104) = sub_22B07BAE4();
    *(v24 + 72) = v28;
    v29 = sub_22B0DF660();
    [v27 setPredicate_];

    v30 = v77;
    v31 = sub_22B0DF720();
    if (v30)
    {
      v32 = v79;
      v78 = v27;
      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v33 = sub_22B0DF1B0();
      __swift_project_value_buffer(v33, qword_2813EBE90);
      v35 = v81;
      v34 = v82;
      v36 = v76;
      (*(v82 + 16))(v81, v26, v76);
      v37 = v32;
      v38 = v30;
      v39 = v37;
      v40 = sub_22B0DF190();
      v41 = sub_22B0DF690();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v75 = v41;
        v43 = v36;
        v44 = v42;
        v45 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v87 = v79;
        *v44 = 138543874;
        *(v44 + 4) = v39;
        *v45 = v18;
        *(v44 + 12) = 2080;
        sub_22B07B068(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v46 = v39;
        v77 = v39;
        v47 = sub_22B0DFC20();
        v49 = v48;
        (*(v34 + 8))(v35, v43);
        v50 = sub_22B07B428(v47, v49, &v87);

        *(v44 + 14) = v50;
        *(v44 + 22) = 2112;
        v51 = v30;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 24) = v52;
        v45[1] = v52;
        _os_log_impl(&dword_22B074000, v40, v75, "Error getting counters for group %{public}@ on date %s: %@", v44, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
        swift_arrayDestroy();
        MEMORY[0x23188A520](v45, -1, -1);
        v53 = v79;
        __swift_destroy_boxed_opaque_existential_0(v79);
        MEMORY[0x23188A520](v53, -1, -1);
        MEMORY[0x23188A520](v44, -1, -1);

        v54 = v77;
        v55 = v78;
        v56 = v30;
      }

      else
      {

        (*(v34 + 8))(v35, v36);
        v55 = v78;
        v56 = v30;
        v54 = v39;
      }

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v73 = sub_22B0DF200();

      result = sub_22B0D20BC(v73, 0);
    }

    else
    {
      v86 = v31;
      v82 = v31;
      v78 = 0;
      v69 = v83;
      v68 = v84;
      swift_getAssociatedTypeWitness();
      v70 = sub_22B0DF200();
      v81 = v74;
      v85 = v70;
      MEMORY[0x28223BE20](v70);
      *&v74[-32] = v68;
      *&v74[-24] = a5;
      *&v74[-16] = v69;
      *&v74[-8] = a7;
      sub_22B0DF550();
      sub_22B0DF270();
      swift_getWitnessTable();
      sub_22B0DF430();

      v71 = v79;

      v72 = v87;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      result = sub_22B0D20BC(v72, 0);
    }

    a8 = v80;
  }

  else
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v57 = sub_22B0DF1B0();
    __swift_project_value_buffer(v57, qword_2813EBE90);

    v58 = sub_22B0DF190();
    v59 = sub_22B0DF690();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v87 = v61;
      *v60 = 136446210;
      v62 = (*(*a2 + 96))();
      v64 = sub_22B07B428(v62, v63, &v87);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_22B074000, v58, v59, "Failed to load group for %{public}s. Cannot load counters.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x23188A520](v61, -1, -1);
      MEMORY[0x23188A520](v60, -1, -1);
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v65 = sub_22B0DF200();
    result = sub_22B0D20BC(v65, 0);
  }

  *a8 = result & 1;
  *(a8 + 8) = v67;
  return result;
}

void sub_22B07AB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_22B0DF780();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v20 - v10;
  v12 = (*(a6 + 80))(a4, a6);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    (*(a6 + 128))(a4, a6);
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 0, 1, AssociatedTypeWitness);
    v20[0] = v14;
    v20[1] = v15;
    sub_22B0DF270();
    sub_22B0DF290();
  }

  else
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v16 = sub_22B0DF1B0();
    __swift_project_value_buffer(v16, qword_2813EBE90);
    v17 = sub_22B0DF190();
    v18 = sub_22B0DF690();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22B074000, v17, v18, "Name missing in Core Data counter", v19, 2u);
      MEMORY[0x23188A520](v19, -1, -1);
    }
  }
}

uint64_t sub_22B07AD4C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22B07AE5C(uint64_t a1, id *a2)
{
  result = sub_22B0DF310();
  *a2 = 0;
  return result;
}

uint64_t sub_22B07AED4(uint64_t a1, id *a2)
{
  v3 = sub_22B0DF320();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B07AF54@<X0>(uint64_t *a1@<X8>)
{
  sub_22B0DF330();
  v2 = sub_22B0DF300();

  *a1 = v2;
  return result;
}

uint64_t sub_22B07AF98@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22B0A8FFC();

  *a2 = v3;
  return result;
}

uint64_t sub_22B07B068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B07B16C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22B0DF300();

  *a2 = v3;
  return result;
}

uint64_t sub_22B07B1B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B0DF330();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B07B1E0(uint64_t a1)
{
  v2 = sub_22B07B068(&qword_27D8B56A0, type metadata accessor for URLResourceKey, &unk_22B0E2B78);
  v3 = sub_22B07B068(&qword_27D8B56A8, type metadata accessor for URLResourceKey, &unk_22B0E2B18);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B07B29C()
{
  v0 = sub_22B0DF330();
  v1 = MEMORY[0x2318890B0](v0);

  return v1;
}

uint64_t sub_22B07B2D8(uint64_t a1)
{
  sub_22B0DF330();
  sub_22B0DF380();
}

uint64_t sub_22B07B32C(uint64_t a1)
{
  sub_22B0DF330();
  sub_22B0DFD40();
  sub_22B0DF380();
  v1 = sub_22B0DFD80();

  return v1;
}

uint64_t sub_22B07B3A0(void *a1, uint64_t *a2)
{
  v2 = sub_22B0DF330();
  v4 = v3;
  if (v2 == sub_22B0DF330() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22B0DFC60();
  }

  return v7 & 1;
}

unint64_t sub_22B07B428(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B07B4F4(v11, 0, 0, 1, a1, a2);
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
    sub_22B07BB6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22B07B4F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B07B600(a5, a6);
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
    result = sub_22B0DF930();
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

void *sub_22B07B600(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B07B64C(a1, a2);
  sub_22B07B77C(&unk_283EEA8E8);
  return v3;
}

void *sub_22B07B64C(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B07B868(v5, 0);
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

  result = sub_22B0DF930();
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
        v10 = sub_22B0DF3D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B07B868(v10, 0);
        result = sub_22B0DF8D0();
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

uint64_t sub_22B07B77C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B07B8DC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22B07B868(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5668, &unk_22B0E2A00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B07B8DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5668, &unk_22B0E2A00);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_22B07BA9C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_22B07BAE4()
{
  result = qword_2813E9970;
  if (!qword_2813E9970)
  {
    sub_22B07BA9C(255, &unk_2813E9978, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E9970);
  }

  return result;
}

uint64_t sub_22B07BB6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_22B07BBF0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5, *(v1 + 32));
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

id sub_22B07BC90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v6 = *a1;
  result = (*(v5 + 80))(v4);
  v9 = v8;
  if (v8)
  {
    v10 = result;
    result = v6;
  }

  else
  {
    v10 = 0;
    v6 = 0;
  }

  *a2 = v10;
  a2[1] = v9;
  a2[2] = v6;
  return result;
}

void *sub_22B07BD28@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5, *(v1 + 32));
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22B07BD84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B07BDA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_22B07BDF4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_22B07BF40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5748, &unk_22B0E2FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2C10;
  *(inited + 32) = 0;
  v2 = *(v0 + 24);
  *(inited + 40) = *(v0 + 16);
  *(inited + 48) = v2;
  *(inited + 56) = 1;

  *(inited + 64) = sub_22B0DF110();
  *(inited + 72) = v3;
  *(inited + 80) = 2;
  *(inited + 88) = sub_22B0DF110();
  *(inited + 96) = v4;
  v5 = sub_22B0B8BF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5750, &qword_22B0E2C60);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_22B07C028()
{
  sub_22B0DF8E0();
  MEMORY[0x231889070](0xD00000000000001BLL, 0x800000022B0E66A0);
  MEMORY[0x231889070](*(v0 + 16), *(v0 + 24));
  MEMORY[0x231889070](0x5555656D6F68202CLL, 0xEB000000003D4449);
  sub_22B0DF140();
  sub_22B07D188(&qword_27D8B5740, MEMORY[0x277CC9628]);
  v1 = sub_22B0DFC20();
  MEMORY[0x231889070](v1);

  MEMORY[0x231889070](0xD000000000000010, 0x800000022B0E66C0);
  v2 = sub_22B0DFC20();
  MEMORY[0x231889070](v2);

  MEMORY[0x231889070](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_22B07C19C()
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07C220(uint64_t a1)
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07C27C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22B0DFB70();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_22B07C31C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22B0DFB70();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B07C38C(uint64_t a1)
{
  v2 = sub_22B07D0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B07C3C8(uint64_t a1)
{
  v2 = sub_22B07D0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_22B07C450(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5738, &unk_22B0E2C50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07D0D0();
  sub_22B0DFDB0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for AccessoryGroupSpecifier(0);
    swift_deallocPartialClassInstance();
    return v5;
  }

  v10 = v7;
  sub_22B0DFB80();
  v12 = v5;
  sub_22B0DF100();

  v13 = sub_22B0DF140();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result != 1)
  {
    (*(v14 + 32))(v16[6] + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v12, v13);
    sub_22B07D124(a1, v16);
    v5 = sub_22B07EAB8(v16);
    (*(v10 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B07C720(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5728, ">}");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  result = sub_22B07ED88(a1);
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22B07D0D0();
    sub_22B0DFDC0();
    sub_22B0DF110();
    sub_22B0DFBD0();
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_22B07C87C(uint64_t a1)
{
  sub_22B0DF380();
  sub_22B0DF380();
  sub_22B0DF140();
  sub_22B07D188(&qword_27D8B5720, MEMORY[0x277CC9600]);
  return sub_22B0DF2B0();
}

uint64_t sub_22B07C90C(void *a1)
{
  v3 = sub_22B0DF140();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5710, ":}");
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  if ((sub_22B07F02C(a1) & 1) == 0)
  {
    v27 = 0;
    return v27 & 1;
  }

  v32 = v6;
  v33 = v13;
  v35 = v9;
  v19 = *(v4 + 16);
  v19(v18, v1 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v3);
  v34 = v4;
  v20 = *(v4 + 56);
  v21 = 1;
  v20(v18, 0, 1, v3);
  type metadata accessor for AccessoryGroupSpecifier(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v19(v16, v22 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v3);
    v21 = 0;
  }

  v20(v16, v21, 1, v3);
  v23 = *(v7 + 48);
  v24 = v35;
  sub_22B07CFBC(v18, v35);
  sub_22B07CFBC(v16, v24 + v23);
  v25 = v34;
  v26 = *(v34 + 48);
  if (v26(v24, 1, v3) != 1)
  {
    v28 = v33;
    sub_22B07CFBC(v24, v33);
    if (v26(v24 + v23, 1, v3) != 1)
    {
      v29 = v32;
      (*(v25 + 32))(v32, v24 + v23, v3);
      sub_22B07D188(&qword_2813EAD50, MEMORY[0x277CC9610]);
      v27 = sub_22B0DF2F0();
      v30 = *(v25 + 8);
      v30(v29, v3);
      sub_22B07D02C(v16, &qword_27D8B5718, ">}");
      sub_22B07D02C(v18, &qword_27D8B5718, ">}");
      v30(v28, v3);
      sub_22B07D02C(v24, &qword_27D8B5718, ">}");
      return v27 & 1;
    }

    sub_22B07D02C(v16, &qword_27D8B5718, ">}");
    sub_22B07D02C(v18, &qword_27D8B5718, ">}");
    (*(v25 + 8))(v28, v3);
    goto LABEL_10;
  }

  sub_22B07D02C(v16, &qword_27D8B5718, ">}");
  sub_22B07D02C(v18, &qword_27D8B5718, ">}");
  if (v26(v24 + v23, 1, v3) != 1)
  {
LABEL_10:
    sub_22B07D02C(v24, &qword_27D8B5710, ":}");
    v27 = 0;
    return v27 & 1;
  }

  sub_22B07D02C(v24, &qword_27D8B5718, ">}");
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_22B07CD98()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID;
  v2 = sub_22B0DF140();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_22B07CE00()
{

  v1 = OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID;
  v2 = sub_22B0DF140();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AccessoryGroupSpecifier(uint64_t a1)
{
  result = qword_2813EA0D0;
  if (!qword_2813EA0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B07CF2C(uint64_t a1)
{
  result = sub_22B0DF140();
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

uint64_t sub_22B07CFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B07D02C(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22B07D0D0()
{
  result = qword_27D8B5730;
  if (!qword_27D8B5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5730);
  }

  return result;
}

uint64_t sub_22B07D124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B07D188(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22B0DF140();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryGroupSpecifier.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccessoryGroupSpecifier.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_22B07D2BC()
{
  result = qword_27D8B5758;
  if (!qword_27D8B5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5758);
  }

  return result;
}

unint64_t sub_22B07D314()
{
  result = qword_27D8B5760;
  if (!qword_27D8B5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5760);
  }

  return result;
}

unint64_t sub_22B07D36C()
{
  result = qword_27D8B5768;
  if (!qword_27D8B5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5768);
  }

  return result;
}

void RunDatePreferencesStorage.lastRunDate.getter(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

void sub_22B07D444(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v3 + *(v4 + 28), a2);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_22B07D4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_22B07D9F0(a1, &v6 - v3);
  return RunDatePreferencesStorage.lastRunDate.setter(v4);
}

uint64_t RunDatePreferencesStorage.lastRunDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = (v2 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D980(a1, v7 + *(v8 + 28));
  v9 = [objc_opt_self() standardUserDefaults];
  sub_22B07D9F0(a1, v6);
  v10 = sub_22B0DF0E0();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v6, 1, v10) != 1)
  {
    v12 = sub_22B0DF070();
    (*(v11 + 8))(v6, v10);
  }

  v13 = sub_22B0DF300();
  [v9 setObject:v12 forKey:v13];

  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v7);
  return sub_22B07D02C(a1, &unk_27D8B5670, &unk_22B0E32C0);
}

uint64_t sub_22B07D728@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  sub_22B07D9F0(a1, &v18 - v8);
  v10 = sub_22B0DF0E0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  sub_22B07D02C(v9, &unk_27D8B5670, &unk_22B0E32C0);
  if (v12 == 1)
  {
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = sub_22B0DF300();
    v15 = [v13 objectForKey_];

    if (v15)
    {
      sub_22B0DF7A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      v16 = swift_dynamicCast();
      (*(v11 + 56))(v7, v16 ^ 1u, 1, v10);
    }

    else
    {
      sub_22B07D02C(v22, &qword_27D8B5770, &unk_22B0E2E40);
      (*(v11 + 56))(v7, 1, 1, v10);
    }

    sub_22B07E0F8(v7, a1);
  }

  return sub_22B07D9F0(a1, v19);
}

uint64_t sub_22B07D980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B07D9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*RunDatePreferencesStorage.lastRunDate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v6 + *(v7 + 28), v5);
  os_unfair_lock_unlock(v6);
  return sub_22B07DB6C;
}

void sub_22B07DB6C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_22B07D9F0(v3, v2);
    RunDatePreferencesStorage.lastRunDate.setter(v2);
    sub_22B07D02C(v3, &unk_27D8B5670, &unk_22B0E32C0);
  }

  else
  {
    RunDatePreferencesStorage.lastRunDate.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t RunDatePreferencesStorage.deinit()
{

  v1 = v0 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07DC40(v1 + *(v2 + 28));
  return v0;
}

uint64_t sub_22B07DC40(uint64_t a1)
{
  v2 = type metadata accessor for RunDatePreferencesStorage.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RunDatePreferencesStorage.__deallocating_deinit()
{

  v1 = v0 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07DC40(v1 + *(v2 + 28));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_22B07DD4C(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC14HomeKitMetrics25RunDatePreferencesStorage_mutex));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5C40, &unk_22B0E2DC0);
  sub_22B07D728(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t (*sub_22B07DDD4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = RunDatePreferencesStorage.lastRunDate.modify(v2);
  return sub_22B07DE44;
}

void sub_22B07DE44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_22B07DEB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B07DEEC(uint64_t a1)
{
  sub_22B07E094(319, qword_2813E99C8, type metadata accessor for RunDatePreferencesStorage.State, MEMORY[0x277D85458]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22B07DFF8(uint64_t a1)
{
  sub_22B07E094(319, &unk_2813EAD58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22B07E094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22B07E0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id HMMCounterDistribution.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMMCounterDistribution.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMMCounterDistribution();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ProcessLaunchLogEvent.__allocating_init(isFirstLaunchAfterBoot:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC14HomeKitMetrics21ProcessLaunchLogEvent_isFirstLaunchAfterBoot] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProcessLaunchLogEvent.init(isFirstLaunchAfterBoot:)(char a1)
{
  v1[OBJC_IVAR____TtC14HomeKitMetrics21ProcessLaunchLogEvent_isFirstLaunchAfterBoot] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProcessLaunchLogEvent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ProcessLaunchLogEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessLaunchLogEvent.__allocating_init(startTime:)(double a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStartTime_];
}

id ProcessLaunchLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessLaunchLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for FlatFileCounterSetType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FlatFileCounterSetType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B07E96C()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1 + 1);
  return sub_22B0DFD80();
}

uint64_t sub_22B07E9E4(uint64_t a1)
{
  v2 = *v1;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v2 + 1);
  return sub_22B0DFD80();
}

void *sub_22B07EA28@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_22B07EA64()
{
  result = qword_2813EA0E0[0];
  if (!qword_2813EA0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813EA0E0);
  }

  return result;
}

char *sub_22B07EAB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5798, &qword_22B0E2FA8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB90();
  sub_22B0DFDB0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for HomeGroupSpecifier(0);
    swift_deallocPartialClassInstance();
    return v5;
  }

  v10 = v7;
  sub_22B0DFB80();
  v12 = v5;
  sub_22B0DF100();

  v13 = sub_22B0DF140();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result != 1)
  {
    (*(v14 + 32))(v16[6] + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v12, v13);
    sub_22B07D124(a1, v16);
    v5 = sub_22B094AF0(v16);
    (*(v10 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B07ED88(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5788, &qword_22B0E2F98);
  v12 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v13 = &v12 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5790, &qword_22B0E2FA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB3C();
  sub_22B0DFDC0();
  sub_22B0DFBD0();
  result = (*(v5 + 8))(v7, v4);
  if (!v1)
  {
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22B07FB90();
    v10 = v13;
    sub_22B0DFDC0();
    sub_22B0DF110();
    v11 = v14;
    sub_22B0DFBD0();
    (*(v9 + 8))(v10, v11);
  }

  return result;
}

uint64_t sub_22B07EFD8(uint64_t a1)
{
  sub_22B0DF380();

  return sub_22B0DF380();
}

uint64_t sub_22B07F02C(void *a1)
{
  v3 = sub_22B0DF140();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5710, ":}");
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5718, ">}");
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  if ((*(v1 + 2) != a1[2] || *(v1 + 3) != a1[3]) && (sub_22B0DFC60() & 1) == 0 || *v1 != *a1)
  {
    v27 = 0;
    return v27 & 1;
  }

  v32 = v6;
  v33 = v13;
  v35 = v9;
  v19 = *(v4 + 16);
  v19(v18, &v1[OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID], v3);
  v34 = v4;
  v20 = *(v4 + 56);
  v21 = 1;
  v20(v18, 0, 1, v3);
  type metadata accessor for HomeGroupSpecifier(0);
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v19(v16, (v22 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID), v3);
    v21 = 0;
  }

  v20(v16, v21, 1, v3);
  v23 = *(v7 + 48);
  v24 = v35;
  sub_22B07CFBC(v18, v35);
  sub_22B07CFBC(v16, v24 + v23);
  v25 = v34;
  v26 = *(v34 + 48);
  if (v26(v24, 1, v3) != 1)
  {
    v28 = v33;
    sub_22B07CFBC(v24, v33);
    if (v26(v24 + v23, 1, v3) != 1)
    {
      v29 = v32;
      (*(v25 + 32))(v32, v24 + v23, v3);
      sub_22B07D188(&qword_2813EAD50, MEMORY[0x277CC9610]);
      v27 = sub_22B0DF2F0();
      v30 = *(v25 + 8);
      v30(v29, v3);
      sub_22B07D02C(v16, &qword_27D8B5718, ">}");
      sub_22B07D02C(v18, &qword_27D8B5718, ">}");
      v30(v28, v3);
      sub_22B07D02C(v24, &qword_27D8B5718, ">}");
      return v27 & 1;
    }

    sub_22B07D02C(v16, &qword_27D8B5718, ">}");
    sub_22B07D02C(v18, &qword_27D8B5718, ">}");
    (*(v25 + 8))(v28, v3);
    goto LABEL_13;
  }

  sub_22B07D02C(v16, &qword_27D8B5718, ">}");
  sub_22B07D02C(v18, &qword_27D8B5718, ">}");
  if (v26(v24 + v23, 1, v3) != 1)
  {
LABEL_13:
    sub_22B07D02C(v24, &qword_27D8B5710, ":}");
    v27 = 0;
    return v27 & 1;
  }

  sub_22B07D02C(v24, &qword_27D8B5718, ">}");
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_22B07F524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5748, &unk_22B0E2FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2760;
  *(inited + 32) = 0;
  v2 = *(v0 + 24);
  *(inited + 40) = *(v0 + 16);
  *(inited + 48) = v2;
  *(inited + 56) = 1;

  *(inited + 64) = sub_22B0DF110();
  *(inited + 72) = v3;
  v4 = sub_22B0B8BF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5750, &qword_22B0E2C60);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_22B07F5E8()
{
  sub_22B0DF8E0();

  MEMORY[0x231889070](*(v0 + 16), *(v0 + 24));
  MEMORY[0x231889070](0x5555656D6F68202CLL, 0xEB000000003D4449);
  sub_22B0DF140();
  sub_22B07D188(&qword_27D8B5740, MEMORY[0x277CC9628]);
  v1 = sub_22B0DFC20();
  MEMORY[0x231889070](v1);

  MEMORY[0x231889070](93, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_22B07F6EC()
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07F758(uint64_t a1)
{
  sub_22B0DFD40();
  sub_22B0DF380();
  return sub_22B0DFD80();
}

uint64_t sub_22B07F7A8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22B0DFB70();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_22B07F830@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22B0DFB70();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_22B07F888(uint64_t a1)
{
  v2 = sub_22B07FB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B07F8C4(uint64_t a1)
{
  v2 = sub_22B07FB90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B07F94C()
{
  v1 = OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID;
  v2 = sub_22B0DF140();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_22B07F9B4()
{

  v1 = OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID;
  v2 = sub_22B0DF140();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for HomeGroupSpecifier(uint64_t a1)
{
  result = qword_2813EAD28;
  if (!qword_2813EAD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B07FAAC(uint64_t a1)
{
  result = sub_22B0DF140();
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

unint64_t sub_22B07FB3C()
{
  result = qword_2813EA2E8[0];
  if (!qword_2813EA2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813EA2E8);
  }

  return result;
}

unint64_t sub_22B07FB90()
{
  result = qword_2813EAD48;
  if (!qword_2813EAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD48);
  }

  return result;
}

unint64_t sub_22B07FBF8()
{
  result = qword_27D8B57A0;
  if (!qword_27D8B57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57A0);
  }

  return result;
}

unint64_t sub_22B07FC50()
{
  result = qword_2813EAD38;
  if (!qword_2813EAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD38);
  }

  return result;
}

unint64_t sub_22B07FCA8()
{
  result = qword_2813EAD40;
  if (!qword_2813EAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EAD40);
  }

  return result;
}

uint64_t sub_22B07FD14()
{
  sub_22B0DFD40();
  sub_22B0DFD60();
  return sub_22B0DFD80();
}

uint64_t sub_22B07FD88(uint64_t a1)
{
  sub_22B0DFD40();
  sub_22B0DFD60();
  return sub_22B0DFD80();
}

_BYTE *sub_22B07FDCC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
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

uint64_t getEnumTagSinglePayload for DataEncodingType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataEncodingType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B07FF58()
{
  result = qword_27D8B57A8;
  if (!qword_27D8B57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57A8);
  }

  return result;
}

uint64_t sub_22B07FFAC(uint64_t a1, unint64_t a2, char a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_8:
    LODWORD(v6) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_18;
    }

    v6 = v6;
  }

LABEL_11:
  v10 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v10 > 0xFFFFFFFFLL)
  {
    sub_22B0804B0();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 0;
    return swift_willThrow();
  }

  if (v10 < 0)
  {
    goto LABEL_17;
  }

  v26[0] = bswap32(v10);
  v15 = sub_22B0A33AC(v26, 4uLL);
  v17 = v16;
  swift_beginAccess();
  v18 = v3;
  sub_22B0DEF60();
  swift_endAccess();
  sub_22B080408(v15, v17);
  LOBYTE(v26[0]) = a3 & 1;
  v19 = sub_22B0A33AC(v26, 1uLL);
  v21 = v20;
  swift_beginAccess();
  sub_22B0DEF60();
  swift_endAccess();
  sub_22B080408(v19, v21);
  swift_beginAccess();
  v25[3] = MEMORY[0x277CC9318];
  v25[4] = MEMORY[0x277CC9300];
  v25[0] = a1;
  v25[1] = a2;
  v22 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277CC9318]);
  v23 = *v22;
  v24 = v22[1];
  sub_22B08045C(a1, a2);
  sub_22B08023C(v23, v24, v18 + 16);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return swift_endAccess();
}

uint64_t sub_22B0801E0()
{
  sub_22B080408(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22B08023C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_22B0DEF30();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22B080374(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22B080374(v4, v5);
  }

  return sub_22B0DEF30();
}

uint64_t sub_22B080374(uint64_t a1, uint64_t a2)
{
  result = sub_22B0DEE30();
  if (!result || (result = sub_22B0DEE50(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22B0DEE40();
      return sub_22B0DEF30();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B080408(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22B08045C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_22B0804B0()
{
  result = qword_27D8B57B0;
  if (!qword_27D8B57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57B0);
  }

  return result;
}

id sub_22B080590()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22B0805F8@<X0>(void *a1@<X8>)
{
  result = [v1 duration];
  *a1 = v4;
  return result;
}

id sub_22B080640(double *a1)
{
  v2 = *a1;
  [v1 duration];
  v4 = v2 + v3;

  return [v1 setDuration_];
}

uint64_t sub_22B080690()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22B0DF330();
    v5 = v4;

    type metadata accessor for NamedGroupSpecifier();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v5;
  }

  else
  {
    result = sub_22B0DFB00();
    __break(1u);
  }

  return result;
}

id sub_22B0807A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ManagedNamedGroup();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_22B08087C@<X0>(void *a1@<X8>)
{
  result = [v1 value];
  *a1 = result;
  return result;
}

char *sub_22B0808C4(uint64_t *a1)
{
  v2 = *a1;
  result = [v1 value];
  if (__OFADD__(result, v2))
  {
    __break(1u);
  }

  else
  {

    return [v1 setValue_];
  }

  return result;
}

uint64_t sub_22B08091C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22B087990(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_22B08A77C(a1);
    sub_22B0878DC(a2, a3, v10);

    return sub_22B08A77C(v10);
  }

  return result;
}

uint64_t sub_22B080A44(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v10 = v7;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v10;
    sub_22B087B48(a1 & 1, a2, a3, a4, isUniquelyReferenced_nonNull_native, a5, a6);

    *v10 = v23;
  }

  else
  {
    v18 = sub_22B0768A8(a3, a4);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v10;
      v24 = *v10;
      if (!v21)
      {
        sub_22B083E08(a5, a6);
        v22 = v24;
      }

      result = a7(v18, v22);
      *v10 = v22;
    }
  }

  return result;
}

uint64_t sub_22B080B9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_22B0768A8(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B084928();
        v13 = v16;
      }

      result = sub_22B09DDE4(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_22B088234(a3, a4, v15, *&a1);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_22B080CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    sub_22B088530(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v6 = v21;
  }

  else
  {
    v16 = sub_22B0768A8(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v9;
      v22 = *v9;
      if (!v19)
      {
        sub_22B084EC0(a4, a5);
        v20 = v22;
      }

      result = a6(v16, v20);
      *v9 = v20;
    }
  }

  return result;
}

HomeKitMetrics::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeKitMetrics::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeKitMetrics::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22B080E24()
{
  v1 = *v0;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1);
  return sub_22B0DFD80();
}

uint64_t sub_22B080E6C(uint64_t a1)
{
  v2 = *v1;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v2);
  return sub_22B0DFD80();
}

uint64_t TapToRadarDraft.category.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TapToRadarDraft.category.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TapToRadarDraft.displayReason.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22B081000(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_22B089738(75, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x231889020](v5, v7, v9, v11);
  v14 = v13;

  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  return result;
}

uint64_t TapToRadarDraft.displayReason.setter(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B089738(75, a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x231889020](v3, v5, v7, v9);
  v12 = v11;

  *(v2 + 16) = v10;
  *(v2 + 24) = v12;
  return result;
}

uint64_t (*TapToRadarDraft.displayReason.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_22B08116C;
}

uint64_t sub_22B08116C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    v5 = sub_22B089738(75, v3, v2);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x231889020](v5, v7, v9, v11);
    v14 = v13;

    *(v4 + 16) = v12;
    *(v4 + 24) = v14;
  }

  else
  {
    v16 = sub_22B089738(75, v3, v2);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x231889020](v16, v18, v20, v22);
    v25 = v24;

    *(v4 + 16) = v23;
    *(v4 + 24) = v25;
  }

  return result;
}

uint64_t TapToRadarDraft.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22B0812C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_22B089738(240, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x231889020](v5, v7, v9, v11);
  v14 = v13;

  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  return result;
}

uint64_t TapToRadarDraft.title.setter(uint64_t a1, unint64_t a2)
{
  v3 = sub_22B089738(240, a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x231889020](v3, v5, v7, v9);
  v12 = v11;

  *(v2 + 32) = v10;
  *(v2 + 40) = v12;
  return result;
}

uint64_t (*TapToRadarDraft.title.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_22B081430;
}

uint64_t sub_22B081430(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    v5 = sub_22B089738(240, v3, v2);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x231889020](v5, v7, v9, v11);
    v14 = v13;

    *(v4 + 32) = v12;
    *(v4 + 40) = v14;
  }

  else
  {
    v16 = sub_22B089738(240, v3, v2);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x231889020](v16, v18, v20, v22);
    v25 = v24;

    *(v4 + 32) = v23;
    *(v4 + 40) = v25;
  }

  return result;
}

uint64_t TapToRadarDraft.problemDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TapToRadarDraft.problemDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void TapToRadarDraft.component.getter(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_22B0897D4(v2, v3, v4, v5);
}

__n128 TapToRadarDraft.component.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_22B089818(v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v5;
  v1[12] = v3;
  return result;
}

uint64_t TapToRadarDraft.bundleID.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t TapToRadarDraft.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t TapToRadarDraft.omitPrefixFromTitle.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t TapToRadarDraft.deleteOnAttach.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t TapToRadarDraft.shouldCaptureScreenshot.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t TapToRadarDraft.screenshotCaptureDelay.setter(double a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t TapToRadarDraft.shouldCaptureDumpDisplay.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t TapToRadarDraft.shouldCapturePerformanceTrace.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t TapToRadarDraft.collaborationContactHandles.getter()
{
  type metadata accessor for TapToRadarDraft(0);
}

uint64_t TapToRadarDraft.collaborationGroupChatID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft(0) + 120));

  return v1;
}

uint64_t TapToRadarDraft.collaborationGroupChatID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TapToRadarDraft(0) + 120));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TapToRadarDraft.callbackIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft(0) + 128));

  return v1;
}

uint64_t TapToRadarDraft.callbackIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TapToRadarDraft(0) + 128));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TapToRadarDraft.shouldCaptureForegroundApp.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t TapToRadarDraft.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 107) = 0u;
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F98];
  *(a1 + 128) = MEMORY[0x277D84F90];
  *(a1 + 136) = v2;
  *(a1 + 144) = v3;
  *(a1 + 152) = v2;
  *(a1 + 160) = v2;
  *(a1 + 168) = v2;
  *(a1 + 176) = 0;
  v4 = type metadata accessor for TapToRadarDraft(0);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v5 = v4[22];
  v6 = sub_22B0DF0E0();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *(a1 + v4[23]) = 0;
  *(a1 + v4[24]) = 0;
  *(a1 + v4[25]) = 0;
  *(a1 + v4[26]) = 0;
  *(a1 + v4[27]) = 0;
  *(a1 + v4[28]) = 0;
  *(a1 + v4[29]) = v2;
  v7 = (a1 + v4[30]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v4[31];
  v9 = sub_22B0DEF00();
  result = (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v11 = (a1 + v4[32]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v4[33]) = 0;
  return result;
}

uint64_t TapToRadarDraft.addAttachment(_:)(uint64_t a1)
{
  v3 = sub_22B0DEF00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = *(v1 + 128);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_22B082E98(0, v7[2] + 1, 1, v7, &unk_27D8B5960, &qword_22B0E3A68, MEMORY[0x277CC9260]);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_22B082E98((v8 > 1), v9 + 1, 1, v7, &unk_27D8B5960, &qword_22B0E3A68, MEMORY[0x277CC9260]);
  }

  v7[2] = v9 + 1;
  result = (*(v4 + 32))(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v6, v3);
  *(v1 + 128) = v7;
  return result;
}

uint64_t sub_22B08230C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_22B082E98(isUniquelyReferenced_nonNull_native, v12, 1, v3, &unk_27D8B5960, &qword_22B0E3A68, MEMORY[0x277CC9260]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_22B0DEF00();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B08245C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_22B082D64(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B082550(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22B0DF830();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_22B0DF830();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22B088A5C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22B088AFC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TapToRadarDraft.addDiagnosticExtensionID(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 136);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B082D64(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22B082D64((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = countAndFlagsBits;
  *(v7 + 5) = object;
  *(v1 + 136) = v4;
}

uint64_t TapToRadarDraft.setDiagnosticExtensionParameter(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B089978(a1, v6);

  return sub_22B08091C(v6, a2, a3);
}

Swift::Void __swiftcall TapToRadarDraft.setDiagnosticExtensionParameters(_:)(Swift::OpaquePointer a1)
{
  v2 = a1._rawValue + 64;
  v3 = 1 << *(a1._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1._rawValue + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_21;
    }

    v5 = *&v2[8 * v9];
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        v11 = (*(a1._rawValue + 6) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        sub_22B089978(*(a1._rawValue + 7) + 40 * v10, &v37);
        v34 = v37;
        v35 = v38;
        v14 = v39;

        if (!v12)
        {
          break;
        }

        v37 = v34;
        v38 = v35;
        v39 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v1;
        v17 = *(v1 + 144);
        v36 = v17;
        v18 = sub_22B0768A8(v13, v12);
        v20 = v17[2];
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_23;
        }

        v24 = v19;
        if (v17[3] >= v23)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v32 = v18;
            sub_22B083C18();
            v18 = v32;
          }
        }

        else
        {
          sub_22B08518C(v23, isUniquelyReferenced_nonNull_native);
          v18 = sub_22B0768A8(v13, v12);
          if ((v24 & 1) != (v25 & 1))
          {
            goto LABEL_25;
          }
        }

        v5 &= v5 - 1;
        if (v24)
        {
          v8 = v18;

          sub_22B0899D4(&v37, v36[7] + 40 * v8);
          v1 = v16;
          *(v16 + 144) = v36;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v17[(v18 >> 6) + 8] |= 1 << v18;
          v26 = (v17[6] + 16 * v18);
          *v26 = v13;
          v26[1] = v12;
          v27 = v17[7] + 40 * v18;
          v28 = v39;
          v29 = v38;
          *v27 = v37;
          *(v27 + 16) = v29;
          *(v27 + 32) = v28;
          v30 = v17[2];
          v22 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v22)
          {
            goto LABEL_24;
          }

          v17[2] = v31;
          v1 = v16;
          *(v16 + 144) = v36;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v7;
      }

LABEL_21:

      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_22B0DFCA0();
  __break(1u);
}

Swift::Void __swiftcall TapToRadarDraft.addKeyword(_:)(NSNumber a1)
{
  v2 = a1.super.super.isa;
  MEMORY[0x231889140]();
  if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B0DF4D0();
  }

  sub_22B0DF500();
}

Swift::Void __swiftcall TapToRadarDraft.addDeviceID(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 160);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B082D64(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22B082D64((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = countAndFlagsBits;
  *(v7 + 5) = object;
  *(v1 + 160) = v4;
}

Swift::Void __swiftcall TapToRadarDraft.addDeviceModel(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 168);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B082D64(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22B082D64((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = countAndFlagsBits;
  *(v7 + 5) = object;
  *(v1 + 168) = v4;
}

Swift::Void __swiftcall TapToRadarDraft.addRemoteDeviceClasses(_:)(HomeKitMetrics::TapToRadarDraft::RemoteDeviceClasses a1)
{
  v2 = *(v1 + 184);
  if ((*a1.rawValue & ~v2) != 0)
  {
    *(v1 + 184) = v2 | *a1.rawValue;
  }
}

Swift::Void __swiftcall TapToRadarDraft.addRemoteDeviceSelections(_:)(HomeKitMetrics::TapToRadarDraft::RemoteDeviceSelections a1)
{
  v2 = *(v1 + 192);
  if ((*a1.rawValue & ~v2) != 0)
  {
    *(v1 + 192) = v2 | *a1.rawValue;
  }
}

Swift::Void __swiftcall TapToRadarDraft.addCollaborationContactHandle(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(type metadata accessor for TapToRadarDraft(0) + 116);
  v5 = *(v1 + v4);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22B082D64(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22B082D64((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = countAndFlagsBits;
  *(v8 + 5) = object;
  *(v1 + v4) = v5;
}

Swift::Void __swiftcall TapToRadarDraft.addCollaborationContactHandles(_:)(Swift::OpaquePointer a1)
{
  type metadata accessor for TapToRadarDraft(0);

  sub_22B08245C(v1);
}

char *sub_22B082D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5908, &qword_22B0E3A18);
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

void *sub_22B082E98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_22B083074(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58D8, &qword_22B0E39E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58E0, &unk_22B0E39E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B0831BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58C8, &qword_22B0E39D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58D0, &qword_22B0E39D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B083304(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5908, &qword_22B0E3A18);
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

void *sub_22B083388(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5880, &qword_22B0E3988);
  v4 = *(sub_22B0DF0E0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22B083484(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5888, &unk_22B0E3990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_22B08350C(uint64_t a1)
{
  v1 = a1;
  sub_22B0DFD40();
  sub_22B0DF380();

  v2 = sub_22B0DFD80();

  return sub_22B083790(v1, v2);
}

unint64_t sub_22B0835E4(uint64_t a1)
{
  v2 = sub_22B0DF860();

  return sub_22B083940(a1, v2);
}

unint64_t sub_22B083628(uint64_t a1)
{
  sub_22B0DFD40();
  (*(*a1 + 112))(v4);
  v2 = sub_22B0DFD80();

  return sub_22B083A08(a1, v2);
}

unint64_t sub_22B0836B4(uint64_t a1)
{
  sub_22B0DFD40();
  sub_22B088D04(v4, a1);
  v2 = sub_22B0DFD80();

  return sub_22B083AF0(a1, v2);
}

unint64_t sub_22B083720(uint64_t a1)
{
  v1 = a1;
  sub_22B0DFD40();
  MEMORY[0x231889A00](v1 + 1);
  v2 = sub_22B0DFD80();

  return sub_22B083BA8(v1, v2);
}

unint64_t sub_22B083790(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE800000000000000;
          v8 = 0x44495555656D6F68;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x726F737365636361;
          v7 = 0xED00004449555579;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE900000000000065;
            if (v8 != 0x6D614E70756F7267)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0x6D614E70756F7267;
        v7 = 0xE900000000000065;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x44495555656D6F68;
      }

      else
      {
        v10 = 0x726F737365636361;
      }

      if (v9 == 1)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xED00004449555579;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_22B0DFC60();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_22B083940(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_22B089978(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x231889520](v9, a1);
      sub_22B08A67C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B083A08(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(**(*(v6 + 48) + 8 * v5) + 120);

      v10 = v9(a1);

      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22B083AF0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_22B088EC0(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22B083BA8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_22B083C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5950, &qword_22B0E3A58);
  v2 = *v0;
  v3 = sub_22B0DFB20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_22B089978(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_22B083E08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22B0DFB20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(v4 + 56) + v19;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = (*(v6 + 48) + v19);
        *v26 = v22;
        v26[1] = v21;
        v27 = *(v6 + 56) + v19;
        *v27 = v24;
        *(v27 + 8) = v25;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B083F78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5938, &qword_22B0E3A48);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22B0840DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5930, &qword_22B0E3A40);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22B084240()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5890, &qword_22B0E3F80);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_22B0843A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58A0, &qword_22B0E39A8);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        result = sub_22B08045C(v19, v20);
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

char *sub_22B084518()
{
  v1 = v0;
  v33 = sub_22B0DF0E0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5898, &qword_22B0E39A0);
  v3 = *v0;
  v4 = sub_22B0DFB20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_22B0847AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5900, &qword_22B0E3A10);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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

void *sub_22B084928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60C0, &qword_22B0E3A08);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_22B084AA4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v39 = sub_22B0DF0E0();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_22B0DFB20();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v33 = v5;
    v34 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v34, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v7;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v41;
        v24 = *(v41 + 72) * v22;
        v25 = v38;
        v26 = v39;
        (*(v41 + 16))(v38, *(v7 + 48) + v24, v39);
        v27 = 16 * v22;
        v28 = *(v7 + 56) + 16 * v22;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v40;
        (*(v23 + 32))(*(v40 + 48) + v24, v25, v26);
        v32 = *(v31 + 56) + v27;
        *v32 = v29;
        v7 = v37;
        *(v32 + 8) = v30;

        v17 = v42;
      }

      while (v42);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v33;
        v9 = v40;
        goto LABEL_21;
      }

      v21 = *(v34 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *sub_22B084D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58F0, &qword_22B0E3A00);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 24);
        v26 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v26;
        *(v27 + 16) = v23;
        *(v27 + 24) = v25;
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

id sub_22B084EC0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22B0DFB20();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22B08501C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58E8, &qword_22B0E39F8);
  v2 = *v0;
  v3 = sub_22B0DFB20();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

uint64_t sub_22B08518C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5950, &qword_22B0E3A58);
  v38 = v4;
  result = sub_22B0DFB30();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_22B089978(v27, &v39);
      }

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_22B085498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = v6;
  result = sub_22B0DFB30();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v7;
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
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v24 = 16 * (v21 | (v10 << 6));
      v25 = (*(v7 + 48) + v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v7 + 56) + v24;
      v40 = *v28;
      v29 = *(v28 + 8);
      if ((v39 & 1) == 0)
      {
      }

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v26;
      v19[1] = v27;
      v20 = *(v9 + 56) + v18;
      *v20 = v40;
      *(v20 + 8) = v29;
      ++*(v9 + 16);
      v7 = v38;
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_22B085758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5938, &qword_22B0E3A48);
  v30 = v4;
  result = sub_22B0DFB30();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22B0DFD40();
      (*(*v20 + 112))(v31);
      result = sub_22B0DFD80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B085A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5930, &qword_22B0E3A40);
  v45 = v4;
  v6 = sub_22B0DFB30();
  v7 = v6;
  if (!*(v5 + 16))
  {
    goto LABEL_43;
  }

  v8 = 0;
  v39 = v2;
  v40 = (v5 + 64);
  v9 = 1 << *(v5 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v41 = v12;
  v42 = v5;
  v43 = v6 + 64;
  v44 = v6;
LABEL_9:
  if (v11)
  {
    v19 = __clz(__rbit64(v11));
    v46 = (v11 - 1) & v11;
    goto LABEL_16;
  }

  v20 = v8;
  result = v40;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_46;
    }

    if (v8 >= v12)
    {
      break;
    }

    v21 = v40[v8];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v46 = (v21 - 1) & v21;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(*(v5 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((v45 & 1) == 0)
      {
      }

      v47 = v25;
      sub_22B0DFD40();
      v26 = 1 << *(v24 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v24 + 64);
      v29 = (v26 + 63) >> 6;

      v30 = 0;
      v31 = 0;
      if (v28)
      {
        while (1)
        {
          v32 = v31;
LABEL_26:
          v33 = *(*(v24 + 56) + 16 * (__clz(__rbit64(v28)) | (v32 << 6)) + 8);

          if (!v33)
          {
            break;
          }

          v28 &= v28 - 1;
          sub_22B0DF380();

          sub_22B0DF380();

          result = sub_22B0DFD80();
          v30 ^= result;
          v31 = v32;
          if (!v28)
          {
            goto LABEL_23;
          }
        }

LABEL_6:

        MEMORY[0x231889A00](v30);
        result = sub_22B0DFD80();
        v7 = v44;
        v14 = -1 << *(v44 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v43 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v43 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          v18 = v47;
LABEL_8:
          *(v43 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v44 + 48) + 8 * v17) = v24;
          *(*(v44 + 56) + 8 * v17) = v18;
          ++*(v44 + 16);
          v12 = v41;
          v5 = v42;
          v11 = v46;
          goto LABEL_9;
        }

        v34 = 0;
        v35 = (63 - v14) >> 6;
        v18 = v47;
        while (++v16 != v35 || (v34 & 1) == 0)
        {
          v36 = v16 == v35;
          if (v16 == v35)
          {
            v16 = 0;
          }

          v34 |= v36;
          v37 = *(v43 + 8 * v16);
          if (v37 != -1)
          {
            v17 = __clz(__rbit64(~v37)) + (v16 << 6);
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_23:
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v32 >= v29)
          {
            goto LABEL_6;
          }

          v28 = *(v24 + 64 + 8 * v32);
          ++v31;
          if (v28)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  if (v45)
  {
    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v5 + 16) = 0;
LABEL_43:
  }

  else
  {

    v3 = v39;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22B085E2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5890, &qword_22B0E3F80);
  v30 = v4;
  result = sub_22B0DFB30();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22B0DFD40();
      (*(*v20 + 112))(v31);
      result = sub_22B0DFD80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B0860E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58A0, &qword_22B0E39A8);
  v35 = v4;
  result = sub_22B0DFB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = v21 + 24 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v36 = *(v23 + 16);
      if ((v35 & 1) == 0)
      {
        sub_22B08045C(v24, v25);
      }

      sub_22B0DFD40();
      MEMORY[0x231889A00](v22 + 1);
      result = sub_22B0DFD80();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v36;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B08639C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22B0DF0E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5898, &qword_22B0E39A0);
  v39 = v4;
  result = sub_22B0DFB30();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
      result = sub_22B0DF2A0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_22B086778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5900, &qword_22B0E3A10);
  v34 = v4;
  result = sub_22B0DFB30();
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

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
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

uint64_t sub_22B086A2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_22B0DF0E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = v8;
  result = sub_22B0DFB30();
  v15 = result;
  if (*(v13 + 16))
  {
    v50 = v12;
    v41 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v10 + 16);
    v43 = v13;
    v44 = v10;
    v46 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 48);
      v49 = *(v44 + 72);
      v30 = v29 + v49 * v28;
      if (v45)
      {
        (*v46)(v50, v30, v9);
        v31 = (*(v13 + 56) + 16 * v28);
        v48 = *v31;
        v47 = *(v31 + 1);
      }

      else
      {
        (*v42)(v50, v30, v9);
        v32 = (*(v13 + 56) + 16 * v28);
        v48 = *v32;
        v47 = *(v32 + 1);
      }

      sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
      result = sub_22B0DF2A0();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v46)(*(v15 + 48) + v49 * v23, v50, v9);
      v24 = *(v15 + 56) + 16 * v23;
      *v24 = v48;
      *(v24 + 8) = v47;
      ++*(v15 + 16);
      v13 = v43;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v13 + 32);
    v7 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_22B086E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B60C0, &qword_22B0E3A08);
  v33 = v4;
  result = sub_22B0DFB30();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B0870D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58F0, &qword_22B0E3A00);
  v36 = v4;
  result = sub_22B0DFB30();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v26 = *(v25 + 16);
      v37 = *(v25 + 24);
      v38 = *v25;
      if ((v36 & 1) == 0)
      {
      }

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v38;
      *(v17 + 16) = v26;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22B087398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_22B0DFB30();
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

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
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

uint64_t sub_22B087634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B58E8, &qword_22B0E39F8);
  v34 = v4;
  result = sub_22B0DFB30();
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

        swift_unknownObjectRetain();
      }

      sub_22B0DFD40();
      sub_22B0DF380();
      result = sub_22B0DFD80();
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

double sub_22B0878DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22B0768A8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22B083C18();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_22B09D770(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22B087990(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B08518C(v16, a4 & 1);
      v11 = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22B083C18();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_22B0899D4(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_22B087B48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_22B0768A8(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_22B085498(v22, a5 & 1, a6, a7);
      v17 = sub_22B0768A8(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_22B083E08(a6, a7);
      v17 = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = v27[7] + 16 * v17;
    *v28 = a1 & 1;
    *(v28 + 8) = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a3;
  v30[1] = a4;
  v31 = v27[7] + 16 * v17;
  *v31 = a1 & 1;
  *(v31 + 8) = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_22B087D18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_22B083628(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22B085758(v14, a3 & 1);
      v9 = sub_22B083628(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for NamedGroupSpecifier();
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_22B083F78();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

unint64_t sub_22B087E8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_22B083720(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22B0860E4(v18, a5 & 1);
      result = sub_22B083720(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22B0843A4();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a4;
    v27 = v23[7] + 24 * result;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3 & 1;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  v25 = *v24;
  v26 = *(v24 + 8);
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3 & 1;

  return sub_22B080408(v25, v26);
}

uint64_t sub_22B088044(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v30 = a5;
  v31 = a6;
  v7 = v6;
  v32 = a1;
  v11 = sub_22B0DF0E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_22B07639C(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_22B084AA4(v30, v31);
      goto LABEL_9;
    }

    sub_22B086A2C(v20, a4 & 1, v30, v31);
    v23 = sub_22B07639C(a3);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 16 * v17;
    *v27 = v32 & 1;
    *(v27 + 8) = a2;
  }

  else
  {
    (*(v12 + 16))(v14, a3, v11);
    return sub_22B088998(v17, v14, v25 & 1, a2, v26);
  }
}

unint64_t sub_22B088234(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B0768A8(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_22B086E18(v16, a3 & 1);
      result = sub_22B0768A8(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22B084928();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_22B088390(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B0870D0(v16, a4 & 1);
      result = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22B084D38();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v24 = (v21[6] + 16 * result);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * result;
  v26 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a1 + 32);
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v28;
}

uint64_t sub_22B088530(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22B0768A8(a2, a3);
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
      sub_22B087398(v20, a4 & 1, a5, a6);
      v15 = sub_22B0768A8(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_22B0DFCA0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_22B084EC0(a5, a6);
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

uint64_t sub_22B0886CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22B0768A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22B087634(v16, a4 & 1);
      v11 = sub_22B0768A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22B0DFCA0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22B08501C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_22B088848(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22B08889C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}