uint64_t static FitnessAccessibilityIdentifier.build(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D28, &qword_1E5CD6350);
  sub_1E5CBB064();
  return sub_1E5CD59C8();
}

uint64_t sub_1E5CBAF5C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1E5CBAFB8()
{
  sub_1E5CD5BF8();

  result = MEMORY[0x1E693A8C0](0xD000000000000012, 0x80000001E5CD73A0);
  qword_1EE2C2088 = 0xD000000000000013;
  unk_1EE2C2090 = 0x80000001E5CD7310;
  return result;
}

unint64_t sub_1E5CBB064()
{
  result = qword_1EE2C2038;
  if (!qword_1EE2C2038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED065D28, &qword_1E5CD6350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C2038);
  }

  return result;
}

uint64_t WorkoutImageProvider.init(healthStore:)(void *a1)
{
  v2 = v1;
  type metadata accessor for FitnessPlusSessionProvider();
  swift_allocObject();
  v4 = a1;
  *(v2 + 24) = FitnessPlusSessionProvider.init(healthStore:)(v4);
  type metadata accessor for AppIconImageProvider();
  v5 = swift_allocObject();
  v6 = sub_1E5CBB9B8(MEMORY[0x1E69E7CC0]);

  *(v5 + 16) = v6;
  *(v2 + 16) = v5;
  return v2;
}

id FitnessPlusSessionProvider.init(healthStore:)(void *a1)
{
  v2 = v1;
  result = [objc_allocWithZone(MEMORY[0x1E696C678]) initWithHealthStore_];
  if (result)
  {
    v5 = result;
    sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
    v6 = sub_1E5CD5B88();
    v7 = _s11SeymourCore12DependenciesC10ActivityUIE08activityE05queue18wheelchairUseCacheACSo012OS_dispatch_G0C_So013_HKWheelchairi14CharacteristicJ0CtFZ_0(v6, v5);

    *(v2 + 16) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D78, &qword_1E5CD6800);
    sub_1E5CD5598();

    sub_1E5CBB33C(v8, v2 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065ED0, &qword_1E5CD6808);
    sub_1E5CD5598();

    sub_1E5CBB33C(v8, v2 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D88, &qword_1E5CD6810);
    sub_1E5CD5598();

    sub_1E5CBB33C(v8, v2 + 104);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5CBB33C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E5CBB354(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _s11SeymourCore12DependenciesC10ActivityUIE08activityE05queue18wheelchairUseCacheACSo012OS_dispatch_G0C_So013_HKWheelchairi14CharacteristicJ0CtFZ_0(uint64_t a1, void *a2)
{
  sub_1E5CD55A8();
  MEMORY[0x1E693A3F0](a1);
  sub_1E5CD5598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D68, &qword_1E5CD6440);
  sub_1E5CD5598();
  v4 = sub_1E5CD5828();
  swift_allocObject();
  v5 = sub_1E5CD5818();
  v17 = v4;
  v18 = MEMORY[0x1E69CD510];
  v16 = v5;
  sub_1E5CBB610(v19, v15);
  sub_1E5CD5848();
  swift_allocObject();

  sub_1E5CD5838();
  sub_1E5CD5998();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_1E5CD58D8();
  swift_allocObject();
  v9 = sub_1E5CD58C8();
  v17 = v8;
  v18 = MEMORY[0x1E69CAB08];
  v16 = v9;
  v10 = sub_1E5CD5888();
  swift_allocObject();
  v11 = sub_1E5CD5868();
  sub_1E5CD5878();
  v17 = v10;
  v18 = MEMORY[0x1E69CD538];
  v16 = v11;
  v15[3] = sub_1E5CBB674();
  v15[4] = MEMORY[0x1E69CD6A8];
  v15[0] = a2;
  sub_1E5CD57F8();
  swift_allocObject();

  v12 = a2;
  sub_1E5CD57E8();
  v13 = sub_1E5CD5588();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v13;
}

uint64_t sub_1E5CBB610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E5CBB674()
{
  result = qword_1EE2C2020;
  if (!qword_1EE2C2020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2C2020);
  }

  return result;
}

uint64_t sub_1E5CBB6C8(uint64_t a1, uint64_t a2)
{
  sub_1E5CD5848();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D70, &qword_1E5CD6448);
  v9 = sub_1E5CBB890(&qword_1EE2C2040, &qword_1ED065D70, &qword_1E5CD6448);
  __swift_allocate_boxed_opaque_existential_1(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D78, &qword_1E5CD6800);
  sub_1E5CD5568();
  v2 = sub_1E5CD56A8();
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_1E5CD57F8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D80, &qword_1E5CD6450);
  v9 = sub_1E5CBB890(&qword_1EE2C2048, &qword_1ED065D80, &qword_1E5CD6450);
  __swift_allocate_boxed_opaque_existential_1(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D88, &qword_1E5CD6810);
  sub_1E5CD5568();
  v3 = sub_1E5CD56A8();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D90, &qword_1E5CD6458);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E5CD6430;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_1E5CD5698();

  v5 = sub_1E5CD5688();

  return v5;
}

uint64_t sub_1E5CBB890(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_1E5CBB9B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E68, &qword_1E5CD6758);
    v3 = sub_1E5CD5C58();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1E5CC515C(v7, v8);
      result = sub_1E5CBD820(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5CBBAEC(uint64_t a1, int a2)
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

uint64_t sub_1E5CBBB0C(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5CBBB34()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5CBBB7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E5CBBBCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E5CBBC14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1E5CBBC64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5CBBC9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5CBBCDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5CBBD1C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5CBBD54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DF0, &qword_1E5CD66D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);

  sub_1E5CC513C(*(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5CBBE38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1E5CBBF30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5CBC000()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5CBC0EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E50, &qword_1E5CD6748);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5CBC1C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E5CBC218()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5CBC250()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1E5CBC2AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5CBC2E4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E5CBC34C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5CBC3A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5CBC404()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E5CBC468()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5CBC4A0()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5CBC4E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E5CBC55C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5CBC5A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5CBC5F8()
{
  v1 = sub_1E5CD55F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5CBC738()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5CBC784()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5CBC7BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E5CBC850()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E5CBC900()
{
  result = MEMORY[0x1E693A8C0](0x656E6F442ELL, 0xE500000000000000);
  qword_1ED065CA8 = 0xD00000000000001ELL;
  unk_1ED065CB0 = 0x80000001E5CD6FC0;
  return result;
}

uint64_t static MindfulnessAccessibilityIdentifier.SessionSummaryView.closeButton.getter()
{
  if (qword_1ED065CA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED065CA8;

  return v0;
}

uint64_t static MindfulnessAccessibilityIdentifier.build(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D28, &qword_1E5CD6350);
  sub_1E5CBB064();
  return sub_1E5CD59C8();
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

uint64_t getEnumTagSinglePayload for WeeklySummaryChartUtility(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WeeklySummaryChartUtility(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_1E5CBCC04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5CBCC24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1E5CBCC78(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t HKWorkout.isFitnessPlusWorkout.getter()
{
  v1 = [v0 metadata];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_1E5CD59B8();

  v4 = sub_1E5CD58F8();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_1E5CBD820(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_8;
  }

  sub_1E5CBD898(*(v3 + 56) + 32 * v6, v11);

  v9 = 1;
LABEL_8:
  sub_1E5CBDDE8(v11, &qword_1ED065D48, &qword_1E5CD6408);
  return v9;
}

BOOL sub_1E5CBCDD8()
{
  v1 = sub_1E5CD57D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D50, &qword_1E5CD6418);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D58, &unk_1E5CD6420);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v36 = v0;
  v15 = [v0 metadata];
  if (v15)
  {
    v16 = v15;
    sub_1E5CD59B8();
  }

  sub_1E5CD57C8();
  v17 = sub_1E5CD57A8();

  v37 = v17;
  if (v17)
  {
    v18 = v17;
    sub_1E5CD57B8();

    v19 = *(v2 + 56);
    v19(v14, 0, 1, v1);
  }

  else
  {
    v19 = *(v2 + 56);
    v19(v14, 1, 1, v1);
  }

  (*(v2 + 104))(v12, *MEMORY[0x1E69E3138], v1);
  v19(v12, 0, 1, v1);
  v20 = *(v4 + 48);
  sub_1E5CBDD78(v14, v6);
  sub_1E5CBDD78(v12, &v6[v20]);
  v21 = *(v2 + 48);
  if (v21(v6, 1, v1) == 1)
  {
    sub_1E5CBDDE8(v12, &qword_1ED065D58, &unk_1E5CD6420);
    sub_1E5CBDDE8(v14, &qword_1ED065D58, &unk_1E5CD6420);
    v22 = v21(&v6[v20], 1, v1);
    v23 = v37;
    if (v22 == 1)
    {
      sub_1E5CBDDE8(v6, &qword_1ED065D58, &unk_1E5CD6420);
LABEL_18:

      return 1;
    }

    goto LABEL_11;
  }

  v24 = v35;
  sub_1E5CBDD78(v6, v35);
  if (v21(&v6[v20], 1, v1) == 1)
  {
    sub_1E5CBDDE8(v12, &qword_1ED065D58, &unk_1E5CD6420);
    sub_1E5CBDDE8(v14, &qword_1ED065D58, &unk_1E5CD6420);
    (*(v2 + 8))(v24, v1);
    v23 = v37;
LABEL_11:
    sub_1E5CBDDE8(v6, &qword_1ED065D50, &qword_1E5CD6418);
    goto LABEL_12;
  }

  v30 = v34;
  (*(v2 + 32))(v34, &v6[v20], v1);
  sub_1E5CBDE48();
  v31 = v24;
  v32 = sub_1E5CD59E8();
  v33 = *(v2 + 8);
  v33(v30, v1);
  sub_1E5CBDDE8(v12, &qword_1ED065D58, &unk_1E5CD6420);
  sub_1E5CBDDE8(v14, &qword_1ED065D58, &unk_1E5CD6420);
  v33(v31, v1);
  sub_1E5CBDDE8(v6, &qword_1ED065D58, &unk_1E5CD6420);
  v23 = v37;
  if (v32)
  {
    goto LABEL_18;
  }

LABEL_12:
  v25 = v36;
  if ([v36 workoutActivityType] == 82)
  {

    return 0;
  }

  else
  {
    v27 = [v25 workoutActivities];
    sub_1E5CBDEA0();
    v28 = sub_1E5CD5A78();

    if (v28 >> 62)
    {
      v29 = sub_1E5CD5C28();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v29 > 1;
  }
}

uint64_t sub_1E5CBD35C(unsigned int *a1)
{
  v31 = a1;
  v2 = sub_1E5CD57D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D50, &qword_1E5CD6418);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D58, &unk_1E5CD6420);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = [v1 metadata];
  if (v16)
  {
    v17 = v16;
    sub_1E5CD59B8();
  }

  sub_1E5CD57C8();
  v18 = sub_1E5CD57A8();

  if (v18)
  {
    v19 = v18;
    sub_1E5CD57B8();

    v20 = *(v3 + 56);
    v20(v15, 0, 1, v2);
  }

  else
  {
    v20 = *(v3 + 56);
    v20(v15, 1, 1, v2);
  }

  (*(v3 + 104))(v13, *v31, v2);
  v20(v13, 0, 1, v2);
  v21 = *(v5 + 48);
  sub_1E5CBDD78(v15, v7);
  sub_1E5CBDD78(v13, &v7[v21]);
  v22 = *(v3 + 48);
  if (v22(v7, 1, v2) != 1)
  {
    v24 = v30;
    sub_1E5CBDD78(v7, v30);
    if (v22(&v7[v21], 1, v2) != 1)
    {
      v25 = v29;
      (*(v3 + 32))(v29, &v7[v21], v2);
      sub_1E5CBDE48();
      v23 = sub_1E5CD59E8();

      v26 = *(v3 + 8);
      v26(v25, v2);
      sub_1E5CBDDE8(v13, &qword_1ED065D58, &unk_1E5CD6420);
      sub_1E5CBDDE8(v15, &qword_1ED065D58, &unk_1E5CD6420);
      v26(v30, v2);
      sub_1E5CBDDE8(v7, &qword_1ED065D58, &unk_1E5CD6420);
      return v23 & 1;
    }

    sub_1E5CBDDE8(v13, &qword_1ED065D58, &unk_1E5CD6420);
    sub_1E5CBDDE8(v15, &qword_1ED065D58, &unk_1E5CD6420);
    (*(v3 + 8))(v24, v2);
    goto LABEL_11;
  }

  sub_1E5CBDDE8(v13, &qword_1ED065D58, &unk_1E5CD6420);
  sub_1E5CBDDE8(v15, &qword_1ED065D58, &unk_1E5CD6420);
  if (v22(&v7[v21], 1, v2) != 1)
  {
LABEL_11:
    sub_1E5CBDDE8(v7, &qword_1ED065D50, &qword_1E5CD6418);
    v23 = 0;
    return v23 & 1;
  }

  sub_1E5CBDDE8(v7, &qword_1ED065D58, &unk_1E5CD6420);
  v23 = 1;
  return v23 & 1;
}

unint64_t sub_1E5CBD820(uint64_t a1, uint64_t a2)
{
  sub_1E5CD5D18();
  sub_1E5CD5A38();
  v4 = sub_1E5CD5D38();

  return sub_1E5CBD97C(a1, a2, v4);
}

uint64_t sub_1E5CBD898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E5CBD8F4(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1E5CD34E4(*(v1 + 40), a1);

  return sub_1E5CBDA34(v2, v3);
}

unint64_t sub_1E5CBD938(uint64_t a1)
{
  v2 = sub_1E5CD5D08();

  return sub_1E5CBDD0C(a1, v2);
}

unint64_t sub_1E5CBD97C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E5CD5C98())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E5CBDA34(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v2 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v10 = 0xD000000000000010;
            v11 = 0x80000001E5CD6FE0;
          }

          else
          {
            v10 = 0x74697465706D6F63;
            v11 = 0xEC000000736E6F69;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v10 = 0x507373656E746966;
          }

          else
          {
            v10 = 0x45646574696D696CLL;
          }

          if (v6 == 4)
          {
            v11 = 0xEB0000000073756CLL;
          }

          else
          {
            v11 = 0xEE006E6F69746964;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 0x7974697669746361;
        }

        else
        {
          v7 = 0x7374756F6B726F77;
        }

        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x7449726F466F67;
        }

        else
        {
          v8 = 7105633;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v10 = v8;
        }

        else
        {
          v10 = v7;
        }

        if (*(*(v2 + 48) + v4) <= 1u)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }

      v12 = 0xD000000000000010;
      if (v5 != 6)
      {
        v12 = 0x74697465706D6F63;
      }

      v13 = 0xEC000000736E6F69;
      if (v5 == 6)
      {
        v13 = 0x80000001E5CD6FE0;
      }

      v14 = 0x507373656E746966;
      if (v5 != 4)
      {
        v14 = 0x45646574696D696CLL;
      }

      v15 = 0xEE006E6F69746964;
      if (v5 == 4)
      {
        v15 = 0xEB0000000073756CLL;
      }

      if (v5 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 2)
      {
        v16 = 0x7974697669746361;
      }

      else
      {
        v16 = 0x7374756F6B726F77;
      }

      v17 = 0xE800000000000000;
      if (v5)
      {
        v18 = 0x7449726F466F67;
      }

      else
      {
        v18 = 7105633;
      }

      if (v5)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v5 <= 3 ? v16 : v12;
      v21 = v5 <= 3 ? v17 : v13;
      if (v10 == v20 && v11 == v21)
      {
        break;
      }

      v22 = sub_1E5CD5C98();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
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

unint64_t sub_1E5CBDD0C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1E5CBDD78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D58, &unk_1E5CD6420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5CBDDE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1E5CBDE48()
{
  result = qword_1ED065D60;
  if (!qword_1ED065D60)
  {
    sub_1E5CD57D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065D60);
  }

  return result;
}

