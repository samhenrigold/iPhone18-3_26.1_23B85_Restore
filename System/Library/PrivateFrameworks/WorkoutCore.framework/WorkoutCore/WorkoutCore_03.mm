uint64_t sub_20AED7E88(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_20AED7F34(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AED7FD4()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED8054()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

id sub_20AED8188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED81F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AED8254()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED828C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AED82DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AED83C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED83F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVyyts5Error_p_GMd, &_sScs12ContinuationVyyts5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AED84EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_20AED854C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20AED85A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED85F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED8638()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED8670()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_20AED86B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED874C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED87A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AED8838@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

double sub_20AED88A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20AED88FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED8964()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED899C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED89E4()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED8A1C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AED8AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_20AED8B10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_20AED8B58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_20AED8BB0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AED8BF8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AED8C40()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20AED8C88()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20AED8CDC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AED8D30()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AED8D78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AED8F10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AED8F58(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_20AED8F9C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED913C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED9194(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AED91E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED9254@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v5 = a1 + *(result + 32);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED92A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED92DC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v5 = a1 + *(result + 36);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED9328(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED9364@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v5 = a1 + *(result + 40);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20AED93B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_20AED93F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20AED9524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20AED9658()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED96DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20AED9748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20AED9808()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED9848()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED9880()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED98B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED993C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED9994(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AED9A70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AED9B08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AED9B60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AED9BB4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AED9C6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED9CAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED9CF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED9D28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED9E80()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AED9ED8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AED9F1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AED9F54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20AED9F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20AEDA03C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20AEDA0F4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AEDA224()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AEDA300()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDA338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20AEDA3F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

double sub_20AEDA4B4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_20AEDA50C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  *(v3 + v4) = v2;
  SegmentDistanceAccumulator._updateInternalQuantity()();
}

id sub_20AEDA564@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEDA610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEDA66C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AEDA75C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDA7A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDA7E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AEDA7F4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20AEDA844()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20AEDA88C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDA8C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_20AEDA918()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDA960()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDAAF4()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDAB2C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20AEDAB74()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDABB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDABF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDAC30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDAC70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDACEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDAD30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDAD68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AEDAEDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDAF24()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEDAFE8()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB020()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB058()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDB0A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB0F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDB138()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AEDB178()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20AEDB234@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AEDB374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEDB3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEDB470()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB4C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDB500()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEDB5C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEDB624(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AEDB678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEDB714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEDB76C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEDB7C0()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_20AEDB7F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEDB8E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB918()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDB960()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDB9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEDBA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEDBAA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDBAD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_20AEDBDE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDBE24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDBE5C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDBE94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AEDBF64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_20AEDBFB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDBFEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDC02C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AEDC12C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDC164()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDC230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20AEDC29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20AEDC30C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[12]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20AEDC4A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[12]) = a2;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[14];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_20AEDC638()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AEDC710()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20AEDC7E0()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDC874()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDC8AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDC8EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AEDC94C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AEDCAB8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEDCB84()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20AEDCBF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDCC2C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDCCB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20AEDCDE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20AEDCF54(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_20AEDD000(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20AEDD4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20AEDD550(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t _s11WorkoutCore0A22VoiceMomentCoordinatorCAA0a5BuddyD12CoordinatingAAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20AEDD6DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20AEDD738(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_20AEDD7E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEDD83C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEDD890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20AEDD908(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20AEDD9A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDD9D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDDA18()
{
  v1 = type metadata accessor for WorkoutState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEDDAE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDDB6C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDDBA4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDDBE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDDC20()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDDC74()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDDCAC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDDCEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDDD24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDDD5C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDDDA4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_20AEDDE5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AEDDEB8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AEDDF1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDDF6C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDDFB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDE03C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDE074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDE0B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20AEDE1B0()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDE1EC()
{
  v1 = (type metadata accessor for Apple_Workout_Core_MetricsDelta(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + v1[8];
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v7(v8, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20AEDE35C()
{
  v1 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_16;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v11 = *(type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0) + 24);
        break;
      case 4:

        v11 = *(type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0) + 32);
        break;
      case 5:
        v8 = type metadata accessor for UnknownStorage();
        v9 = (*(v8 - 8) + 8);
        v21 = *v9;
        (*v9)(v0 + v3, v8);
        v10 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
        goto LABEL_14;
      default:
        goto LABEL_16;
    }

LABEL_12:
    v12 = type metadata accessor for UnknownStorage();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_16;
    }

    v11 = *(type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0) + 20);
    goto LABEL_12;
  }

  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v14 = *(started + 28);
  v8 = type metadata accessor for UnknownStorage();
  v15 = (*(v8 - 8) + 8);
  v21 = *v15;
  (*v15)(v5 + v14, v8);
  v10 = *(started + 32);
LABEL_14:
  v16 = v5 + v10;
  v17 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    outlined consume of Data._Representation(*(v16 + 16), *(v16 + 24));
    v21(v16 + *(v17 + 24), v8);
  }

LABEL_16:
  v18 = *(v1 + 20);
  v19 = type metadata accessor for UnknownStorage();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20AEDE68C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDE6C4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AEDE70C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDE75C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_20AEDE7A4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_20AEDE7E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_20AEDE830(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_20AEDE874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_20AEDE8BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

id sub_20AEDE900@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

uint64_t sub_20AEDEA58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AEDEABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20AEDEB20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_20AEDF418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20AEDF4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20AEDF5FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEDF654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20AEDF6A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEDF714()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AEDF770()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDF7A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDF800()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEDF864(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for WorkoutState();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for WorkoutVoiceMomentType();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_20AEDF9DC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for WorkoutState();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for WorkoutVoiceMomentType();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20AEDFBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEDFC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEDFCA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDFCF0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEDFD40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEDFD7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEDFDD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20AEDFF70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreTrackRunningCoordinator_trackId;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEDFFDC()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE0014()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE0074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_HKActivitySummary(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20AEE02D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_20AEE0408(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMd, &_s11WorkoutCore06Apple_a1_B18_HKActivitySummaryVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20AEE0534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20AEE05F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20AEE06A8@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (*(v3 + 24))
  {
    v5 = 0.0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_20AEE07E4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEE08C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20AEE097C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20AEE0A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEE0AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEE0B28()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE0B60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20AEE0CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20AEE0D28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20AEE0D80(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEE0E04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_20AEE0E64@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20AEE0EBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20AEE0F14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE0F4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEE0F84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AEE0FD4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20AEE102C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_20AEE1074(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_20AEE10B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEE1158()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEE11BC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEE1210()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEE1258()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE1290()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20AEE1340@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20AEE1390(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_20AEE13E8@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalWorkoutProgressionData.workoutSettingsManager.getter();
  *a1 = result;
  return result;
}

void sub_20AEE1414(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 80);
  *(*a2 + 80) = *a1;
  v4 = v2;

  outlined consume of FIUIWorkoutSettingsManager??(v3);
}

double sub_20AEE1458@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 88);
  *a2 = result;
  return result;
}

double sub_20AEE14C8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 96);
  *a2 = result;
  return result;
}

double sub_20AEE1538@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 104);
  *a2 = result;
  return result;
}

double sub_20AEE15A8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 112);
  *a2 = result;
  return result;
}

double sub_20AEE15F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 120);
  *a2 = result;
  return result;
}

void sub_20AEE163C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
  IntervalWorkoutProgressionData.currentPace.didset();
}

double sub_20AEE168C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 128);
  *a2 = result;
  return result;
}

double sub_20AEE16D8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 136);
  *a2 = result;
  return result;
}

double sub_20AEE1724@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 144);
  *a2 = result;
  return result;
}

double sub_20AEE1770@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 152);
  *a2 = result;
  return result;
}

double sub_20AEE17BC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 160);
  *a2 = result;
  return result;
}

uint64_t sub_20AEE1810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v3 + v4, a2);
}

uint64_t sub_20AEE1870@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20AEE18D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_20AEE1950@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_20AEE1998(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

double sub_20AEE19E4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_20AEE1A2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_20AEE1A78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_20AEE1AC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_20AEE1B34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20AEE1BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEE1C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEE1F2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for WeakCollection(0, *(a1 + a2 - 8), a2, a4);
  result = WeakCollection.wrappedValue.getter(v5, v6, v7, v8);
  *a3 = result;
  return result;
}

uint64_t sub_20AEE1F94()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEE1FD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE200C()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_20AEE2044()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_20AEE2104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOSplitsDisplayAccumulator_splitsAccumulator;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_20AEE216C(id *a1)
{
  v1 = *a1;
  specialized SplitsDisplayAccumulator.splitsAccumulator.setter(v1);
}

uint64_t sub_20AEE21B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE21F0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  outlined consume of Data._Representation(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEE22BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_20AEE230C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_20AEE235C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *a2 = v4;
  a2[1] = v5;
  return outlined copy of Data._Representation(v4, v5);
}

uint64_t sub_20AEE23CC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20AEE2420()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20AEE24C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20AEE2520@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  if (*(v3 + 32))
  {
    v5 = 0.0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_20AEE258C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_20AEE25F0@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  if (*(v3 + 56))
  {
    v5 = 0.0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_20AEE265C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_20AEE26B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_20AEE2714@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 59);
  return result;
}

uint64_t sub_20AEE2770@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 60);
  return result;
}

uint64_t sub_20AEE2964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20AEE2A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20AEE2AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_20AEE2B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_20AEE2CE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20AEE2EA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE2EF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20AEE3A68()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE3AB0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20AEE3B84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEE3BBC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id _NLStandardFitnessPopularActivityTypes()
{
  v15[13] = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:3000 isIndoor:0 metadata:?];
  v15[0] = v14;
  v13 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:4 isIndoor:0 metadata:0];
  v15[1] = v13;
  v12 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:58 isIndoor:0 metadata:0];
  v15[2] = v12;
  v11 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:60 isIndoor:0 metadata:0];
  v15[3] = v11;
  v10 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:11 isIndoor:0 metadata:0];
  v15[4] = v10;
  v9 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:61 isIndoor:0 metadata:0];
  v15[5] = v9;
  v8 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:73 isIndoor:0 metadata:0];
  v15[6] = v8;
  v7 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:79 isIndoor:0 metadata:0];
  v15[7] = v7;
  v6 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:41 isIndoor:0 metadata:0];
  v15[8] = v6;
  v5 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:67 isIndoor:0 metadata:0];
  v15[9] = v5;
  v4 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:47 isIndoor:0 metadata:0];
  v15[10] = v4;
  v3 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:48 isIndoor:0 metadata:0];
  v15[11] = v3;
  v1 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:50 isIndoor:0 metadata:0];
  v15[12] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:13];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  return v2;
}

id _NLFitnessJuniorPopularActivityTypes(char a1)
{
  v30[16] = *MEMORY[0x277D85DE8];
  v27 = a1;
  v24 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:3000 isIndoor:0 metadata:?];
  v30[0] = v24;
  v23 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:5 isIndoor:0 metadata:0];
  v30[1] = v23;
  v22 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:6 isIndoor:0 metadata:0];
  v30[2] = v22;
  v21 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:77 isIndoor:0 metadata:0];
  v30[3] = v21;
  v20 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:61 isIndoor:0 metadata:0];
  v30[4] = v20;
  v19 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:76 isIndoor:0 metadata:0];
  v30[5] = v19;
  v18 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:22 isIndoor:0 metadata:0];
  v30[6] = v18;
  v17 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:28 isIndoor:0 metadata:0];
  v30[7] = v17;
  v16 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:32 isIndoor:0 metadata:0];
  v30[8] = v16;
  v15 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:39 isIndoor:0 metadata:0];
  v30[9] = v15;
  v14 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:67 isIndoor:0 metadata:0];
  v30[10] = v14;
  v13 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:41 isIndoor:0 metadata:0];
  v30[11] = v13;
  v12 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:47 isIndoor:0 metadata:0];
  v30[12] = v12;
  v11 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:48 isIndoor:0 metadata:0];
  v30[13] = v11;
  v10 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:51 isIndoor:0 metadata:0];
  v30[14] = v10;
  v9 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:57 isIndoor:0 metadata:0];
  v30[15] = v9;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:16];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *&v1 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  if (v27)
  {
    v7 = MEMORY[0x277D0A810];
    v28 = *MEMORY[0x277CCC510];
    v29 = &unk_2822797F0;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:{1, v1}];
    v25 = [v7 activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:?];
    *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v3 = [v26 arrayByAddingObject:{v25, v2}];
    v4 = v26;
    v26 = v3;
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v25, 0);
  }

  v6 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v26, 0);

  return v6;
}

