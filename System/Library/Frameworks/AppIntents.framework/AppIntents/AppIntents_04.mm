uint64_t sub_18F1493AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18F149500()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F14988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_34();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_18F149984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    OUTLINED_FUNCTION_34();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_18F149AA8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ViewAnnotation(0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F149B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ViewAnnotation(0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_18F149C34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F149CFC(uint64_t *a1)
{
  type metadata accessor for _AppShortcutOptionsCollectionSpecification(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_18F149DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F522CFC();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_18F149E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F522CFC();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_18F149EE0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A30, &qword_18F545F58);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

__n128 sub_18F149F24(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18F149F30()
{

  return swift_deallocObject();
}

uint64_t sub_18F149F74@<X0>(uint64_t *a1@<X8>)
{
  result = IntentTimer.IntentTimerType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F14A0E0(void *a1)
{
  sub_18F52122C();
  swift_getTupleTypeMetadata2();
  sub_18F52124C();

  return swift_getWitnessTable();
}

uint64_t sub_18F14A168(void *a1)
{
  sub_18F52122C();
  OUTLINED_FUNCTION_17_16();

  return swift_getWitnessTable();
}

uint64_t sub_18F14A354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_18F14A3F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F14A5EC()
{

  return swift_deallocObject();
}

uint64_t sub_18F14A624()
{
  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  }

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  sub_18F14A500();
  sub_18F14A500();

  return swift_deallocObject();
}

uint64_t sub_18F14A70C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EmptyResolverSpecification(255, *a1, *(*(a1[1] + 8) + 24), a4);

  return swift_getWitnessTable();
}

uint64_t sub_18F14A768()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_18F14A7C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_18F14A81C(uint64_t a1)
{
  result = sub_18F205CF0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F14A854()
{

  return swift_deallocObject();
}

uint64_t sub_18F14A8AC()
{

  OUTLINED_FUNCTION_15_15();

  return swift_deallocObject();
}

uint64_t sub_18F14A958()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_15_15();

  return swift_deallocObject();
}

uint64_t sub_18F14AA08()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

__n128 sub_18F14AB68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F14AB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_18F14ABF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F14AC04()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18F14ACFC()
{
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F14AD78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410, &qword_18F540C38);
  OUTLINED_FUNCTION_0_31();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F14AE00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2870, &qword_18F5492C0);
  OUTLINED_FUNCTION_0_31();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_18F14AF28()
{

  return swift_deallocObject();
}

uint64_t sub_18F14AF80()
{

  return swift_deallocObject();
}

uint64_t sub_18F14AFB8()
{

  OUTLINED_FUNCTION_24_17();

  return swift_deallocObject();
}

uint64_t sub_18F14AFF8()
{

  OUTLINED_FUNCTION_29_19();

  return swift_deallocObject();
}

uint64_t sub_18F14B0A8()
{

  return swift_deallocObject();
}

uint64_t sub_18F14B0E0()
{

  OUTLINED_FUNCTION_4_29();

  return swift_deallocObject();
}

uint64_t sub_18F14B114()
{

  OUTLINED_FUNCTION_4_29();

  return swift_deallocObject();
}

uint64_t sub_18F14B188()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F14B1D0()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F14B218()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18F14B360(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_6_33(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v3 = OUTLINED_FUNCTION_5_33();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_18F14B3E0()
{
  OUTLINED_FUNCTION_18_21();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    v3 = OUTLINED_FUNCTION_5_33();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

_OWORD *sub_18F14B458(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_18F14B470(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_18F22D6EC(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void sub_18F14B524()
{
  OUTLINED_FUNCTION_19_20();
  OUTLINED_FUNCTION_8_21();
  __break(1u);
}

uint64_t sub_18F14B600()
{
  v0 = OUTLINED_FUNCTION_4_17();
  type metadata accessor for DisplayRepresentation(v0);
  v1 = OUTLINED_FUNCTION_4_10();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_18F14B65C()
{

  return swift_deallocObject();
}

__n128 sub_18F14B6B4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18F14B6C8()
{

  return swift_deallocObject();
}

uint64_t sub_18F14B708()
{

  return swift_deallocObject();
}

uint64_t sub_18F14B748@<X0>(uint64_t *a1@<X8>)
{
  result = IntentReminderTask.TaskType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F14B7C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for IntentReminderTask.TaskTrigger(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_18F52085C();
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_18F14B88C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for IntentReminderTask.TaskTrigger(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_18F52085C();
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_18F14B9A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F14BA94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3250, &qword_18F54AFA8);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F14BB68()
{
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F14BC38()
{

  return swift_deallocObject();
}

uint64_t sub_18F14BC70()
{

  return swift_deallocObject();
}

uint64_t sub_18F14BCB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F14BD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18F520E6C();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_18F14BD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_18F520E6C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_18F14BE20(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18F14BE44()
{
  OUTLINED_FUNCTION_79();
  v3 = *(v2 + 20);
  v4 = sub_18F520C8C();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_18F14BE94()
{
  OUTLINED_FUNCTION_79();
  v3 = *(v2 + 20);
  v4 = sub_18F520C8C();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_18F14BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_34();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_6_33(*(a1 + *(a3 + 40)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_18F14BF94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_34();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_138_0(*(a4 + 20));

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 40)) = (v4 - 1);
  }
}

uint64_t sub_18F14C044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_6_33(*(a1 + 48));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_18F14C0CC()
{
  OUTLINED_FUNCTION_79();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 48) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
    v5 = OUTLINED_FUNCTION_138_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_18F14C154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_79();
  sub_18F52165C();
  OUTLINED_FUNCTION_34();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    sub_18F520E6C();
    OUTLINED_FUNCTION_34();
    if (*(v11 + 84) != v3)
    {
      return OUTLINED_FUNCTION_6_33(*(v4 + *(a3 + 28)));
    }

    v8 = v10;
    v9 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_18F14C230(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_79();
  sub_18F52165C();
  OUTLINED_FUNCTION_34();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_18F520E6C();
    OUTLINED_FUNCTION_34();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28)) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_18F14C314()
{

  return swift_deallocObject();
}

uint64_t sub_18F14C410()
{

  return swift_deallocObject();
}

uint64_t sub_18F14C450()
{
  v1 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F14C508(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F14C59C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_18F14C630(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F14C660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Reference = type metadata accessor for _EntityQueryReference(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_53();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for InternalResolverSpecificationBuilder.ResolverAccumulator(255, Reference, WitnessTable, v6);

  return swift_getWitnessTable();
}

uint64_t sub_18F14C710()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_18F14C8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F520B3C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18F14C948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18F520B3C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18F14CA9C()
{
  _Block_release(*(v0 + 64));

  OUTLINED_FUNCTION_62_4();

  return swift_deallocObject();
}

uint64_t sub_18F14CC00(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DisplayRepresentation(0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F14CC88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayRepresentation(0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F14CD08()
{

  return swift_deallocObject();
}

uint64_t sub_18F14CDE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_18F52085C();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_18F14CE68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18F52085C();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F14CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IntentDialog(0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_11_26(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_18F14D03C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_47_3();
  result = type metadata accessor for IntentDialog(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    OUTLINED_FUNCTION_72_4();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_18F14D10C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_11_26(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  v8 = a1 + *(a3 + 40);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_18F14D194()
{
  OUTLINED_FUNCTION_73_2();
  if (v2)
  {
    *v1 = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    OUTLINED_FUNCTION_72_4();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_18F14D21C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  v4 = sub_18F520B3C();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_18F14D260()
{
  OUTLINED_FUNCTION_47_3();
  sub_18F520B3C();
  OUTLINED_FUNCTION_72_4();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_18F14D2A4()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F14D360()
{

  return swift_deallocObject();
}

uint64_t sub_18F14D3CC()
{
  v1 = sub_18F52165C();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F14D4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  OUTLINED_FUNCTION_34();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_18F14D560(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  OUTLINED_FUNCTION_34();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_18F14D7D8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18F14D878()
{

  return swift_deallocObject();
}

uint64_t sub_18F14D8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentError.Context(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_18F14D910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentError.Context(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_18F14D9B0()
{

  return swift_deallocObject();
}

uint64_t sub_18F14DA24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F14DA74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F14DAB0@<X0>(uint64_t *a1@<X8>)
{
  result = DeferredIntentResultContainer.execute.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_18F14DAE4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18F14DB04()
{

  return swift_deallocObject();
}

uint64_t sub_18F14DB3C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18F14DB74()
{

  return swift_deallocObject();
}

__n128 sub_18F14DEB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F14DEBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _SynthesizedCopyIntent(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_73();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntentParameterSummary(255, v4, WitnessTable, v6);

  return swift_getWitnessTable();
}

uint64_t sub_18F14DF2C()
{

  return swift_deallocObject();
}

uint64_t sub_18F14E0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD57F8, &qword_18F554018);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18F14E1A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD57F8, &qword_18F554018);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18F14E2F4()
{
  v1 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_18F14E3DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F14E44C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F14E4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F14E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F14E688()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F14E6C8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_54();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F14E758()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for IntentDialog(255);
  v31 = v1;
  v30 = *(v0 + 40);
  v32 = v30;
  v33 = v2;
  v34 = *(v0 + 64);
  v3 = type metadata accessor for IntentResultContainer(0, &v31);
  OUTLINED_FUNCTION_212();
  v5 = (*(v4 + 80) + 128) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v1))
  {
    OUTLINED_FUNCTION_40_18();
    v6 = OUTLINED_FUNCTION_82();
    v7(v6);
  }

  EnumCaseMultiPayload = OUTLINED_FUNCTION_250();
  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for IntentDialog.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 0:
      case 1:

        goto LABEL_7;
      case 2:

        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F48, &unk_18F54EFA0);
        v16 = *(v2 + 48);
        sub_18F520C8C();
        OUTLINED_FUNCTION_10_0();
        (*(v17 + 8))(v1 + v16);
LABEL_7:

        break;
      case 3:

        break;
      default:
        break;
    }
  }

  if (!OUTLINED_FUNCTION_224(EnumCaseMultiPayload, v9, v10, v11, v12, v13, v14, v15, v30))
  {
    OUTLINED_FUNCTION_40_18();
    (*(v18 + 8))(v0 + v5 + v2, v1);
  }

  v19 = OUTLINED_FUNCTION_169_1(v3[21]);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  v21 = OUTLINED_FUNCTION_169_1(v3[22]);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  OUTLINED_FUNCTION_260();
  if (!v23)
  {
    sub_18F123A1C(*v1, *(v1 + 8));
  }

  OUTLINED_FUNCTION_276();
  if (!v23)
  {
    if (*(v1 + 24) != 1)
    {
      sub_18F123A1C(*v1, *(v1 + 8));

      v24 = *(v1 + 64);
    }

    if (v24)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));
    }
  }

  v25 = OUTLINED_FUNCTION_169_1(v3[25]);
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v27 = OUTLINED_FUNCTION_169_1(v3[29]);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return swift_deallocObject();
}

uint64_t sub_18F14EA38()
{

  return swift_deallocObject();
}

uint64_t sub_18F14EA70()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for IntentDialog(255);
  v37 = v1;
  v36 = *(v0 + 40);
  v38 = v36;
  v39 = v8;
  v40 = *(v0 + 64);
  v9 = type metadata accessor for IntentResultContainer(0, &v37);
  OUTLINED_FUNCTION_212();
  v11 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  (*(v4 + 8))(v0 + v5, v2);
  if (!__swift_getEnumTagSinglePayload(v0 + v11, 1, v1))
  {
    OUTLINED_FUNCTION_40_18();
    v12 = OUTLINED_FUNCTION_82();
    v13(v12);
  }

  EnumCaseMultiPayload = OUTLINED_FUNCTION_250();
  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for IntentDialog.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 0:
      case 1:

        goto LABEL_7;
      case 2:

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F48, &unk_18F54EFA0);
        v22 = *(v8 + 48);
        sub_18F520C8C();
        OUTLINED_FUNCTION_10_0();
        (*(v23 + 8))(v1 + v22);
LABEL_7:

        break;
      case 3:

        break;
      default:
        break;
    }
  }

  if (!OUTLINED_FUNCTION_224(EnumCaseMultiPayload, v15, v16, v17, v18, v19, v20, v21, v36))
  {
    OUTLINED_FUNCTION_40_18();
    (*(v24 + 8))(v0 + v11 + v8, v1);
  }

  v25 = OUTLINED_FUNCTION_169_1(v9[21]);
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v27 = OUTLINED_FUNCTION_169_1(v9[22]);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  OUTLINED_FUNCTION_260();
  if (!v29)
  {
    sub_18F123A1C(*v1, *(v1 + 8));
  }

  OUTLINED_FUNCTION_276();
  if (!v29)
  {
    if (*(v1 + 24) != 1)
    {
      sub_18F123A1C(*v1, *(v1 + 8));

      v30 = *(v1 + 64);
    }

    if (v30)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));
    }
  }

  v31 = OUTLINED_FUNCTION_169_1(v9[25]);
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v33 = OUTLINED_FUNCTION_169_1(v9[29]);
  if (v34)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  return swift_deallocObject();
}

uint64_t sub_18F14EDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F520B3C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 3)
    {
      return v8 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18F14EE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18F520B3C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18F14EF44@<X0>(uint64_t *a1@<X8>)
{
  result = IntentMediaSearch.MediaReference.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F14EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268, &unk_18F540430);
    v10 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_18F14F068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268, &unk_18F540430);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_18F14F190(char a1)
{
  result = 0x656C7469745FLL;
  switch(a1)
  {
    case 1:
      result = 0x6E697865646E695FLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6E6961746E6F635FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18F14F230(char a1)
{
  result = 0x656C7469745FLL;
  switch(a1)
  {
    case 1:
      result = 0x6669746E6564695FLL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x65756C61765FLL;
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_18F14F2F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F14F32C()
{

  return swift_deallocObject();
}

uint64_t sub_18F14F364()
{

  OUTLINED_FUNCTION_38_18();

  return swift_deallocObject();
}

uint64_t sub_18F14F4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F520B3C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_18F14F5AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18F520B3C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_18F14F654()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

__n128 sub_18F14F6D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F14F70C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _SynthesizedPreviewIntent(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_88();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntentParameterSummary(255, v4, WitnessTable, v6);

  return swift_getWitnessTable();
}

uint64_t sub_18F14F90C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_75_6();

  return swift_deallocObject();
}

uint64_t sub_18F14F950()
{

  return swift_deallocObject();
}

uint64_t sub_18F14F988()
{

  return swift_deallocObject();
}

uint64_t sub_18F14F9C8()
{

  OUTLINED_FUNCTION_75_6();

  return swift_deallocObject();
}

uint64_t sub_18F14FA0C()
{

  OUTLINED_FUNCTION_75_6();

  return swift_deallocObject();
}

uint64_t sub_18F14FA78(_OWORD *a1)
{
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  v2 = type metadata accessor for _AsyncIntentItemCollection(255, v6);
  OUTLINED_FUNCTION_0_93();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for EmptyResolverSpecification(255, v2, WitnessTable, v4);
  return swift_getWitnessTable();
}

uint64_t sub_18F14FAEC()
{

  OUTLINED_FUNCTION_4_58();

  return swift_deallocObject();
}

uint64_t sub_18F14FB20()
{

  OUTLINED_FUNCTION_4_58();

  return swift_deallocObject();
}

uint64_t sub_18F14FB54()
{

  return swift_deallocObject();
}

uint64_t sub_18F14FB8C()
{
  _Block_release(*(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_18F14FD2C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F14FD74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = a4;
  return a2;
}

uint64_t sub_18F14FDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return a2;
}

uint64_t sub_18F14FE24()
{
  OUTLINED_FUNCTION_69();
  String.urlRepresentationParameter.getter(*v0);
  OUTLINED_FUNCTION_2_10();

  return v1();
}

uint64_t sub_18F14FE7C()
{
  OUTLINED_FUNCTION_69();
  Int.urlRepresentationParameter.getter();
  OUTLINED_FUNCTION_2_10();

  return v0();
}

uint64_t sub_18F14FED4()
{
  OUTLINED_FUNCTION_69();
  URL.urlRepresentationParameter.getter();
  OUTLINED_FUNCTION_2_10();

  return v0();
}

uint64_t sub_18F14FF28()
{

  return swift_deallocObject();
}

uint64_t sub_18F14FFF0()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F150038()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18F1500C4()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

__n128 sub_18F150120(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F15017C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _SynthesizedEnterMarkupIntent(255, *a1, a1[1], a4);
  OUTLINED_FUNCTION_0_98();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IntentParameterSummary(255, v4, WitnessTable, v6);

  return swift_getWitnessTable();
}

uint64_t sub_18F1502A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F520DEC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_18F520FDC();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_18F150340(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18F520DEC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_18F520FDC();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_18F150450()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7710, &qword_18F55B7C0);
  OUTLINED_FUNCTION_10_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F150534@<X0>(uint64_t *a1@<X8>)
{
  result = IntentSystemContext.ActionExecutionPriority.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F15055C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentSystemContext.StaccatoInteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F1506A8()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F150780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320, &qword_18F540660);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 <= 7)
    {
      v9 = 7;
    }

    else
    {
      v9 = *(a1 + *(a3 + 24) + 8);
    }

    v10 = v9 - 7;
    if (v8 >= 7)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18F150844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320, &qword_18F540660);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2 + 7;
  }

  return result;
}

uint64_t sub_18F150A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F52165C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_18F150B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18F52165C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18F150C50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 16))(*(a1 + a2 - 24));
  *a3 = result;
  return result;
}

__n128 sub_18F150CA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18F150CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = sub_18F52207C();
  type metadata accessor for SetFromArrayResolver(255, v1, v2, v3);
  OUTLINED_FUNCTION_3_68();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _ResolverSpecification(255, v4, v1, WitnessTable);
  return swift_getWitnessTable();
}

__n128 sub_18F150D64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F150DAC()
{

  return swift_deallocObject();
}

uint64_t sub_18F150DE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18F150E3C()
{

  return swift_deallocObject();
}

uint64_t sub_18F150E74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F150F28()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18F150FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F151094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    v5 = *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_4();
    v10 = v9 - v8;
    for (i = 0; v6 != i; ++i)
    {
      *(v10 + 8 * i) = *((*(v7 + 40) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    v5 = OUTLINED_FUNCTION_7_57(0, v6, v10);
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_18F15114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    v6 = *(*(a4 + 40) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_0_109();
    while (v7 != v9)
    {
      OUTLINED_FUNCTION_5_65(v8, v9);
    }

    v6 = OUTLINED_FUNCTION_7_57(0, v7, v8);
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
}

uint64_t sub_18F1511EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EmptyResolverSpecification(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_18F151234(uint64_t *a1)
{
  type metadata accessor for _ResolverSpecification(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_18F1512C0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F1514D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18F151598(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318, &qword_18F5583A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents12IntentPersonV0D9NLGParamsVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F15170C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_18F52085C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_18F151794(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18F52085C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F15183C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EmptyResolverSpecification(255, *a1, *(*(a1[1] + 8) + 24), a4);

  return swift_getWitnessTable();
}

uint64_t sub_18F151914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38, &unk_18F557BE0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 0x22)
  {
    return EnumTagSinglePayload - 33;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F151968(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 33);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38, &unk_18F557BE0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_18F1519D4()
{

  return swift_deallocObject();
}

uint64_t sub_18F151A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F52165C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_18F151AC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18F52165C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18F151B6C()
{
  type metadata accessor for FetchStructuredDataTask(0);
  OUTLINED_FUNCTION_6_67();
  OUTLINED_FUNCTION_4_73();
  v2 = v0 + v1;
  sub_18F52165C();
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(v2);

  return swift_deallocObject();
}

uint64_t sub_18F151CA8()
{
  type metadata accessor for PerformActionExecutorTask(0);
  OUTLINED_FUNCTION_6_67();
  OUTLINED_FUNCTION_4_73();
  v3 = v1 + v2;
  sub_18F52165C();
  OUTLINED_FUNCTION_10_0();
  (*(v4 + 8))(v3);
  v5 = v0[8];
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v6 + 8))(v3 + v5);

  return swift_deallocObject();
}

uint64_t sub_18F151DD8()
{

  return swift_deallocObject();
}

uint64_t sub_18F151E54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18F151EC4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_18F5205BC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F151F4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_18F5205BC();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F152038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F520DEC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_18F520FDC();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_18F1520D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18F520DEC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_18F520FDC();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_18F1521BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7710, &qword_18F55B7C0);
  OUTLINED_FUNCTION_10_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F152348()
{

  return swift_deallocObject();
}

uint64_t sub_18F152398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F3BA9F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18F1523C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F52165C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_18F152474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18F52165C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18F15254C()
{
  v1 = *(type metadata accessor for FetchStructuredDataTask(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_18F52165C();
  OUTLINED_FUNCTION_31_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_18F152654()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18F152740()
{

  return swift_deallocObject();
}

uint64_t sub_18F152788()
{

  return swift_deallocObject();
}

uint64_t sub_18F1527C8()
{

  return swift_deallocObject();
}

uint64_t sub_18F152800()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18F152860(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EmptyResolverSpecification(255, *a1, *(*(a1[1] + 8) + 24), a4);

  return swift_getWitnessTable();
}

uint64_t sub_18F15296C()
{

  return swift_deallocObject();
}

uint64_t sub_18F1529C4()
{

  return swift_deallocObject();
}

uint64_t sub_18F152A64(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F152AF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F152B8C@<X0>(uint64_t *a1@<X8>)
{
  result = AppManager.siriLanguageCode.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_18F152BBC@<X0>(uint64_t *a1@<X8>)
{
  result = AppManager.bundle.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F152BF0()
{

  OUTLINED_FUNCTION_4_29();

  return swift_deallocObject();
}

uint64_t sub_18F152C2C()
{
  OUTLINED_FUNCTION_55_16();
  v0(&v2);
  return v2;
}

uint64_t sub_18F152C94()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_18F123A1C(v0[9], v0[10]);

  return swift_deallocObject();
}

uint64_t sub_18F152CF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_18F5206FC();
  v9 = type metadata accessor for MeasurementFromStringResolver(255, v1, v3, v4);
  OUTLINED_FUNCTION_1_101();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_100();
  v8 = swift_getWitnessTable();
  v7[0] = 1;
  v7[1] = v2;
  v7[2] = v2;
  v7[3] = &v9;
  v7[4] = WitnessTable;
  v7[5] = WitnessTable;
  v7[6] = &v8;
  type metadata accessor for ResolverSpecificationBuilder.Specification(255, v7);
  return swift_getWitnessTable();
}

__n128 sub_18F152DF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18F152E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F153010(char a1)
{
  result = 0x656D616E5FLL;
  switch(a1)
  {
    case 1:
      result = 0x654D73695FLL;
      break;
    case 2:
      result = 0x6669746E6564695FLL;
      break;
    case 3:
      result = 0x656C646E61685FLL;
      break;
    case 4:
      result = 0x73657361696C615FLL;
      break;
    case 5:
      result = 0x6567616D695FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18F1530D4()
{
  OUTLINED_FUNCTION_53_16();
  sub_18F522B3C();
  OUTLINED_FUNCTION_4_68();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18F153114(char a1)
{
  if (!a1)
  {
    return 0x79616C707369645FLL;
  }

  if (a1 == 1)
  {
    return 0x656E6F706D6F635FLL;
  }

  return 0x6E776F6E6B6E755FLL;
}

unint64_t sub_18F15317C()
{
  OUTLINED_FUNCTION_53_16();
  sub_18F522B3C();
  OUTLINED_FUNCTION_4_68();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18F1531BC(char a1)
{
  if (!a1)
  {
    return 0x746361746E6F635FLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6E776F6E6B6E755FLL;
}

uint64_t sub_18F153218(char a1)
{
  if (a1)
  {
    return 0x6C6562616C5FLL;
  }

  else
  {
    return 0x65756C61765FLL;
  }
}

unint64_t sub_18F153240()
{
  OUTLINED_FUNCTION_53_16();
  sub_18F522B3C();
  OUTLINED_FUNCTION_4_68();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18F153280(char a1)
{
  if (!a1)
  {
    return 0x754E656E6F68705FLL;
  }

  if (a1 == 1)
  {
    return 0x64416C69616D655FLL;
  }

  return 0xD000000000000013;
}

BOOL sub_18F1532F0()
{
  OUTLINED_FUNCTION_53_16();
  sub_18F522B3C();
  OUTLINED_FUNCTION_4_68();
  return v0 != 0;
}

uint64_t sub_18F15338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_47_3();
  v7 = type metadata accessor for IntentPerson.Name(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
    v9 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 32));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_18F153464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_47_3();
  result = type metadata accessor for IntentPerson.Name(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
    v11 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_18F153674()
{
  OUTLINED_FUNCTION_1_107();

  return swift_deallocObject();
}

uint64_t sub_18F1536A8()
{

  OUTLINED_FUNCTION_1_107();

  return swift_deallocObject();
}

uint64_t sub_18F1536DC()
{

  return swift_deallocObject();
}

uint64_t sub_18F153744()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18F15378C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18F1537E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for _AppIntentConstraint.Behavior(0, *(a3 + 16), *(a3 + 24), a4);
    v10 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void sub_18F15386C()
{
  OUTLINED_FUNCTION_79();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = type metadata accessor for _AppIntentConstraint.Behavior(0, *(v2 + 16), *(v2 + 24), v2);
    v6 = v1 + *(v4 + 40);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

uint64_t sub_18F1538F0()
{
  OUTLINED_FUNCTION_79();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD3300, &qword_18F564CA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v0, v2);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F153940(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD3300, &qword_18F564CA0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_18F1539E4()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_18F153A3C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F153AD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_18F153BB8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18F153CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F153D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18F520DEC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_18F520FDC();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_18F153DF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18F520DEC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_18F520FDC();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_18F153EC0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F153F40()
{

  return swift_deallocObject();
}

id sub_18F153FEC(id a1, uint64_t a2, void *a3)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_18F154000(a1, a2, a3);
  }

  return a1;
}

id sub_18F154000(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_18F16AAE0(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
    a1 = a3;
    v3 = vars8;
  }

  return a1;
}

unint64_t sub_18F154110(uint64_t a1)
{
  result = sub_18F29A61C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F154148()
{
  OUTLINED_FUNCTION_1_119();

  return swift_deallocObject();
}

uint64_t sub_18F154178()
{

  OUTLINED_FUNCTION_27_1();

  return swift_deallocObject();
}

uint64_t sub_18F1541AC()
{
  OUTLINED_FUNCTION_1_119();

  return swift_deallocObject();
}

uint64_t sub_18F1541F8()
{

  OUTLINED_FUNCTION_27_1();

  return swift_deallocObject();
}

uint64_t sub_18F154228()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_119();

  return swift_deallocObject();
}

uint64_t sub_18F1542C4()
{

  return swift_deallocObject();
}

uint64_t sub_18F1542FC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_4_58();

  return swift_deallocObject();
}

uint64_t sub_18F154348()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18F154458@<X0>(uint64_t *a1@<X8>)
{
  result = MailboxPrototype.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F154534(uint64_t a1)
{
  result = sub_18F495B10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F154560(uint64_t a1)
{
  result = sub_18F495F88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F15458C(uint64_t a1)
{
  result = sub_18F496394();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1545BC(uint64_t a1)
{
  result = sub_18F49684C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1545EC(uint64_t a1)
{
  result = sub_18F496D00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F15461C(uint64_t a1)
{
  result = sub_18F497160();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F154648(uint64_t a1)
{
  result = sub_18F49756C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F154674(uint64_t a1)
{
  result = sub_18F4979CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1546A0(uint64_t a1)
{
  result = sub_18F497E2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1546D0(uint64_t a1)
{
  result = sub_18F49835C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1546F8(uint64_t a1)
{
  result = sub_18F498584();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F154724(uint64_t a1)
{
  result = sub_18F498758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F15474C(uint64_t a1)
{
  result = sub_18F498980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F154774(uint64_t a1)
{
  result = sub_18F498B54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F15479C(uint64_t a1)
{
  result = sub_18F498D28();
  *(a1 + 8) = result;
  return result;
}

void (*sub_18F1550EC())(double)
{
  OUTLINED_FUNCTION_144_5();
  result = MailMessagePrototype.to.getter();
  *v0 = result;
  return result;
}

void (*sub_18F155140())(double)
{
  OUTLINED_FUNCTION_144_5();
  result = MailMessagePrototype.cc.getter();
  *v0 = result;
  return result;
}

void (*sub_18F155194())(double)
{
  OUTLINED_FUNCTION_144_5();
  result = MailMessagePrototype.bcc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F1551E8()
{
  OUTLINED_FUNCTION_144_5();
  result = MailMessagePrototype.subject.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void (*sub_18F155244())(double)
{
  OUTLINED_FUNCTION_144_5();
  result = MailMessagePrototype.replyTo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F155338()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MailMessagePrototype.isRead.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F15538C()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MailMessagePrototype.isJunk.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

void (*sub_18F1553E0())(double)
{
  OUTLINED_FUNCTION_144_5();
  result = MailMessagePrototype.attributes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F155544()
{
  OUTLINED_FUNCTION_144_5();
  result = IntentMessagePrototype.contents.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_18F155570()
{
  IntentMessagePrototype.sender.getter(v3);
  v0 = OUTLINED_FUNCTION_18_29();
  return memcpy(v0, v1, 0x51uLL);
}

double sub_18F1555B4@<D0>(uint64_t a1@<X8>)
{
  v2 = IntentMessagePrototype.group.getter(v13);
  OUTLINED_FUNCTION_381_0(v2, v3, v4, v5, v6, v7, v8, v9, v10, *v13, *&v13[2], v11);
  result = v14[0];
  *(a1 + 41) = *v14;
  return result;
}

uint64_t sub_18F1555F8()
{
  OUTLINED_FUNCTION_144_5();
  result = IntentMessagePrototype.notificationIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18F1556AC()
{
  OUTLINED_FUNCTION_144_5();
  result = MessageGroupPrototype.groupName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void (*sub_18F1556D8())(double)
{
  OUTLINED_FUNCTION_144_5();
  result = MessageGroupPrototype.members.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F155704()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MessageGroupPrototype.screenTimeRestrictionEnabled.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F155790()
{
  OUTLINED_FUNCTION_144_5();
  result = MessageParticipantPrototype.handle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18F1557BC()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MessageParticipantPrototype.isMe.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F155810()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MessageParticipantPrototype.canReceiveMessages.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F155864()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MessageParticipantPrototype.screenTimeRestrictionEnabled.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F1558B8()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MessageParticipantPrototype.downTimeRestrictionEnabled.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F15590C()
{
  OUTLINED_FUNCTION_144_5();
  v0 = MessageParticipantPrototype.messagingServiceEnabled.getter();
  return OUTLINED_FUNCTION_261_0(v0);
}

uint64_t sub_18F1559C0()
{
  OUTLINED_FUNCTION_144_5();
  result = VisualSearchPrototype.domainKey.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18F155A1C()
{
  OUTLINED_FUNCTION_144_5();
  result = VisualSearchPrototype.visualSearchObjectTitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18F155F10()
{
  OUTLINED_FUNCTION_144_5();
  result = SendMailIntentPrototype.to.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F155F64()
{
  OUTLINED_FUNCTION_144_5();
  result = SendMailIntentPrototype.cc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F155FB8()
{
  OUTLINED_FUNCTION_144_5();
  result = SendMailIntentPrototype.bcc.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18F15600C()
{
  OUTLINED_FUNCTION_144_5();
  result = SendMailIntentPrototype.subject.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_18F156068()
{
  OUTLINED_FUNCTION_144_5();
  result = SendMailIntentPrototype.attachments.getter();
  *v0 = result;
  return result;
}

void *sub_18F1560BC()
{
  SendMailIntentPrototype.inReplyTo.getter();
  v0 = OUTLINED_FUNCTION_18_29();
  return memcpy(v0, v1, 0x91uLL);
}

uint64_t sub_18F1564E4()
{

  OUTLINED_FUNCTION_124_10();

  return swift_deallocObject();
}

uint64_t sub_18F156538()
{

  return swift_deallocObject();
}

uint64_t sub_18F1565AC(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_18F1B8A24(result);
  }

  return result;
}

uint64_t sub_18F1565D0()
{

  return swift_deallocObject();
}

uint64_t sub_18F156804()
{
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata2);
  OUTLINED_FUNCTION_0_146();

  return swift_getWitnessTable();
}

uint64_t sub_18F15684C(void *a1)
{
  v1 = OUTLINED_FUNCTION_148_5(255, a1[1], a1[2], a1[3]);
  OUTLINED_FUNCTION_26_50(v1);
  OUTLINED_FUNCTION_0_146();

  return swift_getWitnessTable();
}

uint64_t sub_18F156894()
{
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F1568E8()
{
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156940(uint64_t a1)
{
  OUTLINED_FUNCTION_12_68(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156990(uint64_t a1)
{
  OUTLINED_FUNCTION_12_68(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F1569E4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156A30(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156A80(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156AD4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156B2C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156B7C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156BD0(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156C28(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_50(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_146();
  return swift_getWitnessTable();
}

uint64_t sub_18F156CC0()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v9 = v0 + ((*(v8 + 80) + 272) & ~*(v8 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v10 + 8))(v9, v1);
  OUTLINED_FUNCTION_22_50();
  (*(v11 + 8))(&v9[v12], v2);
  OUTLINED_FUNCTION_20_45();
  (*(v13 + 8))(&v9[v14], v4);
  OUTLINED_FUNCTION_25_49();
  (*(v15 + 8))(&v9[v16], v3);
  OUTLINED_FUNCTION_19_50();
  (*(v17 + 8))(&v9[v18], v6);
  OUTLINED_FUNCTION_16_51();
  (*(v19 + 8))(&v9[v20], v5);
  OUTLINED_FUNCTION_14_57();
  (*(v21 + 8))(&v9[v22], v7);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(&v9[v24]);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(&v9[v26]);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(&v9[v28]);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(&v9[v30]);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(&v9[v32]);
  OUTLINED_FUNCTION_11_60();
  (*(v33 + 8))(&v9[v34]);
  OUTLINED_FUNCTION_11_60();
  (*(v35 + 8))(&v9[v36]);
  OUTLINED_FUNCTION_11_60();
  (*(v37 + 8))(&v9[v38]);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F157060()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 8))(v0 + 256, v1);
  OUTLINED_FUNCTION_20_45();
  v4 = OUTLINED_FUNCTION_59_17(v3);
  v5(v4);
  OUTLINED_FUNCTION_18_53();
  v7 = OUTLINED_FUNCTION_55_20(v6);
  v8(v7);
  OUTLINED_FUNCTION_19_50();
  v10 = OUTLINED_FUNCTION_68_19(v9);
  v11(v10);
  OUTLINED_FUNCTION_16_51();
  v13 = OUTLINED_FUNCTION_60_16(v12);
  v14(v13);
  OUTLINED_FUNCTION_14_57();
  v16 = OUTLINED_FUNCTION_54_22(v15);
  v17(v16);
  OUTLINED_FUNCTION_17_50();
  v19 = OUTLINED_FUNCTION_50_15(v18);
  v20(v19);
  OUTLINED_FUNCTION_11_60();
  (*(v21 + 8))(v0 + 256 + v22);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v0 + 256 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v0 + 256 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v0 + 256 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v0 + 256 + v30);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(v0 + 256 + v32);
  OUTLINED_FUNCTION_11_60();
  (*(v33 + 8))(v0 + 256 + v34);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F1573B0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 240) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_18_53();
  v6 = OUTLINED_FUNCTION_55_20(v5);
  v7(v6);
  OUTLINED_FUNCTION_19_50();
  v9 = OUTLINED_FUNCTION_68_19(v8);
  v10(v9);
  OUTLINED_FUNCTION_16_51();
  v12 = OUTLINED_FUNCTION_60_16(v11);
  v13(v12);
  OUTLINED_FUNCTION_14_57();
  v15 = OUTLINED_FUNCTION_54_22(v14);
  v16(v15);
  OUTLINED_FUNCTION_17_50();
  v18 = OUTLINED_FUNCTION_50_15(v17);
  v19(v18);
  OUTLINED_FUNCTION_22_50();
  v21 = OUTLINED_FUNCTION_67_19(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v3 + v30);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(v3 + v32);
  OUTLINED_FUNCTION_11_60();
  (*(v33 + 8))(v3 + v34);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F1576D4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 224) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_19_50();
  v6 = OUTLINED_FUNCTION_68_19(v5);
  v7(v6);
  OUTLINED_FUNCTION_16_51();
  v9 = OUTLINED_FUNCTION_60_16(v8);
  v10(v9);
  OUTLINED_FUNCTION_14_57();
  v12 = OUTLINED_FUNCTION_54_22(v11);
  v13(v12);
  OUTLINED_FUNCTION_17_50();
  v15 = OUTLINED_FUNCTION_50_15(v14);
  v16(v15);
  OUTLINED_FUNCTION_22_50();
  v18 = OUTLINED_FUNCTION_67_19(v17);
  v19(v18);
  OUTLINED_FUNCTION_20_45();
  v21 = OUTLINED_FUNCTION_59_17(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v3 + v30);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(v3 + v32);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F1579C4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 208) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_16_51();
  v6 = OUTLINED_FUNCTION_60_16(v5);
  v7(v6);
  OUTLINED_FUNCTION_14_57();
  v9 = OUTLINED_FUNCTION_54_22(v8);
  v10(v9);
  OUTLINED_FUNCTION_17_50();
  v12 = OUTLINED_FUNCTION_50_15(v11);
  v13(v12);
  OUTLINED_FUNCTION_22_50();
  v15 = OUTLINED_FUNCTION_67_19(v14);
  v16(v15);
  OUTLINED_FUNCTION_20_45();
  v18 = OUTLINED_FUNCTION_59_17(v17);
  v19(v18);
  OUTLINED_FUNCTION_18_53();
  v21 = OUTLINED_FUNCTION_55_20(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v3 + v30);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F157C84()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 192) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_14_57();
  v6 = OUTLINED_FUNCTION_54_22(v5);
  v7(v6);
  OUTLINED_FUNCTION_17_50();
  v9 = OUTLINED_FUNCTION_50_15(v8);
  v10(v9);
  OUTLINED_FUNCTION_22_50();
  v12 = OUTLINED_FUNCTION_67_19(v11);
  v13(v12);
  OUTLINED_FUNCTION_20_45();
  v15 = OUTLINED_FUNCTION_59_17(v14);
  v16(v15);
  OUTLINED_FUNCTION_18_53();
  v18 = OUTLINED_FUNCTION_55_20(v17);
  v19(v18);
  OUTLINED_FUNCTION_19_50();
  v21 = OUTLINED_FUNCTION_68_19(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F157F10()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 176) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_17_50();
  v6 = OUTLINED_FUNCTION_50_15(v5);
  v7(v6);
  OUTLINED_FUNCTION_22_50();
  v9 = OUTLINED_FUNCTION_67_19(v8);
  v10(v9);
  OUTLINED_FUNCTION_20_45();
  v12 = OUTLINED_FUNCTION_59_17(v11);
  v13(v12);
  OUTLINED_FUNCTION_18_53();
  v15 = OUTLINED_FUNCTION_55_20(v14);
  v16(v15);
  OUTLINED_FUNCTION_19_50();
  v18 = OUTLINED_FUNCTION_68_19(v17);
  v19(v18);
  OUTLINED_FUNCTION_11_60();
  (*(v20 + 8))(v3 + v21);
  OUTLINED_FUNCTION_11_60();
  (*(v22 + 8))(v3 + v23);
  OUTLINED_FUNCTION_11_60();
  (*(v24 + 8))(v3 + v25);
  return swift_deallocObject();
}

uint64_t sub_18F158174()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v4 = v0 + ((*(v3 + 80) + 160) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_22_50();
  v7 = OUTLINED_FUNCTION_67_19(v6);
  v8(v7);
  OUTLINED_FUNCTION_20_45();
  v10 = OUTLINED_FUNCTION_59_17(v9);
  v11(v10);
  OUTLINED_FUNCTION_18_53();
  v13 = OUTLINED_FUNCTION_55_20(v12);
  v14(v13);
  OUTLINED_FUNCTION_24_56();
  (*(v15 + 8))(v4 + v16, v2);
  OUTLINED_FUNCTION_16_51();
  v18 = OUTLINED_FUNCTION_60_16(v17);
  v19(v18);
  OUTLINED_FUNCTION_11_60();
  (*(v20 + 8))(v4 + v21);
  OUTLINED_FUNCTION_11_60();
  (*(v22 + 8))(v4 + v23);
  return swift_deallocObject();
}

uint64_t sub_18F1583A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v4 = v0 + ((*(v3 + 80) + 144) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_20_45();
  v7 = OUTLINED_FUNCTION_59_17(v6);
  v8(v7);
  OUTLINED_FUNCTION_18_53();
  v10 = OUTLINED_FUNCTION_55_20(v9);
  v11(v10);
  OUTLINED_FUNCTION_24_56();
  (*(v12 + 8))(v4 + v13, v2);
  OUTLINED_FUNCTION_16_51();
  v15 = OUTLINED_FUNCTION_60_16(v14);
  v16(v15);
  OUTLINED_FUNCTION_14_57();
  v18 = OUTLINED_FUNCTION_54_22(v17);
  v19(v18);
  OUTLINED_FUNCTION_11_60();
  (*(v20 + 8))(v4 + v21);
  return swift_deallocObject();
}

uint64_t sub_18F1585A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v4 = v0 + ((*(v3 + 80) + 128) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_18_53();
  v7 = OUTLINED_FUNCTION_55_20(v6);
  v8(v7);
  OUTLINED_FUNCTION_24_56();
  (*(v9 + 8))(v4 + v10, v2);
  OUTLINED_FUNCTION_16_51();
  v12 = OUTLINED_FUNCTION_60_16(v11);
  v13(v12);
  OUTLINED_FUNCTION_14_57();
  v15 = OUTLINED_FUNCTION_54_22(v14);
  v16(v15);
  OUTLINED_FUNCTION_17_50();
  v18 = OUTLINED_FUNCTION_50_15(v17);
  v19(v18);
  return swift_deallocObject();
}

uint64_t sub_18F158770()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[7];
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v7 = v0 + ((*(v6 + 80) + 112) & ~*(v6 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v8 + 8))(v7, v1);
  OUTLINED_FUNCTION_25_49();
  (*(v9 + 8))(&v7[v10], v2);
  OUTLINED_FUNCTION_16_51();
  (*(v11 + 8))(&v7[v12], v4);
  OUTLINED_FUNCTION_14_57();
  (*(v13 + 8))(&v7[v14], v3);
  OUTLINED_FUNCTION_17_50();
  (*(v15 + 8))(&v7[v16], v5);
  return swift_deallocObject();
}

uint64_t sub_18F15891C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v0 + v3, v1);
  OUTLINED_FUNCTION_19_50();
  v6 = OUTLINED_FUNCTION_68_19(v5);
  v7(v6);
  OUTLINED_FUNCTION_14_57();
  v9 = OUTLINED_FUNCTION_54_22(v8);
  v10(v9);
  OUTLINED_FUNCTION_17_50();
  v12 = OUTLINED_FUNCTION_50_15(v11);
  v13(v12);
  return swift_deallocObject();
}

uint64_t sub_18F158A80()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_148_5(0, v1, v2, v3);
  OUTLINED_FUNCTION_29_43();
  v5 = v0 + ((*(v4 + 80) + 80) & ~*(v4 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v6 + 8))(v5, v1);
  OUTLINED_FUNCTION_14_57();
  (*(v7 + 8))(&v5[v8], v2);
  OUTLINED_FUNCTION_16_51();
  (*(v9 + 8))(&v5[v10], v3);
  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_18F158BB0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_11_1();
  v3 = *(swift_getTupleTypeMetadata2() - 8);
  v4 = v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_14_57();
  (*(v6 + 8))(v4 + v7, v2);

  return swift_deallocObject();
}

uint64_t sub_18F158E50()
{
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata2);
  OUTLINED_FUNCTION_0_148();

  return swift_getWitnessTable();
}

uint64_t sub_18F158E98(void *a1)
{
  v1 = OUTLINED_FUNCTION_148_5(255, a1[1], a1[2], a1[3]);
  OUTLINED_FUNCTION_26_51(v1);
  OUTLINED_FUNCTION_0_148();

  return swift_getWitnessTable();
}

uint64_t sub_18F158EE0()
{
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F158F34()
{
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F158F8C(uint64_t a1)
{
  OUTLINED_FUNCTION_12_68(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F158FDC(uint64_t a1)
{
  OUTLINED_FUNCTION_12_68(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F159030(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F15907C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F1590CC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F159120(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F159178(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F1591C8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F15921C(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F159274(uint64_t a1)
{
  OUTLINED_FUNCTION_4_90(a1);
  OUTLINED_FUNCTION_44_22(v1);
  OUTLINED_FUNCTION_39_30();
  OUTLINED_FUNCTION_11_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_51(TupleTypeMetadata);
  OUTLINED_FUNCTION_0_148();
  return swift_getWitnessTable();
}

uint64_t sub_18F15930C()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v9 = v0 + ((*(v8 + 80) + 272) & ~*(v8 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v10 + 8))(v9, v1);
  OUTLINED_FUNCTION_22_50();
  (*(v11 + 8))(&v9[v12], v2);
  OUTLINED_FUNCTION_20_45();
  (*(v13 + 8))(&v9[v14], v4);
  OUTLINED_FUNCTION_25_49();
  (*(v15 + 8))(&v9[v16], v3);
  OUTLINED_FUNCTION_19_50();
  (*(v17 + 8))(&v9[v18], v6);
  OUTLINED_FUNCTION_16_51();
  (*(v19 + 8))(&v9[v20], v5);
  OUTLINED_FUNCTION_14_57();
  (*(v21 + 8))(&v9[v22], v7);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(&v9[v24]);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(&v9[v26]);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(&v9[v28]);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(&v9[v30]);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(&v9[v32]);
  OUTLINED_FUNCTION_11_60();
  (*(v33 + 8))(&v9[v34]);
  OUTLINED_FUNCTION_11_60();
  (*(v35 + 8))(&v9[v36]);
  OUTLINED_FUNCTION_11_60();
  (*(v37 + 8))(&v9[v38]);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F1596AC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 8))(v0 + 256, v1);
  OUTLINED_FUNCTION_20_45();
  v4 = OUTLINED_FUNCTION_59_17(v3);
  v5(v4);
  OUTLINED_FUNCTION_18_53();
  v7 = OUTLINED_FUNCTION_55_20(v6);
  v8(v7);
  OUTLINED_FUNCTION_19_50();
  v10 = OUTLINED_FUNCTION_68_19(v9);
  v11(v10);
  OUTLINED_FUNCTION_16_51();
  v13 = OUTLINED_FUNCTION_60_16(v12);
  v14(v13);
  OUTLINED_FUNCTION_14_57();
  v16 = OUTLINED_FUNCTION_54_22(v15);
  v17(v16);
  OUTLINED_FUNCTION_17_50();
  v19 = OUTLINED_FUNCTION_50_15(v18);
  v20(v19);
  OUTLINED_FUNCTION_11_60();
  (*(v21 + 8))(v0 + 256 + v22);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v0 + 256 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v0 + 256 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v0 + 256 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v0 + 256 + v30);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(v0 + 256 + v32);
  OUTLINED_FUNCTION_11_60();
  (*(v33 + 8))(v0 + 256 + v34);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F1599FC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 240) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_18_53();
  v6 = OUTLINED_FUNCTION_55_20(v5);
  v7(v6);
  OUTLINED_FUNCTION_19_50();
  v9 = OUTLINED_FUNCTION_68_19(v8);
  v10(v9);
  OUTLINED_FUNCTION_16_51();
  v12 = OUTLINED_FUNCTION_60_16(v11);
  v13(v12);
  OUTLINED_FUNCTION_14_57();
  v15 = OUTLINED_FUNCTION_54_22(v14);
  v16(v15);
  OUTLINED_FUNCTION_17_50();
  v18 = OUTLINED_FUNCTION_50_15(v17);
  v19(v18);
  OUTLINED_FUNCTION_22_50();
  v21 = OUTLINED_FUNCTION_67_19(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v3 + v30);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(v3 + v32);
  OUTLINED_FUNCTION_11_60();
  (*(v33 + 8))(v3 + v34);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F159D20()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 224) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_19_50();
  v6 = OUTLINED_FUNCTION_68_19(v5);
  v7(v6);
  OUTLINED_FUNCTION_16_51();
  v9 = OUTLINED_FUNCTION_60_16(v8);
  v10(v9);
  OUTLINED_FUNCTION_14_57();
  v12 = OUTLINED_FUNCTION_54_22(v11);
  v13(v12);
  OUTLINED_FUNCTION_17_50();
  v15 = OUTLINED_FUNCTION_50_15(v14);
  v16(v15);
  OUTLINED_FUNCTION_22_50();
  v18 = OUTLINED_FUNCTION_67_19(v17);
  v19(v18);
  OUTLINED_FUNCTION_20_45();
  v21 = OUTLINED_FUNCTION_59_17(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v3 + v30);
  OUTLINED_FUNCTION_11_60();
  (*(v31 + 8))(v3 + v32);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F15A010()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 208) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_16_51();
  v6 = OUTLINED_FUNCTION_60_16(v5);
  v7(v6);
  OUTLINED_FUNCTION_14_57();
  v9 = OUTLINED_FUNCTION_54_22(v8);
  v10(v9);
  OUTLINED_FUNCTION_17_50();
  v12 = OUTLINED_FUNCTION_50_15(v11);
  v13(v12);
  OUTLINED_FUNCTION_22_50();
  v15 = OUTLINED_FUNCTION_67_19(v14);
  v16(v15);
  OUTLINED_FUNCTION_20_45();
  v18 = OUTLINED_FUNCTION_59_17(v17);
  v19(v18);
  OUTLINED_FUNCTION_18_53();
  v21 = OUTLINED_FUNCTION_55_20(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  OUTLINED_FUNCTION_11_60();
  (*(v29 + 8))(v3 + v30);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F15A2D0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 192) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_14_57();
  v6 = OUTLINED_FUNCTION_54_22(v5);
  v7(v6);
  OUTLINED_FUNCTION_17_50();
  v9 = OUTLINED_FUNCTION_50_15(v8);
  v10(v9);
  OUTLINED_FUNCTION_22_50();
  v12 = OUTLINED_FUNCTION_67_19(v11);
  v13(v12);
  OUTLINED_FUNCTION_20_45();
  v15 = OUTLINED_FUNCTION_59_17(v14);
  v16(v15);
  OUTLINED_FUNCTION_18_53();
  v18 = OUTLINED_FUNCTION_55_20(v17);
  v19(v18);
  OUTLINED_FUNCTION_19_50();
  v21 = OUTLINED_FUNCTION_68_19(v20);
  v22(v21);
  OUTLINED_FUNCTION_11_60();
  (*(v23 + 8))(v3 + v24);
  OUTLINED_FUNCTION_11_60();
  (*(v25 + 8))(v3 + v26);
  OUTLINED_FUNCTION_11_60();
  (*(v27 + 8))(v3 + v28);
  return OUTLINED_FUNCTION_120_10();
}

uint64_t sub_18F15A55C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = v0 + ((*(v2 + 80) + 176) & ~*(v2 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v3, v1);
  OUTLINED_FUNCTION_17_50();
  v6 = OUTLINED_FUNCTION_50_15(v5);
  v7(v6);
  OUTLINED_FUNCTION_22_50();
  v9 = OUTLINED_FUNCTION_67_19(v8);
  v10(v9);
  OUTLINED_FUNCTION_20_45();
  v12 = OUTLINED_FUNCTION_59_17(v11);
  v13(v12);
  OUTLINED_FUNCTION_18_53();
  v15 = OUTLINED_FUNCTION_55_20(v14);
  v16(v15);
  OUTLINED_FUNCTION_19_50();
  v18 = OUTLINED_FUNCTION_68_19(v17);
  v19(v18);
  OUTLINED_FUNCTION_11_60();
  (*(v20 + 8))(v3 + v21);
  OUTLINED_FUNCTION_11_60();
  (*(v22 + 8))(v3 + v23);
  OUTLINED_FUNCTION_11_60();
  (*(v24 + 8))(v3 + v25);
  return swift_deallocObject();
}

uint64_t sub_18F15A7C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v4 = v0 + ((*(v3 + 80) + 160) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_22_50();
  v7 = OUTLINED_FUNCTION_67_19(v6);
  v8(v7);
  OUTLINED_FUNCTION_20_45();
  v10 = OUTLINED_FUNCTION_59_17(v9);
  v11(v10);
  OUTLINED_FUNCTION_18_53();
  v13 = OUTLINED_FUNCTION_55_20(v12);
  v14(v13);
  OUTLINED_FUNCTION_24_56();
  (*(v15 + 8))(v4 + v16, v2);
  OUTLINED_FUNCTION_16_51();
  v18 = OUTLINED_FUNCTION_60_16(v17);
  v19(v18);
  OUTLINED_FUNCTION_11_60();
  (*(v20 + 8))(v4 + v21);
  OUTLINED_FUNCTION_11_60();
  (*(v22 + 8))(v4 + v23);
  return swift_deallocObject();
}

uint64_t sub_18F15A9F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v4 = v0 + ((*(v3 + 80) + 144) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_20_45();
  v7 = OUTLINED_FUNCTION_59_17(v6);
  v8(v7);
  OUTLINED_FUNCTION_18_53();
  v10 = OUTLINED_FUNCTION_55_20(v9);
  v11(v10);
  OUTLINED_FUNCTION_24_56();
  (*(v12 + 8))(v4 + v13, v2);
  OUTLINED_FUNCTION_16_51();
  v15 = OUTLINED_FUNCTION_60_16(v14);
  v16(v15);
  OUTLINED_FUNCTION_14_57();
  v18 = OUTLINED_FUNCTION_54_22(v17);
  v19(v18);
  OUTLINED_FUNCTION_11_60();
  (*(v20 + 8))(v4 + v21);
  return swift_deallocObject();
}

uint64_t sub_18F15ABF0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v4 = v0 + ((*(v3 + 80) + 128) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_18_53();
  v7 = OUTLINED_FUNCTION_55_20(v6);
  v8(v7);
  OUTLINED_FUNCTION_24_56();
  (*(v9 + 8))(v4 + v10, v2);
  OUTLINED_FUNCTION_16_51();
  v12 = OUTLINED_FUNCTION_60_16(v11);
  v13(v12);
  OUTLINED_FUNCTION_14_57();
  v15 = OUTLINED_FUNCTION_54_22(v14);
  v16(v15);
  OUTLINED_FUNCTION_17_50();
  v18 = OUTLINED_FUNCTION_50_15(v17);
  v19(v18);
  return swift_deallocObject();
}

uint64_t sub_18F15ADBC()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[7];
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_29_43();
  v7 = v0 + ((*(v6 + 80) + 112) & ~*(v6 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v8 + 8))(v7, v1);
  OUTLINED_FUNCTION_25_49();
  (*(v9 + 8))(&v7[v10], v2);
  OUTLINED_FUNCTION_16_51();
  (*(v11 + 8))(&v7[v12], v4);
  OUTLINED_FUNCTION_14_57();
  (*(v13 + 8))(&v7[v14], v3);
  OUTLINED_FUNCTION_17_50();
  (*(v15 + 8))(&v7[v16], v5);
  return swift_deallocObject();
}

uint64_t sub_18F15AF68()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_11_1();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_15_54();
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 8))(v0 + v3, v1);
  OUTLINED_FUNCTION_19_50();
  v6 = OUTLINED_FUNCTION_68_19(v5);
  v7(v6);
  OUTLINED_FUNCTION_14_57();
  v9 = OUTLINED_FUNCTION_54_22(v8);
  v10(v9);
  OUTLINED_FUNCTION_17_50();
  v12 = OUTLINED_FUNCTION_50_15(v11);
  v13(v12);
  return swift_deallocObject();
}

uint64_t sub_18F15B0CC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  OUTLINED_FUNCTION_148_5(0, v1, v2, v3);
  OUTLINED_FUNCTION_29_43();
  v5 = v0 + ((*(v4 + 80) + 80) & ~*(v4 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v6 + 8))(v5, v1);
  OUTLINED_FUNCTION_14_57();
  (*(v7 + 8))(&v5[v8], v2);
  OUTLINED_FUNCTION_16_51();
  (*(v9 + 8))(&v5[v10], v3);
  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_18F15B1FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_11_1();
  v3 = *(swift_getTupleTypeMetadata2() - 8);
  v4 = v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80));
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 8))(v4, v1);
  OUTLINED_FUNCTION_14_57();
  (*(v6 + 8))(v4 + v7, v2);

  return swift_deallocObject();
}

uint64_t sub_18F15B310()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B350()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B398()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B3E8()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B440()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B4A0()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B508()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B578()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B5F0()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B670()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B6F8()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B788()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B820()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B8C0()
{

  return swift_deallocObject();
}

uint64_t sub_18F15B968()
{

  return swift_deallocObject();
}

uint64_t sub_18F15BBB0()
{
  v1 = OUTLINED_FUNCTION_14_10();
  result = sub_18F147AF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18F15BBE4@<X0>(uint64_t *a1@<X8>)
{
  result = _s10AppIntents17IntentApplicationV8rawValueSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v30 = v3;
  v32 = v4;
  v6 = v5;
  v29 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v31 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  (*(v20 + 16))(v23 - v22, v6, v18);
  v24 = v30;
  (*(v16 + 16))(v0, v30, v14);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v12, &qword_1EACCF7A0, &unk_18F53E6F0);
  v25 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v31, v26, v27, v25);
  sub_18F116B3C();
  sub_18F0EF148(v2, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v16 + 8))(v24, v14);
  sub_18F0EF148(v32, &qword_1EACCF7A8, &qword_18F540440);
  (*(v20 + 8))(v29, v18);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v34 = v3;
  v36 = v4;
  v6 = v5;
  v33 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v35 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, v6, v18);
  (*(v16 + 16))(v0, v34, v14);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v12, &qword_1EACCF7A0, &unk_18F53E6F0);
  v25 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v35, v26, v27, v25);
  OUTLINED_FUNCTION_34_4(v24, v0, 0, v28, v29, v12);
  sub_18F0EF148(v2, &qword_1EACCF7A0, &unk_18F53E6F0);
  v30 = OUTLINED_FUNCTION_37_4();
  v31(v30);
  sub_18F0EF148(v36, &qword_1EACCF7A8, &qword_18F540440);
  (*(v20 + 8))(v33, v18);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v26[3] = v3;
  v27 = v2;
  v5 = v4;
  v28 = v7;
  v29 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_29_5(v26 - v11);
  OUTLINED_FUNCTION_30_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v15 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_10();
  v17 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  (*(v19 + 16))(v0, v29, v17);
  (*(v15 + 16))(v1, v5, v13);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_111();
  sub_18F1E3FD8(v21);
  v22 = v27;
  sub_18F116908(v27, v26[1], &qword_1EACCF7A0, &unk_18F53E6F0);
  v23 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v26[2], v24, v25, v23);
  sub_18F116B3C();
  sub_18F0EF148(v22, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v15 + 8))(v5, v13);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  (*(v19 + 8))(v29, v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v31[2] = v1;
  v31[3] = v2;
  v32 = v3;
  v5 = v4;
  v33 = v7;
  v34 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v11);
  v12 = *(v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v31 - v18;
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  (*(v22 + 16))(v25 - v24, v34, v20);
  (*(v16 + 16))(v19, v5, v14);
  OUTLINED_FUNCTION_90();
  sub_18F35E9D8(v12, v26);
  v27 = v32;
  sub_18F116908(v32, v31[0], &qword_1EACCF7A0, &unk_18F53E6F0);
  v28 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v31[1], v29, v30, v28);
  sub_18F116B3C();
  sub_18F0EF148(v27, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v16 + 8))(v5, v14);
  sub_18F0EF148(v33, &qword_1EACCF7A8, &qword_18F540440);
  (*(v22 + 8))(v34, v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v26 = v3;
  v28 = v4;
  v6 = v5;
  v25 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v27 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43_18();
  OUTLINED_FUNCTION_21_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v11 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  (*(v17 + 16))(v20 - v19, v6, v15);
  OUTLINED_FUNCTION_46_20();
  v21();
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  v22 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v27, v23, v24, v22);
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_51_12();
  sub_18F116B3C();
  sub_18F0EF148(v2, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v13 + 8))(v26, v11);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  (*(v17 + 8))(v25, v15);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v60 = v23;
  v25 = v24;
  v27 = v26;
  v61 = v28;
  v30 = v29;
  v57 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v59 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13(v35, v36, v37, v38, v39, v40, v41, v42, v55);
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  v44 = *(v56 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  v46 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  (*(v48 + 16))(v51 - v50, v30, v46);
  (*(v44 + 16))(v20, v27, v56);
  OUTLINED_FUNCTION_22_0(&a17);
  v60();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v25, v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  v52 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v59, v53, v54, v52);
  sub_18F116B3C();

  sub_18F0EF148(v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v44 + 8))(v27, v56);
  sub_18F0EF148(v61, &qword_1EACCF7A8, &qword_18F540440);
  (*(v48 + 8))(v57, v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v59 = v23;
  v25 = v24;
  v27 = v26;
  v60 = v28;
  v30 = v29;
  v56 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v58 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13(v35, v36, v37, v38, v39, v40, v41, v42, v54);
  OUTLINED_FUNCTION_21_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v55 = sub_18F52254C();
  v43 = *(v55 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_19_0();
  v45 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  (*(v47 + 16))(v50 - v49, v30, v45);
  (*(v43 + 16))(v20, v27, v55);
  OUTLINED_FUNCTION_22_0(&a17);
  v59();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v25, v57, &qword_1EACCF7A0, &unk_18F53E6F0);
  v51 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v58, v52, v53, v51);
  OUTLINED_FUNCTION_11_17();
  sub_18F116B3C();

  sub_18F0EF148(v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v43 + 8))(v27, v55);
  sub_18F0EF148(v60, &qword_1EACCF7A8, &qword_18F540440);
  (*(v47 + 8))(v56, v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v33 = v1;
  v34 = v2;
  v4 = v3;
  v35 = v6;
  v36 = v5;
  v8 = v7;
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  (*(v20 + 16))(v0, v9, v18);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v8, v14, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v37[3] = v4;
  v37[4] = v34;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v30 = *(v4 - 8);
  v31 = v35;
  (*(v30 + 16))(boxed_opaque_existential_1, v35, v4);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v30 + 8))(v31, v4);
  sub_18F0EF148(v8, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v36, &qword_1EACCF7A8, &qword_18F540440);
  (*(v20 + 8))(v33, v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v30 = v2;
  v31 = v3;
  v5 = v4;
  v32 = v7;
  v33 = v6;
  v9 = v8;
  v10 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  (*(v19 + 16))(v0, v10, v17);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v9, v1, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v34[3] = v5;
  v34[4] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v29 = *(v5 - 8);
  (*(v29 + 16))(boxed_opaque_existential_1, v32, v5);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v29 + 8))(v32, v5);
  sub_18F0EF148(v9, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v33, &qword_1EACCF7A8, &qword_18F540440);
  (*(v19 + 8))(v30, v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v33 = v6;
  v34 = v5;
  v8 = v7;
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v16 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  (*(v18 + 16))(v21 - v20, v9, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v8, v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v35[3] = v4;
  v35[4] = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v30 = *(v4 - 8);
  (*(v30 + 16))(boxed_opaque_existential_1, v33, v4);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v30 + 8))(v33, v4);
  sub_18F0EF148(v8, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v34, &qword_1EACCF7A8, &qword_18F540440);
  (*(v18 + 8))(v31, v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v33 = v6;
  v34 = v5;
  v8 = v7;
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v16 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  (*(v18 + 16))(v21 - v20, v9, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v8, v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v35[3] = v4;
  v35[4] = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v30 = *(v4 - 8);
  (*(v30 + 16))(boxed_opaque_existential_1, v33, v4);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v30 + 8))(v33, v4);
  sub_18F0EF148(v8, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v34, &qword_1EACCF7A8, &qword_18F540440);
  (*(v18 + 8))(v31, v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  v33 = v6;
  v34 = v5;
  v8 = v7;
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v16 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  (*(v18 + 16))(v21 - v20, v9, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v8, v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v35[3] = v4;
  v35[4] = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v30 = *(v4 - 8);
  (*(v30 + 16))(boxed_opaque_existential_1, v33, v4);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v30 + 8))(v33, v4);
  sub_18F0EF148(v8, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v34, &qword_1EACCF7A8, &qword_18F540440);
  (*(v18 + 8))(v31, v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v33 = v1;
  v34 = v2;
  v4 = v3;
  v35 = v6;
  v36 = v5;
  v8 = v7;
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  (*(v20 + 16))(v0, v9, v18);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v8, v14, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v37[3] = v4;
  v37[4] = v34;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  v30 = *(v4 - 8);
  v31 = v35;
  (*(v30 + 16))(boxed_opaque_existential_1, v35, v4);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v30 + 8))(v31, v4);
  sub_18F0EF148(v8, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v36, &qword_1EACCF7A8, &qword_18F540440);
  (*(v20 + 8))(v33, v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v60[3] = v26;
  v60[0] = v27;
  v62 = v28;
  v65 = v30;
  v66 = v29;
  v63 = v31;
  v33 = v32;
  v61 = v32;
  v64 = a23;
  v34 = a21;
  v60[1] = a22;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v60 - v38;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  (*(v45 + 16))(v23, v33, v43);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, AssociatedTypeWitness);
  v50 = OUTLINED_FUNCTION_22_0(&a14);
  v62(v50, v51);
  OUTLINED_FUNCTION_8();
  v52 = v63;
  sub_18F116908(v63, v39, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v67[3] = v34;
  v67[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v65, v34);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  v58 = OUTLINED_FUNCTION_31_1();
  v59(v58);
  sub_18F0EF148(v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v66, &qword_1EACCF7A8, &qword_18F540440);
  (*(v45 + 8))(v61, v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v65[3] = v26;
  v65[0] = v27;
  v66 = v28;
  v69 = v30;
  v70 = v29;
  v67 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_44_1(v32);
  v68 = a23;
  v34 = a21;
  OUTLINED_FUNCTION_31_4(a22);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v65 - v38;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  (*(v45 + 16))(v23, v33, v43);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, AssociatedTypeWitness);
  v50 = OUTLINED_FUNCTION_17_6(&a16);
  v66(v50);
  OUTLINED_FUNCTION_8();
  v51 = v67;
  sub_18F116908(v67, v39, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v71[3] = v34;
  v71[4] = v68;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v57 = *(v34 - 8);
  v58 = v69;
  (*(v57 + 16))(boxed_opaque_existential_1, v69, v34);
  OUTLINED_FUNCTION_7_1();
  v59 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_34_4(v59, v60, 0, v61, v62, v39);

  (*(v57 + 8))(v58, v34);
  sub_18F0EF148(v51, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  v63 = OUTLINED_FUNCTION_36_5();
  v64(v63, v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v61[3] = v27;
  v61[0] = v28;
  v63 = v29;
  v66 = v31;
  v67 = v30;
  v64 = v32;
  v34 = v33;
  v62 = v33;
  v65 = a23;
  v35 = a21;
  v61[1] = a22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v61 - v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_26_8(AssociatedTypeWitness);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  (*(v46 + 16))(v23, v34, v44);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v24);
  v51 = OUTLINED_FUNCTION_17_6(&a16);
  v63(v51, v52);
  OUTLINED_FUNCTION_8();
  v53 = v64;
  sub_18F116908(v64, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v68[3] = v35;
  v68[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v59 = *(v35 - 8);
  v60 = v66;
  (*(v59 + 16))(boxed_opaque_existential_1, v66, v35);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v59 + 8))(v60, v35);
  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v67, &qword_1EACCF7A8, &qword_18F540440);
  (*(v46 + 8))(v62, v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v61[3] = v27;
  v61[0] = v28;
  v63 = v29;
  v66 = v31;
  v67 = v30;
  v64 = v32;
  v34 = v33;
  v62 = v33;
  v65 = a23;
  v35 = a21;
  v61[1] = a22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v61 - v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_26_8(AssociatedTypeWitness);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  (*(v46 + 16))(v23, v34, v44);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v24);
  v51 = OUTLINED_FUNCTION_17_6(&a16);
  v63(v51, v52);
  OUTLINED_FUNCTION_8();
  v53 = v64;
  sub_18F116908(v64, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v68[3] = v35;
  v68[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v59 = *(v35 - 8);
  v60 = v66;
  (*(v59 + 16))(boxed_opaque_existential_1, v66, v35);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v59 + 8))(v60, v35);
  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v67, &qword_1EACCF7A8, &qword_18F540440);
  (*(v46 + 8))(v62, v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v61[3] = v27;
  v61[0] = v28;
  v63 = v29;
  v66 = v31;
  v67 = v30;
  v64 = v32;
  v34 = v33;
  v62 = v33;
  v65 = a23;
  v35 = a21;
  v61[1] = a22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v61 - v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_26_8(AssociatedTypeWitness);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  (*(v46 + 16))(v23, v34, v44);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v24);
  v51 = OUTLINED_FUNCTION_17_6(&a16);
  v63(v51, v52);
  OUTLINED_FUNCTION_8();
  v53 = v64;
  sub_18F116908(v64, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v68[3] = v35;
  v68[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v59 = *(v35 - 8);
  v60 = v66;
  (*(v59 + 16))(boxed_opaque_existential_1, v66, v35);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v59 + 8))(v60, v35);
  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v67, &qword_1EACCF7A8, &qword_18F540440);
  (*(v46 + 8))(v62, v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v52 = v27;
  v55 = v29;
  v56 = v28;
  v53 = v30;
  v32 = v31;
  v51 = v31;
  v54 = a23;
  v33 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  (*(v42 + 16))(v23, v32, v40);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, AssociatedTypeWitness);
  OUTLINED_FUNCTION_22_0(&a14);
  v52();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v53, v24, &qword_1EACCF7A0, &unk_18F53E6F0);
  v47 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(&a15, v47);
  v57[3] = v33;
  v57[4] = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v55, v33);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  v49 = OUTLINED_FUNCTION_31_1();
  v50(v49);
  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v56, &qword_1EACCF7A8, &qword_18F540440);
  (*(v42 + 8))(v51, v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:inputConnectionBehavior:resolvers:)()
{
  OUTLINED_FUNCTION_18();
  v29 = v1;
  v28 = v2;
  v30 = v3;
  v5 = v4;
  v7 = v6;
  v27 = v6;
  v31 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_34_3();
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_0();
  (*(v20 + 16))(v0, v7, v18);
  v32[3] = v28;
  v32[4] = v29;
  __swift_allocate_boxed_opaque_existential_1(v32);
  v30();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v5, v16, &qword_1EACCF7A0, &unk_18F53E6F0);
  v24 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v13, v25, v26, v24);
  sub_18F116B3C();

  sub_18F0EF148(v5, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v20 + 8))(v27, v18);
  sub_18F0EF148(v31, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_5(v4, v5, v6, v7, v8, v9, v10, v11);
  v13 = v12;
  v32 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_34_3();
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_42_3();
  v23(v0, v13, v19);
  v24 = OUTLINED_FUNCTION_32_8(v30);
  v31(v24);
  OUTLINED_FUNCTION_8();
  sub_18F116908(v1, v3, &qword_1EACCF7A0, &unk_18F53E6F0);
  v25 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v2, v26, v27, v25);
  OUTLINED_FUNCTION_45_3();

  sub_18F0EF148(v1, &qword_1EACCF7A0, &unk_18F53E6F0);
  v28 = OUTLINED_FUNCTION_36_5();
  v29(v28, v19);
  sub_18F0EF148(v32, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v28 = v1;
  v27 = v2;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  v26 = v6;
  v30 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  OUTLINED_FUNCTION_21_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v17 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_34_3();
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_0();
  (*(v19 + 16))(v0, v7, v17);
  v31[3] = v27;
  v31[4] = v28;
  __swift_allocate_boxed_opaque_existential_1(v31);
  v29();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v5, v16, &qword_1EACCF7A0, &unk_18F53E6F0);
  v23 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v13, v24, v25, v23);
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_51_12();
  sub_18F116B3C();

  sub_18F0EF148(v5, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v19 + 8))(v26, v17);
  sub_18F0EF148(v30, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  v15 = sub_18F520B3C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  v20 = OUTLINED_FUNCTION_31_1();
  sub_18F116908(v20, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v29[3] = v3;
  v29[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v27 = *(v3 - 8);
  (*(v27 + 16))(boxed_opaque_existential_1, v5, v3);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v27 + 8))(v5, v3);
  sub_18F0EF148(v7, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  v17 = sub_18F520B3C();
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v7, v13, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v29[3] = v3;
  v29[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v27 = *(v3 - 8);
  (*(v27 + 16))(boxed_opaque_existential_1, v5, v3);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v27 + 8))(v5, v3);
  sub_18F0EF148(v7, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  v17 = sub_18F520B3C();
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v7, v13, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v29[3] = v3;
  v29[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v27 = *(v3 - 8);
  (*(v27 + 16))(boxed_opaque_existential_1, v5, v3);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v27 + 8))(v5, v3);
  sub_18F0EF148(v7, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  v17 = sub_18F520B3C();
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v7, v13, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v29[3] = v3;
  v29[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v27 = *(v3 - 8);
  (*(v27 + 16))(boxed_opaque_existential_1, v5, v3);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v27 + 8))(v5, v3);
  sub_18F0EF148(v7, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43_18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  v15 = sub_18F520B3C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  v20 = OUTLINED_FUNCTION_31_1();
  sub_18F116908(v20, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v29[3] = v3;
  v29[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v27 = *(v3 - 8);
  (*(v27 + 16))(boxed_opaque_existential_1, v5, v3);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v27 + 8))(v5, v3);
  sub_18F0EF148(v7, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v28, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(description:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v23 = v22;
  v25 = v24;
  v52 = v26;
  v55 = v28;
  v56 = v27;
  v53 = v29;
  v54 = a22;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v51 - v33;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v36);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_35_0();
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, AssociatedTypeWitness);
  v58[3] = v25;
  v58[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v58);
  v52();
  OUTLINED_FUNCTION_8();
  v43 = v53;
  sub_18F116908(v53, v34, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v57[3] = v23;
  v57[4] = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  v49 = *(v23 - 8);
  v50 = v55;
  (*(v49 + 16))(boxed_opaque_existential_1, v55, v23);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v49 + 8))(v50, v23);
  sub_18F0EF148(v43, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v56, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v24 = v23;
  v26 = v25;
  v53 = v27;
  v56 = v29;
  v57 = v28;
  v54 = v30;
  v55 = a22;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v52 - v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_26_8(AssociatedTypeWitness);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19();
  v39 = sub_18F520B3C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
  v59[3] = v26;
  v59[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v59);
  v53();
  OUTLINED_FUNCTION_8();
  v44 = v54;
  sub_18F116908(v54, v35, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v58[3] = v24;
  v58[4] = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  v50 = *(v24 - 8);
  v51 = v56;
  (*(v50 + 16))(boxed_opaque_existential_1, v56, v24);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v50 + 8))(v51, v24);
  sub_18F0EF148(v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v57, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v24 = v23;
  v26 = v25;
  v53 = v27;
  v56 = v29;
  v57 = v28;
  v54 = v30;
  v55 = a22;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v52 - v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_26_8(AssociatedTypeWitness);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19();
  v39 = sub_18F520B3C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
  v59[3] = v26;
  v59[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v59);
  v53();
  OUTLINED_FUNCTION_8();
  v44 = v54;
  sub_18F116908(v54, v35, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v58[3] = v24;
  v58[4] = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  v50 = *(v24 - 8);
  v51 = v56;
  (*(v50 + 16))(boxed_opaque_existential_1, v56, v24);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v50 + 8))(v51, v24);
  sub_18F0EF148(v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v57, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v24 = v23;
  v26 = v25;
  v53 = v27;
  v56 = v29;
  v57 = v28;
  v54 = v30;
  v55 = a22;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v52 - v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_26_8(AssociatedTypeWitness);
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19();
  v39 = sub_18F520B3C();
  v40 = OUTLINED_FUNCTION_10(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v22);
  v59[3] = v26;
  v59[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v59);
  v53();
  OUTLINED_FUNCTION_8();
  v44 = v54;
  sub_18F116908(v54, v35, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v58[3] = v24;
  v58[4] = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  v50 = *(v24 - 8);
  v51 = v56;
  (*(v50 + 16))(boxed_opaque_existential_1, v56, v24);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v50 + 8))(v51, v24);
  sub_18F0EF148(v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v57, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v23 = v22;
  v25 = v24;
  v52 = v26;
  v55 = v28;
  v56 = v27;
  v53 = v29;
  v54 = a22;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v51 - v33;
  OUTLINED_FUNCTION_21_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v36);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_35_0();
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, AssociatedTypeWitness);
  v58[3] = v25;
  v58[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v58);
  v52();
  OUTLINED_FUNCTION_8();
  v43 = v53;
  sub_18F116908(v53, v34, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v57[3] = v23;
  v57[4] = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  v49 = *(v23 - 8);
  v50 = v55;
  (*(v49 + 16))(boxed_opaque_existential_1, v55, v23);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v49 + 8))(v50, v23);
  sub_18F0EF148(v43, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v56, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v40 = v4;
  v41 = v3;
  v42 = v5;
  v43 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13(v12, v13, v14, v15, v16, v17, v18, v19, v38[0]);
  v39 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v38 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_0();
  v29 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  v43 = v8;
  sub_18F116908(v8, v0, &qword_1EACCF7A8, &qword_18F540440);
  if (__swift_getEnumTagSinglePayload(v0, 1, v29) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v0, 1, v29) != 1)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v31 + 32))(v2, v0, v29);
  }

  v33 = v41;
  (*(v23 + 16))(v26, v41, v21);
  OUTLINED_FUNCTION_2_0();
  v34 = v40;
  sub_18F116908(v40, v38[1], &qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v38[2], v36, v37, v35);
  OUTLINED_FUNCTION_31_1();
  sub_18F116B3C();
  sub_18F0EF148(v34, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v23 + 8))(v33, v21);
  OUTLINED_FUNCTION_30_2(v42);
  OUTLINED_FUNCTION_30_2(v43);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v41 = v3;
  v42 = v2;
  v43 = v4;
  v44 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13(v11, v12, v13, v14, v15, v16, v17, v18, v40[0]);
  OUTLINED_FUNCTION_27_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v40 - v24;
  v26 = OUTLINED_FUNCTION_37_4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  v44 = v7;
  sub_18F116908(v7, v0, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v0, 1, v30);
  if (v34)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v0, 1, v30);
    if (!v34)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v32 + 32))(v1, v0, v30);
  }

  v35 = v42;
  (*(v22 + 16))(v25, v42, v20);
  OUTLINED_FUNCTION_2_0();
  v36 = v41;
  sub_18F116908(v41, v40[1], &qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v40[2], v38, v39, v37);
  OUTLINED_FUNCTION_28_8();
  sub_18F116B3C();
  sub_18F0EF148(v36, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v22 + 8))(v35, v20);
  sub_18F0EF148(v43, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0EF148(v44, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v43 = v3;
  v47 = v5;
  v48 = v4;
  v49 = v6;
  v50 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_29_5(&v41 - v13);
  v14 = *(v0 + 88);
  v46 = v0;
  v41 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();

  v50 = v9;
  sub_18F116908(v9, v2, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v2, 1, v23);
  if (v27)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v2, 1, v23);
    if (!v27)
    {
      sub_18F0EF148(v2, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v25 + 32))(v1, v2, v23);
  }

  v28 = v48;
  v29 = v42;
  (*(v17 + 16))(v20, v48, v42);
  OUTLINED_FUNCTION_90();
  sub_18F1E3FD8(v30);
  v31 = v47;
  sub_18F116908(v47, v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_5(v45, v33, v34, v32);
  sub_18F116B3C();
  sub_18F0EF148(v31, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v17 + 8))(v28, v29);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v35, v36, v37);
  OUTLINED_FUNCTION_111();
  sub_18F0EF148(v38, v39, v40);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v40 = v4;
  v41 = v3;
  v42 = v5;
  v43 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13(v12, v13, v14, v15, v16, v17, v18, v19, v38[0]);
  v39 = v1;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v20 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v38 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_19_0();
  v28 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  v43 = v8;
  sub_18F116908(v8, v0, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v0, 1, v28);
  if (v32)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v0, 1, v28);
    if (!v32)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v30 + 32))(v2, v0, v28);
  }

  v33 = v41;
  (*(v22 + 16))(v25, v41, v20);
  OUTLINED_FUNCTION_2_0();
  v34 = v40;
  sub_18F116908(v40, v38[1], &qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v38[2], v36, v37, v35);
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_31_1();
  sub_18F116B3C();
  sub_18F0EF148(v34, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v22 + 8))(v33, v20);
  OUTLINED_FUNCTION_30_2(v42);
  OUTLINED_FUNCTION_30_2(v43);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v70 = v27;
  v67 = v28;
  v71 = v30;
  v72 = v29;
  v73 = v31;
  v74 = v32;
  v34 = v33;
  v66 = a22;
  v65 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v64 = &v63 - v38;
  v69 = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v42 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v63 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v46);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v74 = v34;
  sub_18F116908(v34, v24, &qword_1EACCF7A8, &qword_18F540440);
  if (__swift_getEnumTagSinglePayload(v24, 1, v48) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v24, 1, v48) != 1)
    {
      sub_18F0EF148(v24, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v50 + 32))(v22, v24, v48);
  }

  v52 = v72;
  (*(v42 + 16))(v45, v72, v40);
  OUTLINED_FUNCTION_22_0(&a14);
  v67();
  OUTLINED_FUNCTION_8();
  v53 = v71;
  sub_18F116908(v71, v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  v54 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v68, v55, v56, v54);
  sub_18F116B3C();

  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v42 + 8))(v52, v40);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v57, v58, v59);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v60, v61, v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v63 = v27;
  v60 = v28;
  v64 = v30;
  v65 = v29;
  v66 = v31;
  v67 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_31_4(a22);
  v59 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v58 = &v57 - v38;
  v62 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v42 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_40_3();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v44);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  v46 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v67 = v34;
  sub_18F116908(v34, v23, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v23, 1, v46);
  if (v48)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v23, 1, v46);
    if (!v48)
    {
      sub_18F0EF148(v23, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    v49 = OUTLINED_FUNCTION_41_2();
    v50(v49);
  }

  OUTLINED_FUNCTION_42_3();
  v51 = v65;
  v52(v24, v65, v40);
  OUTLINED_FUNCTION_17_6(&a13);
  v60();
  OUTLINED_FUNCTION_8();
  v53 = v64;
  sub_18F116908(v64, v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  v54 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v61, v55, v56, v54);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_28_8();
  sub_18F116B3C();

  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v42 + 8))(v51, v40);
  sub_18F0EF148(v66, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_53_13(v25, v26, &a15);
  *(v28 - 256) = v27;
  v99 = v29;
  v98 = v30;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v36);
  v37 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v101 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  v103 = v41 - v40;
  OUTLINED_FUNCTION_27_37();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146();
  v42 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_68(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360, &qword_18F5407D0);
  v46 = OUTLINED_FUNCTION_51(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_21_1();
  v102 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v52);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_33();
  v54 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4();
  v60 = v59 - v58;

  sub_18F116908(v32, v22, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v22, 1, v54);
  if (v61)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v22, 1, v54);
    if (!v61)
    {
      sub_18F0EF148(v22, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v56 + 32))(v60, v22, v54);
  }

  v62 = a22;
  v92 = a21;
  v63 = *(v99 + 16);
  if (v63)
  {
    v90 = a22;
    v91 = v32;
    OUTLINED_FUNCTION_8_54();
    v66 = v64 + v65;
    v68 = *(v67 + 72);
    v69 = (v101 + 32);
    v70 = MEMORY[0x1E69E7CC0];
    v71 = &qword_1EACD0360;
    v100 = v37;
    do
    {
      sub_18F116908(v66, v102, v71, &qword_18F5407D0);
      sub_18F178778(v102, v49);
      OUTLINED_FUNCTION_106(v49, 1, v37);
      if (v61)
      {
        OUTLINED_FUNCTION_46_20();
        sub_18F0EF148(v72, v73, v74);
      }

      else
      {
        v75 = v71;
        v76 = *v69;
        (*v69)(v103, v49, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_18_30();
          sub_18F167ED8();
          v70 = v83;
        }

        v79 = *(v70 + 16);
        v78 = *(v70 + 24);
        if (v79 >= v78 >> 1)
        {
          OUTLINED_FUNCTION_30_34(v78);
          sub_18F167ED8();
          v70 = v84;
        }

        *(v70 + 16) = v79 + 1;
        OUTLINED_FUNCTION_8_54();
        v82 = v70 + v80 + *(v81 + 72) * v79;
        v37 = v100;
        v76(v82, v103, v100);
        v71 = v75;
      }

      v66 += v68;
      --v63;
    }

    while (v63);

    v85 = v91;
    v62 = v90;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
    v85 = v32;
  }

  v104[5] = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2810, &unk_18F549080);
  OUTLINED_FUNCTION_41_20();
  v86 = OUTLINED_FUNCTION_34_27();
  OUTLINED_FUNCTION_53_0(v93, v86 ^ 1u);
  v104[3] = v92;
  v104[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v104);
  v94();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_48_18(v97, v95);
  v87 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_93(v96, v88, v89, v87);
  OUTLINED_FUNCTION_42_17();
  OUTLINED_FUNCTION_45_16(&v105);
  sub_18F116B3C();

  OUTLINED_FUNCTION_30_2(v97);
  OUTLINED_FUNCTION_30_2(v98);
  OUTLINED_FUNCTION_30_2(v85);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:capabilities:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v40 = v2;
  v4 = v3;
  v43 = v6;
  v44 = v5;
  v45 = v7;
  v46 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v39 - v14;
  v42 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;

  v46 = v10;
  sub_18F116908(v10, v1, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v1);
  if (v27)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v1);
    if (!v27)
    {
      sub_18F0EF148(v1, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v1, v20);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  v31 = v44;
  sub_18F116908(v44, v41, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v47[3] = v4;
  v47[4] = v40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  v37 = *(v4 - 8);
  v38 = v43;
  (*(v37 + 16))(boxed_opaque_existential_1, v43, v4);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v37 + 8))(v38, v4);
  OUTLINED_FUNCTION_30_2(v31);
  OUTLINED_FUNCTION_30_2(v45);
  OUTLINED_FUNCTION_30_2(v46);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v43 = v1;
  v3 = v2;
  v45 = v5;
  v46 = v4;
  v47 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_15(v12, v13, v14, v15, v16, v17, v18, v19, v42);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_11();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;

  sub_18F116908(v8, v0, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v0);
  if (v32)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v0);
    if (!v32)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v27 + 32))(v31, v0, v25);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v46, v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_28_17();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v48[3] = v3;
  v48[4] = v43;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41 = *(v3 - 8);
  (*(v41 + 16))(boxed_opaque_existential_1, v45, v3);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_16_13();
  sub_18F116B3C();
  (*(v41 + 8))(v45, v3);
  OUTLINED_FUNCTION_30_2(v46);
  OUTLINED_FUNCTION_30_2(v47);
  OUTLINED_FUNCTION_30_2(v8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v43 = v1;
  v3 = v2;
  v45 = v5;
  v46 = v4;
  v47 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_15(v12, v13, v14, v15, v16, v17, v18, v19, v42);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_11();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;

  sub_18F116908(v8, v0, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v0);
  if (v32)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v0);
    if (!v32)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v27 + 32))(v31, v0, v25);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v46, v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_28_17();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v48[3] = v3;
  v48[4] = v43;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41 = *(v3 - 8);
  (*(v41 + 16))(boxed_opaque_existential_1, v45, v3);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_16_13();
  sub_18F116B3C();
  (*(v41 + 8))(v45, v3);
  OUTLINED_FUNCTION_30_2(v46);
  OUTLINED_FUNCTION_30_2(v47);
  OUTLINED_FUNCTION_30_2(v8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v43 = v1;
  v3 = v2;
  v45 = v5;
  v46 = v4;
  v47 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_15(v12, v13, v14, v15, v16, v17, v18, v19, v42);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_11();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;

  sub_18F116908(v8, v0, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v0);
  if (v32)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v0);
    if (!v32)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v27 + 32))(v31, v0, v25);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v46, v44, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_28_17();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v48[3] = v3;
  v48[4] = v43;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v41 = *(v3 - 8);
  (*(v41 + 16))(boxed_opaque_existential_1, v45, v3);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_16_13();
  sub_18F116B3C();
  (*(v41 + 8))(v45, v3);
  OUTLINED_FUNCTION_30_2(v46);
  OUTLINED_FUNCTION_30_2(v47);
  OUTLINED_FUNCTION_30_2(v8);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:capabilities:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v82 = v28;
  v78 = v29;
  v83 = v31;
  v84 = v30;
  v85 = v32;
  v86 = v33;
  v35 = v34;
  v79 = a24;
  v77[2] = a23;
  v36 = a22;
  v77[1] = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v40 = MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13(v40, v41, v42, v43, v44, v45, v46, v47, v77[0]);
  v81 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v49);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_33();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v51);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v77 - v53;
  v55 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v86 = v35;
  sub_18F116908(v35, v54, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v54);
  if (v59)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v54);
    if (!v59)
    {
      sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v57 + 32))(v24, v54, v55);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, AssociatedTypeWitness);
  OUTLINED_FUNCTION_22_0(&a13);
  v78();
  OUTLINED_FUNCTION_8();
  v63 = v84;
  sub_18F116908(v84, v80, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v87[3] = v36;
  v87[4] = v79;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
  v69 = *(v36 - 8);
  v70 = v83;
  (*(v69 + 16))(boxed_opaque_existential_1, v83, v36);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v69 + 8))(v70, v36);
  sub_18F0EF148(v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v71, v72, v73);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v74, v75, v76);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v67 = v27;
  v63 = v28;
  v68 = v30;
  v69 = v29;
  v70 = v31;
  v71 = v32;
  v34 = v33;
  v64 = a24;
  v62 = a23;
  v61 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v65 = &v60 - v38;
  v66 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_17_14();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v71 = v34;
  sub_18F116908(v34, v26, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v26);
  if (v48)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v26);
    if (!v48)
    {
      sub_18F0EF148(v26, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v46 + 32))(v24, v26, v44);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, AssociatedTypeWitness);
  v73[3] = v61;
  v73[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v73);
  v63();
  OUTLINED_FUNCTION_8();
  v52 = v69;
  sub_18F116908(v69, v65, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v72[3] = a22;
  v72[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  v58 = *(a22 - 8);
  v59 = v68;
  (*(v58 + 16))(boxed_opaque_existential_1, v68, a22);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_28_17();
  sub_18F116B3C();

  (*(v58 + 8))(v59, a22);
  sub_18F0EF148(v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0EF148(v71, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v67 = v27;
  v63 = v28;
  v68 = v30;
  v69 = v29;
  v70 = v31;
  v71 = v32;
  v34 = v33;
  v64 = a24;
  v62 = a23;
  v61 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v65 = &v60 - v38;
  v66 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_17_14();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v71 = v34;
  sub_18F116908(v34, v26, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v26);
  if (v48)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v26);
    if (!v48)
    {
      sub_18F0EF148(v26, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v46 + 32))(v24, v26, v44);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, AssociatedTypeWitness);
  v73[3] = v61;
  v73[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v73);
  v63();
  OUTLINED_FUNCTION_8();
  v52 = v69;
  sub_18F116908(v69, v65, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v72[3] = a22;
  v72[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  v58 = *(a22 - 8);
  v59 = v68;
  (*(v58 + 16))(boxed_opaque_existential_1, v68, a22);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_28_17();
  sub_18F116B3C();

  (*(v58 + 8))(v59, a22);
  sub_18F0EF148(v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0EF148(v71, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  v67 = v27;
  v63 = v28;
  v68 = v30;
  v69 = v29;
  v70 = v31;
  v71 = v32;
  v34 = v33;
  v64 = a24;
  v62 = a23;
  v61 = a21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v65 = &v60 - v38;
  v66 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_17_14();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v71 = v34;
  sub_18F116908(v34, v26, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v26);
  if (v48)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v26);
    if (!v48)
    {
      sub_18F0EF148(v26, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v46 + 32))(v24, v26, v44);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, AssociatedTypeWitness);
  v73[3] = v61;
  v73[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v73);
  v63();
  OUTLINED_FUNCTION_8();
  v52 = v69;
  sub_18F116908(v69, v65, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v72[3] = a22;
  v72[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  v58 = *(a22 - 8);
  v59 = v68;
  (*(v58 + 16))(boxed_opaque_existential_1, v68, a22);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_28_17();
  sub_18F116B3C();

  (*(v58 + 8))(v59, a22);
  sub_18F0EF148(v52, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  sub_18F0EF148(v71, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v73 = v28;
  v69 = v29;
  v74 = v31;
  v75 = v30;
  v76 = v32;
  v77 = v33;
  v35 = v34;
  v70 = a24;
  v68[2] = a23;
  v36 = a22;
  v68[1] = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  v40 = MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13(v40, v41, v42, v43, v44, v45, v46, v47, v68[0]);
  v72 = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v49);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_33();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v51);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v68 - v53;
  v55 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v77 = v35;
  sub_18F116908(v35, v54, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_23_5(v54);
  if (v59)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_23_5(v54);
    if (!v59)
    {
      sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v57 + 32))(v24, v54, v55);
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, AssociatedTypeWitness);
  OUTLINED_FUNCTION_22_0(&a13);
  v69();
  OUTLINED_FUNCTION_8();
  v63 = v75;
  sub_18F116908(v75, v71, &qword_1EACCF7A0, &unk_18F53E6F0);
  v64 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_12_1(&a17, v64);
  v78[3] = v36;
  v78[4] = v70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
  v66 = *(v36 - 8);
  v67 = v74;
  (*(v66 + 16))(boxed_opaque_existential_1, v74, v36);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v66 + 8))(v67, v36);
  sub_18F0EF148(v63, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_27_0(v76);
  OUTLINED_FUNCTION_27_0(v77);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F15DC5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_18F15DCB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
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

uint64_t sub_18F15DD78(uint64_t result, int a2, int a3)
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

uint64_t sub_18F15DDD8(uint64_t a1, int a2)
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

uint64_t sub_18F15DDF8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_18F15DE40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F15DE60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_18F15DEBC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_13_12();
  *a1 = result;
  return result;
}

uint64_t sub_18F15DEF0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_7(a1);
  result = sub_18F1846DC(v2, v3);
  *v1 = result;
  return result;
}

void sub_18F15DF48()
{
  OUTLINED_FUNCTION_14_10();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_18F15DF88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F49CF0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F15DFB4(uint64_t a1)
{
  v2 = sub_18F114560(&qword_1EACCFBD8, type metadata accessor for URLResourceKey, &unk_18F53F368);
  v3 = sub_18F114560(&unk_1EACCFBE0, type metadata accessor for URLResourceKey, &unk_18F53F308);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F15E070(uint64_t a1)
{
  v2 = sub_18F114560(&qword_1EACD1460, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_18F53F664);
  v3 = sub_18F114560(&qword_1EACCFBD0, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_18F53F460);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F15E12C(uint64_t a1)
{
  v2 = sub_18F114560(&qword_1ED6FE2F0, type metadata accessor for LNValueTypeSpecificMetadataKey, &unk_18F53EFC4);
  v3 = sub_18F114560(&qword_1EACCFA28, type metadata accessor for LNValueTypeSpecificMetadataKey, &unk_18F53EB48);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F15E1E8(uint64_t a1)
{
  v2 = sub_18F114560(&qword_1EACCFBB8, type metadata accessor for LNSystemProtocolIdentifier, &unk_18F53F5D4);
  v3 = sub_18F114560(&unk_1EACCFBC0, type metadata accessor for LNSystemProtocolIdentifier, &unk_18F53F574);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F15E2A4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_18F5218AC();

  *a2 = v3;
  return result;
}

uint64_t sub_18F15E2EC(uint64_t a1)
{
  v2 = sub_18F114560(&qword_1ED6FEE90, type metadata accessor for LNPlatformName, &unk_18F53F6A8);
  v3 = sub_18F114560(&unk_1EACCFBF0, type metadata accessor for LNPlatformName, &unk_18F53F1E8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F15E3A8(uint64_t a1)
{
  v2 = sub_18F114560(&qword_1EACCFA30, type metadata accessor for LNSymbolImagePlatform, &unk_18F53EA50);
  v3 = sub_18F114560(&qword_1EACCFA38, type metadata accessor for LNSymbolImagePlatform, &unk_18F53E9F0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18F15E80C(uint64_t a1, uint64_t a2)
{
  v2 = sub_18F5218DC();
  v4 = v3;
  if (v2 == sub_18F5218DC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_18F522D5C();
  }

  return v7 & 1;
}

uint64_t sub_18F15E890(uint64_t a1, uint64_t a2)
{
  sub_18F5218DC();
  sub_18F522EFC();
  OUTLINED_FUNCTION_26_1();
  sub_18F5219CC();
  v2 = sub_18F522F4C();

  return v2;
}

uint64_t sub_18F15E900(uint64_t a1, uint64_t a2)
{
  sub_18F5218DC();
  sub_18F5219CC();
}

uint64_t sub_18F15E954(uint64_t a1)
{
  v1 = sub_18F5218DC();
  v2 = MEMORY[0x193ADB0A0](v1);

  return v2;
}

uint64_t sub_18F15E98C(uint64_t a1, id *a2)
{
  v3 = sub_18F5218CC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18F15EA0C(uint64_t a1, id *a2)
{
  result = sub_18F5218BC();
  *a2 = 0;
  return result;
}

uint64_t sub_18F15EE50(uint64_t a1)
{
  sub_18F5218DC();
  v1 = sub_18F5218AC();

  return v1;
}

uint64_t IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_18F52254C();
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_18F520B3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, AssociatedTypeWitness);
  sub_18F1168B4();
  sub_18F5216CC();
  OUTLINED_FUNCTION_2_0();
  sub_18F15F1BC(a3, v9);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  v24 = v23;
  sub_18F0EF148(a3, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v27, &qword_1EACCF7A8, &qword_18F540440);
  (*(v14 + 8))(a1, v13);
  return v24;
}

uint64_t sub_18F15F1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntentParameter<>.init(description:requestValueDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v5 = OUTLINED_FUNCTION_10(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18F52254C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18F520B3C();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, AssociatedTypeWitness);
  sub_18F1168B4();
  sub_18F5216CC();
  OUTLINED_FUNCTION_2_0();
  sub_18F15F1BC(a2, v8);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_0_0();
  sub_18F116B3C();
  v22 = v21;
  sub_18F0EF148(a2, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(a1, &qword_1EACCF7A8, &qword_18F540440);
  return v22;
}

uint64_t sub_18F15F44C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F15F48C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_18F15F4F8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18F15F5E8()
{
  sub_18F15F670();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_18F15F670()
{
  result = qword_1EACCFCC0;
  if (!qword_1EACCFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCFCC0);
  }

  return result;
}

void _RepresentedEntityElement.fullyQualifiedIdentifier.getter()
{
  OUTLINED_FUNCTION_102();
  v3 = v2;
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F0F9960();
  sub_18F0F9960();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FD0B4(v7, v22);
      __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
      v10 = OUTLINED_FUNCTION_89_0();
      AppEntity.fullyQualifiedIdentifier.getter(v10, v11, v12);
      OUTLINED_FUNCTION_0_3();
      sub_18F106ED8(v1, v13);
      *v3 = v19;
      *(v3 + 16) = v20;
      *(v3 + 24) = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      sub_18F106ED8(v1, v15);
      v16 = *(v7 + 16);
      v17 = *(v7 + 24);
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840) + 48);
      *v3 = *v7;
      *(v3 + 16) = v16;
      *(v3 + 24) = v17;
      sub_18F0EF1A8(v7 + v18, &qword_1EACD32D0, &qword_18F540EB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_2();
    sub_18F106ED8(v1, v14);
    sub_18F106ED8(v7, v0);
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  OUTLINED_FUNCTION_101_0();
}

__n128 _RepresentedEntityElement.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 _RepresentedEntityElement.geometry.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry;
  swift_beginAccess();
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t _RepresentedEntityElement.state.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state;
  OUTLINED_FUNCTION_37();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t _RepresentedEntityElement.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state;
  result = OUTLINED_FUNCTION_99(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t _RepresentedEntityElement.subelements.getter()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t _RepresentedEntityElement.subelements.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_subelements;
  OUTLINED_FUNCTION_99(a1);
  *(v1 + v3) = a1;
}

void _RepresentedEntityElement.__allocating_init<A>(appEntity:geometry:state:subelements:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_5();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_57();
  _RepresentedEntityElement.init<A>(appEntity:geometry:state:subelements:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

uint64_t _RepresentedEntityElement.init<A>(appEntity:geometry:state:subelements:)(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v22 = a2[1];
  v23 = *a2;
  v12 = *a3;
  v13 = (v7 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_data);
  v13[3] = a5;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  type metadata accessor for ViewAnnotation(0);
  swift_storeEnumTagMultiPayload();
  AppEntity.fullyQualifiedIdentifier.getter(a5, a6, v24);
  v15 = v24[0];
  v16 = v24[1];
  sub_18F522EFC();
  static AppValue._identifier.getter(v15, *(v16 + 8));
  sub_18F5219CC();

  sub_18F5219CC();
  v17 = sub_18F522F4C();
  v18 = OUTLINED_FUNCTION_67_0();
  v19(v18);

  if (v17 < 0 && (v21 = __OFSUB__(0, v17), v17 = -v17, v21))
  {
    __break(1u);
  }

  else
  {
    *(v7 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_interactionId) = v17;
    OUTLINED_FUNCTION_83_2(OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry, v22, v23);
    *(v7 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state) = v12;
    *(v7 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_subelements) = a4;
    return v7;
  }

  return result;
}

void _RepresentedEntityElement.__allocating_init<A>(appEntityType:identifier:geometry:state:subelements:)()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_allocObject();
  _RepresentedEntityElement.init<A>(appEntityType:identifier:geometry:state:subelements:)(v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_101_0();
}

void _RepresentedEntityElement.init<A>(appEntityType:identifier:geometry:state:subelements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_97();
  v8 = v7;
  v10 = v9;
  v47 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  v22 = *v15;
  v44 = v15[1];
  v45 = v22;
  v23 = *(v15 + 4);
  v24 = *(v15 + 5);
  v46 = *v13;
  (*(v20 + 16))(&v44 - v25, v17, AssociatedTypeWitness);
  v26 = OUTLINED_FUNCTION_93_0();
  EntityIdentifier.init<A>(for:identifier:)(v26, v27, v10, v28);
  v29 = v48;
  v30 = v49;
  v32 = v50;
  v31 = v51;
  v33 = (v8 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_data);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840);
  *v33 = v29;
  v33[1] = v30;
  v33[2] = v32;
  v33[3] = v31;
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  type metadata accessor for ViewAnnotation(0);
  swift_storeEnumTagMultiPayload();
  sub_18F522EFC();
  v38 = *(v30 + 8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  static AppValue._identifier.getter(v29, v38);
  sub_18F5219CC();

  sub_18F5219CC();
  v39 = sub_18F522F4C();
  (*(v20 + 8))(v17, AssociatedTypeWitness);

  if (v39 < 0 && (v40 = __OFSUB__(0, v39), v39 = -v39, v40))
  {
    __break(1u);
  }

  else
  {
    *(v8 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_interactionId) = v39;
    v41 = v8 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry;
    v42 = v44;
    *v41 = v45;
    *(v41 + 16) = v42;
    *(v41 + 32) = v23;
    *(v41 + 40) = v24;
    v43 = v47;
    *(v8 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state) = v46;
    *(v8 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_subelements) = v43;
    OUTLINED_FUNCTION_96();
  }
}

uint64_t sub_18F160014(uint64_t *a1, __n128 *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v19 = a2[1];
  v20 = *a2;
  v11 = *a3;
  v12 = (v5 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_data);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840);
  *v12 = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for ViewAnnotation(0);
  swift_storeEnumTagMultiPayload();
  sub_18F522EFC();
  static AppValue._identifier.getter(v7, *(v8 + 8));
  sub_18F5219CC();

  sub_18F5219CC();
  result = sub_18F522F4C();
  if (result < 0 && (v18 = __OFSUB__(0, result), result = -result, v18))
  {
    __break(1u);
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_interactionId) = result;
    OUTLINED_FUNCTION_83_2(OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry, v19, v20);
    *(v5 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state) = v11;
    *(v5 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_subelements) = a4;
    return v5;
  }

  return result;
}

uint64_t _RepresentedEntityElement.deinit()
{
  OUTLINED_FUNCTION_0_3();
  sub_18F106ED8(v0 + v1, v2);

  return v0;
}

uint64_t _RepresentedEntityElement.__deallocating_deinit()
{
  OUTLINED_FUNCTION_0_3();
  sub_18F106ED8(v0 + v1, v2);

  return MEMORY[0x1EEE6BDC0](v0);
}

void sub_18F160224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_97();
  v9 = v8;
  LODWORD(v136) = v10;
  v12 = v11;
  v135 = v13;
  v143 = *MEMORY[0x1E69E9840];
  v125 = sub_18F52141C();
  OUTLINED_FUNCTION_0();
  v121 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v120 = v16;
  OUTLINED_FUNCTION_68(&v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0140, &qword_18F550ED0);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_68(&v116 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0148, &qword_18F53FF10);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_68(&v116 - v22);
  v129 = sub_18F5213AC();
  OUTLINED_FUNCTION_0();
  v127 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_68(&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_68(&v116 - v28);
  v131 = type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_68(v31 - v30);
  v32 = sub_18F52133C();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v38 = v37 - v36;
  v134 = sub_18F52135C();
  OUTLINED_FUNCTION_0();
  v133 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v43 = v42 - v41;
  v44 = &v8[OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry];
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v45 = *(v44 + 3);
  v139 = *v44;
  v138 = *(v44 + 8);
  v140 = v138;
  v141 = v45;
  v137 = *(v44 + 2);
  v142 = v137;
  if (sub_18F164488())
  {
    *&v46 = *(MEMORY[0x1E695F050] + 8);
    v138 = v46;
    *&v46 = *(MEMORY[0x1E695F050] + 24);
    v137 = v46;
  }

  v47 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_subelements;
  OUTLINED_FUNCTION_37();
  v48 = swift_beginAccess();
  v49 = *&v8[v47];
  MEMORY[0x1EEE9AC00](v48);
  v130 = v12;
  v114 = v12;
  LOBYTE(v115) = v136 & 1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3E9FE8(sub_18F16AAA8, (&v116 - 4), v49, v50, v51, v52, v53, v54, v116, v117, v118, *(&v118 + 1), v119, v120, v121, v122, v123, v124, v125, v126);

  v55 = *(v34 + 104);
  v55(v38, *MEMORY[0x1E69DBBC0], v32);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F5212BC();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F5212EC();
  v55(v38, *MEMORY[0x1E69DBBB0], v32);
  sub_18F52134C();
  v56 = v9;
  sub_18F160D10();
  if (!v57)
  {
    v74 = OUTLINED_FUNCTION_60_0();
    v75(v74);

LABEL_9:
    v80 = 1;
    v81 = v135;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v81, v80, 1, v56);
    OUTLINED_FUNCTION_96();
    return;
  }

  v58 = v57;
  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_18F53F7E0;
  *(v60 + 32) = v58;
  objc_allocWithZone(MEMORY[0x1E69AD088]);
  v61 = v58;
  v62 = sub_18F33C1F4(v60, MEMORY[0x1E69E7CC0]);
  v139 = 0;
  v56 = [v59 archivedDataWithRootObject:v62 requiringSecureCoding:1 error:&v139];

  v63 = v139;
  if (!v56)
  {
    v76 = v63;

    v77 = sub_18F520A8C();

    swift_willThrow();
    v78 = OUTLINED_FUNCTION_60_0();
    v79(v78);
    goto LABEL_9;
  }

  v64 = sub_18F520D4C();
  v66 = v65;

  v67 = OUTLINED_FUNCTION_48();
  sub_18F16AAE0(v67, v68);
  OUTLINED_FUNCTION_48();
  sub_18F5212FC();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_17_2();
  v69 = v132;
  sub_18F0F9960();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v71 = OUTLINED_FUNCTION_48();
    sub_18F123A1C(v71, v72);

    OUTLINED_FUNCTION_0_3();
    sub_18F106ED8(v69, v73);
LABEL_15:
    v56 = v134;
    v81 = v135;
    (*(v133 + 32))(v135, v43, v134);
    v80 = 0;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v82 = *(v69 + 24);
    *&v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840) + 48);
    if (v136)
    {
      v131 = *(v69 + 16);
      v136 = "ld not be an intent";
      v118 = *v69;
      v83 = OUTLINED_FUNCTION_48();
      sub_18F16AAE0(v83, v84);
      v117 = v82;
      v85 = v124;
      OUTLINED_FUNCTION_48();
      sub_18F52139C();
      sub_18F52166C();
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
      *&v137 = v61;
      v116 = v66;
      v90 = *(v127 + 16);
      v91 = v85;
      v92 = v85;
      v93 = v129;
      v90(v128, v91, v129);
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
      v97 = v121;
      (*(v121 + 16))(v123, v130, v125);
      v90(v122, v92, v93);
      v98 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v99 = v127;
      v100 = (v120 + *(v127 + 80) + v98) & ~*(v127 + 80);
      v101 = (v25 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
      v102 = swift_allocObject();
      (*(v97 + 32))(v102 + v98, v123, v125);
      v103 = v99;
      v104 = v102 + v100;
      v105 = v129;
      (*(v99 + 32))(v104, v122, v129);
      v106 = v102 + v101;
      *v106 = v118;
      v107 = v117;
      *(v106 + 16) = v131;
      *(v106 + 24) = v107;
      *(v102 + ((v101 + 39) & 0xFFFFFFFFFFFFFFF8)) = v9;

      v108 = sub_18F52130C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0150, &qword_18F53FF28);
      v109 = v126;
      v110 = v128;
      sub_18F5212DC();
      sub_18F0EF1A8(v110, &qword_1EACD0140, &qword_18F550ED0);
      sub_18F0EF1A8(v109, &qword_1EACD0148, &qword_18F53FF10);
      v108(&v139, 0);
      sub_18F123A1C(v64, v116);

      (*(v103 + 8))(v124, v105);
      v111 = v132 + v138;
    }

    else
    {

      v112 = OUTLINED_FUNCTION_48();
      sub_18F123A1C(v112, v113);

      v111 = v69 + v138;
    }

    sub_18F0EF1A8(v111, &qword_1EACD32D0, &qword_18F540EB0);
    goto LABEL_15;
  }

  v115 = 0;
  v114 = 151;
  sub_18F522A3C();
  __break(1u);
}

void sub_18F160D10()
{
  OUTLINED_FUNCTION_18();
  v2 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_75_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_74();
  type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_17_2();
  sub_18F0F9960();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FD0B4(v17, v30);
      __swift_project_boxed_opaque_existential_1Tm(v30, v30[3]);
      v19 = OUTLINED_FUNCTION_56();
      AppEntity.asValue.getter(v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840);
      sub_18F16ADE0(v17 + *(v22 + 48), v0);
      sub_18F0EF200();
      OUTLINED_FUNCTION_106(v12, 1, v2);
      if (v23)
      {
        v24 = OUTLINED_FUNCTION_67_0();
        sub_18F0EF1A8(v24, v25, &qword_18F540EB0);
        OUTLINED_FUNCTION_88();
        sub_18F23311C();
      }

      else
      {
        OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_43_1();
        sub_18F0F904C();
        sub_18F0F9960();
        v26 = OUTLINED_FUNCTION_88();
        sub_18F2C39F8(v26, v27, v28, v29, v6);
        sub_18F106ED8(v1, type metadata accessor for DisplayRepresentation);
      }

      sub_18F0EF1A8(v0, &qword_1EACD32D0, &qword_18F540EB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    sub_18F106ED8(v17, v21);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F160FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[14] = a1;
  v8[15] = a2;
  v8[22] = type metadata accessor for ViewAnnotation(0);
  v8[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  v8[24] = swift_task_alloc();
  v9 = sub_18F5213DC();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0128, &qword_18F53FEF0);
  v8[30] = swift_task_alloc();
  v10 = sub_18F5213EC();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1611C8, 0, 0);
}

uint64_t sub_18F1611C8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  sub_18F5213FC();
  OUTLINED_FUNCTION_106(v2, 1, v1);
  if (v3)
  {
    sub_18F0EF1A8(*(v0 + 240), &qword_1EACD0128, &qword_18F53FEF0);
LABEL_6:
    v10 = sub_18F5213AC();
    OUTLINED_FUNCTION_10_0();
    v11 = OUTLINED_FUNCTION_56();
    v12(v11);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
    OUTLINED_FUNCTION_72();

    OUTLINED_FUNCTION_71();

    return v16();
  }

  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  (*(v7 + 104))(v4, *MEMORY[0x1E69DBC90], v6);
  sub_18F5213BC();
  sub_18F16ACD0();
  OUTLINED_FUNCTION_66();
  v8 = sub_18F52180C();
  v9 = *(v7 + 8);
  v9(v5, v6);
  v9(v4, v6);
  if (v8)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    goto LABEL_6;
  }

  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v27 = *(v0 + 136);
  sub_18F5213BC();
  v20 = OUTLINED_FUNCTION_66();
  v22 = v21(v20);
  v23 = *MEMORY[0x1E69DBC88];
  v24 = OUTLINED_FUNCTION_66();
  (v9)(v24);
  v25 = 3;
  if (v22 != v23)
  {
    v25 = 1;
  }

  *(v0 + 16) = "FetchDisplayRepresentation";
  *(v0 + 24) = 26;
  *(v0 + 32) = 2;
  *(v0 + 40) = v27;
  *(v0 + 56) = v19;
  *(v0 + 64) = v18;
  *(v0 + 72) = v25;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v26 = swift_task_alloc();
  *(v0 + 272) = v26;
  *v26 = v0;
  v26[1] = sub_18F161524;

  return sub_18F1A4F10();
}

uint64_t sub_18F161524()
{
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v2 = v5;
  *(v5 + 280) = v0;

  sub_18F16AD28(v5 + 16);
  if (v0)
  {
    v3 = sub_18F161B78;
  }

  else
  {
    v3 = sub_18F16166C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_18F16166C()
{
  v41 = v0;
  v40[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED6FD658 != -1)
  {
    OUTLINED_FUNCTION_2_12();
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707698);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v2 = sub_18F52163C();
  v3 = sub_18F5221FC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40[0] = v5;
    *v4 = 136315138;
    v6 = EntityIdentifier.viewDebugDescription.getter();
    v8 = sub_18F11897C(v6, v7, v40);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Retrieved Display Representation for Entity Identifier: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 168);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840);
  *v9 = *(v0 + 136);
  *(v9 + 16) = v12;
  *(v9 + 24) = v11;
  sub_18F0EF200();
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_data;
  OUTLINED_FUNCTION_81(v10 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_data, v0 + 80);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F16AD7C(v9, v10 + v13);
  swift_endAccess();
  sub_18F160D10();
  if (!v14)
  {
    v32 = *(v0 + 256);
    v31 = *(v0 + 264);
    v33 = *(v0 + 248);
    sub_18F0EF1A8(*(v0 + 192), &qword_1EACD32D0, &qword_18F540EB0);
    (*(v32 + 8))(v31, v33);
    v34 = sub_18F5213AC();
    OUTLINED_FUNCTION_10_0();
    v35 = OUTLINED_FUNCTION_48();
    v36(v35);
    OUTLINED_FUNCTION_58_0();
    v30 = v34;
    goto LABEL_9;
  }

  v15 = v14;
  v16 = *(v0 + 256);
  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050, &qword_18F53FE10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18F53F7E0;
  *(v18 + 32) = v15;
  objc_allocWithZone(MEMORY[0x1E69AD088]);
  v19 = v15;
  v20 = sub_18F33C1F4(v18, MEMORY[0x1E69E7CC0]);
  *(v0 + 104) = 0;
  v21 = [v17 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v0 + 104];

  v22 = (v16 + 8);
  v23 = *(v0 + 104);
  v24 = *(v0 + 264);
  v25 = *(v0 + 248);
  v26 = *(v0 + 192);
  if (v21)
  {
    sub_18F520D4C();

    sub_18F52139C();
    sub_18F0EF1A8(v26, &qword_1EACD32D0, &qword_18F540EB0);
    (*v22)(v24, v25);
    sub_18F5213AC();
    OUTLINED_FUNCTION_58_0();
LABEL_9:
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_72();

    OUTLINED_FUNCTION_71();
    goto LABEL_11;
  }

  v38 = v23;
  sub_18F520A8C();

  swift_willThrow();
  sub_18F0EF1A8(v26, &qword_1EACD32D0, &qword_18F540EB0);
  (*v22)(v24, v25);
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_71();
LABEL_11:

  return v37();
}

uint64_t sub_18F161B78()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  OUTLINED_FUNCTION_71();

  return v1();
}

void sub_18F161C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_97();
  v11 = v8;
  v13 = v12;
  v72 = type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0, &qword_18F540EB0);
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v71 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_75_0();
  v23 = type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v25 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v64 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F0F9960();
  OUTLINED_FUNCTION_53();
  sub_18F0F9960();
  OUTLINED_FUNCTION_89_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v70 = v17;
    if (EnumCaseMultiPayload == 1)
    {
      sub_18F0FD0B4(v31, v75);
      v23 = v75[4];
      __swift_project_boxed_opaque_existential_1Tm(v75, v75[3]);
      v33 = OUTLINED_FUNCTION_89_0();
      AppEntity.fullyQualifiedIdentifier.getter(v33, v34, v35);
      OUTLINED_FUNCTION_0_3();
      sub_18F106ED8(v9, v36);
      v37 = v74;
      v65 = v73;
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      sub_18F106ED8(v9, v45);
      v37 = *(v31 + 3);
      v65 = *(v31 + 2);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840);
      sub_18F0EF1A8(&v31[*(v46 + 48)], &qword_1EACD32D0, &qword_18F540EB0);
    }

    v67 = *(v11 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_interactionId);
    v47 = (v11 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry);
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    v48 = *v47;
    v68 = v47[1];
    v69 = v48;
    v49 = *(v47 + 4);
    v50 = *(v47 + 5);
    v51 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state;
    OUTLINED_FUNCTION_37();
    swift_beginAccess();
    v66 = *(v11 + v51);
    OUTLINED_FUNCTION_44_3();
    sub_18F0F9960();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    ViewAnnotation.displayRepresentation.getter();
    sub_18F106ED8(v27, v23);
    v52 = OUTLINED_FUNCTION_93_0();
    static AppEntity.structuredDataRepresentations.getter(v52, v53);

    v54 = OUTLINED_FUNCTION_93_0();
    v56 = sub_18F27DB1C(v54, v55, v65, v37);
    v57 = OUTLINED_FUNCTION_93_0();
    v59 = static AppEntity.structuredDataRepresentations.getter(v57, v58);

    v60 = v71;
    sub_18F0EF200();
    v61 = v72;
    OUTLINED_FUNCTION_106(v60, 1, v72);
    if (v62)
    {
      if (qword_1EACCF4D8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v61, qword_1EACD3CD0);
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      sub_18F0F9960();
      sub_18F0EF1A8(v10, &qword_1EACD32D0, &qword_18F540EB0);
      OUTLINED_FUNCTION_106(v60, 1, v61);
      if (!v62)
      {
        sub_18F0EF1A8(v60, &qword_1EACD32D0, &qword_18F540EB0);
      }
    }

    else
    {
      sub_18F0EF1A8(v10, &qword_1EACD32D0, &qword_18F540EB0);
      OUTLINED_FUNCTION_16_1();
      sub_18F0F904C();
    }

    *v13 = v56;
    *(v13 + 56) = v67;
    v63 = type metadata accessor for ViewEntityIdentifier(0);
    *(v13 + *(v63 + 36)) = v59;
    OUTLINED_FUNCTION_16_1();
    sub_18F0F904C();
    *(v13 + 64) = v66;
    *(v13 + 24) = v68;
    *(v13 + 8) = v69;
    *(v13 + 40) = v49;
    *(v13 + 48) = v50;
    OUTLINED_FUNCTION_58_0();
    v44 = v63;
  }

  else
  {
    OUTLINED_FUNCTION_44_3();
    sub_18F106ED8(v9, v38);
    v39 = OUTLINED_FUNCTION_89_0();
    sub_18F106ED8(v39, v40);
    type metadata accessor for ViewEntityIdentifier(0);
    OUTLINED_FUNCTION_11();
  }

  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_96();
}