unint64_t sub_1E5CBDEA0()
{
  result = qword_1EE2C2030;
  if (!qword_1EE2C2030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2C2030);
  }

  return result;
}

id sub_1E5CBDEF0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6989B18]) init];
  v1 = FIUIColorSpecRGB(0x9Bu, 0x6Eu, 0xFAu);
  [v0 setNonGradientTextColor_];

  v2 = FIUIColorSpecRGB(0x16u, 0x10u, 0x28u);
  [v0 setGradientDarkColor_];

  v3 = FIUIColorSpecRGB(0x2Fu, 0x21u, 0x5Au);
  [v0 setGradientLightColor_];

  v4 = FIUIColorSpecRGB(0x9Bu, 0x6Eu, 0xFAu);
  [v0 setAdjustmentButtonBackgroundColor_];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor_];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor_];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor_];

  return v0;
}

id sub_1E5CBE0A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6989B18]) init];
  v1 = FIUIColorSpecRGB(0, 0xFFu, 0xA8u);
  [v0 setNonGradientTextColor_];

  v2 = FIUIColorSpecRGB(2u, 0x23u, 0x1Cu);
  [v0 setGradientDarkColor_];

  v3 = FIUIColorSpecRGB(4u, 0x33u, 0x23u);
  [v0 setGradientLightColor_];

  v4 = FIUIColorSpecRGB(0, 0xFFu, 0xA8u);
  [v0 setAdjustmentButtonBackgroundColor_];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor_];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor_];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor_];

  return v0;
}

id sub_1E5CBE260()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6989B18]) init];
  v1 = FIUIColorSpecRGB(0x3Au, 0xE9u, 0xE6u);
  [v0 setNonGradientTextColor_];

  v2 = FIUIColorSpecRGB(0, 0x25u, 0x22u);
  [v0 setGradientDarkColor_];

  v3 = FIUIColorSpecRGB(0, 0x3Du, 0x39u);
  [v0 setGradientLightColor_];

  v4 = FIUIColorSpecRGB(0x3Au, 0xE9u, 0xE6u);
  [v0 setAdjustmentButtonBackgroundColor_];

  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  [v0 setValueDisplayColor_];

  v7 = [v5 blackColor];
  [v0 setButtonTextColor_];

  v8 = [v5 blackColor];
  [v0 setButtonDisabledTextColor_];

  return v0;
}

id sub_1E5CBE418(void *a1)
{
  v2 = sub_1E5CD57D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 workoutActivityType] == 84)
  {
    result = [objc_opt_self() diveColors];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v7 = [a1 metadata];
  if (v7)
  {
    v8 = v7;
    sub_1E5CD59B8();
  }

  sub_1E5CD57C8();
  v9 = sub_1E5CD57A8();

  if (v9)
  {
    sub_1E5CD57B8();
    v10 = (*(v3 + 88))(v5, v2);
    if (v10 == *MEMORY[0x1E69E3120])
    {
      sub_1E5CD5798();
      if (swift_dynamicCastClass())
      {
        v11 = sub_1E5CD5788();
        v12 = [v11 goalTypeIdentifier];

        result = [objc_opt_self() metricColorsForGoalTypeIdentifier_];
      }

      else
      {
        result = [objc_opt_self() metricColorsForGoalTypeIdentifier_];
      }
    }

    else if (v10 == *MEMORY[0x1E69E3138])
    {
      result = sub_1E5CBDEF0();
    }

    else if (v10 == *MEMORY[0x1E69E3128])
    {
      result = sub_1E5CBE0A8();
    }

    else if (v10 == *MEMORY[0x1E69E3130])
    {
      result = sub_1E5CBE260();
    }

    else
    {
      if (v10 != *MEMORY[0x1E69E3118])
      {
        v14 = [objc_opt_self() metricColorsForGoalTypeIdentifier_];

        (*(v3 + 8))(v5, v2);
        return v14;
      }

      result = [objc_opt_self() noMetricColors];
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v14 = result;

    return v14;
  }

  if (sub_1E5CBCDD8())
  {

    return sub_1E5CBDEF0();
  }

  else
  {
    v13 = [objc_opt_self() metricColorsForGoalTypeIdentifier_];

    return v13;
  }
}

id FIUIColorSpecRGB(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x1E69DC888] colorWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:1.0];

  return v3;
}

id sub_1E5CBE844(double a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E5CBEA20;
  *(v7 + 24) = v6;
  v13[4] = sub_1E5CBEA3C;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E5CCF6FC;
  v13[3] = &block_descriptor;
  v8 = _Block_copy(v13);
  v9 = v2;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = [v10 imageWithRenderingMode_];

    return v12;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5CBEA5C()
{
  v0 = sub_1E5CD5B78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5CD5988();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E5CD5B68();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
  sub_1E5CD5B58();
  sub_1E5CD5978();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1E5CD5BA8();
  qword_1ED065D98 = result;
  return result;
}

uint64_t AppIconImageProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E5CBB9B8(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1E5CBEC88(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v5 + 120) = v4;
  *(v5 + 112) = a4;
  *(v5 + 73) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  *(v5 + 128) = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CBED58, 0, 0);
}

uint64_t sub_1E5CBED58()
{
  v41 = v0;
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5CD5938();
  __swift_project_value_buffer(v1, qword_1ED066AB0);

  v2 = sub_1E5CD5918();
  v3 = sub_1E5CD5B48();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E5CC4158(0xD00000000000002ELL, 0x80000001E5CD7060, &v40);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1E5CC4158(v5, v4, &v40);
    _os_log_impl(&dword_1E5CB9000, v2, v3, "%s bundleID: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v7, -1, -1);
    MEMORY[0x1E693B0C0](v6, -1, -1);
  }

  v8 = sub_1E5CC4DEC(*(v0 + 96), *(v0 + 104), *(v0 + 73), *(v0 + 112));
  v10 = v9;
  *(v0 + 144) = v8;
  *(v0 + 152) = v9;
  *(v0 + 64) = 0;
  *(v0 + 72) = -1;
  if (qword_1ED065CB8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 120);
  v12 = qword_1ED065D98;
  v13 = swift_allocObject();
  *(v0 + 160) = v13;
  v13[2] = v0 + 64;
  v13[3] = v11;
  v13[4] = v8;
  v13[5] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E5CC4EF8;
  *(v14 + 24) = v13;
  *(v0 + 48) = sub_1E5CC4F04;
  *(v0 + 56) = v14;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1E5CBFD1C;
  *(v0 + 40) = &block_descriptor_0;
  v15 = _Block_copy((v0 + 16));

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
  }

  v21 = *(v0 + 64);
  *(v0 + 168) = v21;
  v22 = *(v0 + 72);
  *(v0 + 74) = v22;
  if (v22 != 255)
  {
    sub_1E5CC515C(v21, v22 & 1);

    if (v22)
    {
      sub_1E5CC5124(*(v0 + 64), *(v0 + 72));

      v23 = *(v0 + 8);

      return v23(v21);
    }

    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    v39 = sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA8, &qword_1E5CD64C0);
    *v38 = v0;
    v38[1] = sub_1E5CBF380;
    v20 = MEMORY[0x1E69E7288];
    v16 = v0 + 88;
    v17 = v21;
    v18 = v39;

    return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
  }

  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 120);
  v28 = *(v0 + 112);
  v29 = *(v0 + 73);
  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  sub_1E5CD5AD8();
  v32 = sub_1E5CD5AF8();
  (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v29;
  *(v33 + 40) = v27;
  *(v33 + 48) = v31;
  *(v33 + 56) = v30;
  *(v33 + 64) = v28;

  v34 = sub_1E5CC155C(0, 0, v25, &unk_1E5CD64B8, v33);
  *(v0 + 192) = v34;
  v35 = swift_task_alloc();
  *(v0 + 200) = v35;
  *(v35 + 16) = v27;
  *(v35 + 24) = v8;
  *(v35 + 32) = v10;
  *(v35 + 40) = v34;
  *(v35 + 48) = 0;
  *(v35 + 56) = v26;
  v36 = swift_task_alloc();
  *(v0 + 208) = v36;
  *v36 = v0;
  v36[1] = sub_1E5CBF530;
  v37 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v36, 0, 0, 0xD000000000000017, 0x80000001E5CD7040, sub_1E5CC5120, v35, v37);
}

uint64_t sub_1E5CBF380()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E5CBFB34;
  }

  else
  {
    v2 = sub_1E5CBF494;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5CBF494()
{
  sub_1E5CC5124(*(v0 + 168), *(v0 + 74));
  v1 = *(v0 + 88);
  sub_1E5CC5124(*(v0 + 64), *(v0 + 72));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E5CBF530()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5CBF648, 0, 0);
}

uint64_t sub_1E5CBF648()
{
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  v2 = sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA8, &qword_1E5CD64C0);
  *v1 = v0;
  v1[1] = sub_1E5CBF724;
  v4 = *(v0 + 192);
  v5 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 80, v4, v2, v3, v5);
}

uint64_t sub_1E5CBF724()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1E5CBFBC8;
  }

  else
  {
    v2 = sub_1E5CBF840;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5CBF840()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[10];
  v0[29] = v5;
  v6 = v5;
  v7 = swift_task_alloc();
  v0[30] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  *(v7 + 48) = 1;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_1E5CBF95C;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v8, 0, 0, 0xD000000000000017, 0x80000001E5CD7040, sub_1E5CC78D0, v7, v9);
}

uint64_t sub_1E5CBF95C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5CBFA90, 0, 0);
}

uint64_t sub_1E5CBFA90()
{

  v1 = *(v0 + 232);
  sub_1E5CC5124(*(v0 + 64), *(v0 + 72));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E5CBFB34()
{
  sub_1E5CC5124(*(v0 + 168), *(v0 + 74));
  sub_1E5CC5124(*(v0 + 64), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5CBFBC8()
{

  sub_1E5CC5124(*(v0 + 64), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E5CBFC58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_1E5CBD820(a3, a4);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1E5CC515C(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = -1;
    }
  }

  else
  {
    v12 = 0;
    v13 = -1;
  }

  v14 = *a1;
  *a1 = v12;
  v15 = *(a1 + 8);
  *(a1 + 8) = v13;
  sub_1E5CC5124(v14, v15);
}

uint64_t sub_1E5CBFD44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  v16 = sub_1E5CD5AF8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v6;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = a6;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;

  sub_1E5CC05BC(0, 0, v15, &unk_1E5CD64D0, v17);
}

uint64_t sub_1E5CBFE9C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v9[16] = a9;
  v9[17] = v19;
  v14 = sub_1E5CD5958();
  v9[18] = v14;
  v9[19] = *(v14 - 8);
  v9[20] = swift_task_alloc();
  v15 = sub_1E5CD5988();
  v9[21] = v15;
  v9[22] = *(v15 - 8);
  v9[23] = swift_task_alloc();
  v16 = swift_task_alloc();
  v9[24] = v16;
  *v16 = v9;
  v16[1] = sub_1E5CC0024;

  return sub_1E5CBEC88(a6, a7, a8, a1);
}

uint64_t sub_1E5CC0024(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_1E5CC0360;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_1E5CC014C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5CC014C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
  v13 = sub_1E5CD5B88();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v1;
  v0[12] = sub_1E5CC5A50;
  v0[13] = v8;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1E5CC0578;
  v0[11] = &block_descriptor_66;
  v9 = _Block_copy(v0 + 8);

  v10 = v1;
  sub_1E5CD5978();
  v0[15] = MEMORY[0x1E69E7CC0];
  sub_1E5CC5994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DD8, &qword_1E5CD66C0);
  sub_1E5CC59EC();
  sub_1E5CD5BD8();
  MEMORY[0x1E693AA10](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5CC0360()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v14 = v0[22];
  v15 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
  v13 = sub_1E5CD5B88();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v1;
  v0[6] = sub_1E5CC5960;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E5CC0578;
  v0[5] = &block_descriptor_59;
  v9 = _Block_copy(v0 + 2);

  v10 = v1;
  sub_1E5CD5978();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1E5CC5994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DD8, &qword_1E5CD66C0);
  sub_1E5CC59EC();
  sub_1E5CD5BD8();
  MEMORY[0x1E693AA10](0, v2, v3, v9);
  _Block_release(v9);

  (*(v5 + 8))(v3, v4);
  (*(v14 + 8))(v2, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5CC0578(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1E5CC05BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5CC5788(a3, v25 - v10, &qword_1ED065DA0, &qword_1E5CD64A8);
  v12 = sub_1E5CD5AF8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5CBDDE8(v11, &qword_1ED065DA0, &qword_1E5CD64A8);
  }

  else
  {
    sub_1E5CD5AE8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E5CD5A88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E5CD5A28() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E5CBDDE8(a3, &qword_1ED065DA0, &qword_1E5CD64A8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5CBDDE8(a3, &qword_1ED065DA0, &qword_1E5CD64A8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5CC08BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5CC5788(a3, v25 - v10, &qword_1ED065DA0, &qword_1E5CD64A8);
  v12 = sub_1E5CD5AF8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5CBDDE8(v11, &qword_1ED065DA0, &qword_1E5CD64A8);
  }

  else
  {
    sub_1E5CD5AE8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E5CD5A88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1E5CD5A28() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E5CBDDE8(v25[0], &qword_1ED065DA0, &qword_1E5CD64A8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5CBDDE8(a3, &qword_1ED065DA0, &qword_1E5CD64A8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5CC0BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v27 = a6;
  v31 = a5;
  v9 = sub_1E5CD5988();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DF0, &qword_1E5CD66D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = sub_1E5CD5958();
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED065CB8 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED065D98;
  sub_1E5CD5948();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 49) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  v21 = v31;
  *(v20 + 40) = v31;
  v22 = v27 & 1;
  *(v20 + 48) = v27 & 1;
  (*(v12 + 32))(v20 + v19, v14, v11);
  aBlock[4] = sub_1E5CC5A88;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5CC0578;
  aBlock[3] = &block_descriptor_75;
  v23 = _Block_copy(aBlock);

  sub_1E5CC515C(v21, v22);
  v24 = v30;
  sub_1E5CD5978();
  MEMORY[0x1E693AA10](0, v24, v17, v23);
  _Block_release(v23);
  (*(v32 + 8))(v24, v33);
  (*(v28 + 8))(v17, v29);
}

uint64_t sub_1E5CC0F8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();

    sub_1E5CC515C(a4, a5 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + 16);
    *(v10 + 16) = 0x8000000000000000;
    sub_1E5CC4710(a4, a5 & 1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v10 + 16) = v13;
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DF0, &qword_1E5CD66D0);
  return sub_1E5CD5AA8();
}

uint64_t sub_1E5CC1098(uint64_t a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a2;
  *(v8 + 64) = a1;
  if (a5)
  {
    v12 = swift_task_alloc();
    *(v8 + 80) = v12;
    *v12 = v8;
    v12[1] = sub_1E5CC11C4;

    return sub_1E5CC61A4(a7, a8, a2);
  }

  else
  {
    v14 = swift_task_alloc();
    *(v8 + 88) = v14;
    *v14 = v8;
    v14[1] = sub_1E5CC1390;

    return sub_1E5CC6DE8(a7, a8, a2);
  }
}

uint64_t sub_1E5CC11C4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5CC12FC, 0, 0);
  }
}