id _NLPopularAddWorkoutTypes(void *a1)
{
  v8[1] = a1;
  v8[0] = 0;
  if (a1 <= 1)
  {
    v1 = _NLStandardFitnessPopularActivityTypes();
    v2 = v8[0];
    v8[0] = v1;
    MEMORY[0x277D82BD8](v2);
  }

  else if (a1 == 2)
  {
    v3 = MEMORY[0x20F2E82F0]();
    v4 = _NLFitnessJuniorPopularActivityTypes(v3);
    v5 = v8[0];
    v8[0] = v4;
    MEMORY[0x277D82BD8](v5);
  }

  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

id NLWorkoutEndReasonDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  switch(a1)
  {
    case 0:
      objc_storeStrong(&location, @"NotSet");
      break;
    case 1:
      objc_storeStrong(&location, @"ErrorStarting");
      break;
    case 2:
      objc_storeStrong(&location, @"UserInitiated");
      break;
    case 3:
      objc_storeStrong(&location, @"StartingNewSession");
      break;
    case 4:
      objc_storeStrong(&location, @"ThirdPartyWorkoutStarted");
      break;
    case 5:
      objc_storeStrong(&location, @"UserInitiatedSiriStart");
      break;
    case 6:
      objc_storeStrong(&location, @"UserInitiatedSiriEnd");
      break;
    case 7:
      objc_storeStrong(&location, @"UserInitiatedForceTouch");
      break;
    case 8:
      objc_storeStrong(&location, @"EndWorkoutReminder");
      break;
    case 9:
      objc_storeStrong(&location, @"UserInitiatedWorkoutQuickSwitch");
      break;
    case 10:
      objc_storeStrong(&location, @"MachineInitiatedStart");
      break;
    case 11:
      objc_storeStrong(&location, @"MachineEndedSuccessfully");
      break;
    case 12:
      objc_storeStrong(&location, @"PPTInitiatedWithSummary");
      break;
    case 13:
      objc_storeStrong(&location, @"PPTInitiatedWithNoSummary");
      break;
    case 14:
      objc_storeStrong(&location, @"StoreDemoReset");
      break;
    case 15:
      objc_storeStrong(&location, @"SeymourPlayback");
      break;
    case 16:
      objc_storeStrong(&location, @"SeymourError");
      break;
    case 17:
      objc_storeStrong(&location, @"SessionError");
      break;
    case 18:
      objc_storeStrong(&location, @"SessionEndedUnexpectedly");
      break;
    case 19:
      objc_storeStrong(&location, @"DeviceInSchoolMode");
      break;
    case 20:
      objc_storeStrong(&location, @"IntervalWorkoutFinished");
      break;
    case 21:
      objc_storeStrong(&location, @"Remote");
      break;
    case 22:
      objc_storeStrong(&location, @"MirroredStartError");
      break;
    case 23:
      objc_storeStrong(&location, @"MachineEndedDueToFailure");
      break;
    default:
      break;
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

id WOLocationBundle()
{
  predicate = &WOLocationBundle_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_0);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = WOLocationBundle_bundle;

  return v0;
}

double __WOLocationBundle_block_invoke()
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = WOLocationBundlePath();
  v0 = [v3 bundleWithPath:?];
  v1 = WOLocationBundle_bundle;
  WOLocationBundle_bundle = v0;
  MEMORY[0x277D82BD8](v1);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

id WOLocationBundlePath()
{
  predicate = &WOLocationBundlePath_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_299);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = WOLocationBundlePath_bundlePath;

  return v0;
}

uint64_t WOSystemRootDirectory()
{
  predicate = &WOSystemRootDirectory_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_294);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return WOSystemRootDirectory_systemRootDirectory;
}

void __WOLocationBundlePath_block_invoke(void *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = MEMORY[0x277D82BE0](@"System/Library/LocationBundles/AppleWatchWorkout.bundle");
  v1 = [WOSystemRootDirectory() stringByAppendingPathComponent:v3[0]];
  v2 = WOLocationBundlePath_bundlePath;
  WOLocationBundlePath_bundlePath = v1;
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v3, 0);
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

id NLWorkoutAlertTypeString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeNone");
      break;
    case 1:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeTrainerTimerEventStart");
      break;
    case 2:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeTrainerTimerEventEnd");
      break;
    case 3:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeVoiceMotivationStart");
      break;
    case 4:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeActivityRingCompletion");
      break;
    case 5:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeTransitionedNotableTime");
      break;
    case 6:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeTransitionedNotableDistance");
      break;
    case 7:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeGoalHalfwayPoint");
      break;
    case 8:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeZoneExitedAbove");
      break;
    case 9:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeZoneExitedBelow");
      break;
    case 10:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeZoneEntered");
      break;
    case 11:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeTrackStatusChange");
      break;
    case 12:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeLapCompletion");
      break;
    case 13:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeGoalCompletion");
      break;
    case 14:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeMediaMoment");
      break;
    case 15:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypePacerGoalCompletion");
      break;
    case 16:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeIntervalUpcoming");
      break;
    case 17:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeIntervalEnded");
      break;
    case 18:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceAheadOfGhost");
      break;
    case 19:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceBehindGhost");
      break;
    case 20:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceOffRoute");
      break;
    case 21:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceOnRoute");
      break;
    case 22:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceExpired");
      break;
    case 23:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceRouteCompleteRaceWon");
      break;
    case 24:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeRaceRouteCompleteRaceLost");
      break;
    case 25:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeVoiceMotivationEnd");
      break;
    case 26:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeSegment");
      break;
    case 27:
      v2 = MEMORY[0x277D82BE0](@"NLWorkoutAlertTypeTranscript");
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_66_8_66_8_66_8_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

id WOTargetZonePrimaryTypeString(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneMasterTypePace");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneMasterTypeCadence");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneMasterTypePower");
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneMasterTypeNone");
  }

  return v2;
}

id WOTargetZoneTypeString(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeRollingPace");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeAveragePace");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeInstantaneousPace");
        break;
      case 4:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeInstantaneousCadence");
        break;
      case 5:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeAverageCadence");
        break;
      case 6:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeInstantaneousPower");
        break;
      case 7:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeAveragePower");
        break;
      default:
        v2 = 0;
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"NLWorkoutTargetZoneTypeNone");
  }

  return v2;
}

void NLSessionStateIdentifierShortHandStruct(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 1;
  a1[2] = 2;
  a1[3] = 3;
  a1[4] = 4;
  a1[5] = 5;
  a1[6] = 6;
  a1[7] = 7;
  a1[8] = 8;
  a1[9] = 9;
  a1[10] = 10;
  a1[11] = 11;
  a1[12] = 12;
  a1[13] = 13;
}

id NLSessionStateEventIdentifierDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  switch(a1)
  {
    case 0:
      objc_storeStrong(&location, @"Invalid");
      break;
    case 1:
      objc_storeStrong(&location, @"PreparingSession");
      break;
    case 2:
      objc_storeStrong(&location, @"StartSession");
      break;
    case 3:
      objc_storeStrong(&location, @"Recovery");
      break;
    case 4:
      objc_storeStrong(&location, @"SessionStarted");
      break;
    case 5:
      objc_storeStrong(&location, @"Pause");
      break;
    case 6:
      objc_storeStrong(&location, @"Paused");
      break;
    case 7:
      objc_storeStrong(&location, @"Resume");
      break;
    case 8:
      objc_storeStrong(&location, @"InSession");
      break;
    case 9:
      objc_storeStrong(&location, @"StopSession");
      break;
    case 10:
      objc_storeStrong(&location, @"SessionEnded");
      break;
    case 11:
      objc_storeStrong(&location, @"SessionStopped");
      break;
    case 12:
      objc_storeStrong(&location, @"SessionError");
      break;
    case 13:
      objc_storeStrong(&location, @"EndSession");
      break;
    case 14:
      objc_storeStrong(&location, @"Completed");
      break;
    default:
      break;
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

void _RegisterTransition(void *a1, void *a2, uint64_t a3)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v7 = 0;
  objc_storeStrong(&v7, a2);
  v5 = location;
  v6 = NLSessionStateEventIdentifierDescription(a3);
  [v5 registerTransition:a3 label:? toState:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

void sub_20AEEDC80(uint64_t a1, int a2)
{
  *(v2 - 160) = a1;
  *(v2 - 164) = a2;
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(*(v2 - 160));
}

uint64_t __os_log_helper_16_2_3_8_64_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t _StateForEnteringSessionActiveFromState(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 2;
    case 3:
    case 5:
      return 7;
    case 8:
      return 0;
  }

  return 8;
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

double NLDistanceNotificationIntervalForDistanceType(uint64_t a1)
{
  v2 = 0.0;
  if (a1)
  {
    if (a1 == 1)
    {
      return 1.0;
    }

    else if (a1 == 2)
    {
      return 5.0;
    }

    else if ((a1 - 3) > 2)
    {
      if (a1 == 6)
      {
        return 1.0;
      }

      else if ((a1 - 7) > 1 && a1 == 9)
      {
        return 1.0;
      }
    }
  }

  return v2;
}

unint64_t NLMilestoneForDistance(void *a1, void *a2, double a3)
{
  v14 = a3;
  location = 0;
  objc_storeStrong(&location, a1);
  v12 = 0;
  objc_storeStrong(&v12, a2);
  v11 = FIUIDistanceTypeForActivityType();
  v10 = NLDistanceNotificationIntervalForDistanceType(v11);
  v7 = [MEMORY[0x277CCD7E8] quantityWithUnit:v12 doubleValue:v10];
  v6 = [MEMORY[0x277CCDAB0] meterUnit];
  [v7 doubleValueForUnit:?];
  v8 = v3;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v9 = v14 / v8;
  v18 = v14 / v8;
  v16 = v14 / v8 - round(v14 / v8);
  if (fabs(v16) >= 0.01)
  {
    v19 = v14 / v8;
    v15 = vcvtmd_s64_f64(v9);
  }

  else
  {
    v17 = v14 / v8;
    v15 = llround(v9);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v15;
}

void sub_20AEF3C74(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id obj)
{
  *(v14 - 24) = a1;
  *(v14 - 28) = a2;
  objc_sync_exit(obj);
  _Unwind_Resume(*(v14 - 24));
}

void sub_20AEF41A8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 32) = a1;
  *(v9 - 36) = a2;
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(*(v9 - 32));
}

void sub_20AEF52D4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 120) = a1;
  *(v14 - 124) = a2;
  objc_destroyWeak((v14 - 104));
  _Unwind_Resume(*(v14 - 120));
}

void _LogRecord(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, a1);
  v7 = 0;
  objc_storeStrong(&v7, a2);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = location;
    v4 = [v7 startDate];
    [v7 distance];
    __os_log_helper_16_2_4_8_64_8_66_8_0_8_0(v9, v3, v4, v2, [v7 lapCount]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "%@:\tstartDate:%{public}@\tdistance:%f\tlaps:%li", v9, 0x2Au);
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