uint64_t _RepresentedEntityProvider.elements(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a1 + 32);
  v5 = (a1 + 40);
  v6 = (a1 + 48);
  v7 = (a1 + 56);
  v8 = *(a1 + 64);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v8 + 48) + 40 * (v14 | (v3 << 6));
    if ((*(v15 + 32) & 1) == 0)
    {
      v7 = (v15 + 24);
      v6 = (v15 + 16);
      v5 = (v15 + 8);
      v4 = v15;
    }
  }

  while (1)
  {
    result = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (result >= v12)
    {
      return (*(a3 + 8))(a2, a3, *v4, *v5, *v6, *v7);
    }

    v11 = *(v8 + 56 + 8 * result);
    ++v3;
    if (v11)
    {
      v3 = result;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RepresentedEntityProviderWrapper.provider.getter()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_18F0EF200();
}

uint64_t RepresentedEntityProviderWrapper.provider.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_81(v1 + 40, v4);
  sub_18F0FDA38(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t RepresentedEntityProviderWrapper.__allocating_init(provider:boundingRect:)()
{
  OUTLINED_FUNCTION_77_0();
  v0 = swift_allocObject();
  RepresentedEntityProviderWrapper.init(provider:boundingRect:)();
  return v0;
}

uint64_t RepresentedEntityProviderWrapper.__deallocating_deinit()
{
  sub_18F0EF1A8(v0 + 40, &qword_1EACCFCD0, &qword_18F53F850);

  return MEMORY[0x1EEE6BDC0](v0);
}

BOOL sub_18F16240C()
{
  v1 = (v0 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v19 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  if (qword_1ED6FCD70 != -1)
  {
    swift_once();
  }

  v5 = *(&xmmword_1ED6FCD78 + 1);
  v6 = *&qword_1ED6FCD88;
  v7 = dbl_1ED6FCD90;
  v8 = xmmword_1ED6FCD98;
  if (sub_18F27DDB0(v2, *&xmmword_1ED6FCD78) && sub_18F27DDB0(v3, v5) && sub_18F27DDB0(v4, v6) && sub_18F27DDB0(v19, v7) && sub_18F27DDB0(v17, *&v8) && sub_18F27DDB0(v16, *(&v8 + 1)))
  {
    return 1;
  }

  v10 = *v1;
  v11 = *(v1 + 3);
  v20 = *(v1 + 1);
  v18 = *(v1 + 2);
  if (sub_18F164488())
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v13 = v18;
    v12 = v20;
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v14 = v10;
  v15 = v11;
  return CGRectEqualToRect(*(&v12 - 1), v21);
}

BOOL sub_18F162594(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = (v4 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[3];
  v19 = *(v9 + 1);
  v18 = *(v9 + 2);
  if (sub_18F164488())
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v13 = v18;
    v12 = v19;
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v14 = v10;
  v15 = v11;
  return CGRectIntersectsRect(v20, *(&v12 - 1)) || sub_18F16240C();
}

void RepresentedEntityProviderWrapper.intelligenceAppIntentsPayloadDebugDescription()()
{
  OUTLINED_FUNCTION_18();
  v36 = type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = v1 - v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F0EF200();
  if (v40)
  {
    sub_18F0FD0B4(&v38, v41);
    __swift_project_boxed_opaque_existential_1Tm(v41, v41[3]);
    v7 = OUTLINED_FUNCTION_43_1();
    v9 = v8(v7);
    v37 = sub_18F111FA0(v9);
    v10 = 0;
    v35 = v9 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v34 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v37 == v10)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        goto LABEL_21;
      }

      if (v35)
      {
        MEMORY[0x193ADBE10](v10, v9);
      }

      else
      {
        if (v10 >= *(v34 + 16))
        {
          goto LABEL_23;
        }
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      OUTLINED_FUNCTION_45_2();
      sub_18F0F9960();
      OUTLINED_FUNCTION_92_0();
      sub_18F0F9960();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_18F0FD0B4(v3, &v38);
          __swift_project_boxed_opaque_existential_1Tm(&v38, v40);
          v13 = OUTLINED_FUNCTION_56();
          AppEntity.fullyQualifiedIdentifier.getter(v13, v14, v15);
          v16 = EntityIdentifier.viewDebugDescription.getter();
          v18 = v17;

          OUTLINED_FUNCTION_0_3();
          sub_18F106ED8(v6, v19);

          __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        }

        else
        {
          v26 = *(v3 + 16);
          v25 = *(v3 + 24);
          v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8, &unk_18F53F840) + 48);
          v38 = *v3;
          v39 = v26;
          v40 = v25;
          v16 = EntityIdentifier.viewDebugDescription.getter();
          v18 = v28;

          OUTLINED_FUNCTION_0_3();
          sub_18F106ED8(v6, v29);

          sub_18F0EF1A8(v3 + v27, &qword_1EACD32D0, &qword_18F540EB0);
        }
      }

      else
      {
        v20 = *v3;
        v22 = *(v3 + 16);
        v21 = *(v3 + 24);
        *&v38 = 0x3A746E65746E493CLL;
        *(&v38 + 1) = 0xE900000000000020;
        v23 = static AppIntent._identifier.getter(v20);
        MEMORY[0x193ADB000](v23);

        MEMORY[0x193ADB000](62, 0xE100000000000000);
        sub_18F0F689C(v22, v21);

        v18 = *(&v38 + 1);
        v16 = v38;
        OUTLINED_FUNCTION_0_3();
        sub_18F106ED8(v6, v24);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F141818();
        v11 = v32;
      }

      v30 = *(v11 + 16);
      if (v30 >= *(v11 + 24) >> 1)
      {
        sub_18F141818();
        v11 = v33;
      }

      *(v11 + 16) = v30 + 1;
      v31 = v11 + 16 * v30;
      *(v31 + 32) = v16;
      *(v31 + 40) = v18;
      ++v10;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    sub_18F0EF1A8(&v38, &qword_1EACCFCD0, &qword_18F53F850);
LABEL_21:
    OUTLINED_FUNCTION_16();
  }
}