uint64_t sub_1E5CC12FC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = sub_1E5CBE844(v1, v1);

  *v2 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E5CC1390(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v4 = *v2;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5CC14C8, 0, 0);
  }
}

uint64_t sub_1E5CC14C8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_1E5CBE844(v1, v1);

  *v2 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E5CC155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E5CC5788(a3, v22 - v9, &qword_1ED065DA0, &qword_1E5CD64A8);
  v11 = sub_1E5CD5AF8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E5CBDDE8(v10, &qword_1ED065DA0, &qword_1E5CD64A8);
  }

  else
  {
    sub_1E5CD5AE8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E5CD5A88();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1E5CD5A28() + 32;
      sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1E5CBDDE8(a3, &qword_1ED065DA0, &qword_1E5CD64A8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5CBDDE8(a3, &qword_1ED065DA0, &qword_1E5CD64A8);
  sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1E5CC1834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = objc_opt_self();

  v13 = [v12 sharedDeviceConnection];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1E5CD59F8();
    aBlock[4] = sub_1E5CC75A4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5CC2194;
    aBlock[3] = &block_descriptor_101;
    v16 = _Block_copy(aBlock);

    [v14 fetchWatchAppBundleIDForCompanionAppBundleID:v15 completion:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E5CC1A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v29 = a1;
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v34 = sub_1E5CD5958();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5CD5988();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = sub_1E5CD5968();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E7F88], v14);
  v18 = sub_1E5CD5BB8();
  (*(v15 + 8))(v17, v14);
  (*(v11 + 16))(v13, v28, v10);
  v19 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = v30;
  *(v20 + 2) = v29;
  *(v20 + 3) = v21;
  v22 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v22;
  (*(v11 + 32))(&v20[v19], v13, v10);
  aBlock[4] = sub_1E5CC763C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5CC0578;
  aBlock[3] = &block_descriptor_107;
  v23 = _Block_copy(aBlock);

  sub_1E5CD5978();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E5CC5994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DD8, &qword_1E5CD66C0);
  sub_1E5CC59EC();
  v25 = v33;
  v24 = v34;
  sub_1E5CD5BD8();
  MEMORY[0x1E693AA10](0, v9, v25, v23);
  _Block_release(v23);

  (*(v37 + 8))(v25, v24);
  (*(v35 + 8))(v9, v36);
}

void sub_1E5CC1E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = [objc_opt_self() sharedInstance];
  if (v11)
  {
    v12 = v11;
    if (!a2)
    {
    }

    v13 = sub_1E5CD59F8();

    (*(v8 + 16))(v10, a5, v7);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    (*(v8 + 32))(v15 + v14, v10, v7);
    aBlock[4] = sub_1E5CC7734;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5CC2128;
    aBlock[3] = &block_descriptor_113;
    v16 = _Block_copy(aBlock);

    [v12 getIconForBundleID:v13 iconVariant:50 block:v16 timeout:20.0];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E5CC20D8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);
  return sub_1E5CD5AA8();
}

void sub_1E5CC2128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1E5CC2194(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E5CD5A08();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_1E5CC222C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v30 = sub_1E5CD5958();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5CD5988();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E50, &qword_1E5CD6748);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = sub_1E5CD5968();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
  (*(v14 + 104))(v16, *MEMORY[0x1E69E7F88], v13);
  v17 = sub_1E5CD5BB8();
  (*(v14 + 8))(v16, v13);
  (*(v10 + 16))(v12, v26, v9);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v27;
  *(v19 + 24) = v20;
  *(v19 + 32) = a4;
  (*(v10 + 32))(v19 + v18, v12, v9);
  aBlock[4] = sub_1E5CC77BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5CC0578;
  aBlock[3] = &block_descriptor_124;
  v21 = _Block_copy(aBlock);

  sub_1E5CD5978();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1E5CC5994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DD8, &qword_1E5CD66C0);
  sub_1E5CC59EC();
  v23 = v29;
  v22 = v30;
  sub_1E5CD5BD8();
  MEMORY[0x1E693AA10](0, v8, v23, v21);
  _Block_release(v21);

  (*(v33 + 8))(v23, v22);
  (*(v31 + 8))(v8, v32);
}

uint64_t sub_1E5CC266C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = objc_opt_self();
  v5 = sub_1E5CD59F8();
  [v4 _applicationIconImageForBundleIdentifier_format_scale_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E50, &qword_1E5CD6748);
  return sub_1E5CD5AA8();
}

void sub_1E5CC2720(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  v41 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = objc_opt_self();
  v18 = [v17 bagSubProfile];
  if (v18)
  {
    v6 = v18;
    v39 = v16;
    v40 = a4;
    v19 = [v17 bagSubProfileVersion];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_opt_self() bagForProfile:v6 profileVersion:v19];

      v22 = objc_allocWithZone(MEMORY[0x1E698C9E0]);
      v23 = v21;
      v38 = v23;
      v24 = sub_1E5CD59F8();
      v25 = sub_1E5CD59F8();
      v26 = [v22 initWithType:0 clientIdentifier:v24 clientVersion:v25 bag:v23];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E08, &qword_1E5CD6700);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1E5CD6480;
      *(v27 + 32) = a2;
      *(v27 + 40) = a3;

      v28 = sub_1E5CD5A68();

      v37 = v26;
      [v26 setBundleIdentifiers_];

      v29 = [v26 perform];
      v30 = v39;
      (*(v13 + 16))(v39, v41, v12);
      v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v32 = (v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      *(v33 + 16) = a2;
      *(v33 + 24) = a3;
      (*(v13 + 32))(v33 + v31, v30, v12);
      *(v33 + v32) = a5;
      v34 = v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v34 = a6;
      *(v34 + 8) = v40 & 1;
      aBlock[4] = sub_1E5CC72B4;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E5CC3B6C;
      aBlock[3] = &block_descriptor_89;
      v35 = _Block_copy(aBlock);

      [v29 addFinishBlock_];
      _Block_release(v35);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E5CC2AE8(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v90 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - v16;
  v18 = sub_1E5CD54C8();
  v89 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_23;
  }

  v21 = [a1 responseDictionary];
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  v23 = sub_1E5CD59B8();
  v87 = a5;
  v24 = v23;

  v25 = sub_1E5CC3620(v24);

  if (!v25)
  {
    goto LABEL_23;
  }

  if (!*(v25 + 16))
  {
    goto LABEL_22;
  }

  v26 = sub_1E5CBD820(1635017060, 0xE400000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1E5CBD898(*(v25 + 56) + 32 * v26, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E20, &qword_1E5CD6710);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(v99[0] + 16))
  {
    goto LABEL_22;
  }

  v86 = *(v99[0] + 32);

  v28 = v86;

  if (!v28[2])
  {
    goto LABEL_22;
  }

  v29 = sub_1E5CBD820(0x7475626972747461, 0xEA00000000007365);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1E5CBD898(v28[7] + 32 * v29, &aBlock);

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E28, &qword_1E5CD6718);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v86 = v31;
  v32 = v99[0];
  if (!*(v99[0] + 16))
  {
    goto LABEL_22;
  }

  v33 = sub_1E5CBD820(0xD000000000000012, 0x80000001E5CD71C0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1E5CBD898(*(v32 + 56) + 32 * v33, &aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v35 = v99[0];
  if (!*(v99[0] + 16))
  {
    goto LABEL_22;
  }

  v36 = sub_1E5CBD820(7565161, 0xE300000000000000);
  if ((v37 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1E5CBD898(*(v35 + 56) + 32 * v36, &aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v38 = v99[0];
  if (!*(v99[0] + 16) || (v39 = sub_1E5CBD820(0x6B726F77747261, 0xE700000000000000), (v40 & 1) == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  sub_1E5CBD898(*(v38 + 56) + 32 * v39, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E30, &qword_1E5CD6720);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_1ED065D20 != -1)
    {
      swift_once();
    }

    v43 = sub_1E5CD5938();
    __swift_project_value_buffer(v43, qword_1ED066AB0);

    v44 = a2;
    v45 = sub_1E5CD5918();
    v46 = sub_1E5CD5B48();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v99[0] = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_1E5CC4158(v90, a4, v99);
      *(v47 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v49 = Error.logOutput.getter(v98);
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      aBlock = v49;
      v92 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E18, &qword_1E5CD6708);
      v53 = sub_1E5CD5BC8();
      v55 = v54;

      v56 = sub_1E5CC4158(v53, v55, v99);

      *(v47 + 14) = v56;
      _os_log_impl(&dword_1E5CB9000, v45, v46, "Failed to fetch icon from store for bundle id: %s: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E693B0C0](v48, -1, -1);
      MEMORY[0x1E693B0C0](v47, -1, -1);

      v52 = a2;
      if (a2)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v52 = a2;
      if (a2)
      {
LABEL_33:
        aBlock = v52;
        v58 = a2;
        sub_1E5CD5A98();
        return;
      }
    }

    sub_1E5CC7384();
    v52 = swift_allocError();
    *v57 = 0;
    goto LABEL_33;
  }

  v86 = objc_allocWithZone(MEMORY[0x1E698C980]);
  v41 = sub_1E5CD59A8();

  v86 = [v86 initWithArtworkDictionary_];

  v42 = a7 * a8;
  if ((a6 & 1) == 0)
  {
    sub_1E5CD5A08();
  }

  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_42;
  }

  v59 = sub_1E5CD59F8();

  v60 = [v86 URLWithHeight:v42 width:v42 cropStyle:v59 format:*MEMORY[0x1E698C610]];

  if (v60)
  {
    sub_1E5CD54B8();

    v61 = [objc_opt_self() ephemeralSessionConfiguration];
    v62 = [objc_opt_self() sessionWithConfiguration_];

    v63 = sub_1E5CD54A8();
    v64 = v88;
    (*(v88 + 16))(v17, v87, v15);
    v65 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v66 = swift_allocObject();
    (*(v64 + 32))(v66 + v65, v17, v15);
    v95 = sub_1E5CC73D8;
    v96 = v66;
    aBlock = MEMORY[0x1E69E9820];
    v92 = 1107296256;
    v93 = sub_1E5CC3AA4;
    v94 = &block_descriptor_95;
    v67 = _Block_copy(&aBlock);

    v68 = [v62 dataTaskWithURL:v63 completionHandler:v67];
    _Block_release(v67);

    [v68 resume];
    (*(v89 + 8))(v20, v18);
    return;
  }

  if (qword_1ED065D20 != -1)
  {
    goto LABEL_53;
  }

LABEL_42:
  v69 = sub_1E5CD5938();
  __swift_project_value_buffer(v69, qword_1ED066AB0);

  v70 = a2;
  v71 = sub_1E5CD5918();
  v72 = sub_1E5CD5B48();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v99[0] = v74;
    *v73 = 136315394;
    *(v73 + 4) = sub_1E5CC4158(v90, a4, v99);
    *(v73 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v75 = Error.logOutput.getter(v97);
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    aBlock = v75;
    v92 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E18, &qword_1E5CD6708);
    v78 = sub_1E5CD5BC8();
    v80 = v79;

    v81 = sub_1E5CC4158(v78, v80, v99);

    *(v73 + 14) = v81;
    _os_log_impl(&dword_1E5CB9000, v71, v72, "Failed to fetch icon from store for bundle id: %s: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v74, -1, -1);
    MEMORY[0x1E693B0C0](v73, -1, -1);
  }

  v82 = a2;
  if (!a2)
  {
    sub_1E5CC7384();
    v82 = swift_allocError();
    *v83 = 0;
  }

  aBlock = v82;
  v84 = a2;
  sub_1E5CD5A98();
}

unint64_t sub_1E5CC3620(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E38, &qword_1E5CD6728);
    v2 = sub_1E5CD5C58();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1E5CC7538(*(a1 + 48) + 40 * v12, v27);
        sub_1E5CBD898(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1E5CC7538(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1E5CBD898(v25 + 8, v20);
        sub_1E5CBDDE8(v24, &qword_1ED065E40, &qword_1E5CD6730);
        v21 = v18;
        sub_1E5CC7594(v20, v22);
        v13 = v21;
        sub_1E5CC7594(v22, v23);
        sub_1E5CC7594(v23, &v21);
        result = sub_1E5CBD820(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1E5CC7594(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1E5CC7594(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1E5CBDDE8(v24, &qword_1ED065E40, &qword_1E5CD6730);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1E5CC38FC(uint64_t a1, unint64_t a2, int a3, id a4)
{
  if (a2 >> 60 == 15)
  {
    if (!a4)
    {
      sub_1E5CC7384();
      swift_allocError();
      a4 = 0;
      *v10 = 0;
    }

    v11 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
    sub_1E5CD5A98();
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1E5CC74E4(a1, a2);
    sub_1E5CC74E4(a1, a2);
    v7 = sub_1E5CD54D8();
    v8 = [v6 initWithData_];

    sub_1E5CC747C(a1, a2);
    if (v8)
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
      sub_1E5CD5AA8();
      sub_1E5CC747C(a1, a2);
    }

    else
    {
      sub_1E5CC7384();
      swift_allocError();
      *v12 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
      sub_1E5CD5A98();
      sub_1E5CC747C(a1, a2);
    }
  }
}

uint64_t sub_1E5CC3AA4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E5CD54E8();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1E5CC747C(v6, v10);
}

void sub_1E5CC3B6C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t AppIconImageProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AppIconImageProvider.IconFetchError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5CD5D18();
  MEMORY[0x1E693ABA0](v1);
  return sub_1E5CD5D38();
}

uint64_t sub_1E5CC3CF4()
{
  v1 = *v0;
  sub_1E5CD5D18();
  MEMORY[0x1E693ABA0](v1);
  return sub_1E5CD5D38();
}

uint64_t sub_1E5CC3D68(uint64_t a1)
{
  v2 = *v1;
  sub_1E5CD5D18();
  MEMORY[0x1E693ABA0](v2);
  return sub_1E5CD5D38();
}

id sub_1E5CC3DBC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1E5CD59F8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1E5CD5478();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1E5CC3E98(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1E5CC3EE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5CC3FDC;

  return v6(a1);
}

uint64_t sub_1E5CC3FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5CC40FC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1E5CC4158(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1E5CC4158(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5CC4224(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E5CBD898(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5CC4224(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E5CC4330(a5, a6);
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
    result = sub_1E5CD5C18();
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

void *sub_1E5CC4330(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5CC437C(a1, a2);
  sub_1E5CC44AC(&unk_1F5F81C08);
  return v3;
}

void *sub_1E5CC437C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5CC4598(v5, 0);
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

  result = sub_1E5CD5C18();
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
        v10 = sub_1E5CD5A58();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5CC4598(v10, 0);
        result = sub_1E5CD5BE8();
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

uint64_t sub_1E5CC44AC(uint64_t result)
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

  result = sub_1E5CC460C(result, v11, 1, v3);
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

void *sub_1E5CC4598(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DE8, &qword_1E5CD66C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5CC460C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DE8, &qword_1E5CD66C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1E5CC4700(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1E5CC4710(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E5CBD820(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1E5CD4B58(v18, a5 & 1);
      v13 = sub_1E5CBD820(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1E5CD5CB8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1E5CD5090();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2 & 1;

    sub_1E5CC513C(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = v23[7] + 16 * v13;
  *v28 = a1;
  *(v28 + 8) = a2 & 1;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

uint64_t sub_1E5CC48AC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1E5CC49A0;

  return v5(v2 + 16);
}

uint64_t sub_1E5CC49A0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1E5CC4B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DC0, &qword_1E5CD6680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DC8, &qword_1E5CD6688);
    v7 = sub_1E5CD5C58();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5CC5788(v9, v5, &qword_1ED065DC0, &qword_1E5CD6680);
      result = sub_1E5CBD8F4(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_1E5CD53C8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5CC4CF0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DB8, &qword_1E5CD6678);
  v3 = sub_1E5CD5C58();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_1E5CBD938(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1E5CBD938(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5CC4DEC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E58, &qword_1E5CD6750);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E5CD6490;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1E5CC7830();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v11 = 0x656E6F685069;
  if (a3)
  {
    v11 = 0x6863746177;
  }

  v12 = 0xE600000000000000;
  if (a3)
  {
    v12 = 0xE500000000000000;
  }

  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v11;
  v13 = MEMORY[0x1E69E63B0];
  *(v8 + 80) = v12;
  v14 = MEMORY[0x1E69E6438];
  *(v8 + 136) = v13;
  *(v8 + 144) = v14;
  *(v8 + 112) = a4;

  return MEMORY[0x1EEDC5E80](0x2E255F40255F4025, 0xEA00000000006632, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5CC4F44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5CC502C;

  return sub_1E5CC1098(a1, v10, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E5CC502C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1E5CC5124(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1E5CC513C(result, a2 & 1);
  }
}

void sub_1E5CC513C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1E5CC515C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1E5CC5168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5CC502C;

  return sub_1E5CBFE9C(v10, a1, v4, v5, v6, v7, v8, v9, v11);
}

unint64_t sub_1E5CC5264()
{
  result = qword_1ED065DB0;
  if (!qword_1ED065DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065DB0);
  }

  return result;
}

uint64_t dispatch thunk of AppIconImageProvider.fetchAppIcon(bundleID:isWatch:preferredWidth:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v13 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E5CC542C;
  v11.n128_f64[0] = a4;

  return v13(a1, a2, a3, v11);
}

uint64_t sub_1E5CC542C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for AppIconImageProvider.IconFetchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppIconImageProvider.IconFetchError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E5CC56E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5CC5728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5CC5788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5CC57F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5CC78A8;

  return sub_1E5CC48AC(a1, v4);
}

uint64_t sub_1E5CC58A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5CC78A8;

  return sub_1E5CC3EE4(a1, v4);
}

unint64_t sub_1E5CC5994()
{
  result = qword_1ED065DD0;
  if (!qword_1ED065DD0)
  {
    sub_1E5CD5958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065DD0);
  }

  return result;
}

unint64_t sub_1E5CC59EC()
{
  result = qword_1ED065DE0;
  if (!qword_1ED065DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED065DD8, &qword_1E5CD66C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065DE0);
  }

  return result;
}

uint64_t sub_1E5CC5A88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DF0, &qword_1E5CD66D0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  return sub_1E5CC0F8C(v1, v2, v3, v4, v5);
}

uint64_t sub_1E5CC5B00(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v4 + 40) = a4;
  *(v4 + 128) = a3;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5CC5B28, 0, 0);
}

uint64_t sub_1E5CC5B28()
{
  v12 = v0;
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5CD5938();
  __swift_project_value_buffer(v1, qword_1ED066AB0);

  v2 = sub_1E5CD5918();
  v3 = sub_1E5CD5B48();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E5CC4158(0xD000000000000034, 0x80000001E5CD7130, &v11);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1E5CC4158(v5, v4, &v11);
    _os_log_impl(&dword_1E5CB9000, v2, v3, "%s bundleID: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v7, -1, -1);
    MEMORY[0x1E693B0C0](v6, -1, -1);
  }

  else
  {
  }

  v0[6] = 0x80000001E5CD7130;
  v0[7] = objc_opt_self();
  v0[8] = sub_1E5CD5AC8();
  v0[9] = sub_1E5CD5AB8();
  v9 = sub_1E5CD5A88();

  return MEMORY[0x1EEE6DFA0](sub_1E5CC5D58, v9, v8);
}

uint64_t sub_1E5CC5D58()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1E5CC5DE0, 0, 0);
}

uint64_t sub_1E5CC5DE0()
{
  *(v0 + 88) = sub_1E5CD5AB8();
  v2 = sub_1E5CD5A88();

  return MEMORY[0x1EEE6DFA0](sub_1E5CC5E6C, v2, v1);
}

uint64_t sub_1E5CC5E6C()
{
  v1 = *(v0 + 80);

  [v1 scale];
  *(v0 + 96) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5CC5EEC, 0, 0);
}

uint64_t sub_1E5CC5EEC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = *(v0 + 128);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  v8 = sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
  *v7 = v0;
  v7[1] = sub_1E5CC6008;
  v9 = *(v0 + 48);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000034, v9, sub_1E5CC72A4, v6, v8);
}

uint64_t sub_1E5CC6008()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E5CC6140;
  }

  else
  {

    v2 = sub_1E5CC6124;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5CC6140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5CC61A4(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5CC61C8, 0, 0);
}

uint64_t sub_1E5CC61C8()
{
  v15 = v0;
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5CD5938();
  __swift_project_value_buffer(v1, qword_1ED066AB0);

  v2 = sub_1E5CD5918();
  v3 = sub_1E5CD5B48();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E5CC4158(0xD00000000000002BLL, 0x80000001E5CD7100, &v14);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1E5CC4158(v5, v4, &v14);
    _os_log_impl(&dword_1E5CB9000, v2, v3, "%s bundleID: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v7, -1, -1);
    MEMORY[0x1E693B0C0](v6, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = swift_task_alloc();
  v0[6] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DF8, &qword_1E5CD66E8);
  *v11 = v0;
  v11[1] = sub_1E5CC6434;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD00000000000002ALL, 0x80000001E5CD70D0, sub_1E5CC729C, v10, v12);
}

uint64_t sub_1E5CC6434()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5CC654C, 0, 0);
}