uint64_t _StrokeStyleForData(id obj)
{
  v53 = *MEMORY[0x277D85DE8];
  location = 0;
  objc_storeStrong(&location, obj);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x277D82BE0](location);
  v34 = [obja countByEnumeratingWithState:__b objects:v52 count:16];
  if (v34)
  {
    v30 = *__b[2];
    v31 = 0;
    v32 = v34;
    while (1)
    {
      v29 = v31;
      if (*__b[2] != v30)
      {
        objc_enumerationMutation(obja);
      }

      v46 = *(__b[1] + 8 * v31);
      v44 = [v46 strokeType];
      v43 = _HKSwimmingStrokeStyleFromCMSwimStrokeType(v44);
      v27 = v47;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
      v42 = [v27 objectForKeyedSubscript:?];
      *&v1 = MEMORY[0x277D82BD8](v28).n128_u64[0];
      if (!v42)
      {
        objc_storeStrong(&v42, &unk_282279808);
      }

      v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v42, "integerValue", v1) + 1}];
      v3 = v42;
      v42 = v2;
      *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      v24 = v42;
      v25 = v47;
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:{v43, v4}];
      [v25 setObject:v24 forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v42, 0);
      ++v31;
      if (v29 + 1 >= v32)
      {
        v31 = 0;
        v32 = [obja countByEnumeratingWithState:__b objects:v52 count:16];
        if (!v32)
        {
          break;
        }
      }
    }
  }

  v41 = [v47 count];
  if (v41)
  {
    if (v41 == 1)
    {
      v23 = [v47 allKeys];
      v22 = [v23 firstObject];
      v49 = [v22 integerValue];
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      v40 = 1;
    }

    else
    {
      v39 = 0.0;
      memset(v37, 0, sizeof(v37));
      v20 = [v47 allValues];
      v21 = [v20 countByEnumeratingWithState:v37 objects:v51 count:16];
      if (v21)
      {
        v17 = *v37[2];
        v18 = 0;
        v19 = v21;
        while (1)
        {
          v16 = v18;
          if (*v37[2] != v17)
          {
            objc_enumerationMutation(v20);
          }

          v38 = *(v37[1] + 8 * v18);
          [v38 floatValue];
          v39 = v39 + v5;
          ++v18;
          if (v16 + 1 >= v19)
          {
            v18 = 0;
            v19 = [v20 countByEnumeratingWithState:v37 objects:v51 count:16];
            if (!v19)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v20);
      memset(v35, 0, sizeof(v35));
      v14 = [v47 allKeys];
      v15 = [v14 countByEnumeratingWithState:v35 objects:v50 count:16];
      if (v15)
      {
        v11 = *v35[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*v35[2] != v11)
          {
            objc_enumerationMutation(v14);
          }

          v36 = *(v35[1] + 8 * v12);
          v8 = [v47 objectForKeyedSubscript:v36];
          [v8 floatValue];
          v9 = v6;
          MEMORY[0x277D82BD8](v8);
          if ((v9 / v39) > 0.6)
          {
            break;
          }

          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [v14 countByEnumeratingWithState:v35 objects:v50 count:16];
            if (!v13)
            {
              goto LABEL_27;
            }
          }
        }

        v49 = [v36 integerValue];
        v40 = 1;
      }

      else
      {
LABEL_27:
        v40 = 0;
      }

      MEMORY[0x277D82BD8](v14);
      if (!v40)
      {
        v49 = 1;
        v40 = 1;
      }
    }
  }

  else
  {
    v49 = 0;
    v40 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&location, 0);
  return v49;
}

uint64_t __os_log_helper_16_2_4_8_64_8_66_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t _HKSwimmingStrokeStyleFromCMSwimStrokeType(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 1;
    case 6:
      return 6;
  }

  return 0;
}

id NLSessionActivityStateDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        objc_storeStrong(&location, @"Prepare");
        break;
      case 2:
        objc_storeStrong(&location, @"Recovery");
        break;
      case 3:
        objc_storeStrong(&location, @"Paused");
        break;
      case 4:
        objc_storeStrong(&location, @"PausedNeedsHeartRate");
        break;
      case 5:
        objc_storeStrong(&location, @"HeartRatePaused");
        break;
      case 6:
        objc_storeStrong(&location, @"Active");
        break;
      case 7:
        objc_storeStrong(&location, @"Completed");
        break;
      case 8:
        objc_storeStrong(&location, @"AutoPaused");
        break;
      case 9:
        objc_storeStrong(&location, @"AutoPausedNeedsHeartRate");
        break;
      case 10:
        objc_storeStrong(&location, @"Ending");
        break;
    }
  }

  else
  {
    objc_storeStrong(&location, @"Initial");
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

void NLActivityStateIdentifierShortHandStruct(void *a1@<X8>)
{
  *a1 = 1;
  a1[1] = 2;
  a1[2] = 3;
  a1[3] = 4;
  a1[4] = 5;
  a1[5] = 6;
  a1[6] = 7;
  a1[7] = 8;
  a1[8] = 9;
  a1[9] = 10;
  a1[10] = 11;
  a1[11] = 12;
  a1[12] = 13;
  a1[13] = 14;
  a1[14] = 15;
  a1[15] = 16;
  a1[16] = 17;
  a1[17] = 18;
  a1[18] = 19;
}

id NLSessionActivityEventIdentifierDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  switch(a1)
  {
    case 1:
      objc_storeStrong(&location, @"Prepare");
      break;
    case 2:
      objc_storeStrong(&location, @"Recover");
      break;
    case 3:
      objc_storeStrong(&location, @"StartTracking");
      break;
    case 4:
      objc_storeStrong(&location, @"FirstActivation");
      break;
    case 5:
      objc_storeStrong(&location, @"Active");
      break;
    case 6:
      objc_storeStrong(&location, @"UserPause");
      break;
    case 7:
      objc_storeStrong(&location, @"UserResume");
      break;
    case 8:
      objc_storeStrong(&location, @"AutoPause");
      break;
    case 9:
      objc_storeStrong(&location, @"AutoResume");
      break;
    case 10:
      objc_storeStrong(&location, @"HeartRateMonitorConnected");
      break;
    case 11:
      objc_storeStrong(&location, @"HeartRateMonitorDisconnected");
      break;
    case 12:
      objc_storeStrong(&location, @"EndActivity");
      break;
    case 13:
      objc_storeStrong(&location, @"ErrorActivating");
      break;
    case 14:
      objc_storeStrong(&location, @"FatalError");
      break;
    case 15:
      objc_storeStrong(&location, @"RetryEndActivity");
      break;
    case 16:
      objc_storeStrong(&location, @"DiscardingActivity");
      break;
    case 17:
      objc_storeStrong(&location, @"SavingActivity");
      break;
    case 18:
      objc_storeStrong(&location, @"ErrorSaving");
      break;
    case 19:
      objc_storeStrong(&location, @"ErrorEnding");
      break;
    case 20:
      objc_storeStrong(&location, @"CompletingActivity");
      break;
    case 21:
      objc_storeStrong(&location, @"EndingCollection");
      break;
    default:
      break;
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

id NLActivityStateIdentifierDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  switch(a1)
  {
    case 1:
      objc_storeStrong(&location, @"Initial");
      break;
    case 2:
      objc_storeStrong(&location, @"Prepare");
      break;
    case 3:
      objc_storeStrong(&location, @"Recovery");
      break;
    case 4:
      objc_storeStrong(&location, @"Activating");
      break;
    case 5:
      objc_storeStrong(&location, @"FirstActivation");
      break;
    case 6:
      objc_storeStrong(&location, @"Paused");
      break;
    case 7:
      objc_storeStrong(&location, @"PausedNeedsHeartRate");
      break;
    case 8:
      objc_storeStrong(&location, @"HeartRatePaused");
      break;
    case 9:
      objc_storeStrong(&location, @"Active");
      break;
    case 10:
      objc_storeStrong(&location, @"AutoPaused");
      break;
    case 11:
      objc_storeStrong(&location, @"AutoPausedNeedsHeartRate");
      break;
    case 12:
      objc_storeStrong(&location, @"Ending");
      break;
    case 13:
      objc_storeStrong(&location, @"ErrorActivating");
      break;
    case 14:
      objc_storeStrong(&location, @"ErrorEnding");
      break;
    case 15:
      objc_storeStrong(&location, @"FatalError");
      break;
    case 16:
      objc_storeStrong(&location, @"DiscardingActivity");
      break;
    case 17:
      objc_storeStrong(&location, @"SavingActivity");
      break;
    case 18:
      objc_storeStrong(&location, @"CompletedActivity");
      break;
    case 19:
      objc_storeStrong(&location, @"EndingCollection");
      break;
    default:
      break;
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

void _RegisterTransition_0(void *a1, void *a2, void *a3, uint64_t a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v11 = 0;
  objc_storeStrong(&v11, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v8 = v11;
  v9 = NLSessionActivityEventIdentifierDescription(a4);
  [v8 registerTransition:a4 label:a1 toState:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

void sub_20AEFBAC8(uint64_t a1, int a2)
{
  *(v2 - 200) = a1;
  *(v2 - 204) = a2;
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(*(v2 - 200));
}

void sub_20AEFCF2C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 48) = a1;
  *(v9 - 52) = a2;
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(*(v9 - 48));
}

uint64_t __os_log_helper_16_2_2_4_0_8_64(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 64;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void _handlePreferencesChangedCallback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v12 = a1;
  v11 = a2;
  location[3] = a3;
  location[2] = a4;
  location[1] = a5;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_20AEA4000, log, type, "Preferences changed, updating HR availability", v8, 2u);
  }

  objc_storeStrong(location, 0);
  v7 = MEMORY[0x277D82BE0](v11);
  [v7 _updateHeartRateUpdateAvailability];
  objc_storeStrong(&v7, 0);
}

uint64_t __os_log_helper_16_2_2_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t _PauseEventSourceIsUserInitiated(uint64_t a1)
{
  if ((a1 - 1) <= 2)
  {
    goto LABEL_8;
  }

  if (a1 == 4)
  {
    goto LABEL_9;
  }

  if ((a1 - 5) <= 3)
  {
    goto LABEL_8;
  }

  if (a1 == 9)
  {
LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  if ((a1 - 10) > 3)
  {
    if (a1 != 14)
    {
      return v2 & 1;
    }

    goto LABEL_9;
  }

LABEL_8:
  v2 = 1;
  return v2 & 1;
}

id _PauseEventSourceDescription(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = MEMORY[0x277D82BE0](@"UserButtonTap");
      break;
    case 2:
      v2 = MEMORY[0x277D82BE0](@"Siri");
      break;
    case 3:
      v2 = MEMORY[0x277D82BE0](@"FitnessMachine");
      break;
    case 4:
      v2 = MEMORY[0x277D82BE0](@"AutoPause");
      break;
    case 5:
      v2 = MEMORY[0x277D82BE0](@"URL");
      break;
    case 6:
      v2 = MEMORY[0x277D82BE0](@"OffWrist");
      break;
    case 7:
      v2 = MEMORY[0x277D82BE0](@"OnCharger");
      break;
    case 8:
      v2 = MEMORY[0x277D82BE0](@"SeymourCompanionPause");
      break;
    case 9:
      v2 = MEMORY[0x277D82BE0](@"SeymourContentBuffering");
      break;
    case 10:
      v2 = MEMORY[0x277D82BE0](@"UserChordPress");
      break;
    case 11:
      v2 = MEMORY[0x277D82BE0](@"WorkoutRecovery");
      break;
    case 12:
      v2 = MEMORY[0x277D82BE0](@"Remote");
      break;
    case 13:
      v2 = MEMORY[0x277D82BE0](@"Reminder");
      break;
    case 14:
      v2 = MEMORY[0x277D82BE0](@"HeartRateSensorConnectionChange");
      break;
    default:
      break;
  }

  return v2;
}

uint64_t __os_log_helper_16_2_3_4_0_8_66_8_66(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 66;
  *(result + 9) = 8;
  *(result + 10) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_4_0_8_66(uint64_t result, int a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 66;
  *(result + 9) = 8;
  *(result + 10) = a3;
  return result;
}

BOOL NLSessionActivityIsActive(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location state] == 6;
  objc_storeStrong(&location, 0);
  return v2;
}

BOOL NLSessionActivityIsPaused(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  IsPaused = NLSessionActivityStateIsPaused([location state]);
  objc_storeStrong(&location, 0);
  return IsPaused;
}

BOOL NLSessionActivityStateIsPaused(uint64_t a1)
{
  v2 = 1;
  if (a1 != 3)
  {
    v2 = 1;
    if (a1 != 8)
    {
      v2 = 1;
      if (a1 != 4)
      {
        v2 = 1;
        if (a1 != 5)
        {
          return a1 == 9;
        }
      }
    }
  }

  return v2;
}

void sub_20AF06998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v21 - 64));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_3_8_66_4_0_8_66(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 66;
  *(result + 19) = 8;
  *(result + 20) = a4;
  return result;
}