uint64_t sub_1E5CC654C()
{
  if (*(v0 + 2))
  {
    v1 = *(v0 + 1);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 8) = v3;
    *v3 = v0;
    v3[1] = sub_1E5CC6624;
    v4 = v0[5];
    v6 = *(v0 + 3);
    v5 = *(v0 + 4);

    return sub_1E5CC5B00(v6, v5, 1, v4);
  }
}

uint64_t sub_1E5CC6624(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E5CC6724(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5CC6744, 0, 0);
}

uint64_t sub_1E5CC6744()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v4 = sub_1E5CC3DBC(v1, v2, 0);
  v0[5] = v4;
  v5 = objc_opt_self();
  v6 = sub_1E5CD59F8();
  v7 = [v5 _sourceWithBundleIdentifier_name_productType_options_];
  v0[6] = v7;

  if (v7)
  {
    if ((v4 != 0) | [v7 _hasFirstPartyBundleID] & 1)
    {
LABEL_3:
      v0[7] = objc_opt_self();
      v0[8] = sub_1E5CD5AC8();
      v0[9] = sub_1E5CD5AB8();
      v9 = sub_1E5CD5A88();

      return MEMORY[0x1EEE6DFA0](sub_1E5CC6940, v9, v8);
    }
  }

  else if (v4)
  {
    goto LABEL_3;
  }

  sub_1E5CC7384();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5CC6940()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1E5CC69C8, 0, 0);
}

uint64_t sub_1E5CC69C8()
{
  *(v0 + 88) = sub_1E5CD5AB8();
  v2 = sub_1E5CD5A88();

  return MEMORY[0x1EEE6DFA0](sub_1E5CC6A54, v2, v1);
}

uint64_t sub_1E5CC6A54()
{
  v1 = *(v0 + 80);

  [v1 scale];
  *(v0 + 96) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5CC6AD4, 0, 0);
}

uint64_t sub_1E5CC6AD4()
{
  v1 = v0[12];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DF8, &qword_1E5CD66E8);
  *v5 = v0;
  v5[1] = sub_1E5CC6BEC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000035, 0x80000001E5CD7280, sub_1E5CC77B0, v4, v6);
}

uint64_t sub_1E5CC6BEC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E5CC6D74;
  }

  else
  {

    v2 = sub_1E5CC6D08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5CC6D08()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E5CC6D74()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5CC6DE8(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5CC6E0C, 0, 0);
}

uint64_t sub_1E5CC6E0C()
{
  v13 = v0;
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5CD5938();
  __swift_project_value_buffer(v1, qword_1ED066AB0);

  v2 = sub_1E5CD5918();
  v3 = sub_1E5CD5B48();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E5CC4158(0xD00000000000002BLL, 0x80000001E5CD7250, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1E5CC4158(v5, v4, &v12);
    _os_log_impl(&dword_1E5CB9000, v2, v3, "%s bundleID: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v7, -1, -1);
    MEMORY[0x1E693B0C0](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1E5CC7008;
  v10 = v0[2];
  v9 = v0[3];

  return sub_1E5CC6724(v10, v9);
}

uint64_t sub_1E5CC7008(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

LABEL_3:
    v6 = swift_task_alloc();
    *(v4 + 6) = v6;
    *v6 = v5;
    v6[1] = sub_1E5CC719C;
    v7 = v4[4];
    v8 = *(v4 + 3);
    v9 = *(v4 + 2);

    return sub_1E5CC5B00(v9, v8, 0, v7);
  }

  if (!a1)
  {
    goto LABEL_3;
  }

  v11 = *(v5 + 1);

  return v11(a1);
}

uint64_t sub_1E5CC719C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1E5CC72B4(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_1E5CC2AE8(a1, a2, v9, v10, v2 + v6, v13, v8, v12);
}

unint64_t sub_1E5CC7384()
{
  result = qword_1ED065E10;
  if (!qword_1ED065E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065E10);
  }

  return result;
}

void sub_1E5CC73D8(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);

  sub_1E5CC38FC(a1, a2, a3, a4);
}

uint64_t sub_1E5CC747C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E5CC7490(a1, a2);
  }

  return a1;
}

uint64_t sub_1E5CC7490(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E5CC74E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

_OWORD *sub_1E5CC7594(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E5CC75A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1E5CC1A58(a1, a2, a3, v8, v9, v10);
}

void sub_1E5CC763C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1E5CC1E9C(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_91Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1E5CC7734(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E48, &qword_1E5CD6738);

  return sub_1E5CC20D8(a1);
}

uint64_t sub_1E5CC77BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E50, &qword_1E5CD6748);
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = v0[4];

  return sub_1E5CC266C(v1, v2, v3);
}

unint64_t sub_1E5CC7830()
{
  result = qword_1ED065E60;
  if (!qword_1ED065E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065E60);
  }

  return result;
}

uint64_t sub_1E5CC79CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E693A8C0](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x80000001E5CD72F0;
  return result;
}

uint64_t sub_1E5CC7A60()
{
  sub_1E5CD5BF8();

  result = MEMORY[0x1E693A8C0](0xD000000000000016, 0x80000001E5CD73E0);
  qword_1EE2C2070 = 0xD000000000000013;
  *algn_1EE2C2078 = 0x80000001E5CD7310;
  return result;
}

uint64_t sub_1E5CC7BA4()
{
  sub_1E5CD5BF8();

  result = MEMORY[0x1E693A8C0](0xD000000000000012, 0x80000001E5CD73C0);
  qword_1ED065E90 = 0xD000000000000013;
  *algn_1ED065E98 = 0x80000001E5CD7310;
  return result;
}

uint64_t sub_1E5CC7C5C()
{
  sub_1E5CD5BF8();

  result = MEMORY[0x1E693A8C0](0x67695373756C702ELL, 0xEF6E6F747475426ELL);
  qword_1ED065EA0 = 0xD000000000000013;
  *algn_1ED065EA8 = 0x80000001E5CD7310;
  return result;
}

uint64_t sub_1E5CC7D44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E693A8C0](a2, a3);
  *a4 = 0xD000000000000013;
  *a5 = 0x80000001E5CD7310;
  return result;
}

uint64_t sub_1E5CC7DD8()
{
  sub_1E5CD5BF8();

  result = MEMORY[0x1E693A8C0](0xD000000000000017, 0x80000001E5CD7380);
  qword_1EE2C2058 = 0xD000000000000013;
  qword_1EE2C2060 = 0x80000001E5CD7310;
  return result;
}

uint64_t sub_1E5CC7ED4()
{
  sub_1E5CD5BF8();

  result = MEMORY[0x1E693A8C0](0xD000000000000010, 0x80000001E5CD7360);
  qword_1ED065EC0 = 0xD000000000000025;
  *algn_1ED065EC8 = 0x80000001E5CD7330;
  return result;
}

uint64_t FitnessPlusSessionProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  FitnessPlusSessionProvider.init(healthStore:)(a1);
  return v2;
}

uint64_t sub_1E5CC800C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v73 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065ED8, &qword_1E5CD6818);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE0, &qword_1E5CD6820);
  v14 = *(v64 - 8);
  v62 = *(v14 + 64);
  v15 = MEMORY[0x1EEE9AC00](v64);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v70 = *(v19 - 8);
  v71 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v68 = v21;
  v69 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v63 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v60 - v24;
  sub_1E5CCAC3C(a1, v13);
  sub_1E5CBB610((v4 + 3), v74);
  v25 = swift_allocObject();
  sub_1E5CBB33C(v74, v25 + 16);
  *(v25 + 56) = a4;
  (*(v8 + 16))(v11, v13, v7);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v26, v11, v7);
  v29 = (v28 + v27);
  *v29 = sub_1E5CCE394;
  v29[1] = v25;
  sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
  v30 = v61;
  sub_1E5CD5718();
  (*(v8 + 8))(v13, v7);
  v31 = swift_allocObject();
  v32 = v66;
  v33 = v67;
  *(v31 + 16) = v66;
  *(v31 + 24) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E5CCE3D0;
  *(v34 + 24) = v31;
  v35 = v64;
  (*(v14 + 16))(v17, v30, v64);
  v36 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v37 = (v62 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v14 + 32))(v38 + v36, v17, v35);
  v39 = (v38 + v37);
  *v39 = sub_1E5CCE408;
  v39[1] = v34;

  v40 = v63;
  sub_1E5CD5718();
  (*(v14 + 8))(v30, v35);
  v41 = swift_allocObject();
  v42 = v65;
  v41[2] = v65;
  v41[3] = v32;
  v43 = v73;
  v41[4] = v33;
  v41[5] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1E5CCE55C;
  *(v44 + 24) = v41;
  v46 = v69;
  v45 = v70;
  v47 = v40;
  v48 = v71;
  (*(v70 + 16))(v69, v40, v71);
  v49 = v45;
  v50 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v51 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v49 + 32))(v52 + v50, v46, v48);
  v53 = (v52 + v51);
  *v53 = sub_1E5CCE57C;
  v53[1] = v44;

  v54 = v42;
  v55 = v72;
  sub_1E5CD5718();
  v56 = *(v49 + 8);
  v56(v47, v48);
  v57 = sub_1E5CD5738();
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v57(sub_1E5CCF6A8, v58);

  return (v56)(v55, v48);
}

uint64_t sub_1E5CC86BC(double a1, uint64_t a2, void *a3)
{
  v4 = sub_1E5CD56E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5CD5658();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5CD56F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5CD55D8();
  sub_1E5CD5648();
  sub_1E5CCEEC4(v10);
  sub_1E5CD56D8();
  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1E5CD5858();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1E5CC88D0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v8 = sub_1E5CD5938();
  __swift_project_value_buffer(v8, qword_1ED066AB0);
  v9 = a2;
  v10 = a1;
  v11 = sub_1E5CD5918();
  v12 = sub_1E5CD5B38();

  if (os_log_type_enabled(v11, v12))
  {
    v28 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315650;
    v15 = sub_1E5CD5D48();
    v17 = sub_1E5CC4158(v15, v16, &v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v9 description];
    v19 = sub_1E5CD5A08();
    v21 = v20;

    v22 = sub_1E5CC4158(v19, v21, &v30);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v23 = Error.logOutput.getter(v29);
    v25 = sub_1E5CC4158(v23, v24, &v30);

    *(v13 + 24) = v25;
    _os_log_impl(&dword_1E5CB9000, v11, v12, "%s: Failed to fetch image for %s: %s.", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v14, -1, -1);
    v26 = v13;
    a3 = v28;
    MEMORY[0x1E693B0C0](v26, -1, -1);
  }

  return a3(a1, 1);
}

uint64_t sub_1E5CC8B28(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v66 = a3;
  v67 = a2;
  v62 = a1;
  v73 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065ED8, &qword_1E5CD6818);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EF0, qword_1E5CD6830);
  v64 = *(v65 - 8);
  v16 = *(v64 + 64);
  v17 = MEMORY[0x1EEE9AC00](v65);
  v63 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v70 = *(v19 - 8);
  v71 = v19;
  v68 = *(v70 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v69 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v61 - v24;
  v25 = swift_allocObject();
  swift_weakInit();
  sub_1E5CBB610((v5 + 13), v77);
  sub_1E5CBB610((v5 + 3), v76);
  v26 = swift_allocObject();
  sub_1E5CBB33C(v77, v26 + 16);
  sub_1E5CBB33C(v76, v26 + 56);
  *(v26 + 96) = a4;
  *(v26 + 104) = v25;
  *(v26 + 112) = a5;
  sub_1E5CCAC3C(a1, v15);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E5CCE644;
  *(v27 + 24) = v26;
  (*(v10 + 16))(v13, v15, v9);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  (*(v10 + 32))(v29 + v28, v13, v9);
  v30 = (v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_1E5CCE65C;
  v30[1] = v27;

  v31 = v74;
  sub_1E5CD5718();
  (*(v10 + 8))(v15, v9);
  v32 = swift_allocObject();
  v33 = v67;
  v34 = v66;
  *(v32 + 16) = v67;
  *(v32 + 24) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E5CCE6B4;
  *(v35 + 24) = v32;
  v36 = v64;
  v37 = v63;
  v38 = v65;
  (*(v64 + 16))(v63, v31, v65);
  v39 = v36;
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = swift_allocObject();
  (*(v39 + 32))(v41 + v40, v37, v38);
  v42 = (v41 + ((v16 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_1E5CCE6D0;
  v42[1] = v35;

  v43 = v75;
  sub_1E5CD5718();
  (*(v39 + 8))(v74, v38);
  v44 = swift_allocObject();
  v45 = v62;
  v44[2] = v62;
  v44[3] = v33;
  v46 = v73;
  v44[4] = v34;
  v44[5] = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1E5CCE748;
  *(v47 + 24) = v44;
  v49 = v69;
  v48 = v70;
  v50 = v71;
  (*(v70 + 16))(v69, v43, v71);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v49, v50);
  v54 = (v53 + v52);
  *v54 = sub_1E5CCF698;
  v54[1] = v47;

  v55 = v45;
  v56 = v72;
  sub_1E5CD5718();
  v57 = *(v48 + 8);
  v57(v75, v50);
  v58 = sub_1E5CD5738();
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v58(sub_1E5CCF6A8, v59);

  return (v57)(v56, v50);
}

uint64_t sub_1E5CC9280@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a7@<D1>)
{
  v93 = a4;
  v104 = a5;
  v105 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F10, &qword_1E5CD6A68);
  v83 = *(v84 - 8);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v81 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v79 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE0, &qword_1E5CD6820);
  v90 = *(v91 - 1);
  v89 = *(v90 + 64);
  v13 = MEMORY[0x1EEE9AC00](v91);
  v88 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v102 = *(v16 - 8);
  v103 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v100 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v101 = &v79 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v95 = &v79 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v106 = &v79 - v24;
  v99 = v25;
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v79 - v26;
  v96 = sub_1E5CD56E8();
  v86 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E5CD5658();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E5CD56F8();
  v97 = *(v32 - 8);
  v98 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1E5CD55E8();
  v94 = sub_1E5CD5808();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1E5CD55C8();
  v92 = sub_1E5CD5808();

  v35 = swift_allocObject();
  v35[2] = 0;
  v36 = swift_allocObject();
  v36[3] = 0;
  v36[4] = 0;
  v36[2] = 0;
  v79 = a1;
  sub_1E5CD55D8();
  sub_1E5CD5648();
  sub_1E5CCEEC4(v31);
  sub_1E5CD56D8();
  (*(v86 + 8))(v28, v96);
  __swift_project_boxed_opaque_existential_1(v105, v105[3]);
  v37 = v87;
  v96 = v34;
  sub_1E5CD5858();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1E5CCF1AC;
  *(v38 + 24) = v35;
  v39 = v90;
  v40 = v88;
  v41 = v91;
  (*(v90 + 16))(v88, v37, v91);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v89 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v40, v41);
  v45 = (v44 + v43);
  *v45 = sub_1E5CCF6A0;
  v45[1] = v38;
  v105 = v35;

  sub_1E5CD5718();
  (*(v39 + 8))(v37, v41);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v46 = v82;
    sub_1E5CCB3FC(v82, a7);
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1E5CCF2A0;
    *(v47 + 24) = v36;
    v48 = v83;
    v49 = v81;
    v50 = v84;
    (*(v83 + 16))(v81, v46, v84);
    v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v52 = v36;
    v53 = (v80 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v48 + 32))(v54 + v51, v49, v50);
    v55 = (v54 + v53);
    v36 = v52;
    *v55 = sub_1E5CCF2BC;
    v55[1] = v47;
    swift_retain_n();

    v56 = v95;
    sub_1E5CD5718();

    (*(v48 + 8))(v46, v50);
  }

  else
  {
    v56 = v95;
    sub_1E5CD5748();
  }

  v85 = v36;
  v57 = v102;
  v58 = v103;
  v59 = *(v102 + 32);
  v93 = v102 + 32;
  v95 = v59;
  v60 = v106;
  (v59)(v106, v56, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F48, &qword_1E5CD6AA0);
  v61 = *(v57 + 72);
  v62 = *(v57 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1E5CD6430;
  v64 = v63 + ((v62 + 32) & ~v62);
  v65 = *(v57 + 16);
  v91 = v65;
  (v65)(v64, v107, v58);
  (v65)(v64 + v61, v60, v58);
  v108 = v63;
  sub_1E5CBB354(0, &qword_1EE2C2028, 0x1E69E9610);
  v66 = sub_1E5CD5B88();
  sub_1E5CD58E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F50, &qword_1E5CD6AA8);
  sub_1E5CCF1C8();
  v67 = v101;
  sub_1E5CD5708();

  v68 = swift_allocObject();
  v69 = v92;
  v68[2] = v94;
  v68[3] = v69;
  v68[4] = v105;
  v68[5] = v36;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1E5CCF22C;
  *(v70 + 24) = v68;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1E5CCF238;
  *(v71 + 24) = v70;
  v72 = v100;
  (v91)(v100, v67, v58);
  v73 = (v62 + 16) & ~v62;
  v74 = (v99 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (v95)(v75 + v73, v72, v58);
  v76 = (v75 + v74);
  *v76 = sub_1E5CCF268;
  v76[1] = v71;

  sub_1E5CD5718();
  v77 = *(v57 + 8);
  v77(v67, v58);
  v77(v106, v58);
  v77(v107, v58);
  (*(v97 + 8))(v96, v98);
}

void sub_1E5CC9DBC(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
  v5 = v3;
}

void sub_1E5CC9E1C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  swift_beginAccess();
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v5;

  v9 = v5;
  sub_1E5CCF0F8(v6, v7, v8);
}

id sub_1E5CC9EAC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  swift_beginAccess();
  v9 = *(a3 + 16);
  swift_beginAccess();
  v10 = a4[2];
  v11 = a4[3];
  v12 = a4[4];
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v9;
  a5[3] = v10;
  a5[4] = v11;
  a5[5] = v12;
  v13 = v9;
  sub_1E5CCE780(v10, v11, v12);
  v14 = a1;

  return a2;
}

void sub_1E5CC9F64(uint64_t a1, void (*a2)(id *))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = *a1;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = 0;
  v8 = v4;
  v9 = v11;
  v10 = v3;
  sub_1E5CCE780(v5, v6, v7);
  a2(&v11);
  sub_1E5CCF07C(v11, v12, v13, v14, v15, v16, v17);
}

void sub_1E5CCA008(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v8 = sub_1E5CD5938();
  __swift_project_value_buffer(v8, qword_1ED066AB0);
  v9 = a2;
  v10 = a1;
  v11 = sub_1E5CD5918();
  v12 = sub_1E5CD5B38();

  if (os_log_type_enabled(v11, v12))
  {
    v28 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315650;
    v15 = sub_1E5CD5D48();
    v17 = sub_1E5CC4158(v15, v16, &v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = [v9 description];
    v19 = sub_1E5CD5A08();
    v21 = v20;

    v22 = sub_1E5CC4158(v19, v21, &v30);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v23 = Error.logOutput.getter(v29);
    v25 = sub_1E5CC4158(v23, v24, &v30);

    *(v13 + 24) = v25;
    _os_log_impl(&dword_1E5CB9000, v11, v12, "%s: Failed to fetch session information for %s: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v14, -1, -1);
    v26 = v13;
    a3 = v28;
    MEMORY[0x1E693B0C0](v26, -1, -1);
  }

  v30 = a1;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v34 = 1;
  v27 = a1;
  a3(&v30);
  sub_1E5CCF07C(v30, v31, *(&v31 + 1), v32, *(&v32 + 1), v33, v34);
}

uint64_t sub_1E5CCA290(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5CCA2B8, 0, 0);
}

uint64_t sub_1E5CCA2B8()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);
  *v5 = v0;
  v5[1] = sub_1E5CCA3D8;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001E5CD7400, sub_1E5CCE768, v4, v6);
}

uint64_t sub_1E5CCA3D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5CCA4F4;
  }

  else
  {

    v2 = sub_1E5CC6124;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5CCA4F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5CCA558(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_1E5CC800C(a4, sub_1E5CCEFF0, v12, a2);
}

uint64_t sub_1E5CCA6B8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
    return sub_1E5CD5A98();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
    return sub_1E5CD5AA8();
  }
}

uint64_t sub_1E5CCA738(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5CCA760, 0, 0);
}

uint64_t sub_1E5CCA760()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1E5CCA86C;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000041, 0x80000001E5CD7420, sub_1E5CCE774, v5, &type metadata for FitnessPlusSessionProvider.SessionInformation);
}

uint64_t sub_1E5CCA86C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5CCA9A8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5CCA9A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5CCAA0C(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F30, &unk_1E5CD6A80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_1E5CC8B28(a5, sub_1E5CCEF74, v14, a2, a3);
}

uint64_t sub_1E5CCAB74(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 48))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F30, &unk_1E5CD6A80);
    return sub_1E5CD5A98();
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 24);
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = v1;
    v10 = v7;
    sub_1E5CCE780(v6, v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F30, &unk_1E5CD6A80);
    return sub_1E5CD5AA8();
  }
}