void sub_20AF075C0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, id *location)
{
  *(v13 - 112) = a1;
  *(v13 - 116) = a2;
  objc_destroyWeak((v13 - 104));
  _Unwind_Resume(*(v13 - 112));
}

void sub_20AF07A7C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 40) = a1;
  *(v10 - 44) = a2;
  objc_destroyWeak((v10 - 32));
  _Unwind_Resume(*(v10 - 40));
}

void sub_20AF07FB8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id *location)
{
  *(v25 - 96) = a1;
  *(v25 - 100) = a2;
  objc_destroyWeak((v25 - 56));
  objc_destroyWeak((v25 - 48));
  _Unwind_Resume(*(v25 - 96));
}

BOOL _UseMachineDistance(char a1, uint64_t a2)
{
  v3 = 0;
  if (a1)
  {
    return _MachineActivityUsesNonSampleBasedDistance(a2);
  }

  return v3;
}

uint64_t __os_log_helper_16_2_2_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t _locationTypeForActivity(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v1 = [location isIndoor];
  v2 = 2;
  if ((v1 & 1) == 0)
  {
    v2 = 3;
  }

  v4 = v2;
  objc_storeStrong(&location, 0);
  return v4;
}

void powerLogEvent(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v3 = 0;
  objc_storeStrong(&v3, a2);
  PLLogRegisteredEvent();
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&location, 0);
}

id _DistanceSampleTypes()
{
  predicate = &_DistanceSampleTypes_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_1644);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = _DistanceSampleTypes___distanceSampleTypes;

  return v0;
}

id _SpeedSampleTypes()
{
  predicate = &_SpeedSampleTypes_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_1646);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = _SpeedSampleTypes___speedSampleTypes;

  return v0;
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

double _CanonicalMetricValue(char *a1, void *a2)
{
  v8 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  v4 = location;
  v5 = _CanonicalUnitForWorkoutMetric(v8);
  [v4 doubleValueForUnit:?];
  v6 = v2;
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&location, 0);
  return v6;
}

id _CanonicalUnitForWorkoutMetric(char *a1)
{
  v19[1] = a1;
  v19[0] = 0;
  if (a1 == 1)
  {
    v7 = [MEMORY[0x277CCDAB0] secondUnit];
    v8 = v19[0];
    v19[0] = v7;
    MEMORY[0x277D82BD8](v8);
    goto LABEL_25;
  }

  if (a1 == 2)
  {
    v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    v6 = v19[0];
    v19[0] = v5;
    MEMORY[0x277D82BD8](v6);
    goto LABEL_25;
  }

  if ((a1 - 3) <= 2)
  {
    goto LABEL_24;
  }

  if ((a1 - 6) <= 1)
  {
    goto LABEL_15;
  }

  if (a1 == 8)
  {
LABEL_23:
    v13 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    v14 = v19[0];
    v19[0] = v13;
    MEMORY[0x277D82BD8](v14);
    goto LABEL_25;
  }

  if ((a1 - 9) <= 3)
  {
    v1 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v2 = v19[0];
    v19[0] = v1;
    MEMORY[0x277D82BD8](v2);
    goto LABEL_25;
  }

  if (a1 == 13)
  {
LABEL_24:
    v15 = [MEMORY[0x277CCDAB0] meterUnit];
    v16 = v19[0];
    v19[0] = v15;
    MEMORY[0x277D82BD8](v16);
    goto LABEL_25;
  }

  if (a1 == 14)
  {
    v9 = [MEMORY[0x277CCDAB0] percentUnit];
    v10 = v19[0];
    v19[0] = v9;
    MEMORY[0x277D82BD8](v10);
    goto LABEL_25;
  }

  if (a1 == 15)
  {
LABEL_15:
    v3 = [MEMORY[0x277CCDAB0] countUnit];
    v4 = v19[0];
    v19[0] = v3;
    MEMORY[0x277D82BD8](v4);
    goto LABEL_25;
  }

  if ((a1 - 16) <= 1)
  {
    v11 = [MEMORY[0x277CCDAB0] unitFromString:@"J/s"];
    v12 = v19[0];
    v19[0] = v11;
    MEMORY[0x277D82BD8](v12);
    goto LABEL_25;
  }

  if ((a1 - 18) <= 1 || (a1 - 20) <= 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (!v19[0])
  {
    __assert_rtn("_CanonicalUnitForWorkoutMetric", "NLSessionActivity.m", 3614, "unit != nil");
  }

  v18 = MEMORY[0x277D82BE0](v19[0]);
  objc_storeStrong(v19, 0);

  return v18;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id NLSessionStateIdentifierDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  switch(a1)
  {
    case 0:
      objc_storeStrong(&location, @"NotStarted");
      break;
    case 1:
      objc_storeStrong(&location, @"Preparing");
      break;
    case 2:
      objc_storeStrong(&location, @"Recovery");
      break;
    case 3:
      objc_storeStrong(&location, @"Starting");
      break;
    case 4:
      objc_storeStrong(&location, @"InSession");
      break;
    case 5:
      objc_storeStrong(&location, @"Pausing");
      break;
    case 6:
      objc_storeStrong(&location, @"Resuming");
      break;
    case 7:
      objc_storeStrong(&location, @"Paused");
      break;
    case 8:
      objc_storeStrong(&location, @"Stopping");
      break;
    case 9:
      objc_storeStrong(&location, @"Stopped");
      break;
    case 10:
      objc_storeStrong(&location, @"SessionError");
      break;
    case 11:
      objc_storeStrong(&location, @"Ending");
      break;
    case 12:
      objc_storeStrong(&location, @"Ended");
      break;
    case 13:
      objc_storeStrong(&location, @"Completed");
      break;
    default:
      break;
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_Identifier(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

double _LastValueForGoalTypeIdentifier(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v11)
  {
    switch(v11)
    {
      case 1:
        v6 = [location distanceProvider];
        [v6 distance];
        v12 = v4;
        MEMORY[0x277D82BD8](v6);
        v9 = 1;
        break;
      case 2:
        [location duration];
        v12 = v3;
        v9 = 1;
        break;
      case 3:
        v7 = [location energyBurnProvider];
        [v7 totalActiveCaloriesBurned];
        v12 = v2;
        MEMORY[0x277D82BD8](v7);
        v9 = 1;
        break;
      default:
        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_8_0(v13, v11);
          _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "_LastValueForGoalTypeIdentifier encountered invalid goal type %ld", v13, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v12 = 0.0;
        v9 = 1;
        break;
    }
  }

  else
  {
    v12 = 0.0;
    v9 = 1;
  }

  objc_storeStrong(&location, 0);
  return v12;
}

void sub_20AF1C6B8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 32) = a1;
  *(v9 - 36) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v9 - 24));
  _Unwind_Resume(*(v9 - 32));
}

void sub_20AF1E35C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 72) = a1;
  *(v10 - 76) = a2;
  objc_destroyWeak((v10 - 32));
  objc_destroyWeak((v10 - 24));
  _Unwind_Resume(*(v10 - 72));
}

uint64_t _HKWorkoutIsIndoor(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = [location metadata];
  v2 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v2 BOOLValue];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&location, 0);
  return v4;
}

id NLWorkoutStartSourceDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  switch(a1)
  {
    case 0:
      objc_storeStrong(&location, @"Invalid");
      break;
    case 1:
      objc_storeStrong(&location, @"QuickStart");
      break;
    case 2:
      objc_storeStrong(&location, @"GoalConfig");
      break;
    case 3:
      objc_storeStrong(&location, @"OpenGoal");
      break;
    case 4:
      objc_storeStrong(&location, @"LapLength");
      break;
    case 5:
      objc_storeStrong(&location, @"Siri");
      break;
    case 6:
      objc_storeStrong(&location, @"URL");
      break;
    case 7:
      objc_storeStrong(&location, @"FitnessMachine");
      break;
    case 8:
      objc_storeStrong(&location, @"QuickSwitch");
      break;
    case 9:
      objc_storeStrong(&location, @"AutoDetect");
      break;
    case 10:
      objc_storeStrong(&location, @"Recovery");
      break;
    case 11:
      objc_storeStrong(&location, @"SeymourPaired");
      break;
    case 12:
      objc_storeStrong(&location, @"SeymourStandalone");
      break;
    case 13:
      objc_storeStrong(&location, @"GymKitSeymour");
      break;
    case 14:
      objc_storeStrong(&location, @"ActivityRoom");
      break;
    case 15:
      objc_storeStrong(&location, @"ConfigStartButton");
      break;
    case 16:
      objc_storeStrong(&location, @"ModalityWidget");
      break;
    case 17:
      objc_storeStrong(&location, @"Modality Widget Quick Switch");
      break;
    case 18:
      objc_storeStrong(&location, @"URLWithConfiguration");
      break;
    case 19:
      objc_storeStrong(&location, @"MirroredStart");
      break;
    case 20:
      objc_storeStrong(&location, @"MirroredStartSiri");
      break;
    case 21:
      objc_storeStrong(&location, @"ActivityDashboard");
      break;
    case 22:
      objc_storeStrong(&location, @"WidgetURL");
      break;
    case 23:
      objc_storeStrong(&location, @"SmartStackSuggestion");
      break;
    case 24:
      objc_storeStrong(&location, @"RaisedHandSuggestion");
      break;
    default:
      break;
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_1_8_34(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_66_8_0_8_0_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 66;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

BOOL NLSessionActivityIsTracking(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  IsPrepared = 1;
  if (!NLSessionActivityIsActive_0(location))
  {
    IsPrepared = 1;
    if (!NLSessionActivityIsPaused_0(location))
    {
      IsPrepared = NLSessionActivityIsPrepared(location);
    }
  }

  objc_storeStrong(&location, 0);
  return IsPrepared;
}

uint64_t __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

BOOL NLSessionActivityIsActive_0(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location state] == 6;
  objc_storeStrong(&location, 0);
  return v2;
}

BOOL NLSessionActivityIsPaused_0(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  IsPaused_0 = NLSessionActivityStateIsPaused_0([location state]);
  objc_storeStrong(&location, 0);
  return IsPaused_0;
}

BOOL NLSessionActivityIsPrepared(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location state] == 1;
  objc_storeStrong(&location, 0);
  return v2;
}

BOOL NLSessionActivityStateIsPaused_0(uint64_t a1)
{
  v2 = 1;
  if (a1 != 3)
  {
    v2 = 1;
    if (a1 != 8)
    {
      v2 = 1;
      if (a1 != 4)
      {
        v2 = 1;
        if (a1 != 5)
        {
          return a1 == 9;
        }
      }
    }
  }

  return v2;
}

void sub_20AF2BF9C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 72) = a1;
  *(v11 - 76) = a2;
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(*(v11 - 72));
}

void sub_20AF303EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int16 a48, char a49, char a50, int a51, uint64_t a52)
{
  if (a50)
  {
    objc_destroyWeak(location);
  }

  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_5_8_64_8_64_8_64_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_20AF34230(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 72) = a1;
  *(v9 - 76) = a2;
  objc_destroyWeak((v9 - 64));
  _Unwind_Resume(*(v9 - 72));
}

uint64_t __os_log_helper_16_2_4_8_64_8_0_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_20AF36A6C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id *location)
{
  *(v19 - 120) = a1;
  *(v19 - 124) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v19 - 72));
  _Unwind_Resume(*(v19 - 120));
}

double _RollingPaceForIntervalController(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = [location quantity];
  v5 = [MEMORY[0x277CCDAB0] meterUnit];
  [v6 doubleValueForUnit:?];
  v7 = v1;
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v2 = [location committedDuration];
  v8 = MEMORY[0x20F2E8430](v2, v7, v3);
  objc_storeStrong(&location, 0);
  return v8;
}