uint64_t sub_1E5CCAC3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F60, &qword_1E5CD6AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = sub_1E5CD56C8();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 metadata];
  if (!v15)
  {
    goto LABEL_8;
  }

  v49 = v6;
  v51 = a2;
  v16 = v15;
  v17 = sub_1E5CD59B8();

  v18 = sub_1E5CD58F8();
  if (!*(v17 + 16))
  {

    goto LABEL_7;
  }

  v47 = v5;
  v48 = v2;
  v20 = sub_1E5CBD820(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1E5CBD898(*(v17 + 56) + 32 * v20, v52);

  if (swift_dynamicCast())
  {
    sub_1E5CD56B8();
    v23 = v48[11];
    v46 = v48[12];
    __swift_project_boxed_opaque_existential_1(v48 + 8, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F68, &qword_1E5CD6AB8);
    v24 = v50;
    v25 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E5CD6480;
    (*(v24 + 16))(v26 + v25, v14, v12);
    sub_1E5CD5898();

    v27 = v49;
    v28 = v47;
    (*(v49 + 16))(v9, v11, v47);
    v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v30 = swift_allocObject();
    (*(v27 + 32))(v30 + v29, v9, v28);
    v31 = (v30 + ((v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_1E5CCB3F4;
    v31[1] = 0;
    sub_1E5CD55F8();
    sub_1E5CD5718();
    (*(v27 + 8))(v11, v28);
    return (*(v50 + 8))(v14, v12);
  }

LABEL_8:
  if (qword_1ED065D20 != -1)
  {
    swift_once();
  }

  v33 = sub_1E5CD5938();
  __swift_project_value_buffer(v33, qword_1ED066AB0);
  v34 = a1;
  v35 = sub_1E5CD5918();
  v36 = sub_1E5CD5B38();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_1E5CC4158(0xD000000000000018, 0x80000001E5CD7500, v52);
    *(v37 + 12) = 2080;
    v39 = [v34 description];
    v40 = sub_1E5CD5A08();
    v42 = v41;

    v43 = sub_1E5CC4158(v40, v42, v52);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_1E5CB9000, v35, v36, "%s failed to load catalog workout identifier for session: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693B0C0](v38, -1, -1);
    MEMORY[0x1E693B0C0](v37, -1, -1);
  }

  sub_1E5CCEF20();
  v44 = swift_allocError();
  *v45 = 0;
  *(swift_allocObject() + 16) = v44;
  sub_1E5CD55F8();
  return sub_1E5CD5728();
}

uint64_t sub_1E5CCB21C(uint64_t a1)
{
  v2 = sub_1E5CD55F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  if (*(a1 + 16))
  {
    v5 = *(v3 + 80);
    (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((v5 + 32) & ~v5), v2);
    v6 = swift_allocObject();
    (*(v3 + 32))(v6 + ((v5 + 16) & ~v5), &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    return sub_1E5CD5728();
  }

  else
  {
    sub_1E5CCEF20();
    v8 = swift_allocError();
    *v9 = 1;
    *(swift_allocObject() + 16) = v8;

    return sub_1E5CD5728();
  }
}

uint64_t sub_1E5CCB3FC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v62 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F00, &qword_1E5CD6A58);
  v4 = *(v52 - 8);
  v50 = *(v4 + 64);
  v5 = MEMORY[0x1EEE9AC00](v52);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v47 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F08, &qword_1E5CD6A60);
  v55 = *(v57 - 8);
  v54 = *(v55 + 64);
  v9 = MEMORY[0x1EEE9AC00](v57);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE0, &qword_1E5CD6820);
  v60 = *(v12 - 8);
  v61 = v12;
  v59 = *(v60 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v58 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v47 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  sub_1E5CBB610(v2 + 64, v63);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_1E5CBB33C(v63, v17 + 24);
  sub_1E5CBB610(v2 + 24, v63);
  v18 = swift_allocObject();
  v47 = v18;
  sub_1E5CBB33C(v63, v18 + 16);
  *(v18 + 56) = a2;
  __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));

  sub_1E5CD55B8();
  v19 = v48;
  sub_1E5CD58B8();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E5CCEC90;
  *(v20 + 24) = v17;
  v49 = v17;
  v21 = v52;
  (*(v4 + 16))(v7, v19, v52);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = (v50 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v4 + 32))(v24 + v22, v7, v21);
  v25 = (v24 + v23);
  *v25 = sub_1E5CCF69C;
  v25[1] = v20;
  sub_1E5CD5618();

  v26 = v51;
  sub_1E5CD5718();
  (*(v4 + 8))(v19, v21);
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = sub_1E5CCEC9C;
  *(v27 + 24) = v28;
  v29 = v55;
  v30 = v53;
  v31 = v57;
  (*(v55 + 16))(v53, v26, v57);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = (v54 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v29 + 32))(v34 + v32, v30, v31);
  v35 = (v34 + v33);
  *v35 = sub_1E5CCF69C;
  v35[1] = v27;
  sub_1E5CBB354(0, &qword_1EE2C2018, 0x1E69DCAB8);

  v36 = v56;
  sub_1E5CD5718();
  (*(v29 + 8))(v26, v31);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1E5CCED4C;
  *(v37 + 24) = v16;
  v39 = v60;
  v38 = v61;
  v40 = v58;
  v41 = v36;
  (*(v60 + 16))(v58, v36, v61);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v59 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v40, v38);
  v45 = (v44 + v43);
  *v45 = sub_1E5CCED68;
  v45[1] = v37;

  sub_1E5CD5718();

  (*(v39 + 8))(v41, v38);
}

uint64_t sub_1E5CCBAA4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_1E5CD5638();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5CD5778();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  sub_1E5CD5668();
  v16 = sub_1E5CD5628();
  (*(v6 + 8))(v8, v5);
  if (*(v16 + 16))
  {
    (*(v10 + 16))(v13, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    (*(v10 + 32))(v15, v13, v9);
    v17 = sub_1E5CD5768();
    v19 = v18;
    swift_beginAccess();
    *(a1 + 16) = v17;
    *(a1 + 24) = v19;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_1E5CD5758();
    sub_1E5CD58A8();

    return (*(v10 + 8))(v15, v9);
  }

  else
  {

    sub_1E5CCEF20();
    v21 = swift_allocError();
    *v22 = 1;
    *(swift_allocObject() + 16) = v21;
    sub_1E5CD5618();
    return sub_1E5CD5728();
  }
}

uint64_t sub_1E5CCBD90@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v15 = a2;
  v16 = sub_1E5CD56F8();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5CD56E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5CD5658();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5CD5608();
  sub_1E5CD5648();
  sub_1E5CCEEC4(v13);
  sub_1E5CD56D8();
  (*(v8 + 8))(v10, v7);
  sub_1E5CD5858();
  return (*(v4 + 8))(v6, v16);
}

id sub_1E5CCBFAC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = *(a2 + 24);
  *a3 = *(a2 + 16);
  a3[1] = v6;
  a3[2] = v5;

  return v5;
}

void *FitnessPlusSessionProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  return v0;
}

uint64_t FitnessPlusSessionProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t FitnessPlusSessionProvider.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5CD5D18();
  MEMORY[0x1E693ABA0](v1);
  return sub_1E5CD5D38();
}

void *FitnessPlusSessionProvider.SessionInformation.artwork.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void FitnessPlusSessionProvider.SessionInformation.trainer.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  sub_1E5CCE780(v2, v3, v4);
}

uint64_t FitnessPlusSessionProvider.TrainerInformation.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E5CCC1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_1E5CD5738();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_1E5CCC26C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_1E5CD5718();
}

void sub_1E5CCC310(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1E5CCF18C(v6, 0);
}

uint64_t sub_1E5CCC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v9 = sub_1E5CD5738();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_1E5CCF33C, v10);
}

uint64_t sub_1E5CCC478(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_1E5CD5738();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_1E5CCF6A8, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

void sub_1E5CCC604(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v11 = a5;
  a3(&v12, &v11);
  v6 = vdup_n_s32(0);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v13 = vandq_s8(v13, vcgezq_s64(vshlq_n_s64(v7, 0x3FuLL)));
  v14 = 0;
  a1(&v12);
  v8 = v12;
  v9 = v13;
  v10 = v14;

  sub_1E5CCEDF0(v8, v9.i64[0], v9.i64[1], v10);
}

void sub_1E5CCC6B4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v9);
  v13 = 0;
  a1(&v9);
  v4 = v9;
  v5 = v10;
  v7 = v11;
  v6 = v12;
  v8 = v13;

  sub_1E5CCF07C(v4, v5, *(&v5 + 1), v7, *(&v7 + 1), v6, v8);
}

void sub_1E5CCC768(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v20 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F40, &qword_1E5CD6A98);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v20 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065ED8, &qword_1E5CD6818);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v20(v12);
    sub_1E5CBDDE8(v12, &qword_1ED065F40, &qword_1E5CD6A98);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_1E5CD5738();
    v19 = swift_allocObject();
    *(v19 + 16) = v20;
    *(v19 + 24) = a6;

    v18(sub_1E5CCF5B4, v19);

    (*(v14 + 8))(v16, v13);
    sub_1E5CCF5E8(a1, 0);
  }
}

void sub_1E5CCC994(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_1E5CD5738();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_1E5CCF6A8, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_1E5CCEE90(a1);
}

void sub_1E5CCCB48(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE0, &qword_1E5CD6820);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = sub_1E5CD55F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F40, &qword_1E5CD6A98);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v20 - v14);
  sub_1E5CC5788(a1, v20 - v14, &qword_1ED065F40, &qword_1E5CD6A98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_1E5CD5738();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_1E5CCF6A8, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_1E5CCCE28(uint64_t a1, void (*a2)(void **), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  if (*(a1 + 48))
  {
    v31 = v7;
    LOBYTE(v32) = 1;
    v16 = v7;
    v29(&v31);
    sub_1E5CBDDE8(a1, &qword_1ED065F38, &qword_1E5CD6A90);
  }

  else
  {
    v31 = v7;
    v32 = v6;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    v36 = v11;
    v17 = v8;
    v18 = v7;
    v19 = v6;
    sub_1E5CCE780(v9, v10, v11);
    v28(&v31);
    v20 = sub_1E5CD5738();
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    *(v21 + 24) = v30;

    v20(sub_1E5CCF6A8, v21);

    (*(v13 + 8))(v15, v12);
    v22 = v31;
    v24 = v33;
    v23 = v34;
    v25 = v35;
    v26 = v36;

    sub_1E5CCF0F8(v23, v25, v26);
  }
}

void sub_1E5CCD038(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EF0, qword_1E5CD6830);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_1E5CD55F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F40, &qword_1E5CD6A98);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v20 - v14);
  sub_1E5CC5788(a1, &v20 - v14, &qword_1ED065F40, &qword_1E5CD6A98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    v29 = 1;
    v17 = v25;
    v23(&v25);

    sub_1E5CCF07C(v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_1E5CD5738();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_1E5CCF1A4, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_1E5CCD330(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F10, &qword_1E5CD6A68);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  if (a2)
  {
    v20 = 0;
    v21 = 0;
    v19 = a1;
    v22 = 1;
    v15 = a1;
    a5(&v19);
    sub_1E5CCEDF0(v19, v20, v21, v22);
  }

  else
  {
    v19 = a1;
    v16 = a1;
    a3(&v19);
    v17 = sub_1E5CD5738();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_1E5CCEE40, v18);

    (*(v12 + 8))(v14, v11);
    sub_1E5CCEE90(a1);
  }
}

void sub_1E5CCD4F0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE0, &qword_1E5CD6820);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = sub_1E5CD5618();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F18, &qword_1E5CD6A70);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v20 - v14);
  sub_1E5CC5788(a1, v20 - v14, &qword_1ED065F18, &qword_1E5CD6A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_1E5CD5738();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_1E5CCEEB4, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1E5CCD7D0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F18, &qword_1E5CD6A70);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F08, &qword_1E5CD6A60);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = sub_1E5CD5678();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F20, &qword_1E5CD6A78);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v24 - v16);
  sub_1E5CC5788(v28, v24 - v16, &qword_1ED065F20, &qword_1E5CD6A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_1E5CBDDE8(v7, &qword_1ED065F18, &qword_1E5CD6A70);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_1E5CD5738();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_1E5CCF6AC, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_1E5CCDB1C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EF0, qword_1E5CD6830);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a1;
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v24 = 1;
    v16 = a1;
    a5(&v20);
    sub_1E5CCF07C(v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  }

  else
  {
    a3(v13);
    v17 = sub_1E5CD5738();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_1E5CCF6D0, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_1E5CCDCD4(void *a1, uint64_t a2, void *a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v22 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v23 = a1;
  if (a4)
  {
    LOBYTE(v24) = 1;
    v18 = a1;
    v22(&v23);
    sub_1E5CCEDF0(a1, a2, a3, 1);
  }

  else
  {
    v24 = a2;
    v25 = a3;

    v19 = a3;
    a5(&v23);
    v20 = sub_1E5CD5738();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a8;

    v20(sub_1E5CCF6A8, v21);

    (*(v15 + 8))(v17, v14);
  }
}

void sub_1E5CCDEB4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_1E5CCF18C(v6, 0);
}

uint64_t sub_1E5CCDF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v8;
  v11[7] = v7;
  v11[8] = v9;
  v11[9] = v10;
  v12 = v8;

  v13 = v5;
  v14 = v6;
  sub_1E5CCE780(v7, v9, v10);

  return sub_1E5CD5718();
}

void sub_1E5CCE028(void (*a1)(_OWORD *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, _OWORD *), uint64_t a4, _OWORD *a5)
{
  v6 = a5[1];
  v8[0] = *a5;
  v8[1] = v6;
  v8[2] = a5[2];
  a3(&v9, v8);
  v7 = v9;
  *&v8[0] = v9;
  BYTE8(v8[0]) = 0;
  a1(v8);

  sub_1E5CCF18C(v7, 0);
}

uint64_t sub_1E5CCE0CC(uint64_t result, uint64_t (*a2)(_OWORD *))
{
  v2 = *(result + 48);
  v3 = *(result + 16);
  v4[0] = *result;
  v4[1] = v3;
  v4[2] = *(result + 32);
  v5 = v2;
  if (a2)
  {
    return a2(v4);
  }

  return result;
}

uint64_t sub_1E5CCE11C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;

  v10 = v8;

  return sub_1E5CD5718();
}

uint64_t sub_1E5CCE1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_1E5CD5718();
}

uint64_t sub_1E5CCE238(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v7;

  v9 = v7;

  return sub_1E5CD5718();
}

void sub_1E5CCE2F0(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  v8 = *(a5 + 1);
  a3(&v9, &v7);
  v6 = v9;
  v7 = v9;
  LOBYTE(v8) = 0;
  a1(&v7);

  sub_1E5CCF18C(v6, 0);
}

uint64_t sub_1E5CCE47C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1E5CCC1AC(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t sub_1E5CCE588(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065EE8, &qword_1E5CD6828) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E5CCC3A4(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1E5CCE780(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

unint64_t sub_1E5CCE7C8()
{
  result = qword_1ED065EF8;
  if (!qword_1ED065EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065EF8);
  }

  return result;
}

uint64_t dispatch thunk of FitnessPlusSessionProvider.fetchImage(forSession:width:)(uint64_t a1, double a2)
{
  v9 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5CC542C;
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

uint64_t dispatch thunk of FitnessPlusSessionProvider.fetchSessionInformation(for:sessionImageWidth:trainerImageWidth:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v14 = (*(*v4 + 144) + **(*v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E5CC502C;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return v14(a1, a2, v11, v12);
}

uint64_t get_enum_tag_for_layout_string_10ActivityUI26FitnessPlusSessionProviderC18TrainerInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1E5CCEB40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5CCEB88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5CCEBF8(uint64_t a1, int a2)
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

uint64_t sub_1E5CCEC40(uint64_t result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1E5CCEDF0(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    a1 = a3;
  }
}

__int128 *sub_1E5CCEE40(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 2);
  v4 = *(result + 24);
  v5 = *result;
  v6 = v3;
  v7 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_1E5CCEEC4(uint64_t a1)
{
  v2 = sub_1E5CD5658();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5CCEF20()
{
  result = qword_1ED065F28;
  if (!qword_1ED065F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065F28);
  }

  return result;
}

uint64_t sub_1E5CCEF74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065F30, &unk_1E5CD6A80);

  return sub_1E5CCAB74(a1);
}

uint64_t sub_1E5CCEFF0(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);

  return sub_1E5CCA6B8(a1, a2 & 1);
}

void sub_1E5CCF07C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    sub_1E5CCF0F8(a4, a5, a6);
  }
}

void sub_1E5CCF0F8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_1E5CCF13C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v6;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_1E5CCCE28(v7, v2, v3, v4, v5);
}

void sub_1E5CCF18C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_1E5CCF1C8()
{
  result = qword_1ED065F58;
  if (!qword_1ED065F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED065F50, &qword_1E5CD6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065F58);
  }

  return result;
}

uint64_t objectdestroy_112Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t *sub_1E5CCF3D0(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t objectdestroy_2Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t objectdestroy_106Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_23Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5CCF5B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1E5CCF5E8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1E5CCF664()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

void sub_1E5CCF6FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t WorkoutImageProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for FitnessPlusSessionProvider();
  swift_allocObject();
  v3 = a1;
  *(v2 + 24) = FitnessPlusSessionProvider.init(healthStore:)(v3);
  type metadata accessor for AppIconImageProvider();
  v4 = swift_allocObject();
  v5 = sub_1E5CBB9B8(MEMORY[0x1E69E7CC0]);

  *(v4 + 16) = v5;
  *(v2 + 16) = v4;
  return v2;
}

uint64_t WorkoutImageProvider.__allocating_init(fitnessPlusWorkoutProvider:appIconImageProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t WorkoutImageProvider.init(fitnessPlusWorkoutProvider:appIconImageProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_1E5CCF834(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5CCF8D8, 0, 0);
}

uint64_t sub_1E5CCF8D8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[3];
  v5 = sub_1E5CD5AF8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v3;

  v7 = v4;
  v8 = sub_1E5CC08BC(0, 0, v2, &unk_1E5CD6AE8, v6);
  v0[7] = v8;
  v9 = swift_task_alloc();
  v0[8] = v9;
  v10 = sub_1E5CD0B2C();
  *v9 = v0;
  v9[1] = sub_1E5CCFA3C;

  return MEMORY[0x1EEE6DA40](v0 + 2, v8, v10);
}

uint64_t sub_1E5CCFA3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5CCFB38, 0, 0);
}

uint64_t sub_1E5CCFB38()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E5CCFBA8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1E5CCFBCC, 0, 0);
}

uint64_t sub_1E5CCFBCC()
{
  v1 = *(v0 + 16);
  *v1 = sub_1E5CD05A0(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

void sub_1E5CCFC34(void *a1, void (*a2)(id, void), uint64_t a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DA0, &qword_1E5CD64A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  if (HKWorkout.isFitnessPlusWorkout.getter())
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    sub_1E5CC800C(a1, sub_1E5CD0CC0, v13, a4);

    return;
  }

  if ([a1 fiui_isConnectedGymWorkout])
  {
    v14 = [a1 device];
    if (v14)
    {
      v15 = v14;
      if (a4 <= 60.0)
      {
        v16 = a4;
      }

      else
      {
        v16 = 60.0;
      }

      v17 = [objc_opt_self() iconForConnectedGymDevice:v14 preferredIconWidth:v16];
      if (v17)
      {
        v18 = v17;
        v60 = v17;
        a2(v18, 0);

LABEL_15:
        v21 = v60;

        return;
      }
    }
  }

  v19 = [a1 sourceRevision];
  v20 = [v19 source];

  LODWORD(v19) = [v20 _hasFirstPartyBundleID];
  if (v19)
  {
    v60 = sub_1E5CD05A0(a1, a4);
    a2(v60, 0);
    goto LABEL_15;
  }

  v57 = v12;
  v58 = a2;
  v22 = [a1 sourceRevision];
  v23 = [v22 source];

  v24 = [v23 bundleIdentifier];
  v60 = sub_1E5CD5A08();
  v26 = v25;

  v27 = [objc_opt_self() hiddenApplications];
  sub_1E5CD5B28();
  v28 = sub_1E5CD5A78();

  v59 = a3;
  v55 = a1;
  v56 = v5;
  if (v28 >> 62)
  {
    goto LABEL_42;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v30 = 0;
  while (v29 != v30)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1E693AA80](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v32 = v31;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v29 = sub_1E5CD5C28();
      goto LABEL_20;
    }

    v33 = [v31 bundleIdentifier];
    v34 = sub_1E5CD5A08();
    v36 = v35;

    if (v34 == v60 && v36 == v26)
    {

      goto LABEL_36;
    }

    v38 = sub_1E5CD5C98();

    ++v30;
    if (v38)
    {

LABEL_36:

      v44 = *(v56 + 16);
      v45 = sub_1E5CD5AF8();
      v46 = v57;
      (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
      v47 = swift_allocObject();
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      *(v47 + 32) = v44;
      *(v47 + 40) = 0xD000000000000010;
      *(v47 + 48) = 0x80000001E5CD7170;
      *(v47 + 56) = 0;
      *(v47 + 64) = a4;
      *(v47 + 72) = v58;
      *(v47 + 80) = v59;

      v48 = &unk_1E5CD64D0;
      v49 = v46;
      v50 = v47;
      goto LABEL_39;
    }
  }

  v39 = *(v56 + 16);

  v40 = v55;
  v41 = [v55 sourceRevision];
  v42 = [v41 source];

  LOBYTE(v41) = [v42 _isAppleWatch];
  if (v41)
  {
    v43 = 1;
  }

  else
  {
    v43 = [v40 _isWatchWorkout];
  }

  v51 = sub_1E5CD5AF8();
  v52 = v57;
  (*(*(v51 - 8) + 56))(v57, 1, 1, v51);
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  v54 = v60;
  *(v53 + 32) = v39;
  *(v53 + 40) = v54;
  *(v53 + 48) = v26;
  *(v53 + 56) = v43;
  *(v53 + 64) = a4;
  *(v53 + 72) = v58;
  *(v53 + 80) = v59;

  v48 = &unk_1E5CD6AF8;
  v49 = v52;
  v50 = v53;
LABEL_39:
  sub_1E5CC05BC(0, 0, v49, v48, v50);
}

uint64_t sub_1E5CD02A0(uint64_t a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 32) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5CD02C8, 0, 0);
}

uint64_t sub_1E5CD02C8()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_1E5CD0B2C();
  *v5 = v0;
  v5[1] = sub_1E5CCA3D8;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000016, 0x80000001E5CD7520, sub_1E5CD0CEC, v4, v6);
}

uint64_t sub_1E5CD03D8(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E00, &qword_1E5CD66F8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  sub_1E5CCFC34(a4, sub_1E5CCEFF0, v12, a2);
}

uint64_t WorkoutImageProvider.deinit()
{

  return v0;
}

uint64_t WorkoutImageProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1E5CD05A0(void *a1, double a2)
{
  v4 = [objc_opt_self() effectiveActivityTypeWithWorkout_];
  v5 = sub_1E5CBE418(a1);
  result = FIUIStaticWorkoutIconImage();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = [result imageWithRenderingMode_];

  result = [v5 nonGradientTextColor];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = [v8 imageWithTintColor_];

  [a1 fiui_completionFactor];
  v12 = v11;
  v13 = sub_1E5CBE418(a1);
  v33 = v5;
  if ((sub_1E5CBD344() & 1) != 0 || sub_1E5CBCDD8() || (sub_1E5CBD350() & 1) != 0 || [a1 workoutActivityType] == 84)
  {
    v14 = [v13 gradientDarkColor];
    v15 = [v13 gradientLightColor];
    v16 = FIUICircularGradientImage();

LABEL_8:
    v17 = (a2 - a2) * 0.5;
    v18 = (a2 - a2 * 0.583333333) * 0.5;
    v19 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
    v20 = v16;
    v21 = [v19 initWithSize_];
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = v17;
    *(v22 + 32) = v17;
    *(v22 + 40) = a2;
    *(v22 + 48) = a2;
    *(v22 + 56) = v10;
    *(v22 + 64) = v18;
    *(v22 + 72) = v18;
    *(v22 + 80) = a2 * 0.583333333;
    *(v22 + 88) = a2 * 0.583333333;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1E5CD10DC;
    *(v23 + 24) = v22;
    aBlock[4] = sub_1E5CD1160;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5CCF6FC;
    aBlock[3] = &block_descriptor_1;
    v24 = _Block_copy(aBlock);
    v25 = v10;

    v26 = [v21 imageWithActions_];

    _Block_release(v24);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if ((v25 & 1) == 0)
    {
      return v26;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (![a1 _goalType])
  {
    v16 = FIUICircularWorkoutGradientImage();
    goto LABEL_8;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E6989B30]) initWithNumberOfRings_];
  *&v28 = v12;
  [v27 setPercentage:0 ofRingAtIndex:0 animated:v28];
  *&v29 = a2;
  [v27 setGroupDiameter_];
  v30 = a2 * 0.105769231;
  *&v30 = a2 * 0.105769231;
  [v27 setThickness_];
  result = [v13 gradientDarkColor];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = result;
  result = [v13 gradientLightColor];
  if (result)
  {
    v32 = result;
    [v27 setTopColor:v31 bottomColor:result ofRingAtIndex:0];

    v16 = [objc_opt_self() renderRingGroup:v27 withRenderer:0];
    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E5CD0A5C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5CC78A8;

  return sub_1E5CCFBA8(a1, v8, v4, v5, v6, v7);
}

unint64_t sub_1E5CD0B2C()
{
  result = qword_1EE2C2018;
  if (!qword_1EE2C2018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2C2018);
  }

  return result;
}

uint64_t sub_1E5CD0B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5CC78A8;

  return sub_1E5CBFE9C(v10, a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t dispatch thunk of WorkoutImageProvider.placeholderImage(for:width:)(uint64_t a1, double a2)
{
  v9 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5CD0E8C;
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

uint64_t sub_1E5CD0E8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of WorkoutImageProvider.fetchImage(for:width:)(uint64_t a1, double a2)
{
  v9 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5CC542C;
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

id sub_1E5CD10DC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  [*(v0 + 16) drawInRect_];

  return [v1 drawInRect:0 blendMode:v2 alpha:{v3, v4, v5, 1.0}];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5CD12A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1E693A8C0](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x80000001E5CD75D0;
  return result;
}

uint64_t static ActivityAccessibilityIdentifier.build(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065D28, &qword_1E5CD6350);
  sub_1E5CBB064();
  return sub_1E5CD59C8();
}

uint64_t sub_1E5CD13C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0xD000000000000010;
    v9 = 0x80000001E5CD6FE0;
    if (a1 != 6)
    {
      v8 = 0x74697465706D6F63;
      v9 = 0xEC000000736E6F69;
    }

    v10 = 0x507373656E746966;
    v11 = 0xEB0000000073756CLL;
    if (a1 != 4)
    {
      v10 = 0x45646574696D696CLL;
      v11 = 0xEE006E6F69746964;
    }

    if (a1 <= 5u)
    {
      v6 = v10;
    }

    else
    {
      v6 = v8;
    }

    if (v2 <= 5)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0x7974697669746361;
    if (a1 != 2)
    {
      v4 = 0x7374756F6B726F77;
    }

    v5 = 0x7449726F466F67;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v5 = 7105633;
    }

    if (a1 <= 1u)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0xE800000000000000;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0x80000001E5CD6FE0;
        if (v6 != 0xD000000000000010)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0xEC000000736E6F69;
        if (v6 != 0x74697465706D6F63)
        {
LABEL_47:
          v13 = sub_1E5CD5C98();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB0000000073756CLL;
      if (v6 != 0x507373656E746966)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xEE006E6F69746964;
      if (v6 != 0x45646574696D696CLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    v12 = 0xE800000000000000;
    if (a2 == 2)
    {
      if (v6 != 0x7974697669746361)
      {
        goto LABEL_47;
      }
    }

    else if (v6 != 0x7374756F6B726F77)
    {
      goto LABEL_47;
    }
  }

  else if (a2)
  {
    v12 = 0xE700000000000000;
    if (v6 != 0x7449726F466F67)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v6 != 7105633)
    {
      goto LABEL_47;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_47;
  }

  v13 = 1;
LABEL_48:

  return v13 & 1;
}

uint64_t sub_1E5CD1674()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066078, &qword_1E5CD6F58);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066080, &qword_1E5CD6F60);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065FD8, &qword_1E5CD6BE0);
  __swift_allocate_value_buffer(v5, qword_1ED065FA0);
  __swift_project_value_buffer(v5, qword_1ED065FA0);
  sub_1E5CD387C();
  sub_1E5CD53F8();
  sub_1E5CD53E8();
  (*(v1 + 104))(v3, *MEMORY[0x1E695A3F8], v0);
  sub_1E5CD53D8();
  (*(v1 + 8))(v3, v0);
  sub_1E5CD53E8();
  return sub_1E5CD5408();
}