void sub_20AF3BDE0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id *location)
{
  *(v44 - 160) = a1;
  *(v44 - 164) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(a39);
  objc_destroyWeak((v44 - 48));
  _Unwind_Resume(*(v44 - 160));
}

uint64_t NLWorkoutStartSourceSupportsWorkoutVoiceMotivation(uint64_t a1)
{
  if (a1)
  {
    if ((a1 - 1) <= 6)
    {
      goto LABEL_15;
    }

    if (a1 != 8)
    {
      if ((a1 - 9) <= 1)
      {
        goto LABEL_15;
      }

      if ((a1 - 11) > 2)
      {
        if ((a1 - 14) <= 2)
        {
          goto LABEL_15;
        }

        if (a1 != 17)
        {
          if (a1 != 18)
          {
            if ((a1 - 19) <= 1)
            {
LABEL_14:
              v2 = 0;
              return v2 & 1;
            }

            if ((a1 - 21) > 1)
            {
              if ((a1 - 23) > 1)
              {
                return v2 & 1;
              }

              goto LABEL_14;
            }
          }

LABEL_15:
          v2 = 1;
          return v2 & 1;
        }
      }
    }
  }

  v2 = 0;
  return v2 & 1;
}

void _handlePreferencesChangedCallback_0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5[5] = a1;
  v5[4] = a2;
  v5[3] = a3;
  v5[2] = a4;
  v5[1] = a5;
  v5[0] = MEMORY[0x277D82BE0](a2);
  [v5[0] _musicPreferencesMayHaveChanged];
  objc_storeStrong(v5, 0);
}

uint64_t __os_log_helper_16_2_3_4_0_4_0_8_64(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 64;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_64_8_64_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void sub_20AF41B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, id *location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v24 - 104));
  _Unwind_Resume(a1);
}

id generateSplitMetadata(char a1, char a2, char a3, double a4, double a5, double a6, double a7)
{
  v32[7] = *MEMORY[0x277D85DE8];
  v7 = 3;
  if ((a3 & 1) == 0)
  {
    v7 = 1;
  }

  v31[0] = *MEMORY[0x277D0A738];
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v32[0] = v24;
  v31[1] = *MEMORY[0x277D0A768];
  v8 = &unk_282279CE8;
  if ((a1 & 1) == 0)
  {
    v8 = &unk_282279D00;
  }

  v32[1] = v8;
  v31[2] = *MEMORY[0x277D0A760];
  v23 = [MEMORY[0x277CCDAB0] meterUnit];
  v22 = [v10 quantityWithUnit:a4 doubleValue:?];
  v32[2] = v22;
  v31[3] = *MEMORY[0x277D0A750];
  v11 = MEMORY[0x277CCD7E8];
  v21 = [MEMORY[0x277CCDAB0] secondUnit];
  v20 = [v11 quantityWithUnit:a5 doubleValue:?];
  v32[3] = v20;
  v31[4] = *MEMORY[0x277D0A770];
  v12 = MEMORY[0x277CCD7E8];
  v19 = [MEMORY[0x277CCDAB0] meterUnit];
  v18 = [v12 quantityWithUnit:a6 doubleValue:?];
  v32[4] = v18;
  v31[5] = *MEMORY[0x277D0A758];
  v13 = MEMORY[0x277CCD7E8];
  v17 = [MEMORY[0x277CCDAB0] wattUnit];
  v16 = [v13 quantityWithUnit:a7 doubleValue:?];
  v32[5] = v16;
  v31[6] = *MEMORY[0x277D0A708];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a2 & 1];
  v32[6] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);

  return v15;
}

void addSimpleSumStats(void *a1, void *a2, void *a3, void *a4, void *a5, double a6)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v21 = 0;
  objc_storeStrong(&v21, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = a6;
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:{v21, a1}];
  v6 = objc_alloc(MEMORY[0x277CCDA50]);
  v15 = [v6 initWithDataType:v16 startDate:v20 endDate:v19];
  v14 = [MEMORY[0x277CCD7E8] quantityWithUnit:v18 doubleValue:v17];
  [v15 setSumQuantity:?];
  *&v7 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  [location setObject:v15 forKeyedSubscript:{v16, v7}];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
}

id NLWorkoutStateIdentifierDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        objc_storeStrong(&location, @"Recovery");
        break;
      case 2:
        objc_storeStrong(&location, @"Prepare");
        break;
      case 3:
        objc_storeStrong(&location, @"Paused");
        break;
      case 4:
        objc_storeStrong(&location, @"InSession");
        break;
      case 5:
        objc_storeStrong(&location, @"Ending");
        break;
      case 6:
        objc_storeStrong(&location, @"Ended");
        break;
    }
  }

  else
  {
    objc_storeStrong(&location, @"Initial");
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

id _GoalPropertiesKeyValueString(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v12 = MEMORY[0x277CCACA8];
  [location goalTypeIdentifier];
  v13 = FIUIHKWorkoutGoalTypeDescription();
  v14 = [v12 stringWithFormat:@"goalType=%@ ", v13];
  if (([MEMORY[0x277CCDD30] isAppleInternalInstall] & 1) != 0 && objc_msgSend(location, "goalTypeIdentifier"))
  {
    v9 = v14;
    v11 = [location value];
    [location goalTypeIdentifier];
    v10 = _HKWorkoutCanonicalUnitForGoalType();
    [v11 doubleValueForUnit:?];
    v2 = [v14 stringByAppendingFormat:@"goalValue=%f ", v1];
    v3 = v14;
    v14 = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = &v14;
  v8 = MEMORY[0x277D82BE0](v14);
  obja = 0;
  objc_storeStrong(v6, 0);
  objc_storeStrong(&location, obja);
  v4 = v8;

  return v4;
}

id _SwimmingPropertiesKeyValueString(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location identifier] == 46)
  {
    v11 = MEMORY[0x277CCACA8];
    [location swimmingLocationType];
    v12 = _HKWorkoutSwimmingLocationTypeName();
    v14 = [v11 stringWithFormat:@"locationType=%@ ", v12];
    *&v1 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if ([location swimmingLocationType] == 1)
    {
      v8 = v14;
      v10 = [location lapLength];
      v9 = [MEMORY[0x277CCDAB0] meterUnit];
      [v10 doubleValueForUnit:?];
      v3 = [v14 stringByAppendingFormat:@"poolLength=%f ", v2];
      v4 = v14;
      v14 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
    }

    v7 = &v14;
    v16 = MEMORY[0x277D82BE0](v14);
    v13 = 1;
    objc_storeStrong(v7, 0);
  }

  else
  {
    v16 = MEMORY[0x277D82BE0](@" ");
    v13 = 1;
  }

  objc_storeStrong(&location, 0);
  v5 = v16;

  return v5;
}

void NLWorkoutStateIdentifierShortHandStruct(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 1;
  a1[2] = 2;
  a1[3] = 4;
  a1[4] = 3;
  a1[5] = 5;
  a1[6] = 6;
}

id NLWorkoutStateEventIdentifierDescription(uint64_t a1)
{
  v6 = a1;
  location = 0;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        objc_storeStrong(&location, @"Recover");
        break;
      case 2:
        objc_storeStrong(&location, @"Started");
        break;
      case 3:
        objc_storeStrong(&location, @"Paused");
        break;
      case 4:
        objc_storeStrong(&location, @"Resumed");
        break;
      case 5:
        objc_storeStrong(&location, @"Ending");
        break;
      case 6:
        objc_storeStrong(&location, @"Ended");
        break;
    }
  }

  else
  {
    objc_storeStrong(&location, @"Prepare");
  }

  if (!location)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", v6];
    v2 = location;
    location = v1;
    MEMORY[0x277D82BD8](v2);
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

void _RegisterTransition_1(void *a1, void *a2, uint64_t a3)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v7 = 0;
  objc_storeStrong(&v7, a2);
  v5 = location;
  v6 = NLWorkoutStateEventIdentifierDescription(a3);
  [v5 registerTransition:a3 label:? toState:?];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

void sub_20AF49640(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id *location)
{
  *(v44 - 104) = a1;
  *(v44 - 108) = a2;
  objc_destroyWeak((v44 - 96));
  _Unwind_Resume(*(v44 - 104));
}

BOOL NLSessionActivityIsActive_1(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location state] == 6;
  objc_storeStrong(&location, 0);
  return v2;
}

BOOL NLSessionActivityStateIsPaused_1(uint64_t a1)
{
  v2 = 1;
  if (a1 != 3)
  {
    v2 = 1;
    if (a1 != 8)
    {
      v2 = 1;
      if (a1 != 4)
      {
        v2 = 1;
        if (a1 != 5)
        {
          return a1 == 9;
        }
      }
    }
  }

  return v2;
}

id NLWorkoutExperienceTypeDescription(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutExperienceTypeGuidedPairedNonGymKit");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutExperienceTypeGuidedPairedGymKit");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutExperienceTypeNonGuided");
        break;
      case 4:
        v2 = MEMORY[0x277D82BE0](@"NLWorkoutExperienceTypeGuidedStandaloneGymKit");
        break;
      default:
        v2 = 0;
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"NLWorkoutExperienceTypeGuidedStandalone");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_0_8_64_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

double NLWorkoutAutoDiscardDurationLimit()
{
  predicate = &NLWorkoutAutoDiscardDurationLimit_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_15);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  return *&NLWorkoutAutoDiscardDurationLimit_discardDurationLimit;
}

void __NLWorkoutAutoDiscardDurationLimit_block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  location[0] = [v3 objectForKey:@"NLAutoDiscardDurationLimit"];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (location[0])
  {
    [location[0] doubleValue];
    NLWorkoutAutoDiscardDurationLimit_discardDurationLimit = v2;
  }

  else
  {
    NLWorkoutAutoDiscardDurationLimit_discardDurationLimit = 0x404E000000000000;
  }

  objc_storeStrong(location, 0);
}