uint64_t static TrophyCaseSection.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED065D08 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065FD8, &qword_1E5CD6BE0);
  v3 = __swift_project_value_buffer(v2, qword_1ED065FA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TrophyCaseSection.urlRepresentation.setter(uint64_t a1)
{
  if (qword_1ED065D08 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065FD8, &qword_1E5CD6BE0);
  v3 = __swift_project_value_buffer(v2, qword_1ED065FA0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TrophyCaseSection.urlRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED065D08 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065FD8, &qword_1E5CD6BE0);
  __swift_project_value_buffer(v1, qword_1ED065FA0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E5CD1AE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED065D08 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065FD8, &qword_1E5CD6BE0);
  v3 = __swift_project_value_buffer(v2, qword_1ED065FA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1E5CD1BAC(uint64_t a1)
{
  if (qword_1ED065D08 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065FD8, &qword_1E5CD6BE0);
  v3 = __swift_project_value_buffer(v2, qword_1ED065FA0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_1E5CD1C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066068, &qword_1E5CD6F40);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1E5CD5498();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1E5CD5448();
  __swift_allocate_value_buffer(v5, qword_1ED065FB8);
  __swift_project_value_buffer(v5, qword_1ED065FB8);
  sub_1E5CD5488();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_1E5CD5438();
}

uint64_t static TrophyCaseSection.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED065D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5CD5448();
  v3 = __swift_project_value_buffer(v2, qword_1ED065FB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TrophyCaseSection.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_1ED065D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5CD5448();
  v3 = __swift_project_value_buffer(v2, qword_1ED065FB8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TrophyCaseSection.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t)
{
  if (qword_1ED065D10 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5CD5448();
  __swift_project_value_buffer(v1, qword_1ED065FB8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E5CD203C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED065D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5CD5448();
  v3 = __swift_project_value_buffer(v2, qword_1ED065FB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1E5CD20FC(uint64_t a1)
{
  if (qword_1ED065D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5CD5448();
  v3 = __swift_project_value_buffer(v2, qword_1ED065FB8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_1E5CD21C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066060, &qword_1E5CD6F38);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v38 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066068, &qword_1E5CD6F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_1E5CD5498();
  v51 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066070, &unk_1E5CD6F48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DC0, &qword_1E5CD6680);
  v9 = *(v8 - 8);
  v49 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v41 = 8 * v49;
  v11 = swift_allocObject();
  v42 = v11;
  *(v11 + 16) = xmmword_1E5CD6BD0;
  v12 = v11 + v10;
  v13 = v8;
  *(v11 + v10) = 0;
  sub_1E5CD5488();
  v14 = *(v7 + 56);
  v45 = v7 + 56;
  v14(v5, 1, 1, v6);
  v44 = v14;
  v48 = sub_1E5CD53A8();
  v15 = *(v48 - 8);
  v16 = *(v15 + 56);
  v47 = v15 + 56;
  v16(v2, 1, 1, v48);
  v17 = v16;
  v46 = v16;
  v50 = v12;
  sub_1E5CD53B8();
  v18 = v49;
  v40 = *(v8 + 48);
  *(v12 + v49) = 1;
  sub_1E5CD5488();
  v19 = v5;
  v20 = v51;
  v14(v5, 1, 1, v51);
  v17(v2, 1, 1, v48);
  sub_1E5CD53B8();
  v40 = 2 * v18;
  v39 = *(v13 + 48);
  *(v50 + 2 * v18) = 2;
  sub_1E5CD5488();
  v21 = v44;
  v44(v5, 1, 1, v20);
  v38 = v2;
  v22 = v2;
  v23 = v48;
  v24 = v46;
  v46(v22, 1, 1, v48);
  sub_1E5CD53B8();
  v25 = v49;
  v26 = (v50 + v40 + v49);
  v43 = v13;
  v40 = *(v13 + 48);
  *v26 = 3;
  sub_1E5CD5488();
  v21(v19, 1, 1, v51);
  v27 = v38;
  v24(v38, 1, 1, v23);
  v28 = v27;
  sub_1E5CD53B8();
  v40 = 4 * v25;
  v29 = v50;
  v39 = *(v13 + 48);
  *(v50 + 4 * v25) = 4;
  sub_1E5CD5488();
  v30 = v51;
  v31 = v44;
  v44(v19, 1, 1, v51);
  v46(v27, 1, 1, v48);
  sub_1E5CD53B8();
  v32 = v43;
  *(v29 + v40 + v25) = 5;
  sub_1E5CD5488();
  v31(v19, 1, 1, v30);
  v33 = v48;
  v34 = v46;
  v46(v28, 1, 1, v48);
  sub_1E5CD53B8();
  v35 = v50;
  v40 = *(v32 + 48);
  *(v50 + 6 * v49) = 6;
  sub_1E5CD5488();
  v31(v19, 1, 1, v51);
  v34(v28, 1, 1, v33);
  sub_1E5CD53B8();
  *(v35 + v41 - v49) = 7;
  sub_1E5CD5488();
  v31(v19, 1, 1, v51);
  v34(v28, 1, 1, v33);
  sub_1E5CD53B8();
  v36 = sub_1E5CC4B08(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ED065FD0 = v36;
  return result;
}

uint64_t static TrophyCaseSection.caseDisplayRepresentations.getter()
{
  if (qword_1ED065D18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TrophyCaseSection.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1ED065D18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED065FD0 = a1;
}

uint64_t (*static TrophyCaseSection.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t)
{
  if (qword_1ED065D18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E5CD2AB4@<X0>(void *a1@<X8>)
{
  if (qword_1ED065D18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1ED065FD0;
}

uint64_t sub_1E5CD2B34(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1ED065D18;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED065FD0 = v1;
}

uint64_t TrophyCaseSection.awardsDataProviderSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 > 3)
  {
    if (*v1 > 5u)
    {
      if (v3 == 6)
      {
        v9 = MEMORY[0x1E6989A90];
      }

      else
      {
        v9 = MEMORY[0x1E6989A80];
      }
    }

    else if (v3 == 4)
    {
      v9 = MEMORY[0x1E6989A78];
    }

    else
    {
      v9 = MEMORY[0x1E6989A88];
    }
  }

  else if (*v1 > 1u)
  {
    if (v3 == 2)
    {
      v9 = MEMORY[0x1E6989AA0];
    }

    else
    {
      v9 = MEMORY[0x1E6989AA8];
    }
  }

  else
  {
    if (!*v1)
    {
      v4 = sub_1E5CD5908();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a1;
      v8 = 1;
      goto LABEL_17;
    }

    v9 = MEMORY[0x1E6989A98];
  }

  v10 = *v9;
  v11 = sub_1E5CD5908();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a1, v10, v11);
  v5 = *(v13 + 56);
  v7 = a1;
  v8 = 0;
  v6 = v11;
LABEL_17:

  return v5(v7, v8, 1, v6);
}

ActivityUI::TrophyCaseSection_optional __swiftcall TrophyCaseSection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  v4 = rawValue._countAndFlagsBits == 7105633 && rawValue._object == 0xE300000000000000;
  if (v4 || (countAndFlagsBits = rawValue._countAndFlagsBits, (sub_1E5CD5C98() & 1) != 0) || countAndFlagsBits == 5000257 && object == 0xE300000000000000 || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x7449726F466F67 && object == 0xE700000000000000 || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0x495F524F465F4F47 && object == 0xE900000000000054 || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x7974697669746361 && object == 0xE800000000000000 || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0x5954495649544341 && object == 0xE800000000000000 || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x7374756F6B726F77 && object == 0xE800000000000000 || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0x5354554F4B524F57 && object == 0xE800000000000000 || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x507373656E746966 && object == 0xEB0000000073756CLL || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0x5F5353454E544946 && object == 0xEC00000053554C50 || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x45646574696D696CLL && object == 0xEE006E6F69746964 || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0x5F444554494D494CLL && object == 0xEF4E4F4954494445 || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x80000001E5CD6FE0 == object || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0xD000000000000012 && 0x80000001E5CD75F0 == object || (sub_1E5CD5C98() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x74697465706D6F63 && object == 0xEC000000736E6F69 || (sub_1E5CD5C98() & 1) != 0 || countAndFlagsBits == 0x54495445504D4F43 && object == 0xEC000000534E4F49)
  {

    v7 = 7;
  }

  else
  {
    v8 = sub_1E5CD5C98();

    if (v8)
    {
      v7 = 7;
    }

    else
    {
      v7 = 8;
    }
  }

  *v3 = v7;
  return result;
}

unint64_t TrophyCaseSection.rawValue.getter()
{
  v1 = *v0;
  v2 = 7105633;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 0x74697465706D6F63;
  }

  v4 = 0x507373656E746966;
  if (v1 != 4)
  {
    v4 = 0x45646574696D696CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7974697669746361;
  if (v1 != 2)
  {
    v5 = 0x7374756F6B726F77;
  }

  if (*v0)
  {
    v2 = 0x7449726F466F67;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1E5CD332C()
{
  result = qword_1ED065FE0;
  if (!qword_1ED065FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065FE0);
  }

  return result;
}

uint64_t sub_1E5CD3394(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5CD5A38();
}

uint64_t sub_1E5CD34E4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E5CD5D18();
  sub_1E5CD5A38();

  return sub_1E5CD5D38();
}

void sub_1E5CD364C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0x80000001E5CD6FE0;
  v6 = 0xD000000000000010;
  if (v2 != 6)
  {
    v6 = 0x74697465706D6F63;
    v5 = 0xEC000000736E6F69;
  }

  v7 = 0xEB0000000073756CLL;
  v8 = 0x507373656E746966;
  if (v2 != 4)
  {
    v8 = 0x45646574696D696CLL;
    v7 = 0xEE006E6F69746964;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7974697669746361;
  if (v2 != 2)
  {
    v9 = 0x7374756F6B726F77;
  }

  if (*v1)
  {
    v4 = 0x7449726F466F67;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1E5CD3768()
{
  result = qword_1ED065FE8;
  if (!qword_1ED065FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065FE8);
  }

  return result;
}

unint64_t sub_1E5CD37C0()
{
  result = qword_1ED065FF0;
  if (!qword_1ED065FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065FF0);
  }

  return result;
}

unint64_t sub_1E5CD3818()
{
  result = qword_1ED065FF8;
  if (!qword_1ED065FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED065FF8);
  }

  return result;
}

unint64_t sub_1E5CD387C()
{
  result = qword_1ED066000;
  if (!qword_1ED066000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066000);
  }

  return result;
}

unint64_t sub_1E5CD38D4()
{
  result = qword_1ED066008;
  if (!qword_1ED066008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066008);
  }

  return result;
}

unint64_t sub_1E5CD392C()
{
  result = qword_1ED066010;
  if (!qword_1ED066010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066010);
  }

  return result;
}

unint64_t sub_1E5CD3980()
{
  result = qword_1ED066018;
  if (!qword_1ED066018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066018);
  }

  return result;
}

unint64_t sub_1E5CD39D4()
{
  result = qword_1ED066020;
  if (!qword_1ED066020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066020);
  }

  return result;
}

unint64_t sub_1E5CD3A2C()
{
  result = qword_1ED066028;
  if (!qword_1ED066028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066028);
  }

  return result;
}

uint64_t sub_1E5CD3A80(uint64_t a1)
{
  sub_1E5CD3F28();
  v2 = sub_1E5CD5398();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1E5CD3B40(uint64_t a1)
{
  v2 = sub_1E5CD387C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1E5CD3B90()
{
  result = qword_1ED066030;
  if (!qword_1ED066030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066030);
  }

  return result;
}

unint64_t sub_1E5CD3BE8()
{
  result = qword_1ED066038;
  if (!qword_1ED066038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066038);
  }

  return result;
}

unint64_t sub_1E5CD3C40()
{
  result = qword_1ED066040;
  if (!qword_1ED066040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066040);
  }

  return result;
}

uint64_t sub_1E5CD3C94()
{
  if (qword_1ED065D18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1E5CD3D0C(uint64_t a1)
{
  v2 = sub_1E5CD3A2C();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1E5CD3D5C()
{
  result = qword_1ED066048;
  if (!qword_1ED066048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED066050, &qword_1E5CD6EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066048);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrophyCaseSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrophyCaseSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5CD3F28()
{
  result = qword_1ED066058;
  if (!qword_1ED066058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED066058);
  }

  return result;
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

uint64_t sub_1E5CD4030()
{
  v0 = sub_1E5CD5938();
  __swift_allocate_value_buffer(v0, qword_1ED066AB0);
  __swift_project_value_buffer(v0, qword_1ED066AB0);
  return sub_1E5CD5928();
}

char *static WeeklySummaryChartUtility.makeCacheIndices(dateInterval:)(uint64_t a1)
{
  v60 = sub_1E5CD5548();
  v2 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066088, &unk_1E5CD6F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_1E5CD5508();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = sub_1E5CD5558();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() hk_gregorianCalendar];
  sub_1E5CD5528();

  sub_1E5CD5468();
  v58 = a1;
  sub_1E5CD5458();
  v55 = sub_1E5CD4B14(&qword_1ED066090, MEMORY[0x1E6969548]);
  LOBYTE(a1) = sub_1E5CD59D8();
  v20 = *(v8 + 8);
  v56 = v13;
  v61 = v20;
  v62 = v8 + 8;
  v20(v13, v7);
  if (a1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_13:
    (*(v46 + 8))(v18, v47);
    v44 = v15;
    goto LABEL_14;
  }

  v53 = *MEMORY[0x1E6969A48];
  v51 = (v2 + 8);
  v52 = (v2 + 104);
  v49 = (v8 + 32);
  v50 = (v8 + 48);
  v48 = (v8 + 40);
  v21 = MEMORY[0x1E69E7CC0];
  v54 = v6;
  v22 = v59;
  while (1)
  {
    v23 = v15;
    v24 = sub_1E5CD54F8();
    v25 = v18;
    v26 = sub_1E5CD5518();
    v27 = _HKCacheIndexFromDate();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1E5CD496C(0, *(v21 + 2) + 1, 1, v21);
    }

    v29 = *(v21 + 2);
    v28 = *(v21 + 3);
    if (v29 >= v28 >> 1)
    {
      v21 = sub_1E5CD496C((v28 > 1), v29 + 1, 1, v21);
    }

    *(v21 + 2) = v29 + 1;
    *&v21[8 * v29 + 32] = v27;
    v30 = v60;
    (*v52)(v22, v53, v60);
    v31 = v54;
    v15 = v23;
    v18 = v25;
    sub_1E5CD5538();
    (*v51)(v22, v30);
    if ((*v50)(v31, 1, v7) == 1)
    {
      break;
    }

    v32 = v57;
    (*v49)(v57, v31, v7);
    (*v48)(v15, v32, v7);
    v33 = v56;
    sub_1E5CD5458();
    v34 = sub_1E5CD59D8();
    v61(v33, v7);
    if (v34)
    {
      goto LABEL_13;
    }
  }

  sub_1E5CD4A70(v31);
  v35 = sub_1E5CD5B38();
  v36 = *MEMORY[0x1E696B928];
  if (!os_log_type_enabled(*MEMORY[0x1E696B928], v35))
  {
    goto LABEL_13;
  }

  v37 = v36;
  v38 = v25;
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v63[0] = v40;
  *v39 = 136315394;
  *(v39 + 4) = sub_1E5CC4158(0xD000000000000019, 0x80000001E5CD6F80, v63);
  *(v39 + 12) = 2080;
  swift_beginAccess();
  sub_1E5CD4B14(&qword_1ED066098, MEMORY[0x1E6969570]);
  v41 = sub_1E5CD5C68();
  v43 = sub_1E5CC4158(v41, v42, v63);

  *(v39 + 14) = v43;
  _os_log_impl(&dword_1E5CB9000, v37, v35, "%s Failed to add day to currentDay %s", v39, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E693B0C0](v40, -1, -1);
  MEMORY[0x1E693B0C0](v39, -1, -1);

  (*(v46 + 8))(v38, v47);
  v44 = v23;
LABEL_14:
  v61(v44, v7);
  return v21;
}

void *static WeeklySummaryChartUtility.makeSummaryIndexMap(for:)(unint64_t a1)
{
  v2 = sub_1E5CC4CF0(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E5CD5C28())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E693AA80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = [v7 _activitySummaryIndex];
      v11 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1E5CBD938(v10);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (v2[3] < v18)
      {
        sub_1E5CD4E28(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_1E5CBD938(v10);
        if ((v19 & 1) != (v20 & 1))
        {
          result = sub_1E5CD5CB8();
          __break(1u);
          return result;
        }

LABEL_15:
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v23 = v13;
      sub_1E5CD521C();
      v13 = v23;
      if (v19)
      {
LABEL_4:
        v5 = v2[7];
        v6 = *(v5 + 8 * v13);
        *(v5 + 8 * v13) = v11;

        goto LABEL_5;
      }

LABEL_16:
      v2[(v13 >> 6) + 8] |= 1 << v13;
      *(v2[6] + 8 * v13) = v10;
      *(v2[7] + 8 * v13) = v11;

      v21 = v2[2];
      v17 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v17)
      {
        goto LABEL_24;
      }

      v2[2] = v22;
LABEL_5:
      if (v9 == i)
      {
        return v2;
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
    ;
  }

  return v2;
}

char *sub_1E5CD496C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0660A0, &unk_1E5CD6FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E5CD4A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED066088, &unk_1E5CD6F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5CD4AD8(uint64_t (*a1)(void))
{
  a1();

  return sub_1E5CD5D48();
}

uint64_t sub_1E5CD4B14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5CD5508();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5CD4B58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E68, &qword_1E5CD6758);
  v38 = v4;
  result = sub_1E5CD5C48();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v39 = *v23;
      v25 = *(v5 + 56) + v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v38 & 1) == 0)
      {

        sub_1E5CC515C(v26, v27);
      }

      sub_1E5CD5D18();
      sub_1E5CD5A38();
      result = sub_1E5CD5D38();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v39;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
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

uint64_t sub_1E5CD4E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DB8, &qword_1E5CD6678);
  result = sub_1E5CD5C48();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1E5CD5D08();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_1E5CD5090()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065E68, &qword_1E5CD6758);
  v2 = *v0;
  v3 = sub_1E5CD5C38();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 56);
        v19 = (*(v2 + 48) + v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(v18 + v17);
        v23 = *(v18 + v17 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v21;
        v24[1] = v20;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;

        result = sub_1E5CC515C(v22, v23);
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

id sub_1E5CD521C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED065DB8, &qword_1E5CD6678);
  v2 = *v0;
  v3 = sub_1E5CD5C38();
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
        result = v18;
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