uint64_t CyclingPowerZonesConfigurationType.description.getter()
{
  if (*v0)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

WorkoutCore::CyclingPowerZonesConfigurationType_optional __swiftcall CyclingPowerZonesConfigurationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CyclingPowerZonesConfigurationType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CyclingPowerZonesConfigurationType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61756E616DLL;
  }

  else
  {
    v3 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v4 = 0xE900000000000063;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61756E616DLL;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CyclingPowerZonesConfigurationType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CyclingPowerZonesConfigurationType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CyclingPowerZonesConfigurationType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CyclingPowerZonesConfigurationType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CyclingPowerZonesConfigurationType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CyclingPowerZonesConfigurationType(uint64_t *a1@<X8>)
{
  v2 = 0x6974616D6F747561;
  if (*v1)
  {
    v2 = 0x6C61756E616DLL;
  }

  v3 = 0xE900000000000063;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CyclingPowerZonesConfigurationType()
{
  if (*v0)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t static CyclingPowerZonesSize.sizeForZoneCount(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 5;
  if ((result - 5) >= 4)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t CyclingPowerZonesSize.automaticZonePercentages()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySdGGMd, &_ss23_ContiguousArrayStorageCySnySdGGMR);
  if (v1 > 1)
  {
    result = swift_allocObject();
    if (v1 == 2)
    {
      *(result + 16) = xmmword_20B423920;
      *(result + 32) = xmmword_20B4238B0;
      *(result + 48) = xmmword_20B4238C0;
      *(result + 64) = xmmword_20B4238D0;
      *(result + 80) = xmmword_20B4238E0;
      *(result + 96) = xmmword_20B4238F0;
      *(result + 128) = 0x3FF599999999999ALL;
      v3 = (result + 136);
      *(result + 112) = xmmword_20B423900;
    }

    else
    {
      *(result + 16) = xmmword_20B4238A0;
      *(result + 32) = xmmword_20B4238B0;
      *(result + 48) = xmmword_20B4238C0;
      *(result + 64) = xmmword_20B4238D0;
      *(result + 80) = xmmword_20B4238E0;
      *(result + 96) = xmmword_20B4238F0;
      *(result + 144) = 0x3FF8000000000000;
      v3 = (result + 152);
      *(result + 112) = xmmword_20B423900;
      *(result + 128) = xmmword_20B423910;
    }
  }

  else
  {
    result = swift_allocObject();
    if (v1)
    {
      *(result + 16) = xmmword_20B423930;
      *(result + 32) = xmmword_20B4238B0;
      *(result + 48) = xmmword_20B4238C0;
      *(result + 64) = xmmword_20B4238D0;
      *(result + 112) = 0x3FF3333333333333;
      v3 = (result + 120);
      *(result + 80) = xmmword_20B4238E0;
      *(result + 96) = xmmword_20B4238F0;
    }

    else
    {
      *(result + 16) = xmmword_20B423940;
      *(result + 32) = xmmword_20B4238B0;
      *(result + 48) = xmmword_20B4238C0;
      *(result + 64) = xmmword_20B4238D0;
      *(result + 80) = xmmword_20B4238E0;
      *(result + 96) = 0x3FF0CCCCCCCCCCCDLL;
      v3 = (result + 104);
    }
  }

  *v3 = 0x4059000000000000;
  return result;
}

WorkoutCore::CyclingPowerZonesSize_optional __swiftcall CyclingPowerZonesSize.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 5;
  if ((rawValue - 5) >= 4)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CyclingPowerZonesSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1 + 5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CyclingPowerZonesSize(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2 + 5);
  return Hasher._finalize()();
}

uint64_t CyclingPowerZonesConfiguration.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CyclingPowerZonesConfiguration.zones.getter()
{
  if (*(v0 + 16))
  {

    return CyclingPowerZonesConfiguration.manualZones.getter();
  }

  else
  {
    v2 = *(*(v0 + 24) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySdGGMd, &_ss23_ContiguousArrayStorageCySnySdGGMR);
    inited = swift_initStackObject();
    inited[1] = xmmword_20B423930;
    inited[2] = xmmword_20B4238B0;
    inited[3] = xmmword_20B4238C0;
    inited[4] = xmmword_20B4238D0;
    inited[5] = xmmword_20B4238E0;
    inited[6] = xmmword_20B4238F0;
    inited[7] = xmmword_20B423950;
    v4 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(inited, v2);
    swift_setDeallocating();
    return v4;
  }
}

uint64_t CyclingPowerZonesConfiguration.manualZones.getter()
{
  if (*(*(v0 + 48) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 40)), (v1 & 1) != 0))
  {
  }

  else
  {
    v3 = 24;
    if (*(v0 + 16))
    {
      v3 = 32;
    }

    v4 = *(*(v0 + v3) + 16);
    v5 = CyclingPowerZonesSize.automaticZonePercentages()();
    v6 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(v5, v4);

    return v6;
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

BOOL CyclingPowerZonesConfiguration.isEmpty.getter(uint64_t (*a1)(uint64_t))
{
  v2 = (a1)();
  if (v2 >> 62)
  {
    v9 = __CocoaSet.count.getter();

    if (v9)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    return 1;
  }

LABEL_3:
  v5 = a1(v4);
  if (v5 >> 62)
  {
    type metadata accessor for Zone();
    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Zone();
    v6 = v5;
  }

  v7 = specialized static CyclingPowerZonesConfigurationEditor.hasAllEmptyZones(_:)(v6);

  return v7;
}

BOOL CyclingPowerZonesConfiguration.isAutomaticFromAppleFTP.getter()
{
  if (*(v0 + 16))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
  }

  if (*(v0 + 16) == 1)
  {
    if ((*(*(v0 + 32) + 24) & 1) == 0)
    {
LABEL_7:

      goto LABEL_10;
    }
  }

  else if ((*(*(v0 + 24) + 24) & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (*(v0 + 16) == 1)
  {
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = *(v0 + 24);
  }

  if (*(v3 + 16) <= 0.0)
  {
    return 0;
  }

  v4 = CyclingPowerZonesConfiguration.zones.getter();
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

uint64_t CyclingPowerZonesConfiguration.isAutomaticEmpty.getter(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = specialized static CyclingPowerZonesConfiguration.== infix(_:_:)(v1, v2);

  return v3 & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CyclingPowerZonesConfiguration.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CyclingPowerZonesConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CyclingPowerZonesConfiguration.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CyclingPowerZonesConfiguration.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000050544663;
  v4 = 0x6974616D6F747561;
  v5 = 0xEF657A695373656ELL;
  v6 = 0x6F5A6C61756E616DLL;
  v7 = 0x800000020B453FB0;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x54466C61756E616DLL;
    v3 = 0xE900000000000050;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000020B453F70;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CyclingPowerZonesConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6974616D6F747561;
  v3 = 0x6F5A6C61756E616DLL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x54466C61756E616DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CyclingPowerZonesConfiguration.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CyclingPowerZonesConfiguration.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CyclingPowerZonesConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CyclingPowerZonesConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CyclingPowerZonesConfiguration.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CyclingPowerZonesConfiguration.init(from:)(a1);
  return v2;
}

uint64_t *CyclingPowerZonesConfiguration.init(from:)(void *a1)
{
  v44 = *v1;
  v45 = v2;
  v41 = type metadata accessor for Date();
  v39 = *(v41 - 8);
  v5 = MEMORY[0x28223BE20](v41, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore30CyclingPowerZonesConfigurationC10CodingKeys33_09AB7EDB00CE9407A4E43BDC12EF48A3LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore30CyclingPowerZonesConfigurationC10CodingKeys33_09AB7EDB00CE9407A4E43BDC12EF48A3LLOGMR);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v15);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys();
  v43 = v17;
  v18 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v19 = v14;
    v38 = v7;
    v45 = v11;
    v21 = v40;
    v20 = v41;
    v47 = 0;
    lazy protocol witness table accessor for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v1;
    *(v1 + 16) = v46;
    v22 = type metadata accessor for FunctionalThresholdPower(0);
    v47 = 2;
    v23 = lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type FunctionalThresholdPower and conformance FunctionalThresholdPower, type metadata accessor for FunctionalThresholdPower, &protocol conformance descriptor for FunctionalThresholdPower);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v23;
    v37[4] = v46;
    v47 = 3;
    lazy protocol witness table accessor for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = v22;
    *(v37 + 40) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy11WorkoutCore21CyclingPowerZonesSizeOSayAA0cD4ZoneCGGMd, &_sSDy11WorkoutCore21CyclingPowerZonesSizeOSayAA0cD4ZoneCGGMR);
    v47 = 4;
    lazy protocol witness table accessor for type [CyclingPowerZonesSize : [CyclingPowerZone]] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37[6] = v46;
    LOBYTE(v46) = 5;
    lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v39;
    v34 = *(v39 + 32);
    v34(v37 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v19, v20);
    LOBYTE(v46) = 1;
    if (KeyedDecodingContainer.contains(_:)())
    {
      v47 = 1;
      v26 = v42;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v21 + 8))(v43, v26);
      v31 = v46;
    }

    else
    {
      v27 = v45;
      static Date.now.getter();
      (*(v21 + 8))(v43, v42);
      v28 = v38;
      (*(v25 + 16))(v38, v27, v20);
      v31 = swift_allocObject();
      *(v31 + 16) = 0;
      *(v31 + 24) = 1;
      v29 = v28;
      v30 = v34;
      v34((v31 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate), v29, v20);
      v30(v31 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v27, v20);
    }

    v32 = v37;
    v37[3] = v31;
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v32;
  }
}

uint64_t CyclingPowerZonesConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore30CyclingPowerZonesConfigurationC10CodingKeys33_09AB7EDB00CE9407A4E43BDC12EF48A3LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore30CyclingPowerZonesConfigurationC10CodingKeys33_09AB7EDB00CE9407A4E43BDC12EF48A3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = *(v3 + 16);
  v12 = 0;
  lazy protocol witness table accessor for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v12 = 1;
    type metadata accessor for FunctionalThresholdPower(0);
    lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type FunctionalThresholdPower and conformance FunctionalThresholdPower, type metadata accessor for FunctionalThresholdPower, &protocol conformance descriptor for FunctionalThresholdPower);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 32);
    v12 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = *(v3 + 40);
    v12 = 3;
    lazy protocol witness table accessor for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 48);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy11WorkoutCore21CyclingPowerZonesSizeOSayAA0cD4ZoneCGGMd, &_sSDy11WorkoutCore21CyclingPowerZonesSizeOSayAA0cD4ZoneCGGMR);
    lazy protocol witness table accessor for type [CyclingPowerZonesSize : [CyclingPowerZone]] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 5;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CyclingPowerZonesConfiguration.hash(into:)(uint64_t a1)
{
  v3 = 24;
  if (*(v1 + 16))
  {
    v3 = 32;
  }

  v4 = *(*(v1 + v3) + 16);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v4);

  String.hash(into:)();

  String.hash(into:)();

  if (*(v1 + 16))
  {
    v5 = CyclingPowerZonesConfiguration.manualZones.getter();
  }

  else
  {
    v6 = *(*(v1 + 24) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySdGGMd, &_ss23_ContiguousArrayStorageCySnySdGGMR);
    inited = swift_initStackObject();
    inited[1] = xmmword_20B423930;
    inited[2] = xmmword_20B4238B0;
    inited[3] = xmmword_20B4238C0;
    inited[4] = xmmword_20B4238D0;
    inited[5] = xmmword_20B4238E0;
    inited[6] = xmmword_20B4238F0;
    inited[7] = xmmword_20B423950;
    v5 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(inited, v6);
    swift_setDeallocating();
  }

  specialized Array<A>.hash(into:)(a1, v5);
}

char *CyclingPowerZonesConfiguration.deinit()
{

  v1 = OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CyclingPowerZonesConfiguration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Int CyclingPowerZonesConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = 24;
  if (*(v0 + 16))
  {
    v1 = 32;
  }

  v2 = *(*(v0 + v1) + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v2);

  String.hash(into:)();

  String.hash(into:)();

  if (*(v0 + 16) == 1)
  {
    v3 = CyclingPowerZonesConfiguration.manualZones.getter();
  }

  else
  {
    v4 = *(*(v0 + 24) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySdGGMd, &_ss23_ContiguousArrayStorageCySnySdGGMR);
    inited = swift_initStackObject();
    inited[1] = xmmword_20B423930;
    inited[2] = xmmword_20B4238B0;
    inited[3] = xmmword_20B4238C0;
    inited[4] = xmmword_20B4238D0;
    inited[5] = xmmword_20B4238E0;
    inited[6] = xmmword_20B4238F0;
    inited[7] = xmmword_20B423950;
    v3 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(inited, v4);
    swift_setDeallocating();
  }

  specialized Array<A>.hash(into:)(v7, v3);

  return Hasher._finalize()();
}

uint64_t *protocol witness for Decodable.init(from:) in conformance CyclingPowerZonesConfiguration@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = CyclingPowerZonesConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CyclingPowerZonesConfiguration(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 24;
  if (*(v2 + 16))
  {
    v3 = 32;
  }

  v4 = *(*(v2 + v3) + 16);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v4);

  String.hash(into:)();

  String.hash(into:)();

  if (*(v2 + 16) == 1)
  {
    v5 = CyclingPowerZonesConfiguration.manualZones.getter();
  }

  else
  {
    v6 = *(*(v2 + 24) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySdGGMd, &_ss23_ContiguousArrayStorageCySnySdGGMR);
    inited = swift_initStackObject();
    inited[1] = xmmword_20B423930;
    inited[2] = xmmword_20B4238B0;
    inited[3] = xmmword_20B4238C0;
    inited[4] = xmmword_20B4238D0;
    inited[5] = xmmword_20B4238E0;
    inited[6] = xmmword_20B4238F0;
    inited[7] = xmmword_20B423950;
    v5 = specialized static CyclingPowerZonesConfigurationEditor.calculateZones(for:with:)(inited, v6);
    swift_setDeallocating();
  }

  specialized Array<A>.hash(into:)(v9, v5);

  return Hasher._finalize()();
}

uint64_t protocol witness for static Canonical.canonical() in conformance CyclingPowerZonesConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static CyclingPowerZonesConfiguration.canonical()();
  *a1 = result;
  return result;
}

unint64_t CyclingPowerZonesConfiguration.description.getter()
{
  v0 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v0 - 8, v1);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, type metadata accessor for CyclingPowerZonesConfiguration, &protocol conformance descriptor for CyclingPowerZonesConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    _StringGuts.grow(_:)(50);

    v9 = FunctionalThresholdPower.description.getter();
    MEMORY[0x20F2E6D80](v9);

    MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B4550E0);
    v10 = FunctionalThresholdPower.description.getter();
    MEMORY[0x20F2E6D80](v10);

    MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
    MEMORY[0x20F2E6D80](v7, v8);

    outlined consume of Data._Representation(v2, v4);

    return 0xD00000000000001ALL;
  }

  else
  {
    outlined consume of Data._Representation(v2, v4);

    return 0;
  }
}

uint64_t CyclingPowerZonesConfiguration.isEditable.getter()
{
  if (*(v0 + 16) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance HKQuantityTypeIdentifier(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance HKQuantityTypeIdentifier(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance HKQuantityTypeIdentifier@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x20F2E6C00](v3);

  *a2 = v4;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance NLWorkoutPausedReason@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance NLWorkoutPausedReason@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NLWorkoutSplitsType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLWorkoutSplitsType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIBackgroundTaskIdentifier(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x20F2E72D0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIBackgroundTaskIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIBackgroundTaskIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance NLWorkoutPausedReason@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HKQuantityTypeIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x20F2E6C00](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName(uint64_t a1)
{
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName, &protocol conformance descriptor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance HKQuantityTypeIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type HKQuantityTypeIdentifier and conformance HKQuantityTypeIdentifier, type metadata accessor for HKQuantityTypeIdentifier, &protocol conformance descriptor for HKQuantityTypeIdentifier);
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type HKQuantityTypeIdentifier and conformance HKQuantityTypeIdentifier, type metadata accessor for HKQuantityTypeIdentifier, &protocol conformance descriptor for HKQuantityTypeIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIBackgroundTaskIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier, &protocol conformance descriptor for UIBackgroundTaskIdentifier);
  lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier, &protocol conformance descriptor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSNotificationName()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x20F2E6E10](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSNotificationName(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSNotificationName(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AVAudioSessionCategory(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    MEMORY[0x20F2E7FF0](v16);
    result = __CocoaSet.count.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x20F2E7FF0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x20F2E7A20](v5, a2);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v7 == 0.0)
      {
        v7 = 0.0;
      }

      MEMORY[0x20F2E8020](*&v7);
      if (v8 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v8;
      }

      ++v5;
      MEMORY[0x20F2E8020](*&v9);
      MEMORY[0x20F2E7FF0](*(v6 + 32));
      MEMORY[0x20F2E7FF0](*(v6 + 40));
      result = swift_unknownObjectRelease();
    }

    while (v4 != v5);
  }

  else
  {
    v10 = (a2 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x20F2E8020](*&v13);
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v14;
      }

      MEMORY[0x20F2E8020](*&v15);
      MEMORY[0x20F2E7FF0](*(v11 + 32));
      result = MEMORY[0x20F2E7FF0](*(v11 + 40));
      --v4;
    }

    while (v4);
  }

  return result;
}

{
  if (a2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    MEMORY[0x20F2E7FF0](v8);
    result = __CocoaSet.count.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x20F2E7FF0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      MEMORY[0x20F2E7A20](i, a2);
      TargetZone.hash(into:)(a1);
      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = a2 + 32;
    do
    {
      v7 += 8;

      TargetZone.hash(into:)(a1);

      --v5;
    }

    while (v5);
  }

  return result;
}

{
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v2 = a2 & 0xFFFFFFFFFFFFFF8;
  MEMORY[0x20F2E7FF0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  for (result = *(v2 + 16); result; result = __CocoaSet.count.getter())
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v32 = result;
    result = 0;
    while (1)
    {
      v33 = result;
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20]();
      }

      else
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v39);

      MEMORY[0x20F2E7FF0](v39[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v39);

      v4 = v39[0];
      if (v39[0] >> 62)
      {
        break;
      }

      MEMORY[0x20F2E7FF0](*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10));
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_11;
      }

LABEL_5:

      type metadata accessor for UUID();
      lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      dispatch thunk of Hashable.hash(into:)();

      result = v33 + 1;
      if (v33 + 1 == v32)
      {
        return result;
      }
    }

    v29 = __CocoaSet.count.getter();
    MEMORY[0x20F2E7FF0](v29);
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (v5 < 1)
    {
      goto LABEL_49;
    }

    v6 = 0;
    v36 = v4;
    v37 = v4 & 0xC000000000000001;
    v34 = v4 + 32;
    v35 = v5;
    while (2)
    {
      if (v37)
      {
        v7 = MEMORY[0x20F2E7A20](v6, v4);
      }

      else
      {
        v7 = *(v34 + 8 * v6);
      }

      v38 = v6;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v7 + 16));
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v39);

      v8 = v39[0];
      NSObject.hash(into:)();

      v9 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
      swift_beginAccess();
      v10 = *(v7 + v9);
      if (v10 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        MEMORY[0x20F2E7FF0](v28);
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        MEMORY[0x20F2E7FF0](*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v11)
      {
LABEL_37:
        v20 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v21 = *(v7 + v20);
        NSObject.hash(into:)();

        v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
        swift_beginAccess();
        v23 = *(v7 + v22);
        if (v23)
        {
          Hasher._combine(_:)(1u);
          v24 = v23;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v25 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
        swift_beginAccess();
        v26 = *(v7 + v25);
        if (v26)
        {
          Hasher._combine(_:)(1u);
          v27 = v26;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v39);

        if (v39[1])
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v6 = v38 + 1;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        dispatch thunk of Hashable.hash(into:)();

        if (v38 + 1 == v5)
        {
          goto LABEL_5;
        }

        continue;
      }

      break;
    }

    if (v11 >= 1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {

        for (i = 0; i != v11; ++i)
        {
          v13 = MEMORY[0x20F2E7A20](i, v10);
          String.hash(into:)();

          swift_beginAccess();
          v14 = *(v13 + 24);
          if (v14 == 0.0)
          {
            v14 = 0.0;
          }

          MEMORY[0x20F2E8020](*&v14);
          swift_beginAccess();
          v15 = *(v13 + 32);
          if (v15 == 0.0)
          {
            v15 = 0.0;
          }

          MEMORY[0x20F2E8020](*&v15);
          swift_beginAccess();
          Hasher._combine(_:)(*(v13 + 40));
          swift_unknownObjectRelease();
        }
      }

      else
      {

        v16 = 32;
        do
        {
          v17 = *(v10 + v16);

          String.hash(into:)();

          swift_beginAccess();
          v18 = *(v17 + 24);
          if (v18 == 0.0)
          {
            v18 = 0.0;
          }

          MEMORY[0x20F2E8020](*&v18);
          swift_beginAccess();
          v19 = *(v17 + 32);
          if (v19 == 0.0)
          {
            v19 = 0.0;
          }

          MEMORY[0x20F2E8020](*&v19);
          swift_beginAccess();
          Hasher._combine(_:)(*(v17 + 40));

          v16 += 8;
          --v11;
        }

        while (v11);
      }

      v5 = v35;
      v4 = v36;
      goto LABEL_37;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v30 = __CocoaSet.count.getter();
    MEMORY[0x20F2E7FF0](v30);
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2E7FF0](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 40);
      v8 = *(v5 + 48);
      if (*(v5 - 8))
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      if (v6)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v7)
        {
LABEL_12:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:
      Hasher._combine(_:)(v8);

      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    MEMORY[0x20F2E7FF0](v8);
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x20F2E7FF0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x20F2E7A20](i, a2);
      NSObject.hash(into:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      NSObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t specialized static CyclingPowerZonesConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 24;
  if (*(a1 + 16))
  {
    v3 = 32;
  }

  else
  {
    v3 = 24;
  }

  v4 = *(a1 + v3);
  if (*(a2 + 16))
  {
    v2 = 32;
  }

  v5 = *(a2 + v2);
  if (*(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

  v8 = *(v5 + 24);
  if (*(v4 + 24))
  {
    v9 = 0x726568746FLL;
  }

  else
  {
    v9 = 0x656C707061;
  }

  if (v8)
  {
    v10 = 0x726568746FLL;
  }

  else
  {
    v10 = 0x656C707061;
  }

  if (v9 == v10)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16))
  {
    v12 = 0x6C61756E616DLL;
  }

  else
  {
    v12 = 0x6974616D6F747561;
  }

  if (*(a1 + 16))
  {
    v13 = 0xE600000000000000;
  }

  else
  {
    v13 = 0xE900000000000063;
  }

  if (*(a2 + 16))
  {
    v14 = 0x6C61756E616DLL;
  }

  else
  {
    v14 = 0x6974616D6F747561;
  }

  if (*(a2 + 16))
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE900000000000063;
  }

  if (v12 == v14 && v13 == v15)
  {

LABEL_32:
    v17 = CyclingPowerZonesConfiguration.zones.getter();
    v18 = CyclingPowerZonesConfiguration.zones.getter();
    v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(v17, v18);

    return v19 & 1;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_32;
  }

  return 0;
}

uint64_t specialized static CyclingPowerZonesConfiguration.canonical()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v31 = &v28 - v11;
  static Date.now.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B423960;
  type metadata accessor for CyclingPowerZone();
  v13 = swift_allocObject();
  v13[1] = xmmword_20B423980;
  v13[2] = xmmword_20B423990;
  v13[3] = xmmword_20B423970;
  *(v12 + 32) = v13;
  v14 = swift_allocObject();
  v14[1] = xmmword_20B4239B0;
  v14[2] = xmmword_20B4239C0;
  v14[3] = xmmword_20B4239A0;
  *(v12 + 40) = v14;
  v15 = swift_allocObject();
  v15[1] = xmmword_20B4239E0;
  v15[2] = xmmword_20B4239F0;
  v15[3] = xmmword_20B4239D0;
  *(v12 + 48) = v15;
  v16 = swift_allocObject();
  v16[1] = xmmword_20B423A10;
  v16[2] = xmmword_20B423A20;
  v16[3] = xmmword_20B423A00;
  *(v12 + 56) = v16;
  v17 = swift_allocObject();
  v17[1] = xmmword_20B423A40;
  v17[2] = xmmword_20B423A50;
  v17[3] = xmmword_20B423A30;
  *(v12 + 64) = v17;
  v18 = swift_allocObject();
  v18[1] = xmmword_20B423A70;
  v18[2] = xmmword_20B423A80;
  v18[3] = xmmword_20B423A60;
  *(v12 + 72) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21CyclingPowerZonesSizeO_SayAC0fG4ZoneCGtGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21CyclingPowerZonesSizeO_SayAC0fG4ZoneCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 1;
  v20 = inited + 32;
  *(inited + 40) = v12;
  v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore21CyclingPowerZonesSizeO_SayAC0eF4ZoneCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CyclingPowerZonesSize, [CyclingPowerZone])(v20);
  static Date.now.getter();
  v29 = v1;
  v21 = *(v1 + 16);
  v21(v5, v9, v0);
  type metadata accessor for FunctionalThresholdPower(0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  v23 = *(v1 + 32);
  v23(v22 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v23(v22 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v9, v0);
  v24 = v31;
  v21(v9, v31, v0);
  v21(v5, v9, v0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0x4059000000000000;
  *(v25 + 24) = 1;
  v23(v25 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v5, v0);
  v23(v25 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v9, v0);
  Date.init()();
  (*(v29 + 8))(v24, v0);
  type metadata accessor for CyclingPowerZonesConfiguration(0);
  v26 = swift_allocObject();
  *(v26 + 16) = 1;
  *(v26 + 24) = v22;
  *(v26 + 32) = v25;
  *(v26 + 40) = 1;
  *(v26 + 48) = v30;
  v23(v26 + OBJC_IVAR____TtC11WorkoutCore30CyclingPowerZonesConfiguration_creationDate, v9, v0);
  return v26;
}

unint64_t lazy protocol witness table accessor for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration.CodingKeys and conformance CyclingPowerZonesConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType()
{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesConfigurationType and conformance CyclingPowerZonesConfigurationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize()
{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize;
  if (!lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZonesSize and conformance CyclingPowerZonesSize);
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [CyclingPowerZone] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
    lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(a2, type metadata accessor for CyclingPowerZone, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
    lazy protocol witness table accessor for type CyclingPowerZone and conformance Zone(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CyclingPowerZonesConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for CyclingPowerZonesConfiguration;
  if (!type metadata singleton initialization cache for CyclingPowerZonesConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CyclingPowerZonesSize] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CyclingPowerZonesSize] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CyclingPowerZonesSize] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore21CyclingPowerZonesSizeOGMd, &_sSay11WorkoutCore21CyclingPowerZonesSizeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CyclingPowerZonesSize] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CyclingPowerZonesConfigurationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CyclingPowerZonesConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CyclingPowerZonesSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CyclingPowerZonesSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for CyclingPowerZonesConfiguration(uint64_t a1)
{
  result = type metadata accessor for Date();
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NLSessionActivityHeartRateDataPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NLSessionActivityHeartRateDataPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CyclingPowerZonesConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CyclingPowerZonesConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t base witness table accessor for Equatable in NLWorkoutPausedReason()
{
  return lazy protocol witness table accessor for type FunctionalThresholdPower and conformance FunctionalThresholdPower(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason, &protocol conformance descriptor for NLWorkoutPausedReason);
}

{
  return _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type NLWorkoutPausedReason and conformance NLWorkoutPausedReason, type metadata accessor for NLWorkoutPausedReason, &protocol conformance descriptor for NLWorkoutPausedReason);
}

unint64_t specialized CyclingPowerZonesConfiguration.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CyclingPowerZonesConfiguration.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined destroy of (CyclingPowerZonesSize, [CyclingPowerZone])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21CyclingPowerZonesSizeO_SayAA0cD4ZoneCGtMd, &_s11WorkoutCore21CyclingPowerZonesSizeO_SayAA0cD4ZoneCGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIBackgroundTaskIdentifier(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t GoalWorkoutConfiguration.analyticsKey.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  v0 = v3;
  v1 = [v3 goalTypeIdentifier];

  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x796772656E65;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701669236;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x65636E6174736964;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1852141679;
  }
}

uint64_t key path getter for GoalWorkoutConfiguration.goal : GoalWorkoutConfiguration@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for GoalWorkoutConfiguration.goal : GoalWorkoutConfiguration(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

void *specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:values:)(uint64_t a1, uint64_t a2, double a3)
{
  v35 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v29 - v11;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v36 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = a2 + 32;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = 0;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v31 = *MEMORY[0x277CCCC38];
    v32 = v17;
    v29 = (v16 - 8);
    v30 = v13;
    while (1)
    {
      v18 = *(v34 + 8 * v15);
      v19 = v16;
      v32(v9, v35, v4);
      Date.init(timeInterval:since:)();
      result = [ObjCClassFromMetadata quantityTypeForIdentifier_];
      if (!result)
      {
        break;
      }

      v21 = result;
      ++v15;
      v22 = [objc_opt_self() wattUnit];
      v23 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v18];

      static Date.+ infix(_:_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v25 = Date._bridgeToObjectiveC()().super.isa;
      v26 = [objc_opt_self() quantitySampleWithType:v21 quantity:v23 startDate:isa endDate:v25];

      v27 = *v29;
      (*v29)(v9, v4);
      v27(v12, v4);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 = v19;
      if (v30 == v15)
      {
        v14 = v36;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v28 = specialized _arrayForceCast<A, B>(_:)(v14);

    return v28;
  }

  return result;
}

void *specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:minValue:maxValue:)(uint64_t a1, double a2, double a3, double a4)
{
  v40 = a1;
  v7 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v12);
  v16 = &v36 - v15;
  v41 = MEMORY[0x277D84F90];
  v17 = a2 / 5.0;
  if (COERCE__INT64(fabs(a2 / 5.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v17)
  {
    v18 = 0;
    v19 = 360.0 / v17;
    v20 = (a4 - a3) * 0.5;
    v21 = v20 + a3;
    v38 = *(v14 + 16);
    v37 = *MEMORY[0x277CCCC38];
    v39 = v14 + 16;
    v22 = (v14 + 8);
    v36 = v17;
    while (1)
    {
      v23 = v18;
      v24 = v18;
      v38(v11, v40, v7);
      Date.init(timeInterval:since:)();
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
      result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
      if (!result)
      {
        goto LABEL_18;
      }

      v25 = result;
      v26 = v21 + v20 * sin(v19 * v24 * 0.0174532925);
      v27 = [objc_opt_self() wattUnit];
      v28 = [objc_opt_self() quantityWithUnit:v27 doubleValue:v26];

      static Date.+ infix(_:_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v30 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [objc_opt_self() quantitySampleWithType:v25 quantity:v28 startDate:isa endDate:v30];

      v32 = *v22;
      (*v22)(v11, v7);
      v33 = v31;
      MEMORY[0x20F2E6F30]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v32(v16, v7);
      v18 = v23 + 1;
      if (v36 == v23 + 1)
      {
        v34 = v41;
        goto LABEL_13;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_13:
  v35 = specialized _arrayForceCast<A, B>(_:)(v34);

  return v35;
}

uint64_t specialized static ChartDataProvider.fakePowerData(values:)(uint64_t a1)
{
  v43 = a1;
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v39, v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Date();
  v36 = *(v13 - 8);
  v14 = v36;
  v37 = v13;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  v22 = [objc_opt_self() wattUnit];
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  (*(v14 + 16))(v18, v21, v13);
  type metadata accessor for ChartDataProvider(0);
  v23 = swift_allocObject();
  v24 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v25 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v35 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(v23 + v24, v12, v8);
  v26 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v23 + v26) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v25);
  v34 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v44 = v25;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v40, *MEMORY[0x277D85260], v42);
  v28 = v36;
  *(v23 + v34) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = v37;
  (*(v28 + 32))(v23 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v18, v37);
  v30 = v43;
  *(v23 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v27;
  *(v23 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = 0x4082C00000000000;
  *(v23 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = 48;
  *(v23 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 0;
  if (v30)
  {
    v31 = specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:values:)(v21, v30, 600.0);
  }

  else
  {
    v31 = specialized static ChartDataProvider.makeFakePowerSamples(startDate:workoutDuration:minValue:maxValue:)(v21, 600.0, 200.0, 300.0);
  }

  ChartDataProvider.add(samples:)(v31);

  (*(v28 + 8))(v21, v29);
  return v23;
}

char *specialized static ChartDataProvider.fakeElevationData(unit:)(void *a1)
{
  v62 = a1;
  v1 = type metadata accessor for ElevationSample(0);
  v68 = *(v1 - 8);
  v69 = v1;
  v3 = MEMORY[0x28223BE20](v1, v2);
  v70 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v56 - v6;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v8 - 1);
  v65 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v63 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v61, v11);
  v60 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v59 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v56 - v19;
  v21 = type metadata accessor for Date();
  v58 = *(v21 - 8);
  v22 = v58;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = v56 - v29;
  v71 = v56 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = v56 - v32;
  static Date.now.getter();
  Date.init(timeInterval:since:)();
  v34 = *(v22 + 16);
  v72 = v33;
  v66 = v34;
  v67 = v22 + 16;
  v34(v30, v33, v21);
  type metadata accessor for ChartDataProvider(0);
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v37 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v17 + 32))(v35 + v36, v20, v16);
  v38 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v35 + v38) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v37);
  v57 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  v56[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v73 = v37;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v64)[13](v63, *MEMORY[0x277D85260], v65);
  v39 = v70;
  *(v35 + v57) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = v58 + 32;
  (*(v58 + 32))(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v71, v21);
  v41 = v62;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v62;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = 0x409C200000000000;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = 48;
  v63 = v35;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 0;
  v65 = objc_opt_self();
  v64 = objc_opt_self();
  v42 = (v40 - 24);
  v43 = v41;
  v44 = 0;
  do
  {
    v45 = sin(v44 * 7.5 * 0.0174532925) * 125.0 + 175.0;
    v46 = v66;
    v66(v71, v72, v21);
    Date.init(timeInterval:since:)();
    v46(v7, v26, v21);
    v47 = [v65 footUnit];
    v48 = [v64 quantityWithUnit:v47 doubleValue:v45];

    *&v7[*(v69 + 20)] = v48;
    outlined init with copy of ElevationSample(v7, v39);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v50 = v37[2];
    v49 = v37[3];
    if (v50 >= v49 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v37);
    }

    ++v44;
    outlined destroy of ElevationSample(v7);
    v51 = *v42;
    (*v42)(v26, v21);
    v37[2] = v50 + 1;
    v52 = v37 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v50;
    v39 = v70;
    outlined init with take of ElevationSample(v70, v52);
  }

  while (v44 != 48);
  v53 = specialized _arrayForceCast<A, B>(_:)(v37);

  v54 = v63;
  ChartDataProvider.add(samples:)(v53);

  v51(v72, v21);
  return v54;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of ElevationSample(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationSample(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ElevationSample(uint64_t a1)
{
  v2 = type metadata accessor for ElevationSample(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ElevationSample(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElevationSample(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

WorkoutCore::FakeableMetric __swiftcall FakeableMetric.init(key:value:)(Swift::String key, Swift::Double value)
{
  *v2 = key;
  *(v2 + 16) = value;
  result.key = key;
  result.value = value;
  return result;
}

double FakeableMetric.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = objc_opt_self();
  if ([v4 shouldShowFakeData])
  {
    v5 = MEMORY[0x20F2E6C00](*&v1, v2);
    v6 = [v4 fakeValueForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v7 = Optional._bridgeToObjectiveC()();
    outlined destroy of Any?(v10);
    v3 = 0.0;
    if ([v7 respondsToSelector_])
    {
      [v7 doubleValue];
      v3 = v8;
    }

    swift_unknownObjectRelease();
  }

  return v3;
}

double (*FakeableMetric.wrappedValue.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = FakeableMetric.wrappedValue.getter();
  return FakeableMetric.wrappedValue.modify;
}

double FakeableMetric.wrappedValue.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FakeableMetric(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FakeableMetric(uint64_t result, int a2, int a3)
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

uint64_t FIUIWorkoutActivityType.ActivityTypeMetadata.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF8Metadata33_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF8Metadata33_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = a2;
  v13 = a3;
  outlined copy of Data?(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v12, v13);
  return (*(v7 + 8))(v10, v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys and conformance FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FIUIWorkoutActivityType.ActivityType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF033_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySo23FIUIWorkoutActivityTypeC11WorkoutCoreE0eF033_B1F58F99D22EFFC3BA188270C3371452LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[0] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[0] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[0] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 24);
    v11[47] = 3;
    outlined init with copy of FIUIWorkoutActivityType.ActivityType(v3, v11);
    lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityTypeMetadata and conformance FIUIWorkoutActivityType.ActivityTypeMetadata();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data?(v12, *(&v12 + 1));
    v11[0] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized FIUIWorkoutActivityType.ActivityType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FIUIWorkoutActivityType.ActivityType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType.CodingKeys and conformance FIUIWorkoutActivityType.ActivityType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FIUIWorkoutActivityType.serialize()()
{
  v1 = v0;
  specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v1, &v4);

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  outlined destroy of FIUIWorkoutActivityType.ActivityType(&v4);
  return v2;
}

uint64_t specialized FIUIWorkoutActivityType.ActivityTypeMetadata.init(metadata:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v1 = objc_opt_self();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8[0] = 0;
    v3 = [v1 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v8];

    v4 = v8[0];
    if (v3)
    {
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      v7 = v4;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  else
  {

    return 0;
  }
}

id specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = [a1 auxiliaryTypeIdentifier];
  v6 = [a1 isIndoor];
  v7 = [a1 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = specialized FIUIWorkoutActivityType.ActivityTypeMetadata.init(metadata:)(v8);
  v11 = v10;
  result = [a1 isPartOfMultiSport];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
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

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}