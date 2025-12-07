unint64_t sub_197A1EBF4()
{
  result = qword_1ED87FA38;
  if (!qword_1ED87FA38)
  {
    result = swift_getWitnessTable(aYW_1, &type metadata for RequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA38);
  }

  return result;
}

uint64_t sub_197A1ECD8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_197A1ED64(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void *sub_197A1EDAC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_197A1F32C(v9, a2, &qword_1EAF4A198, &unk_197A96710, type metadata accessor for ClientData);
  type metadata accessor for ClientData(0);
  OUTLINED_FUNCTION_70();
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_197A1F58C(a4 + v12, v9, v10 + v12, type metadata accessor for ClientData);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_152_1();
  }

  return v10;
}

void *sub_197A1EEBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1B0, &qword_197A967C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_100_0();
      memmove(v13, v14, v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1B8, qword_197A967D0);
    OUTLINED_FUNCTION_100_0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_197A1EFEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1A0, &unk_197A96780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      v13 = OUTLINED_FUNCTION_100_0();
      memmove(v13, v14, v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1A8, &qword_197A981C0);
    OUTLINED_FUNCTION_100_0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_197A1F114(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_197A1F32C(v9, a2, &qword_1EAF4A190, &unk_197A98150, type metadata accessor for ModelServiceClient.PendingRequest);
  type metadata accessor for ModelServiceClient.PendingRequest(0);
  OUTLINED_FUNCTION_70();
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_197A1F58C(a4 + v12, v9, v10 + v12, type metadata accessor for ModelServiceClient.PendingRequest);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_152_1();
  }

  return v10;
}

void *sub_197A1F224(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_197A1F420(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_197A1F688(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_197A1F32C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_197A1F420(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A188, &qword_197A96708);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF48F28, &qword_197A96700) - 8);
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

char *sub_197A1F528(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_8(a3, result);
  }

  return result;
}

void sub_197A1F58C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_71();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_6(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_36_5();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_36_5();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_197A1F648(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_8(a3, result);
  }

  return result;
}

void sub_197A1F688(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_71();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_102_3(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_6(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_102_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_36_5();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_36_5();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_197A1F750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_197945EF8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_197A1F7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, char a14)
{
  v15 = (a9 + *a12);
  v15[3] = a10;
  v15[4] = a11;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_36_0();
  (*(v16 + 32))();
  *(a9 + 16) = a2;
  v17 = (a9 + *a13);
  v18 = type metadata accessor for RequestMetadata(0);
  v19 = v18[7];
  v20 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v21 = sub_197A87298();
  OUTLINED_FUNCTION_70();
  v23 = v22;
  v24 = *(v22 + 16);
  v24(&v17[v19], a2 + v20, v21);
  v25 = *(a2 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v26 = *(a2 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);
  v31 = v25;
  *v17 = a3;
  *(v17 + 1) = a4;
  OUTLINED_FUNCTION_1_12();
  sub_197958DFC();
  v27 = v18[6];
  (*(v23 + 32))(&v17[v27], a8, v21);
  *&v17[v18[8]] = a7;
  v17[v18[9]] = a6;
  v17[v18[10]] = a14;
  v17[v18[11]] = 0;
  *&v17[v18[12]] = 0;
  v17[v18[13]] = 0;
  v28 = &v17[v18[14]];
  v24(v28, &v17[v27], v21);
  *&v28[*(type metadata accessor for RequestKey(0) + 20)] = 0;
  v29 = &v17[v18[15]];
  *v29 = v31;
  *(v29 + 1) = v26;
  sub_197A878A8();
  return a9;
}

uint64_t sub_197A1F9E8()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_97();
  v2 = type metadata accessor for Request(v1);
  OUTLINED_FUNCTION_28(v2);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  OUTLINED_FUNCTION_69_6();

  return sub_197A180A0(v7, v8, v3, v9);
}

uint64_t sub_197A1FAC0()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_23_8(v1);

  return OUTLINED_FUNCTION_5_2();
}

uint64_t sub_197A1FB54()
{
  OUTLINED_FUNCTION_18();
  v0 = OUTLINED_FUNCTION_97();
  v1 = type metadata accessor for ClientData(v0);
  OUTLINED_FUNCTION_28(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v3[1] = sub_197960FB0;
  OUTLINED_FUNCTION_69_6();

  return sub_197A19E0C(v5, v6, v7);
}

uint64_t sub_197A1FC20()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43(v1);

  return sub_197A1A1EC();
}

uint64_t sub_197A1FCC4()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_81_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_158_0();

  return sub_197A1CAEC(v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_197A1FD5C()
{
  result = qword_1ED87D950;
  if (!qword_1ED87D950)
  {
    result = swift_getWitnessTable(byte_197A96610, &type metadata for RequestCancellationReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D950);
  }

  return result;
}

unint64_t sub_197A1FDB0()
{
  result = qword_1EAF4A120;
  if (!qword_1EAF4A120)
  {
    result = swift_getWitnessTable(byte_197A965C0, &type metadata for RequestCancellationReason.RequestPreemptionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A120);
  }

  return result;
}

unint64_t sub_197A1FE04()
{
  result = qword_1EAF4A128;
  if (!qword_1EAF4A128)
  {
    result = swift_getWitnessTable(aIWx, &type metadata for RequestCancellationReason.ClientTerminationCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A128);
  }

  return result;
}

unint64_t sub_197A1FE58()
{
  result = qword_1ED87D928;
  if (!qword_1ED87D928)
  {
    result = swift_getWitnessTable(byte_197A96520, &type metadata for RequestCancellationReason.ClientDisavowalCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D928);
  }

  return result;
}

unint64_t sub_197A1FEAC()
{
  result = qword_1ED87D4C0;
  if (!qword_1ED87D4C0)
  {
    result = swift_getWitnessTable(byte_197A964D0, &type metadata for RequestCancellationReason.SpecificPolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D4C0);
  }

  return result;
}

unint64_t sub_197A1FF00()
{
  result = qword_1EAF4A130;
  if (!qword_1EAF4A130)
  {
    result = swift_getWitnessTable(a9W, &type metadata for RequestCancellationReason.PolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A130);
  }

  return result;
}

uint64_t sub_197A1FF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_197A1FFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ResponseIterator(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ResponseIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_197A20164(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_197A201A4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t dispatch thunk of OneShotRequest.execute()()
{
  OUTLINED_FUNCTION_18();
  v6 = (*(*v0 + 104) + **(*v0 + 104));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of OneShotRequest.cancel_async()()
{
  OUTLINED_FUNCTION_18();
  v5 = (*(*v0 + 160) + **(*v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43(v2);

  return v5();
}

uint64_t sub_197A20518(uint64_t a1)
{
  result = type metadata accessor for RequestMetadata(319);
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

uint64_t dispatch thunk of StreamingRequest.cancel_async()()
{
  OUTLINED_FUNCTION_18();
  v5 = (*(*v0 + 160) + **(*v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43(v2);

  return v5();
}

void sub_197A207DC(uint64_t a1)
{
  sub_197A208A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Session(319);
    if (v2 <= 0x3F)
    {
      sub_197973688(319);
      if (v3 <= 0x3F)
      {
        sub_197A87298();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_197A208A8()
{
  result = qword_1ED87DF48;
  if (!qword_1ED87DF48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED87DF48);
  }

  return result;
}

uint64_t sub_197A2090C(uint64_t a1)
{
  result = sub_197A87298();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_197A20A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20ModelManagerServices24CombinedResponseIteratorC10SetupStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_197A20AC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197A20B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_197A20B48(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestCancellationReason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestCancellationReason.SpecificPolicyChangeCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RequestMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_197A20E28()
{
  result = qword_1EAF4A168;
  if (!qword_1EAF4A168)
  {
    result = swift_getWitnessTable(byte_197A9606C, &type metadata for ClientData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A168);
  }

  return result;
}

unint64_t sub_197A20E80()
{
  result = qword_1EAF4A170;
  if (!qword_1EAF4A170)
  {
    result = swift_getWitnessTable(aW_16, &type metadata for RequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A170);
  }

  return result;
}

unint64_t sub_197A20ED8()
{
  result = qword_1EAF4A178;
  if (!qword_1EAF4A178)
  {
    result = swift_getWitnessTable(aW_17, &type metadata for RequestCancellationReason.SpecificPolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A178);
  }

  return result;
}

unint64_t sub_197A20F30()
{
  result = qword_1EAF4A180;
  if (!qword_1EAF4A180)
  {
    result = swift_getWitnessTable(aUWd, &type metadata for RequestCancellationReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A180);
  }

  return result;
}

unint64_t sub_197A20F88()
{
  result = qword_1ED87D930;
  if (!qword_1ED87D930)
  {
    result = swift_getWitnessTable(byte_197A962F4, &type metadata for RequestCancellationReason.PolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D930);
  }

  return result;
}

unint64_t sub_197A20FE0()
{
  result = qword_1ED87D938;
  if (!qword_1ED87D938)
  {
    result = swift_getWitnessTable(byte_197A9631C, &type metadata for RequestCancellationReason.PolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D938);
  }

  return result;
}

unint64_t sub_197A21038()
{
  result = qword_1ED87D8F8;
  if (!qword_1ED87D8F8)
  {
    result = swift_getWitnessTable(byte_197A9623C, &type metadata for RequestCancellationReason.SpecificPolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D8F8);
  }

  return result;
}

unint64_t sub_197A21090()
{
  result = qword_1ED87D900;
  if (!qword_1ED87D900)
  {
    result = swift_getWitnessTable(byte_197A96264, &type metadata for RequestCancellationReason.SpecificPolicyChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D900);
  }

  return result;
}

unint64_t sub_197A210E8()
{
  result = qword_1ED87D918;
  if (!qword_1ED87D918)
  {
    result = swift_getWitnessTable(byte_197A961EC, &type metadata for RequestCancellationReason.ClientDisavowalCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D918);
  }

  return result;
}

unint64_t sub_197A21140()
{
  result = qword_1ED87D920;
  if (!qword_1ED87D920)
  {
    result = swift_getWitnessTable(byte_197A96214, &type metadata for RequestCancellationReason.ClientDisavowalCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D920);
  }

  return result;
}

unint64_t sub_197A21198()
{
  result = qword_1ED87D908;
  if (!qword_1ED87D908)
  {
    result = swift_getWitnessTable(aU9W, &type metadata for RequestCancellationReason.ClientTerminationCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D908);
  }

  return result;
}

unint64_t sub_197A211F0()
{
  result = qword_1ED87D910;
  if (!qword_1ED87D910)
  {
    result = swift_getWitnessTable(aM5W, &type metadata for RequestCancellationReason.ClientTerminationCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D910);
  }

  return result;
}

unint64_t sub_197A21248()
{
  result = qword_1ED87D958;
  if (!qword_1ED87D958)
  {
    result = swift_getWitnessTable(byte_197A9614C, &type metadata for RequestCancellationReason.RequestPreemptionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D958);
  }

  return result;
}

unint64_t sub_197A212A0()
{
  result = qword_1ED87D960;
  if (!qword_1ED87D960)
  {
    result = swift_getWitnessTable(byte_197A96174, &type metadata for RequestCancellationReason.RequestPreemptionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D960);
  }

  return result;
}

unint64_t sub_197A212F8()
{
  result = qword_1ED87D940;
  if (!qword_1ED87D940)
  {
    result = swift_getWitnessTable(byte_197A96344, &type metadata for RequestCancellationReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D940);
  }

  return result;
}

unint64_t sub_197A21350()
{
  result = qword_1ED87D948;
  if (!qword_1ED87D948)
  {
    result = swift_getWitnessTable(byte_197A9636C, &type metadata for RequestCancellationReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87D948);
  }

  return result;
}

unint64_t sub_197A213A8()
{
  result = qword_1ED87FA28;
  if (!qword_1ED87FA28)
  {
    result = swift_getWitnessTable(aW_18, &type metadata for RequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA28);
  }

  return result;
}

unint64_t sub_197A21400()
{
  result = qword_1ED87FA30;
  if (!qword_1ED87FA30)
  {
    result = swift_getWitnessTable(aU6Wt, &type metadata for RequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FA30);
  }

  return result;
}

unint64_t sub_197A21458()
{
  result = qword_1ED87FDA8;
  if (!qword_1ED87FDA8)
  {
    result = swift_getWitnessTable(byte_197A95FDC, &type metadata for ClientData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FDA8);
  }

  return result;
}

unint64_t sub_197A214B0()
{
  result = qword_1ED87FDB0;
  if (!qword_1ED87FDB0)
  {
    result = swift_getWitnessTable(a7W0, &type metadata for ClientData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FDB0);
  }

  return result;
}

void sub_197A21504(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_197A21524()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_81_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_10(v1);
  OUTLINED_FUNCTION_158_0();

  return sub_197A1C638(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_197A215BC()
{
  OUTLINED_FUNCTION_49_0();
  v2 = type metadata accessor for RequestMetadata(0);
  OUTLINED_FUNCTION_10(v2);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_197960FB0;
  OUTLINED_FUNCTION_69_6();

  return sub_197A1C138(v10, v11, v5, v6, v7, v12, v8);
}

uint64_t sub_197A216E4()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_43(v1);
  v3 = OUTLINED_FUNCTION_22();

  return sub_197A1C384(v3, v4);
}

uint64_t sub_197A2176C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_81_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_14_10(v3);

  return sub_197A1B54C(v5, v6, v7, v8, v9, v1);
}

uint64_t objectdestroy_47Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197A2185C()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return sub_197A12BDC(v4, v0);
}

uint64_t OUTLINED_FUNCTION_27_8(uint64_t a1)
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_163_0()
{
}

uint64_t sub_197A21A78()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87FB48);
  v1 = OUTLINED_FUNCTION_22();
  __swift_project_value_buffer(v1, v2);
  return sub_197A875F8();
}

uint64_t IPCCachedSession.CancellationHandlerHandle.hashValue.getter()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v0);
  return sub_197A88358();
}

uint64_t sub_197A21BC4(uint64_t a1)
{
  v2 = *v1;
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](v2);
  return sub_197A88358();
}

uint64_t IPCCachedSession.__allocating_init(initSession:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  IPCCachedSession.init(initSession:)(a1, a2);
  return v4;
}

void *IPCCachedSession.init(initSession:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C0, &qword_197A967F0);
  sub_197A25358(&unk_1ED880388, v5, type metadata accessor for IPCCachedSession.CancellationHandlerHandle, protocol conformance descriptor for IPCCachedSession.CancellationHandlerHandle);
  v2[16] = sub_197A87898();
  v2[17] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v2[14] = a1;
  v2[15] = a2;
  return v2;
}

uint64_t sub_197A21D80(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  swift_initStackObject();
  v1 = sub_1979489D4("modelmanagerd connection cancellation", 37, 2);
  sub_197A21F90();
  OUTLINED_FUNCTION_46(v1 + 24, v3);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
}

BOOL sub_197A21E3C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  v3 = OUTLINED_FUNCTION_28(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  v7 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
  OUTLINED_FUNCTION_95(v0 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, v12);
  sub_197944580(v0 + v7, v6, &qword_1EAF4A1D0, &qword_197A96818);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  v9 = 1;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    sub_197944580(v6, v1, &qword_1EAF4A1D0, &qword_197A96818);
    v9 = swift_getEnumCaseMultiPayload() != 1;
    sub_197947A40(v1, &qword_1EAF4A1C8, qword_197A967F8);
  }

  sub_197947A40(v6, &qword_1EAF4A1D0, &qword_197A96818);
  return v9;
}

void sub_197A21F90()
{
  OUTLINED_FUNCTION_67();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_54_4();
  type metadata accessor for IPCSessionWrapper(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  v9 = OUTLINED_FUNCTION_28(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_7();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v38[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38[-v14];
  v16 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
  OUTLINED_FUNCTION_95(v0 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, &v41);
  sub_197944580(v0 + v16, v15, &qword_1EAF4A1D0, &qword_197A96818);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
  {
    goto LABEL_2;
  }

  sub_197944580(v15, v13, &qword_1EAF4A1D0, &qword_197A96818);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_197947A40(v13, &qword_1EAF4A1C8, qword_197A967F8);
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    sub_19794B22C(v13, v7);
    if ((_s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_9();
      sub_197962A70(v7, v37);
LABEL_2:
      sub_197947A40(v15, &qword_1EAF4A1D0, &qword_197A96818);
      goto LABEL_21;
    }

    v18 = v7[3];
    v19 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v18);
    (*(v19 + 16))(0xD00000000000001ALL, 0x8000000197AA3DB0, v18, v19);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
    OUTLINED_FUNCTION_46(v0 + v16, v40);
    sub_197A25D14(v1, v0 + v16);
    swift_endAccess();
    OUTLINED_FUNCTION_3_9();
    sub_197962A70(v7, v23);
  }

  sub_197947A40(v15, &qword_1EAF4A1D0, &qword_197A96818);
  if (qword_1ED87FC08 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
  v25 = sub_197A875E8();
  v26 = sub_197A87D78();
  if (OUTLINED_FUNCTION_68_3(v26))
  {
    v27 = OUTLINED_FUNCTION_204();
    *v27 = 0;
    _os_log_impl(&dword_197941000, v25, v26, "Running connection cancellation handlers...", v27, 2u);
    OUTLINED_FUNCTION_44();
  }

  v28 = sub_197A21E3C();
  OUTLINED_FUNCTION_95(v2 + 128, v40);
  v2 = *(v2 + 128);
  v29 = 1 << *(v2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v2 + 64);
  v32 = (v29 + 63) >> 6;
  sub_197A878A8();
  v33 = 0;
  if (v31)
  {
    while (1)
    {
      v34 = v33;
LABEL_18:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = *(*(v2 + 56) + ((v34 << 10) | (16 * v35)));
      v39 = v28;

      v36(&v39);

      if (!v31)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v2 + 64 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_18;
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A2237C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_197A22498, v2, 0);
}

uint64_t sub_197A22498()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[5] = *v1;
    swift_willThrowTypedImpl();
LABEL_9:

    OUTLINED_FUNCTION_13();
    goto LABEL_11;
  }

  v2 = v0[11];
  v3 = OUTLINED_FUNCTION_63();
  sub_19794BDF8(v3, v4, v5, v6);
  v7 = type metadata accessor for IPCSessionWrapper(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v7);
  v9 = v0[11];
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v0[11], &qword_1EAF499F0, &qword_197A92358);
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v10 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v10, qword_1ED87FB48);
    v11 = sub_197A875E8();
    v12 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v12))
    {
      v13 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v13);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v19 = type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_4_8();
    v22 = sub_197A25358(v20, 255, v21, protocol conformance descriptor for ModelManagerError);
    OUTLINED_FUNCTION_88(v19, v22);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_8();
  sub_19794B22C(v9, v24);

  OUTLINED_FUNCTION_15();
LABEL_11:

  return v23();
}

uint64_t sub_197A226BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_197A2275C;

  return sub_197A2294C();
}

uint64_t sub_197A2275C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    v9 = sub_197A228E8;
  }

  else
  {
    v9 = sub_197A22870;
  }

  return MEMORY[0x1EEE6DFA0](v9, v5, 0);
}

uint64_t sub_197A22870()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *(v1 + 136) = 0;

  OUTLINED_FUNCTION_15();

  return v6();
}

uint64_t sub_197A228E8()
{
  OUTLINED_FUNCTION_9();
  *(*(v0 + 24) + 136) = 0;

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A2294C()
{
  OUTLINED_FUNCTION_9();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  OUTLINED_FUNCTION_28(v3);
  v1[15] = OUTLINED_FUNCTION_78_0();
  v4 = type metadata accessor for IPCSessionWrapper(0);
  v1[16] = v4;
  OUTLINED_FUNCTION_10(v4);
  v1[17] = v5;
  v1[18] = *(v6 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A22A38()
{
  OUTLINED_FUNCTION_9();
  v3 = (*(*(v0 + 112) + 112) + **(*(v0 + 112) + 112));
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_197A22B28;

  return v3(v0 + 16);
}

uint64_t sub_197A22B28()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_197A22FD4;
  }

  else
  {
    v6 = sub_197A22C4C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197A22C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v58 = v14[22];
  v15 = v14[19];
  v16 = v14[20];
  v17 = v14[17];
  sub_197947C44((v14 + 2), v16);
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v18 = v14[5];
  v19 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v18);
  v20 = swift_allocObject();
  swift_weakInit();
  sub_197A25C5C(v16, v15);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  sub_19794B22C(v15, v22 + v21);
  v23 = *(v19 + 24);

  v23(sub_197A25CB4, v22, v18, v19);

  v24 = v14[5];
  v25 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v24);
  (*(v25 + 8))(v24, v25);
  v26 = v14[20];
  if (v58)
  {
    v28 = v14[14];
    v27 = v14[15];
    MEMORY[0x19A8EBBD0](v58);
    ModelManagerError.init(wrapping:)(v58, v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
    OUTLINED_FUNCTION_58_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
    v33 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
    OUTLINED_FUNCTION_46(v28 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, (v14 + 7));
    sub_197A25D14(v27, v28 + v33);
    swift_endAccess();
    v34 = type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_4_8();
    v37 = sub_197A25358(v35, 255, v36, protocol conformance descriptor for ModelManagerError);
    OUTLINED_FUNCTION_88(v34, v37);
    v39 = v38;
    MEMORY[0x19A8EBBD0](v58);
    ModelManagerError.init(wrapping:)(v58, v39);
    swift_willThrow();

    OUTLINED_FUNCTION_3_9();
    sub_197962A70(v26, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);

    OUTLINED_FUNCTION_13();
  }

  else
  {
    v42 = v14[14];
    v41 = v14[15];
    v43 = v14[13];
    sub_197A25C5C(v14[20], v41);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
    v48 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
    OUTLINED_FUNCTION_46(v42 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, (v14 + 10));
    sub_197A25D14(v41, v42 + v48);
    swift_endAccess();
    sub_19794B22C(v26, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 2);

    OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_142();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, a11, a12, a13, a14);
}

uint64_t sub_197A22FD4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A2304C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IPCSessionWrapper(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_197A25C5C(a2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  sub_19794B22C(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1979864D0();
}

uint64_t sub_197A23240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197A23264, 0, 0);
}

uint64_t sub_197A23264()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_95(*(v0 + 48) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_54_4();
    *(v0 + 72) = *(type metadata accessor for IPCSessionWrapper(v2) + 20);
    v3 = OUTLINED_FUNCTION_1_3();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_13();

    return v6();
  }
}

uint64_t sub_197A23320()
{
  OUTLINED_FUNCTION_9();
  sub_197A21D80(*(v0 + 56) + *(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_197A23394, 0, 0);
}

uint64_t sub_197A23394()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_13();
  return v1();
}

uint64_t sub_197A233C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_46(v3 + 128, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 128);
  sub_197A25238(sub_197A234D4, v7, v6, isUniquelyReferenced_nonNull_native);
  *(v3 + 128) = v10;

  swift_endAccess();
  return v6;
}

uint64_t sub_197A23500()
{
  OUTLINED_FUNCTION_33();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_197A87298();
  v1[13] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for ModelManagerError(0);
  v1[16] = v8;
  OUTLINED_FUNCTION_6();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_68_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[21] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_68_1();
  v11 = swift_getAssociatedTypeWitness();
  v1[24] = v11;
  OUTLINED_FUNCTION_4_8();
  v14 = sub_197A25358(v12, 255, v13, protocol conformance descriptor for ModelManagerError);
  v1[25] = v14;
  v15 = type metadata accessor for IPCResult(0, v11, v8, v14);
  v1[26] = v15;
  OUTLINED_FUNCTION_10(v15);
  v1[27] = v16;
  v1[28] = OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for IPCSessionWrapper(0);
  v1[29] = v17;
  OUTLINED_FUNCTION_28(v17);
  v1[30] = OUTLINED_FUNCTION_78_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_28(v18);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_197A23784()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v0;
  v5[1] = sub_197A23828;

  return sub_19794ECC8();
}

uint64_t sub_197A23828()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_197A24510;
  }

  else
  {
    v6 = sub_197A2394C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197A2394C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v18 = v0[26];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[11];
  sub_197947A40(v1, &qword_1EAF499A8, &qword_197A92B00);
  (*(v5 + 16))(v1, &v2[*(v3 + 20)], v4);
  OUTLINED_FUNCTION_56_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
  (*(v7 + 72))(v6, v7);
  v11 = swift_task_alloc();
  v0[35] = v11;
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = sub_197A25358(&qword_1ED8813C8, 255, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
  v15 = sub_197A25358(&qword_1ED8813D0, 255, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
  v0[2] = AssociatedConformanceWitness;
  v0[3] = v13;
  v0[4] = v14;
  v0[5] = v15;
  swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v18, v0 + 2);
  *v11 = v0;
  v11[1] = sub_197A23BE8;

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_197A23BE8()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = v2[23];
  v6 = v2[22];
  v7 = v2[21];
  v8 = v2[12];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_197A24B48;
  }

  else
  {
    v9 = sub_197A23D5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_197A23D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  v25 = *(v22 + 288);
  _s20ModelManagerServices9IPCResultO3getxyq_YKF();
  if (!v25)
  {
    v45 = *(v22 + 256);
    v46 = *(v22 + 240);
    v115 = *(v22 + 120);
    (*(*(v22 + 216) + 8))(*(v22 + 224), *(v22 + 208));
    sub_197947A40(v45, &qword_1EAF499A8, &qword_197A92B00);
    OUTLINED_FUNCTION_3_9();
    sub_197962A70(v46, v47);

    OUTLINED_FUNCTION_15();
    goto LABEL_40;
  }

  v26 = *(v22 + 240);
  v27 = *(v22 + 224);
  v28 = *(v22 + 208);
  v29 = *(v22 + 160);
  v30 = OUTLINED_FUNCTION_88(*(v22 + 128), *(v22 + 200));
  OUTLINED_FUNCTION_0_17();
  sub_19794B22C(v29, v31);
  v32 = OUTLINED_FUNCTION_58_6();
  v33(v32);
  OUTLINED_FUNCTION_3_9();
  sub_197962A70(v26, v34);
  OUTLINED_FUNCTION_74_6();
  *(v22 + 48) = v30;
  MEMORY[0x19A8EBBD0](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if ((swift_dynamicCast() & 1) == 0)
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v48 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v48, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v30);
    v49 = sub_197A875E8();
    v50 = sub_197A87D68();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_56();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      MEMORY[0x19A8EBBD0](v30);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v53;
      *v52 = v53;
      _os_log_impl(&dword_197941000, v49, v50, "Unexpected non ModelManagerError from the daemon %@", v51, 0xCu);
      sub_197947A40(v52, &qword_1EAF48A90, &qword_197A891A0);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_44();
    }

    v54 = *(v22 + 256);
    v55 = *(v22 + 200);
    v56 = *(v22 + 128);

    v57 = OUTLINED_FUNCTION_25_7(v56);
    OUTLINED_FUNCTION_38_8(v57, v58);
    v115 = v55;
    swift_willThrow();

    sub_197947A40(v54, &qword_1EAF499A8, &qword_197A92B00);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_74_6();

  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_41_6();
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v71 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v71, qword_1ED87FB48);
    sub_197A878A8();
    v42 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_203();
    if (OUTLINED_FUNCTION_202())
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_119_1();
      *(v29 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v72, v73);
      OUTLINED_FUNCTION_73_5(&dword_197941000, v74, v75, "ModelManager received unentitled request. Expected entitlement %s");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    v76 = OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_9_7(v76, v77);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 31)
  {
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v59 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v59, qword_1ED87FB48);
    v60 = sub_197A875E8();
    v61 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v61))
    {
      v62 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v62);
      OUTLINED_FUNCTION_53();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    OUTLINED_FUNCTION_62_5();
    v68 = *(v22 + 128);

    v69 = OUTLINED_FUNCTION_25_7(v68);
    OUTLINED_FUNCTION_39_7(v69, v70);
    v115 = v27;
    swift_willThrow();
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 5)
  {
    OUTLINED_FUNCTION_0_17();
    sub_19794B22C(v78, v79);
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v80 = sub_197A87608();
    __swift_project_value_buffer(v80, qword_1ED87FB48);
    OUTLINED_FUNCTION_0_17();
    v81 = OUTLINED_FUNCTION_63();
    sub_197A25C5C(v81, v82);
    v83 = sub_197A875E8();
    v84 = sub_197A87D58();
    if (OUTLINED_FUNCTION_68_3(v84))
    {
      v85 = *(v22 + 200);
      v87 = *(v22 + 128);
      v86 = *(v22 + 136);
      v88 = *(v22 + 80);
      v30 = swift_slowAlloc();
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_115_0();
      a10 = v28;
      *v30 = 138412546;
      OUTLINED_FUNCTION_88(v87, v85);
      OUTLINED_FUNCTION_0_17();
      sub_197A25C5C(v86, v89);
      v90 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_1_13();
      sub_197962A70(v86, v91);
      *(v30 + 1) = v90;
      *v29 = v90;
      *(v30 + 6) = 2080;
      *(v22 + 56) = v88;
      swift_getMetatypeMetadata();
      v92 = sub_197A87988();
      v94 = sub_197948834(v92, v93, &a10);

      *(v30 + 14) = v94;
      _os_log_impl(&dword_197941000, v83, v84, "Passing along %@ in response to %s", v30, 0x16u);
      sub_197947A40(v29, &qword_1EAF48A90, &qword_197A891A0);
      OUTLINED_FUNCTION_37();
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    else
    {
      v30 = *(v22 + 136);

      OUTLINED_FUNCTION_1_13();
      sub_197962A70(v30, v102);
    }

    v103 = OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_0_17();
    sub_197A25C5C(v28, v104);
    v115 = v103;
    swift_willThrow();
    OUTLINED_FUNCTION_1_13();
    sub_197962A70(v28, v105);
LABEL_37:
    v101 = v30;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_41_6();
  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v36 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v36, qword_1ED87FB48);
  sub_197A878A8();
  v37 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_203();
  if (OUTLINED_FUNCTION_202())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_119_1();
    *(v29 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v38, v39);
    OUTLINED_FUNCTION_73_5(&dword_197941000, v40, v41, "IPC Connection errors, evict session to create new session on next connection %s");
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_37();
  }

  v42 = *(v22 + 248);
  v28 = *(v22 + 104);
  sub_197944580(*(v22 + 256), v42, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_37_7();
  if (v44)
  {
    sub_197947A40(v43, &qword_1EAF499A8, &qword_197A92B00);
  }

  else
  {
    v95 = OUTLINED_FUNCTION_10_12();
    v96(v95);
    sub_197A21F90();
    v97 = OUTLINED_FUNCTION_42();
    v98(v97);
  }

  v99 = OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_9_7(v99, v100);
LABEL_34:
  swift_storeEnumTagMultiPayload();
  v115 = v42;
  swift_willThrow();
  v101 = v28;
LABEL_38:
  sub_197947A40(v101, &qword_1EAF499A8, &qword_197A92B00);

LABEL_39:
  OUTLINED_FUNCTION_15_7();

  OUTLINED_FUNCTION_13();
LABEL_40:
  OUTLINED_FUNCTION_142();

  return v107(v106, v107, v108, v109, v110, v111, v112, v113, v115, a10, a11, a12, a13, a14);
}

uint64_t sub_197A24510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v28;
  a22 = v29;
  OUTLINED_FUNCTION_122();
  a20 = v24;
  v30 = *(v24 + 272);
  OUTLINED_FUNCTION_67_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_63();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_74_6();

    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 31)
      {
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        v55 = sub_197A875E8();
        v56 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v56))
        {
          v57 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v57);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v58, v59, v60, v61, v62, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_62_5();
        v63 = *(v24 + 128);

        v64 = OUTLINED_FUNCTION_25_7(v63);
        OUTLINED_FUNCTION_39_7(v64, v65);
        v109 = v23;
        swift_willThrow();
      }

      else
      {
        if (EnumCaseMultiPayload == 5)
        {
          OUTLINED_FUNCTION_41_6();
          if (qword_1ED87FC08 != -1)
          {
            OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
          }

          v32 = sub_197A87608();
          OUTLINED_FUNCTION_66_5(v32, qword_1ED87FB48);
          sub_197A878A8();
          v33 = sub_197A875E8();
          sub_197A87D78();
          OUTLINED_FUNCTION_203();
          if (OUTLINED_FUNCTION_202())
          {
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_115_0();
            OUTLINED_FUNCTION_119_1();
            *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v34, v35);
            OUTLINED_FUNCTION_73_5(&dword_197941000, v36, v37, "IPC Connection errors, evict session to create new session on next connection %s");
            OUTLINED_FUNCTION_33_5();
            OUTLINED_FUNCTION_37();
          }

          v38 = *(v24 + 248);
          v30 = *(v24 + 104);
          sub_197944580(*(v24 + 256), v38, &qword_1EAF499A8, &qword_197A92B00);
          OUTLINED_FUNCTION_37_7();
          if (v40)
          {
            sub_197947A40(v39, &qword_1EAF499A8, &qword_197A92B00);
          }

          else
          {
            v89 = OUTLINED_FUNCTION_10_12();
            v90(v89);
            sub_197A21F90();
            v91 = OUTLINED_FUNCTION_42();
            v92(v91);
          }

          v93 = OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_9_7(v93, v94);
LABEL_32:
          swift_storeEnumTagMultiPayload();
          v109 = v38;
          swift_willThrow();
          v95 = v30;
LABEL_36:
          sub_197947A40(v95, &qword_1EAF499A8, &qword_197A92B00);

          goto LABEL_37;
        }

        OUTLINED_FUNCTION_0_17();
        sub_19794B22C(v73, v74);
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v75 = *(v24 + 136);
        v76 = sub_197A87608();
        __swift_project_value_buffer(v76, qword_1ED87FB48);
        OUTLINED_FUNCTION_0_17();
        v77 = OUTLINED_FUNCTION_116();
        sub_197A25C5C(v77, v78);
        v79 = sub_197A875E8();
        v80 = sub_197A87D58();
        if (OUTLINED_FUNCTION_68_3(v80))
        {
          OUTLINED_FUNCTION_66_8();
          v81 = OUTLINED_FUNCTION_113();
          v110 = swift_slowAlloc();
          a10 = v110;
          *v75 = 138412546;
          OUTLINED_FUNCTION_88(v25, v27);
          OUTLINED_FUNCTION_0_17();
          sub_197A25C5C(v26, v82);
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v26, v83);
          OUTLINED_FUNCTION_53_8();
          v84 = sub_197A87988();
          v86 = sub_197948834(v84, v85, &a10);

          *(v75 + 14) = v86;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947A40(v81, &qword_1EAF48A90, &qword_197A891A0);
          OUTLINED_FUNCTION_44();
          v22 = v110;
          __swift_destroy_boxed_opaque_existential_1Tm(v110);
          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
          v22 = *(v24 + 136);

          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v22, v96);
        }

        v97 = OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_0_17();
        sub_197A25C5C(v80, v98);
        v109 = v97;
        swift_willThrow();
        OUTLINED_FUNCTION_1_13();
        sub_197962A70(v80, v99);
      }

      v95 = v22;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_41_6();
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v66 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v66, qword_1ED87FB48);
    sub_197A878A8();
    v38 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_203();
    if (OUTLINED_FUNCTION_202())
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_119_1();
      *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v67, v68);
      OUTLINED_FUNCTION_73_5(&dword_197941000, v69, v70, "ModelManager received unentitled request. Expected entitlement %s");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    v71 = OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_9_7(v71, v72);
    goto LABEL_32;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v41 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v41, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v30);
  v42 = sub_197A875E8();
  v43 = sub_197A87D68();

  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_56();
    v44 = OUTLINED_FUNCTION_113();
    *v23 = 138412290;
    MEMORY[0x19A8EBBD0](v30);
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 1) = v45;
    *v44 = v45;
    OUTLINED_FUNCTION_53();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    sub_197947A40(v44, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_62_5();
  v51 = *(v24 + 128);

  v52 = OUTLINED_FUNCTION_25_7(v51);
  OUTLINED_FUNCTION_38_8(v52, v53);
  v109 = v23;
  swift_willThrow();

  sub_197947A40(v43, &qword_1EAF499A8, &qword_197A92B00);
LABEL_37:
  OUTLINED_FUNCTION_15_7();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v101(v100, v101, v102, v103, v104, v105, v106, v107, v109, a10, a11, a12, a13, a14);
}

uint64_t sub_197A24B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v28;
  a22 = v29;
  OUTLINED_FUNCTION_122();
  a20 = v24;
  OUTLINED_FUNCTION_3_9();
  sub_197962A70(v30, v31);
  v32 = *(v24 + 288);
  OUTLINED_FUNCTION_67_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  OUTLINED_FUNCTION_63();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_74_6();

    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 31)
      {
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v56 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v56, qword_1ED87FB48);
        v57 = sub_197A875E8();
        v58 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v58))
        {
          v59 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v59);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v60, v61, v62, v63, v64, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_62_5();
        v65 = *(v24 + 128);

        v66 = OUTLINED_FUNCTION_25_7(v65);
        OUTLINED_FUNCTION_39_7(v66, v67);
        v111 = v23;
        swift_willThrow();
      }

      else
      {
        if (EnumCaseMultiPayload == 5)
        {
          OUTLINED_FUNCTION_41_6();
          if (qword_1ED87FC08 != -1)
          {
            OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
          }

          v34 = sub_197A87608();
          OUTLINED_FUNCTION_66_5(v34, qword_1ED87FB48);
          sub_197A878A8();
          v35 = sub_197A875E8();
          sub_197A87D78();
          OUTLINED_FUNCTION_203();
          if (OUTLINED_FUNCTION_202())
          {
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_115_0();
            OUTLINED_FUNCTION_119_1();
            *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v36, v37);
            OUTLINED_FUNCTION_73_5(&dword_197941000, v38, v39, "IPC Connection errors, evict session to create new session on next connection %s");
            OUTLINED_FUNCTION_33_5();
            OUTLINED_FUNCTION_37();
          }

          v40 = *(v24 + 248);
          v32 = *(v24 + 104);
          sub_197944580(*(v24 + 256), v40, &qword_1EAF499A8, &qword_197A92B00);
          OUTLINED_FUNCTION_37_7();
          if (v42)
          {
            sub_197947A40(v41, &qword_1EAF499A8, &qword_197A92B00);
          }

          else
          {
            v91 = OUTLINED_FUNCTION_10_12();
            v92(v91);
            sub_197A21F90();
            v93 = OUTLINED_FUNCTION_42();
            v94(v93);
          }

          v95 = OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_9_7(v95, v96);
LABEL_32:
          swift_storeEnumTagMultiPayload();
          v111 = v40;
          swift_willThrow();
          v97 = v32;
LABEL_36:
          sub_197947A40(v97, &qword_1EAF499A8, &qword_197A92B00);

          goto LABEL_37;
        }

        OUTLINED_FUNCTION_0_17();
        sub_19794B22C(v75, v76);
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v77 = *(v24 + 136);
        v78 = sub_197A87608();
        __swift_project_value_buffer(v78, qword_1ED87FB48);
        OUTLINED_FUNCTION_0_17();
        v79 = OUTLINED_FUNCTION_116();
        sub_197A25C5C(v79, v80);
        v81 = sub_197A875E8();
        v82 = sub_197A87D58();
        if (OUTLINED_FUNCTION_68_3(v82))
        {
          OUTLINED_FUNCTION_66_8();
          v83 = OUTLINED_FUNCTION_113();
          v112 = swift_slowAlloc();
          a10 = v112;
          *v77 = 138412546;
          OUTLINED_FUNCTION_88(v25, v27);
          OUTLINED_FUNCTION_0_17();
          sub_197A25C5C(v26, v84);
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v26, v85);
          OUTLINED_FUNCTION_53_8();
          v86 = sub_197A87988();
          v88 = sub_197948834(v86, v87, &a10);

          *(v77 + 14) = v88;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v89, v90, "Passing along %@ in response to %s");
          sub_197947A40(v83, &qword_1EAF48A90, &qword_197A891A0);
          OUTLINED_FUNCTION_44();
          v22 = v112;
          __swift_destroy_boxed_opaque_existential_1Tm(v112);
          OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
          v22 = *(v24 + 136);

          OUTLINED_FUNCTION_1_13();
          sub_197962A70(v22, v98);
        }

        v99 = OUTLINED_FUNCTION_19_11();
        OUTLINED_FUNCTION_0_17();
        sub_197A25C5C(v82, v100);
        v111 = v99;
        swift_willThrow();
        OUTLINED_FUNCTION_1_13();
        sub_197962A70(v82, v101);
      }

      v97 = v22;
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_41_6();
    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v68 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v68, qword_1ED87FB48);
    sub_197A878A8();
    v40 = sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_203();
    if (OUTLINED_FUNCTION_202())
    {
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_119_1();
      *(v25 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v69, v70);
      OUTLINED_FUNCTION_73_5(&dword_197941000, v71, v72, "ModelManager received unentitled request. Expected entitlement %s");
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_37();
    }

    v73 = OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_9_7(v73, v74);
    goto LABEL_32;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v43 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v43, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v32);
  v44 = sub_197A875E8();
  v45 = sub_197A87D68();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_56();
    v46 = OUTLINED_FUNCTION_113();
    *v23 = 138412290;
    MEMORY[0x19A8EBBD0](v32);
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 1) = v47;
    *v46 = v47;
    OUTLINED_FUNCTION_53();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    sub_197947A40(v46, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_62_5();
  v53 = *(v24 + 128);

  v54 = OUTLINED_FUNCTION_25_7(v53);
  OUTLINED_FUNCTION_38_8(v54, v55);
  v111 = v23;
  swift_willThrow();

  sub_197947A40(v45, &qword_1EAF499A8, &qword_197A92B00);
LABEL_37:
  OUTLINED_FUNCTION_15_7();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_142();

  return v103(v102, v103, v104, v105, v106, v107, v108, v109, v111, a10, a11, a12, a13, a14);
}

uint64_t IPCCachedSession.deinit()
{

  sub_197947A40(v0 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, &qword_1EAF4A1D0, &qword_197A96818);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IPCCachedSession.__deallocating_deinit()
{
  IPCCachedSession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A25238(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_197A408A8();
  OUTLINED_FUNCTION_5_8();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A208, &unk_197A969F0);
  if ((sub_197A87EB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_197A408A8();
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    type metadata accessor for IPCCachedSession.CancellationHandlerHandle();
    result = sub_197A88288();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (v15[7] + 16 * v11);
    *v16 = a1;
    v16[1] = a2;
    OUTLINED_FUNCTION_165();
  }

  else
  {
    sub_197A25B20(v11, a3, a1, a2, v15);
    OUTLINED_FUNCTION_165();
  }
}

uint64_t sub_197A25358(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_197A25410(uint64_t a1)
{
  sub_197A25664(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of IPCCachedSession.sendAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (*(*v4 + 264) + **(*v4 + 264));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  *v10 = v11;
  v10[1] = sub_197960FB0;

  return v13(a1, a2, a3, a4);
}

void sub_197A25664(uint64_t a1)
{
  if (!qword_1ED880468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF4A1C8, qword_197A967F8);
    v1 = sub_197A87DB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED880468);
    }
  }
}

uint64_t sub_197A25708(uint64_t a1)
{
  result = sub_197A2578C();
  if (v2 <= 0x3F)
  {
    result = sub_197A87298();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_197A2578C()
{
  result = qword_1ED880608;
  if (!qword_1ED880608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED880608);
  }

  return result;
}

void sub_197A257E8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_24_8();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_28_7();
  sub_197A40900();
  OUTLINED_FUNCTION_5_8();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E0, &qword_197A96990);
  OUTLINED_FUNCTION_29_6();
  if (sub_197A87EB8())
  {
    OUTLINED_FUNCTION_78_6();
    sub_197A40900();
    OUTLINED_FUNCTION_47_5();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_58_6();
    sub_197A25C5C(v6, v7);
    OUTLINED_FUNCTION_51_7();
    sub_197A25B68(v8, v9, v10, v11);
    OUTLINED_FUNCTION_66();
  }
}

void sub_197A25908()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_24_8();
  type metadata accessor for RequestKey(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_28_7();
  sub_197A40900();
  OUTLINED_FUNCTION_5_8();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1E8, &unk_197A96998);
  OUTLINED_FUNCTION_29_6();
  if (sub_197A87EB8())
  {
    OUTLINED_FUNCTION_78_6();
    sub_197A40900();
    OUTLINED_FUNCTION_47_5();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_77_7();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_58_6();
    sub_197A25C5C(v6, v7);
    OUTLINED_FUNCTION_51_7();
    sub_197A25B68(v8, v9, v10, v11);
    OUTLINED_FUNCTION_66();
  }
}

void sub_197A25A28(uint64_t a1, uint64_t a2)
{
  sub_197A4099C();
  OUTLINED_FUNCTION_5_8();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D8, &qword_197A96988);
  if ((OUTLINED_FUNCTION_85_5(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_197A4099C();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_197A88288();
    __break(1u);
    return;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    v13 = (*(*v2 + 56) + 16 * v8);
    *v13 = a1;
    v13[1] = a2;
    OUTLINED_FUNCTION_165();
  }

  else
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_165();

    sub_197A25C1C(v16, v17, v18, v19);
  }
}

unint64_t sub_197A25B20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_197A25B68(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RequestKey(0);
  result = sub_19794B22C(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_197A25C1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (result >> 6) + 64) |= 1 << result;
  v4 = (*(a4 + 56) + 16 * result);
  *v4 = a2;
  v4[1] = a3;
  v5 = *(a4 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }

  return result;
}

uint64_t sub_197A25C5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_197A25CB4()
{
  v1 = type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_28(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_197A2304C(v3, v4);
}

uint64_t sub_197A25D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A25D84()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_28(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v4[1] = sub_197960E38;
  v6 = OUTLINED_FUNCTION_81();

  return sub_197A23240(v6, v7, v8, v2, v9);
}

uint64_t sub_197A25EBC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v3[1] = sub_197960E38;
  v5 = OUTLINED_FUNCTION_81();

  return sub_197A226BC(v5, v6, v7, v1);
}

void sub_197A25F58(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49110, &qword_197A92D60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_19798E660(*v1, &v8 - v4);
  v7 = type metadata accessor for ClientData(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    sub_197A26D18(v5, a1);
    if (*(v6 + 16))
    {
      sub_197A433BC(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_197A26034(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_197999C48(*v1, &v4);
  if (v5)
  {
    sub_197945EF8(&v4, a1);
    if (*(v3 + 16))
    {
      sub_197A433FC(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_197A260B0()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_197A434F4(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t InputStreamSequence.clientDataArray.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_9(v2 + 112, a2);
  *(v2 + 112) = a1;
}

uint64_t InputStreamSequence.inputFinished.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_4_9(v2 + 120, a2);
  *(v2 + 120) = a1;
  return result;
}

uint64_t InputStreamSequence.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  return v0;
}

uint64_t InputStreamSequence.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  return v0;
}

uint64_t InputStreamSequence.addNext(data:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_197A1ECA8();
  v4 = *(*(v1 + 112) + 16);
  sub_197A1ED34(v4);
  v5 = *(v1 + 112);
  *(v5 + 16) = v4 + 1;
  v6 = *(type metadata accessor for ClientData(0) - 8);
  sub_197A26B28(a1, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
  *(v2 + 112) = v5;
  return swift_endAccess();
}

uint64_t InputStreamSequence.next()(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_197A26410, v1, 0);
}

uint64_t sub_197A26410()
{
  OUTLINED_FUNCTION_9();
  if (sub_197A87C68())
  {
    goto LABEL_2;
  }

  v6 = v1[12];
  OUTLINED_FUNCTION_95(v6 + 120, (v1 + 2));
  OUTLINED_FUNCTION_95(v6 + 112, (v1 + 5));
  OUTLINED_FUNCTION_3_10();
  if (v8)
  {
    if (!v7)
    {
LABEL_2:
      v2 = v1[11];
      v3 = type metadata accessor for ClientData(0);
      v4 = v2;
      v5 = 1;
LABEL_9:
      __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
      OUTLINED_FUNCTION_13();

      return v9();
    }

LABEL_8:
    OUTLINED_FUNCTION_5_9();
    sub_197A25F58(v0);
    swift_endAccess();
    v3 = type metadata accessor for ClientData(0);
    v4 = v0;
    v5 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  v11 = swift_task_alloc();
  v1[13] = v11;
  *v11 = v1;
  v12 = OUTLINED_FUNCTION_0_18(v11);

  return MEMORY[0x1EEE6DA78](v12);
}

uint64_t sub_197A26530()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*v0 + 96);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_197A26634, v1, 0);
}

uint64_t sub_197A26634()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_10();
  if (v3)
  {
    if (!v2)
    {
      v4 = *(v1 + 88);
      v5 = type metadata accessor for ClientData(0);
      v6 = v4;
      v7 = 1;
LABEL_7:
      __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
      OUTLINED_FUNCTION_13();

      return v8();
    }

LABEL_6:
    OUTLINED_FUNCTION_5_9();
    sub_197A25F58(v0);
    swift_endAccess();
    v5 = type metadata accessor for ClientData(0);
    v6 = v0;
    v7 = 0;
    goto LABEL_7;
  }

  if (v2)
  {
    goto LABEL_6;
  }

  v10 = swift_task_alloc();
  *(v1 + 104) = v10;
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_0_18(v10);

  return MEMORY[0x1EEE6DA78](v11);
}

uint64_t InputStreamSequence.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InputStreamSequence.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A267BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  InputStreamSequence.makeAsyncIterator()();

  *a1 = v3;
  return result;
}

uint64_t sub_197A267F0()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_197A26888;

  return InputStreamSequence.next()(v2);
}

uint64_t sub_197A26888()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A26970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_197A26A3C;

  return (sub_19799E02C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_197A26A3C()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A26B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197A26BE4(uint64_t a1)
{
  result = sub_197A26C6C(&qword_1EAF4A218, protocol conformance descriptor for InputStreamSequence);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A26C28(uint64_t a1)
{
  result = sub_197A26C6C(&qword_1EAF4A220, protocol conformance descriptor for InputStreamSequence);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A26C6C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for InputStreamSequence();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197A26D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CustomAssetConfiguration.description.getter()
{
  v1 = v0;
  sub_197A87E58();
  MEMORY[0x19A8EAC80](0x636E6174736E693CLL, 0xEE00203A44492065);
  MEMORY[0x19A8EAC80](*v1, v1[1]);
  MEMORY[0x19A8EAC80](0x616C706D6574202CLL, 0xEF203A4449206574);
  MEMORY[0x19A8EAC80](v1[2], v1[3]);
  MEMORY[0x19A8EAC80](0x69746E656469202CLL, 0xEE00203A72656966);
  v2 = type metadata accessor for CustomAssetConfiguration(0);
  MEMORY[0x19A8EAC80](*(v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 8));
  MEMORY[0x19A8EAC80](0x203A646970202CLL, 0xE700000000000000);
  if (*(v0 + *(v2 + 28) + 32))
  {
    v3 = sub_197A88148();
    MEMORY[0x19A8EAC80](v3);

    MEMORY[0x19A8EAC80](0x726556646970202CLL, 0xEE00203A6E6F6973);
  }

  else
  {
    OUTLINED_FUNCTION_41_7();
    audit_token_to_pid(v4);
    v5 = sub_197A88148();
    MEMORY[0x19A8EAC80](v5);

    MEMORY[0x19A8EAC80](0x726556646970202CLL, 0xEE00203A6E6F6973);
    OUTLINED_FUNCTION_41_7();
    audit_token_to_pidversion(v6);
  }

  v7 = sub_197A88148();
  MEMORY[0x19A8EAC80](v7);

  MEMORY[0x19A8EAC80](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_197A27004()
{
  v0 = sub_197A87608();
  __swift_allocate_value_buffer(v0, qword_1ED87D2E8);
  v1 = OUTLINED_FUNCTION_22();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v4 = __swift_project_value_buffer(v0, qword_1ED880520);
  v5 = *(*(v0 - 8) + 16);

  return v5(v3, v4, v0);
}

uint64_t ModelInstance.inferenceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  v3 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  sub_197A878A8();

  return sub_197A878A8();
}

uint64_t ModelInstance.init(assetBundleIdentifier:inferenceProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = v4;
  *(a4 + 32) = v5;
  *(a4 + 40) = v4;
  *(a4 + 48) = *(a3 + 1);
  *(a4 + 64) = v6;
  return sub_197A878A8();
}

uint64_t static ModelInstance.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v18 = a1[6];
  v19 = a1[4];
  v5 = a1[7];
  v17 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v16 = *(a2 + 32);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v12 = *(a2 + 64);
  if (v11 || (sub_197A88218()) && (v2 == v6 ? (v13 = v3 == v7) : (v13 = 0), v13 || (sub_197A88218()))
  {
    v22[0] = v19;
    v22[1] = v4;
    v22[2] = v18;
    v22[3] = v5;
    v23 = v17;
    v20[0] = v16;
    v20[1] = v8;
    v20[2] = v10;
    v20[3] = v9;
    v21 = v12;
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    sub_197A878A8();
    v14 = static InferenceProviderDescriptor.== infix(_:_:)(v22, v20);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_197A272D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000197AA25D0 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000197AA3F70 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000197AA33F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_197A88218();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_197A273EC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

uint64_t sub_197A27448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A272D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A27470(uint64_t a1)
{
  v2 = sub_197A29F30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A274AC(uint64_t a1)
{
  v2 = sub_197A29F30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelInstance.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A228, &qword_197A96B60);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_0();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_197A29F30();
  sub_197A883D8();
  sub_197A880B8();
  if (!v0)
  {
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    sub_1979518CC();
    sub_197A878A8();
    sub_197A878A8();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_93();
}

void ModelInstance.hash(into:)()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 56);
  sub_197A879B8();
  sub_197A879B8();
  sub_197A879B8();
  if (v1)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  OUTLINED_FUNCTION_66();
}

uint64_t ModelInstance.hashValue.getter()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_145();
  sub_197A879B8();
  sub_197A879B8();
  sub_197A879B8();
  if (v1)
  {
    MEMORY[0x19A8EB5D0](1);
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  sub_197A88328();
  return sub_197A88358();
}

void ModelInstance.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_92();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A238, &qword_197A96B68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_197A29F30();
  sub_197A883A8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v29 = OUTLINED_FUNCTION_60_4();
    v31 = v30;
    v42 = v29;
    LOBYTE(v44[0]) = 1;
    v40 = OUTLINED_FUNCTION_60_4();
    v41 = v32;
    sub_19795F8C8();
    sub_197A87FD8();
    v33 = OUTLINED_FUNCTION_25_8();
    v34(v33);
    v39 = v46;
    v38 = v47;
    v35 = v49;
    v37 = v48;
    v36 = v50;
    v43[0] = v42;
    v43[1] = v31;
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v46;
    v43[5] = v47;
    v43[6] = v48;
    v43[7] = v49;
    LOBYTE(v43[8]) = v50;
    memcpy(v27, v43, 0x41uLL);
    sub_197A29F84(v43, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v44[0] = v42;
    v44[1] = v31;
    v44[2] = v40;
    v44[3] = v41;
    v44[4] = v39;
    v44[5] = v38;
    v44[6] = v37;
    v44[7] = v35;
    v45 = v36;
    sub_197A29FBC(v44);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A27B18(uint64_t a1)
{
  sub_197A882F8();
  sub_197A879B8();
  sub_197A879B8();
  InferenceProviderDescriptor.hash(into:)(v2);
  return sub_197A88358();
}

uint64_t sub_197A27C18()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for CustomAssetConfiguration(v0);
  sub_197A877A8();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_77();

  return v2(v1);
}

__n128 sub_197A27C84()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for CustomAssetConfiguration(v2) + 28);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v6;
  *(v0 + 32) = v4;
  return result;
}

uint64_t CustomAssetConfiguration.secureIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for CustomAssetConfiguration(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return sub_1979844F4(v2, v3);
}

void static CustomAssetConfiguration.getCustomAssetConfigurationIdentifer(instanceID:templateID:clientProcessID:appBundleID:executablePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a7)
  {
    v9 = a7;
    sub_197A878A8();
    OUTLINED_FUNCTION_28_8();
    OUTLINED_FUNCTION_49_8();
    OUTLINED_FUNCTION_28_8();
    v11 = a6;
LABEL_5:
    MEMORY[0x19A8EAC80](v11, v9);
    return;
  }

  v9 = a9;
  if (a9)
  {
    sub_197A878A8();
    OUTLINED_FUNCTION_28_8();
    OUTLINED_FUNCTION_49_8();
    OUTLINED_FUNCTION_28_8();
    v11 = a8;
    goto LABEL_5;
  }

  sub_197A878A8();
  OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_28_8();
  v13 = sub_197A88148();
  MEMORY[0x19A8EAC80](v13);
}

uint64_t CustomAssetConfiguration.init(instanceID:templateID:assetData:auditToken:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v50 = a6[1];
  v56 = *a6;
  HIDWORD(v46) = *(a6 + 32);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v12 = type metadata accessor for CustomAssetConfiguration(0);
  v13 = v12[6];
  v14 = sub_197A877A8();
  OUTLINED_FUNCTION_70();
  v16 = v15;
  (*(v15 + 16))(&a9[v13], a5, v14);
  sub_1979CAD9C();
  v17 = sub_197A878A8();
  if (OUTLINED_FUNCTION_23_9(v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v22, v23, v43, v46, v50, *(&v50 + 1), v56, *(&v56 + 1), v62, a8) & 1) != 0 || (OUTLINED_FUNCTION_54_6(), (OUTLINED_FUNCTION_23_9(v24, MEMORY[0x1E69E6158], v25, v26, v27, v28, v29, v30, v44, v47, v51, v54, v57, v60, v63, v66)))
  {

    result = (*(v16 + 8))(a5, v14);
  }

  else
  {
    OUTLINED_FUNCTION_44_8();
    v42 = OUTLINED_FUNCTION_23_9(v35, MEMORY[0x1E69E6158], v36, v37, v38, v39, v40, v41, v45, v48, v52, v55, v58, v61, v64, v66);
    (*(v16 + 8))(a5, v14);

    if ((v42 & 1) == 0)
    {
      v32 = &a9[v12[7]];
      *v32 = v59;
      *(v32 + 1) = v53;
      v33 = v49;
      goto LABEL_5;
    }
  }

  v32 = &a9[v12[7]];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = 1;
LABEL_5:
  v32[32] = v33;
  v34 = &a9[v12[8]];
  *v34 = a7;
  *(v34 + 1) = v66;
  return result;
}

void CustomAssetConfiguration.copyWithAuditToken(auditToken:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v5 = sub_197A877A8();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = (v10 - v9);
  v30 = v2[1];
  v31 = *v2;
  v12 = *(v0 + 1);
  v33 = *v0;
  v13 = *(v0 + 2);
  v14 = *(v0 + 3);
  v15 = type metadata accessor for CustomAssetConfiguration(0);
  v16 = *(v7 + 16);
  v16(v11, &v0[v15[6]], v5);
  v17 = &v0[v15[8]];
  v18 = v17[1];
  v32 = *v17;
  *v4 = v33;
  *(v4 + 1) = v12;
  *(v4 + 2) = v13;
  *(v4 + 3) = v14;
  v16(&v4[v15[6]], v11, v5);
  v19 = v18;
  v36 = v13;
  v37 = v14;
  v34 = 2037278052;
  v35 = 0xE400000000000000;
  sub_1979CAD9C();
  sub_197A878A8();
  sub_197A878A8();
  sub_197A878A8();
  if (OUTLINED_FUNCTION_47_6(&v34, MEMORY[0x1E69E6158]) & 1) != 0 || (v36 = v13, v37 = v14, OUTLINED_FUNCTION_54_6(), v34 = v20, v35 = v21, (OUTLINED_FUNCTION_47_6(&v34, MEMORY[0x1E69E6158])))
  {
    (*(v7 + 8))(v11, v5);
  }

  else
  {
    v36 = v13;
    v37 = v14;
    OUTLINED_FUNCTION_44_8();
    v34 = v26;
    v35 = v27;
    v28 = OUTLINED_FUNCTION_47_6(&v34, MEMORY[0x1E69E6158]);
    (*(v7 + 8))(v11, v5);
    if ((v28 & 1) == 0)
    {
      v23 = v15;
      v22 = v4;
      v29 = &v4[v15[7]];
      *v29 = v31;
      *(v29 + 1) = v30;
      v29[32] = 0;
      goto LABEL_5;
    }
  }

  v23 = v15;
  v22 = v4;
  v24 = &v4[v15[7]];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
LABEL_5:
  v25 = (v22 + v23[8]);
  *v25 = v32;
  v25[1] = v19;
  OUTLINED_FUNCTION_66();
}

uint64_t static CustomAssetConfiguration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_71();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_26;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_197A88218() & 1) == 0)
  {
    goto LABEL_26;
  }

  v5 = type metadata accessor for CustomAssetConfiguration(0);
  v6 = *(v5 + 28);
  v7 = *(v1 + v6 + 32);
  if (v7 != 1)
  {
    OUTLINED_FUNCTION_20_9();
    v11 = audit_token_to_pid(v10);
    v8 = v0 + *(v5 + 28);
    if (v8[32])
    {
      goto LABEL_26;
    }

    v9 = v11;
LABEL_16:
    v13 = *(v8 + 6);
    v12 = *(v8 + 7);
    v15 = *(v8 + 4);
    v14 = *(v8 + 5);
    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    v19 = *v8;
    v18 = *(v8 + 1);
    atoken.val[0] = *v8;
    atoken.val[1] = v18;
    atoken.val[2] = v17;
    atoken.val[3] = v16;
    v30 = v15;
    v31 = v14;
    atoken.val[4] = v15;
    atoken.val[5] = v14;
    v32 = v13;
    v33 = v12;
    atoken.val[6] = v13;
    atoken.val[7] = v12;
    if (v9 == audit_token_to_pid(&atoken))
    {
      v20 = v7;
    }

    else
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_9();
      v22 = audit_token_to_pidversion(v21);
      atoken.val[0] = v19;
      atoken.val[1] = v18;
      atoken.val[2] = v17;
      atoken.val[3] = v16;
      atoken.val[4] = v30;
      atoken.val[5] = v31;
      atoken.val[6] = v32;
      atoken.val[7] = v33;
      if (v22 == audit_token_to_pidversion(&atoken))
      {
        goto LABEL_21;
      }
    }

LABEL_26:
    v28 = 0;
    return v28 & 1;
  }

  v8 = v0 + v6;
  if ((v8[32] & 1) == 0)
  {
    v9 = 0;
    goto LABEL_16;
  }

LABEL_21:
  v23 = *(v5 + 32);
  v24 = *(v1 + v23);
  v25 = *(v1 + v23 + 8);
  v26 = (v0 + v23);
  if (v24 == *v26 && v25 == v26[1])
  {
    v28 = 1;
  }

  else
  {
    v28 = sub_197A88218();
  }

  return v28 & 1;
}

uint64_t CustomAssetConfiguration.hash(into:)(uint64_t a1)
{
  sub_197A879B8();
  sub_197A879B8();
  v2 = type metadata accessor for CustomAssetConfiguration(0);
  sub_197A879B8();
  if (*(v1 + *(v2 + 28) + 32))
  {
    sub_197A88338();
  }

  else
  {
    OUTLINED_FUNCTION_43_7();
    audit_token_to_pid(v3);
    sub_197A88338();
    OUTLINED_FUNCTION_43_7();
    audit_token_to_pidversion(v4);
  }

  return sub_197A88338();
}

uint64_t sub_197A28454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000197AA3F90 == a2;
  if (v3 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000197AA3FB0 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000197AA3FD0 == a2;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000197AA3FF0 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000197AA3370 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_197A88218();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_197A28600(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_197A28684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A28454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A286AC(uint64_t a1)
{
  v2 = sub_197A29FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A286E8(uint64_t a1)
{
  v2 = sub_197A29FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CustomAssetConfiguration.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A240, &qword_197A96B70);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_197A29FEC();
  OUTLINED_FUNCTION_39_0(&type metadata for CustomAssetConfiguration.CodingKeys, v11, v10);
  OUTLINED_FUNCTION_33_8(*v4, v4[1]);
  if (!v2)
  {
    OUTLINED_FUNCTION_33_8(v4[2], v4[3]);
    v12 = type metadata accessor for CustomAssetConfiguration(0);
    sub_197A877A8();
    OUTLINED_FUNCTION_16_9();
    sub_1979548FC(v13, v14, MEMORY[0x1E69E84E8]);
    sub_197A880E8();
    sub_1979741F8();
    sub_197A88098();
    OUTLINED_FUNCTION_33_8(*(v4 + *(v12 + 32)), *(v4 + *(v12 + 32) + 8));
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t CustomAssetConfiguration.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  CustomAssetConfiguration.hash(into:)(v1);
  return sub_197A88358();
}

void CustomAssetConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = sub_197A877A8();
  OUTLINED_FUNCTION_2();
  v27 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A248, &unk_197A96B78);
  OUTLINED_FUNCTION_2();
  v28 = v9;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_57_5();
  v12 = type metadata accessor for CustomAssetConfiguration(v11);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_197A29FEC();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    *v16 = sub_197A87FA8();
    v16[1] = v17;
    v16[2] = sub_197A87FA8();
    v16[3] = v18;
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_16_9();
    sub_1979548FC(v19, v20, MEMORY[0x1E69E84F8]);
    sub_197A87FD8();
    (*(v27 + 32))(v16 + v12[6], v8, v3);
    sub_1979705E8();
    sub_197A87F88();
    v21 = v16 + v12[7];
    *v21 = v30;
    *(v21 + 1) = v31;
    v21[32] = v32;
    v22 = sub_197A87FA8();
    v26 = v23;
    v24 = v22;
    (*(v28 + 8))(0, v29);
    v25 = (v16 + v12[8]);
    *v25 = v24;
    v25[1] = v26;
    sub_19795F818();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19795F870(v16, type metadata accessor for CustomAssetConfiguration);
  }

  OUTLINED_FUNCTION_93();
}

uint64_t sub_197A28D94(uint64_t a1)
{
  sub_197A882F8();
  CustomAssetConfiguration.hash(into:)(v2);
  return sub_197A88358();
}

uint64_t Session.Metadata.sessionSetID.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for Session.Metadata(v0);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_77();

  return v2(v1);
}

double Session.Metadata.inferenceInterfaceVersion.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for Session.Metadata(v2) + 44);
  v4 = *(v3 + 8);
  result = *v3;
  *v0 = *v3;
  *(v0 + 8) = v4;
  return result;
}

uint64_t Session.Metadata.init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPID:loggingIdentifier:id:sessionSetID:inferenceInterfaceVersion:customAssetConfigurations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v30 = *(a11 + 2);
  sub_197A87118();
  OUTLINED_FUNCTION_6();
  v22 = *a11;
  (*(v21 + 32))(a9, a1);
  v23 = type metadata accessor for Session.Metadata(0);
  v24 = (a9 + v23[5]);
  *v24 = a2;
  v24[1] = a3;
  *(a9 + v23[6]) = a4;
  *(a9 + v23[7]) = a5;
  v25 = (a9 + v23[8]);
  *v25 = a6;
  v25[1] = a7;
  sub_19795EE70(a8, a9 + v23[9]);
  v26 = v23[10];
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  result = (*(v27 + 32))(a9 + v26, a10);
  v29 = a9 + v23[11];
  *v29 = v22;
  *(v29 + 8) = v30;
  *(a9 + v23[12]) = a12;
  return result;
}

void Session.Metadata.init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPID:loggingIdentifier:id:sessionSetID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_67();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_197A87118();
  OUTLINED_FUNCTION_6();
  (*(v39 + 32))(v38, v36);
  v40 = type metadata accessor for Session.Metadata(0);
  v41 = (v38 + v40[5]);
  *v41 = v34;
  v41[1] = v32;
  *(v38 + v40[6]) = v30;
  *(v38 + v40[7]) = v28;
  v42 = (v38 + v40[8]);
  *v42 = v26;
  v42[1] = v24;
  sub_19795EE70(v22, v38 + v40[9]);
  v43 = v40[10];
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v44 + 32))(v38 + v43, a21);
  v45 = v38 + v40[11];
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v38 + v40[12]) = 0;
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A2911C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75427465737361 && a2 == 0xEE00495255656C64;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000197AA2570 == a2;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000197AA3B30 == a2;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 25705 && a2 == 0xE200000000000000;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x536E6F6973736573 && a2 == 0xEC00000044497465;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x8000000197AA3F30 == a2;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000019 && 0x8000000197AA3F50 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_197A88218();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_197A29400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A2911C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A29428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_197A293F8();
  *a1 = result;
  return result;
}

uint64_t sub_197A29450(uint64_t a1)
{
  v2 = sub_1979548A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197A2948C(uint64_t a1)
{
  v2 = sub_1979548A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_197A29500()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87D2E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_197A87608();
  __swift_project_value_buffer(v2, qword_1ED87D2E8);
  MEMORY[0x19A8EBBD0](v1);
  v3 = sub_197A875E8();
  v4 = sub_197A87D58();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x19A8EBBD0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_197941000, v3, v4, "establishment of session failed with %@", v7, 0xCu);
    sub_197947A40(v8, &qword_1EAF48A90, &qword_197A891A0);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_44();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v10();
}

uint64_t _s20ModelManagerServices7SessionC2idAA14UUIDIdentifierVyACGvg_0()
{
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_77();

  return v1(v0);
}

double Session.inferenceInterfaceVersion.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion + 8);
  result = *(v1 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

uint64_t Session.fetchModelInfo()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return sub_197A878A8();
}

uint64_t Session.fetchModelInstance()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A298A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_10(*(v0 + 24));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75(v1);
  *v2 = v3;
  v2[1] = sub_19796D708;
  OUTLINED_FUNCTION_113_1();

  return v4();
}

void static Session.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v27 = OUTLINED_FUNCTION_28(v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - v31;
  v33 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v34 = sub_197A87298();
  OUTLINED_FUNCTION_6();
  v36 = *(v35 + 16);
  v36(v32, v25 + v33, v34);
  v36(v30, v23 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v34);
  _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
  sub_197947A40(v30, &qword_1EAF49130, &qword_197A969C0);
  sub_197947A40(v32, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_66();
}

uint64_t Session.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v2);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v7 = sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v8 + 16))(v5, v1 + v6, v7);
  OUTLINED_FUNCTION_3_11();
  sub_1979548FC(v9, v10, MEMORY[0x1E69695B8]);
  sub_197A878F8();
  return sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
}

uint64_t Session.requestPrewarm_async(metadata:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_197A29C10()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_10(*(v0 + 24));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75(v1);
  *v2 = v3;
  v2[1] = sub_197976F2C;
  OUTLINED_FUNCTION_113_1();

  return v4();
}

uint64_t sub_197A29D28()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_10(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_19796E1D4;
  v2 = OUTLINED_FUNCTION_5(*(v0 + 16));

  return v3(v2);
}

uint64_t Session.hashValue.getter()
{
  OUTLINED_FUNCTION_145();
  Session.hash(into:)(v1);
  return sub_197A88358();
}

uint64_t sub_197A29ECC(uint64_t a1)
{
  sub_197A882F8();
  Session.hash(into:)(v2);
  return sub_197A88358();
}

unint64_t sub_197A29F30()
{
  result = qword_1EAF4A230;
  if (!qword_1EAF4A230)
  {
    result = swift_getWitnessTable(aW_19, &type metadata for ModelInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A230);
  }

  return result;
}

unint64_t sub_197A29FEC()
{
  result = qword_1ED87E690;
  if (!qword_1ED87E690)
  {
    result = swift_getWitnessTable(aW_20, &type metadata for CustomAssetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E690);
  }

  return result;
}

unint64_t sub_197A2A044()
{
  result = qword_1EAF4A260;
  if (!qword_1EAF4A260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelInstance, &type metadata for ModelInstance, v0, v1);
    atomic_store(result, &qword_1EAF4A260);
  }

  return result;
}

uint64_t sub_197A2A130(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_197A2A170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomAssetConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelInstance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_197A2A3C0()
{
  result = qword_1EAF4A278;
  if (!qword_1EAF4A278)
  {
    result = swift_getWitnessTable(byte_197A97074, &type metadata for ModelInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A278);
  }

  return result;
}

unint64_t sub_197A2A418()
{
  result = qword_1EAF4A280;
  if (!qword_1EAF4A280)
  {
    result = swift_getWitnessTable(byte_197A9712C, &type metadata for CustomAssetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A280);
  }

  return result;
}

unint64_t sub_197A2A470()
{
  result = qword_1EAF4A288;
  if (!qword_1EAF4A288)
  {
    result = swift_getWitnessTable(aE_41, &type metadata for Session.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A288);
  }

  return result;
}

unint64_t sub_197A2A4C8()
{
  result = qword_1ED87FC48;
  if (!qword_1ED87FC48)
  {
    result = swift_getWitnessTable(byte_197A97154, &type metadata for Session.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FC48);
  }

  return result;
}

unint64_t sub_197A2A520()
{
  result = qword_1ED87FC50;
  if (!qword_1ED87FC50)
  {
    result = swift_getWitnessTable(byte_197A9717C, &type metadata for Session.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FC50);
  }

  return result;
}

unint64_t sub_197A2A578()
{
  result = qword_1ED87E9B8;
  if (!qword_1ED87E9B8)
  {
    result = swift_getWitnessTable(aUWl, &type metadata for CustomAssetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E9B8);
  }

  return result;
}

unint64_t sub_197A2A5D0()
{
  result = qword_1ED87E698;
  if (!qword_1ED87E698)
  {
    result = swift_getWitnessTable(aMW_0, &type metadata for CustomAssetConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87E698);
  }

  return result;
}

unint64_t sub_197A2A628()
{
  result = qword_1EAF4A290;
  if (!qword_1EAF4A290)
  {
    result = swift_getWitnessTable(aW_21, &type metadata for ModelInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A290);
  }

  return result;
}

unint64_t sub_197A2A680()
{
  result = qword_1EAF4A298;
  if (!qword_1EAF4A298)
  {
    result = swift_getWitnessTable("%'@W", &type metadata for ModelInstance.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EAF4A298);
  }

  return result;
}

uint64_t RunningBoardSelfAssertionType.hashValue.getter()
{
  sub_197A882F8();
  MEMORY[0x19A8EB5D0](0);
  return sub_197A88358();
}

uint64_t sub_197A2A7BC()
{
  v1 = *(v0[2] + 56);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[2];
    v6 = v5[5];
    v7 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
    v10 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_197A2A94C;
    v9 = v0[2];

    return v10(v9, v6, v7);
  }
}

uint64_t sub_197A2A94C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t RunningBoardSelfAssertionToken.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t RunningBoardSelfAssertionToken.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

unint64_t sub_197A2AAA4()
{
  result = qword_1ED880238;
  if (!qword_1ED880238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RunningBoardSelfAssertionType, &type metadata for RunningBoardSelfAssertionType, v0, v1);
    atomic_store(result, &qword_1ED880238);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningBoardSelfAssertionType(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of RunningBoardSelfAsserting.acquire(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_0(a1, a2, a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_10_0(v4);

  return v6(v5);
}

uint64_t sub_197A2ACE8(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t dispatch thunk of RunningBoardSelfAsserting.relinquish(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_37_0(a1, a2, a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_10_0(v4);

  return v6(v5);
}

uint64_t sub_197A2AEE4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

id sub_197A2B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR___MMAssertion_assertion;
  *(v4 + OBJC_IVAR___MMAssertion_assertion) = 0;
  v6 = (v4 + OBJC_IVAR___MMAssertion_policy);
  *v6 = a1;
  v6[1] = a2;
  v7 = (v4 + OBJC_IVAR___MMAssertion_desc);
  *v7 = a3;
  v7[1] = a4;
  *(v4 + v5) = 0;
  v9.super_class = MMAssertion;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_197A2B108()
{
  v1 = *(v0 + 16);
  type metadata accessor for Assertion(0);
  v2 = *&v1[OBJC_IVAR___MMAssertion_policy];
  v3 = *&v1[OBJC_IVAR___MMAssertion_policy + 8];
  sub_197A878A8();
  v4 = [v1 description];
  v5 = sub_197A87938();
  v7 = v6;

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_197A2B20C;

  return Assertion.__allocating_init(policy:description:)(v2, v3, v5, v7);
}

uint64_t sub_197A2B20C()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_24();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_197A2B340, 0, 0);
  }
}

uint64_t sub_197A2B340()
{
  OUTLINED_FUNCTION_9();
  *(*(v0 + 16) + OBJC_IVAR___MMAssertion_assertion) = *(v0 + 32);

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A2B3D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_197A2B478;

  return sub_197A2B0F4();
}

uint64_t sub_197A2B478()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  if (v0)
  {
    if (v6)
    {
      v10 = *(v3 + 24);
      v11 = sub_197A870D8();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v6)
  {
    v12 = *(v3 + 24);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

uint64_t sub_197A2B5F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_197A97460;
  v9[5] = v8;
  sub_197A2C030(0, 0, v6, &unk_197A97470, v9);
}

uint64_t sub_197A2B71C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[2] + OBJC_IVAR___MMAssertion_assertion);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_197A2B7F8;

    return Assertion.invalidate()();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

uint64_t sub_197A2B7F8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_197A2B914(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_10_13();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_197A2B5F8(a5, v8);
}

uint64_t sub_197A2B97C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_197A2BA24;

  return sub_197A2B708();
}

uint64_t sub_197A2BA24()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v5)
  {
    v9 = *(v2 + 24);
    v9[2](v9);
    _Block_release(v9);
  }

  OUTLINED_FUNCTION_13();

  return v10();
}

void __swiftcall MMAssertion.init()(MMAssertion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for MMAssertion()
{
  result = qword_1EAF4A2B8;
  if (!qword_1EAF4A2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF4A2B8);
  }

  return result;
}

uint64_t sub_197A2BC0C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_9(v1);

  return v4(v3);
}

uint64_t sub_197A2BC9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_197960FB0;

  return v6();
}

uint64_t sub_197A2BD84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;

  return sub_197A2BC9C(v1, v2, v3);
}

uint64_t sub_197A2BE40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_197960E38;

  return v7();
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197A2BF68(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_20(v6);
  *v7 = v8;
  v7[1] = sub_197960E38;

  return sub_197A2BE40(a1, v3, v4, v5);
}

uint64_t sub_197A2C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_19795C4DC(a3, v22 - v10);
  v12 = sub_197A87C08();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19795C88C(v11);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_197A87B58();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_197A879A8() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_19795C88C(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19795C88C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_197A2C2CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19795BD18;

  return v6(a1);
}

uint64_t sub_197A2C3C4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_0(v1);

  return v4(v3);
}

uint64_t sub_197A2C45C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_0(v1);

  return v4(v3);
}

uint64_t sub_197A2C4F4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_9(v1);

  return v4(v3);
}

BOOL GreedyBufferResult.isTerminal.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v3 + 16);
  v11(&v20 - v9);
  OUTLINED_FUNCTION_63();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1 || ((v11)(v7, v10, a1), v13 = *(a1 + 16), sub_197A87448(), TupleTypeMetadata3 = swift_getTupleTypeMetadata3(), , LOBYTE(TupleTypeMetadata3) = *(v7 + *(TupleTypeMetadata3 + 64)), OUTLINED_FUNCTION_36_0(), (*(v15 + 8))(v7, v13), (TupleTypeMetadata3 & 1) != 0))
    {
      v16 = 1;
    }
  }

  v17 = OUTLINED_FUNCTION_63();
  v18(v17);
  return v16;
}

uint64_t GreedyBufferResult.count.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5);
  OUTLINED_FUNCTION_22();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = OUTLINED_FUNCTION_22();
    v16(v15);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = OUTLINED_FUNCTION_22();
    v18(v17);
    return 0;
  }

  v9 = *(a1 + 16);
  sub_197A87448();
  OUTLINED_FUNCTION_47_7();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_197A334F4(sub_197A334E8, 0, *(v7 + *(TupleTypeMetadata3 + 48)), MEMORY[0x1E6995658], v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v19);

  v12 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    OUTLINED_FUNCTION_36_0();
    v13 = OUTLINED_FUNCTION_22();
    v14(v13);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t GreedyBufferResult.allElements.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_34_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = sub_197A87448();
      OUTLINED_FUNCTION_43_8();
      swift_getTupleTypeMetadata3();
      (*(v4 + 32))(v8, v14, v2);
      v17 = sub_197A3347C(v2, v2);
      OUTLINED_FUNCTION_49_9(v17);
      v18 = sub_197A87B08();
      (*(v4 + 16))(v19, v8, v2);
      sub_19799A980(v18);

      swift_getWitnessTable(MEMORY[0x1E6995670], v16);
      sub_197A87B48();
      OUTLINED_FUNCTION_68_1();
      v20 = sub_197A87B18();

      v21 = OUTLINED_FUNCTION_63();
      v22(v21);
    }

    else
    {
      OUTLINED_FUNCTION_43_8();
      v20 = sub_197A87B28();
      (*(v10 + 8))(v14, a1);
    }
  }

  else
  {
    v23 = *(v4 + 32);
    v23(v8, v14, v2);
    v24 = sub_197A3347C(v2, v2);
    OUTLINED_FUNCTION_49_9(v24);
    sub_197A87B08();
    v23(v25, v8, v2);
    v26 = OUTLINED_FUNCTION_100();
    return sub_19799A980(v26);
  }

  return v20;
}

void GreedyBufferResult.concat(_:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v118 = *(v1 + 24);
  v123 = sub_197A87DB8();
  OUTLINED_FUNCTION_2();
  v119 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_5();
  v115 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33_4();
  v117 = v9;
  v127 = *(v2 + 16);
  OUTLINED_FUNCTION_34_0();
  v125 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_5();
  v114 = v12;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v112 - v14;
  OUTLINED_FUNCTION_134();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v112 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v112 - v19;
  OUTLINED_FUNCTION_34_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_5();
  v122 = v24;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_33_4();
  v121 = v26;
  OUTLINED_FUNCTION_43_8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v29 = v28;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v112 - v31;
  if (!GreedyBufferResult.isTerminal.getter(v2))
  {
    v124 = v18;
    v126 = v20;
    v33 = &v32[*(TupleTypeMetadata2 + 48)];
    v34 = *(v22 + 16);
    v128 = v0;
    OUTLINED_FUNCTION_68_1();
    v34();
    v113 = v4;
    (v34)(v33, v4, v2);
    v35 = v32;
    OUTLINED_FUNCTION_63();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37 = *(v22 + 8);
        v120 = v22 + 8;
        v121 = v37;
        v37(v128, v2);
        v38 = v122;
        OUTLINED_FUNCTION_68_1();
        v34();
        v39 = sub_197A87448();
        OUTLINED_FUNCTION_47_7();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v41 = *(TupleTypeMetadata3 + 48);
        v42 = *&v38[v41];
        v43 = swift_getEnumCaseMultiPayload();
        v112 = v32;
        if (v43)
        {
          if (v43 != 1)
          {
            v126 = v42;
            v88 = v125;
            v89 = v114;
            v90 = v127;
            v124 = *(v125 + 32);
            v124(v114, v38, v127);
            v91 = v119;
            v92 = v115;
            (*(v119 + 32))();
            OUTLINED_FUNCTION_64_0(v92, 1, v118);
            if (v93)
            {
              v94 = v91;
              v95 = *(TupleTypeMetadata3 + 48);
              v96 = *(TupleTypeMetadata3 + 64);
              v97 = v92;
              v98 = v128;
              v124(v128, v89, v90);
              *&v98[v95] = v126;
              (*(v94 + 8))(v97, v123);
              v98[v96] = 1;
              OUTLINED_FUNCTION_74_7();
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              (*(v88 + 8))(v89, v90);

              (*(v91 + 8))(v92, v123);
              (v34)(v128, v113, v2);
            }

            v121(v112, v2);
            goto LABEL_22;
          }

          v119 = *&v33[v41];
          LODWORD(v123) = v33[*(TupleTypeMetadata3 + 64)];
          v44 = v125;
          v45 = *(v125 + 32);
          v46 = v38;
          v47 = v127;
          v45(v126, v46, v127);
          v48 = OUTLINED_FUNCTION_82_7();
          (v45)(v48);
          OUTLINED_FUNCTION_93_5();
          v49 = v119;
          v129 = v119;
          v50 = OUTLINED_FUNCTION_27_10();
          swift_getWitnessTable(v50, v39);
          sub_197A873C8();
          (*(v44 + 8))(v32, v47);

          v51 = OUTLINED_FUNCTION_57_6();
          (v45)(v51);
          *&v42[v49] = v130;
          *(v49 + TupleTypeMetadata3) = v123;
        }

        else
        {
          v67 = v125;
          v68 = *(v125 + 32);
          v69 = v38;
          v70 = v127;
          v68(v126, v69, v127);
          v71 = OUTLINED_FUNCTION_82_7();
          (v68)(v71);
          OUTLINED_FUNCTION_93_5();
          (*(v67 + 8))(v32, v70);
          v72 = OUTLINED_FUNCTION_57_6();
          (v68)(v72);
          *&v42[v33] = v130;
          v33[TupleTypeMetadata3] = 0;
        }

        OUTLINED_FUNCTION_74_7();
        swift_storeEnumTagMultiPayload();
        v121(v112, v2);
      }

      else
      {
        (*(v29 + 8))(v32, TupleTypeMetadata2);
      }
    }

    else
    {
      v52 = *(v22 + 8);
      v53 = v128;
      v120 = v22 + 8;
      (v52)(v128, v2);
      v54 = v121;
      v55 = v32;
      OUTLINED_FUNCTION_68_1();
      v34();
      v56 = swift_getEnumCaseMultiPayload();
      if (v56)
      {
        if (v56 != 1)
        {
          v99 = v125;
          v100 = v127;
          (*(v125 + 32))(v116, v54, v127);
          v101 = v119;
          v102 = v117;
          v103 = v33;
          v104 = v123;
          (*(v119 + 32))(v117, v103, v123);
          OUTLINED_FUNCTION_64_0(v102, 1, v118);
          if (v93)
          {
            sub_197A87448();
            OUTLINED_FUNCTION_87_6();
            v105 = swift_getTupleTypeMetadata3();
            v122 = v52;
            v106 = *(v105 + 48);
            v107 = v101;
            v126 = *(v105 + 64);
            v108 = v128;
            v109 = v116;
            (*(v99 + 16))(v128, v116, v100);
            OUTLINED_FUNCTION_87_6();
            v130 = sub_197A87B28();
            OUTLINED_FUNCTION_87_6();
            v110 = sub_197A87B38();
            OUTLINED_FUNCTION_29_7(v110);
            v111 = sub_197A87458();
            (*(v99 + 8))(v109, v100);
            *&v108[v106] = v111;
            v52 = v122;
            (*(v107 + 8))(v117, v104);
            v126[v108] = 1;
            OUTLINED_FUNCTION_74_7();
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            (*(v99 + 8))(v116, v100);
            (*(v101 + 8))(v117, v104);
            (v34)(v128, v113, v2);
          }

          (v52)(v55, v2);
          goto LABEL_22;
        }

        v57 = v127;
        v119 = sub_197A87448();
        OUTLINED_FUNCTION_53_9();
        v58 = swift_getTupleTypeMetadata3();
        v112 = v35;
        v59 = v58;
        v60 = v54;
        v61 = *&v33[*(v58 + 48)];
        LODWORD(v123) = v33[*(v58 + 64)];
        v122 = v52;
        v62 = v125;
        v63 = *(v125 + 32);
        v63(v126, v60, v57);
        v64 = v124;
        v63(v124, v33, v57);
        v130 = v61;
        sub_197A873E8();
        (*(v62 + 8))(v64, v57);
        v65 = *(v59 + 48);
        v66 = *(v59 + 64);
        v63(v53, v126, v57);
        *&v53[v65] = v130;
        v53[v66] = v123;
      }

      else
      {
        v74 = v125;
        v73 = v126;
        v122 = v52;
        v112 = v55;
        v75 = *(v125 + 32);
        v76 = v127;
        v75(v126, v54, v127);
        v75(v124, v33, v76);
        sub_197A87448();
        v77 = swift_getTupleTypeMetadata3();
        v78 = *(v77 + 48);
        v123 = *(v77 + 64);
        v79 = *(v74 + 16);
        v80 = v73;
        v79(v53, v73, v76);
        v81 = sub_197A3347C(v76, v76);
        OUTLINED_FUNCTION_49_9(v81);
        v82 = sub_197A87B08();
        v83 = v124;
        v79(v84, v124, v76);
        v130 = sub_19799A980(v82);
        v85 = sub_197A87B38();
        OUTLINED_FUNCTION_29_7(v85);
        v86 = sub_197A87458();
        v87 = *(v74 + 8);
        v87(v83, v76);
        v87(v80, v76);
        *&v53[v78] = v86;
        v53[v123] = 0;
      }

      OUTLINED_FUNCTION_74_7();
      swift_storeEnumTagMultiPayload();
      (v122)(v112, v2);
    }

LABEL_22:
    OUTLINED_FUNCTION_66();
    return;
  }

  __break(1u);
}

void GreedyBufferResult.erasingErrorType()()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_34_0();
  v57 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_87_6();
  v12 = sub_197A87DB8();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  (*(v26 + 16))(v24 - v23, v1, v3);
  OUTLINED_FUNCTION_140();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_197A87448();
      OUTLINED_FUNCTION_47_7();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v29 = *(TupleTypeMetadata3 + 48);
      v30 = *(v25 + v29);
      v31 = *(TupleTypeMetadata3 + 64);
      v32 = *(v25 + v31);
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_72_6();
      v33();
      *(v5 + v29) = v30;
      *(v5 + v31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
      v34 = OUTLINED_FUNCTION_47_7();
      type metadata accessor for GreedyBufferResult(v34, v35, v36, v37);
      OUTLINED_FUNCTION_46_5();
    }

    else
    {
      (*(v14 + 32))(v21, v25, v12);
      (*(v14 + 16))(v18, v21, v12);
      OUTLINED_FUNCTION_64_0(v18, 1, v6);
      if (v43)
      {
        v44 = *(v14 + 8);
        v44(v21, v12);
        v44(v18, v12);
        v48 = 0;
      }

      else
      {
        v45 = v57;
        v46 = OUTLINED_FUNCTION_50_8();
        v47(v46);
        v56 = *(v3 + 32);
        v48 = sub_197A88208();
        v49 = v11;
        v50 = *(v45 + 8);
        v50(v49, v6);
        if (v48)
        {
          (*(v14 + 8))(v21, v12);
          v50(v18, v6);
        }

        else
        {
          v48 = OUTLINED_FUNCTION_88(v6, v56);
          (*(v57 + 32))(v51, v18, v6);
          (*(v14 + 8))(v21, v12);
        }
      }

      *v5 = v48;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
      v52 = OUTLINED_FUNCTION_47_7();
      type metadata accessor for GreedyBufferResult(v52, v53, v54, v55);
      OUTLINED_FUNCTION_46_5();
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_72_6();
    v38();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
    v39 = OUTLINED_FUNCTION_47_7();
    type metadata accessor for GreedyBufferResult(v39, v40, v41, v42);
    OUTLINED_FUNCTION_46_5();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
}

void GreedyBufferResult.wrappingErrorType<A>(_:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v50 = v7;
  v51 = v6;
  v9 = v8;
  v10 = *(v4 + 24);
  OUTLINED_FUNCTION_34_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  (*(v23 + 16))(v21 - v20, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v5 + 16);
      sub_197A87448();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v28 = *(TupleTypeMetadata3 + 48);
      v29 = v1;
      v30 = *(v22 + v28);
      v31 = *(TupleTypeMetadata3 + 64);
      v32 = v3;
      v33 = *(v22 + v31);
      OUTLINED_FUNCTION_36_0();
      v34 = OUTLINED_FUNCTION_22();
      v35(v34);
      *(v9 + v28) = v30;
      v1 = v29;
      *(v9 + v31) = v33;
      v3 = v32;
    }

    else
    {
      OUTLINED_FUNCTION_64_0(v22, 1, v10);
      if (v38)
      {
        OUTLINED_FUNCTION_41();
      }

      else
      {
        v48 = v3;
        v49 = v1;
        v47 = *(v12 + 32);
        v47(v18, v22, v10);
        (*(v12 + 16))(v16, v18, v10);
        v42 = *(v5 + 32);
        v43 = sub_197A88208();
        if (v43)
        {
          v44 = v43;
          (*(v12 + 8))(v16, v10);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_88(v10, v42);
          v47(v45, v16, v10);
        }

        v1 = v49;
        v51(v44);

        (*(v12 + 8))(v18, v10);
        v39 = OUTLINED_FUNCTION_58_8();
        v3 = v48;
      }

      __swift_storeEnumTagSinglePayload(v39, v40, v41, v3);
      v26 = *(v5 + 16);
    }
  }

  else
  {
    v26 = *(v5 + 16);
    OUTLINED_FUNCTION_36_0();
    v36 = OUTLINED_FUNCTION_22();
    v37(v36);
  }

  type metadata accessor for GreedyBufferResult(0, v26, v3, v1);
  OUTLINED_FUNCTION_46_5();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
}

void static GreedyBufferResult<>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v95 = v2;
  v4 = v3;
  v6 = v5;
  v101 = v7;
  v102 = v8;
  OUTLINED_FUNCTION_34_0();
  v87[1] = v9;
  v88 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_0();
  v87[0] = v13 - v12;
  sub_197A87DB8();
  OUTLINED_FUNCTION_2();
  v96 = v14;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v90 = v16;
  v97 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v89 = v18;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30();
  v93 = v20;
  OUTLINED_FUNCTION_34_0();
  v100 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_5();
  v91 = v23;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v87 - v25;
  v103 = v6;
  v92 = v4;
  v27 = type metadata accessor for GreedyBufferResult(0, v6, v4, v1);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_27();
  v33 = v31 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v87 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = v87 - v38;
  OUTLINED_FUNCTION_43_8();
  v40 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v99 = v41;
  OUTLINED_FUNCTION_50_0();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = v87 - v44;
  v46 = v87 + *(v43 + 48) - v44;
  v98 = v29;
  v47 = *(v29 + 16);
  (v47)(v87 - v44, v101, v27);
  (v47)(v46, v102, v27);
  OUTLINED_FUNCTION_100();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_68_1();
    v47();
    if (!swift_getEnumCaseMultiPayload())
    {
      v72 = v100;
      (*(v100 + 32))(v26, v46, v103);
      OUTLINED_FUNCTION_72_6();
      sub_197A87918();
      v73 = *(v72 + 8);
      v74 = OUTLINED_FUNCTION_140();
      v73(v74);
      v75 = OUTLINED_FUNCTION_83_5();
      v73(v75);
      v76 = OUTLINED_FUNCTION_100();
      v77(v76);
      goto LABEL_20;
    }

    (*(v100 + 8))(v39, v103);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_68_1();
    v47();
    v49 = v103;
    sub_197A87448();
    OUTLINED_FUNCTION_47_7();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v51 = *(TupleTypeMetadata3 + 48);
    v52 = *(TupleTypeMetadata3 + 64);
    v53 = v37[v52];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      LODWORD(v101) = v53;
      v102 = *&v46[v51];
      LODWORD(v99) = v46[v52];
      v54 = v100;
      (*(v100 + 32))(v91, v46, v49);
      v55 = sub_197A87918();
      v56 = *(v54 + 8);
      v57 = OUTLINED_FUNCTION_140();
      v56(v57);
      if (v55)
      {
        OUTLINED_FUNCTION_72_6();
        v58 = sub_197A87428();

        v59 = OUTLINED_FUNCTION_83_5();
        v56(v59);
        if (v58)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v78 = OUTLINED_FUNCTION_83_5();
        v56(v78);
      }

      v70 = OUTLINED_FUNCTION_100();
      goto LABEL_19;
    }

    v66 = OUTLINED_FUNCTION_140();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_68_1();
  v47();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v60 = v93;
    v61 = *(TupleTypeMetadata2 + 48);
    v63 = v96;
    v62 = v97;
    v64 = *(v96 + 32);
    v64(v93, v33, v97);
    v64(v60 + v61, v46, v62);
    v65 = v92;
    OUTLINED_FUNCTION_64_0(v60, 1, v92);
    if (v80)
    {
      OUTLINED_FUNCTION_64_0(v60 + v61, 1, v65);
      if (v80)
      {
        (*(v63 + 8))(v60, v62);
LABEL_28:
        v81 = OUTLINED_FUNCTION_100();
        v82(v81);
        goto LABEL_20;
      }
    }

    else
    {
      v79 = v90;
      (*(v63 + 16))(v90, v60, v62);
      OUTLINED_FUNCTION_64_0(v60 + v61, 1, v65);
      if (!v80)
      {
        v83 = v60;
        v84 = v88;
        v85 = v87[0];
        (*(v88 + 32))(v87[0], v83 + v61, v65);
        LODWORD(v103) = sub_197A87918();
        v86 = *(v84 + 8);
        v86(v85, v65);
        v86(v79, v65);
        (*(v63 + 8))(v93, v62);
        goto LABEL_28;
      }

      (*(v88 + 8))(v79, v65);
    }

    (*(v89 + 8))(v60, TupleTypeMetadata2);
    goto LABEL_28;
  }

  v67 = v97;
  v68 = *(v96 + 8);
  v66 = v33;
LABEL_17:
  v68(v66, v67);
LABEL_18:
  v69 = *(v99 + 8);
  v70 = v45;
  v71 = v40;
LABEL_19:
  v69(v70, v71);
LABEL_20:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197A2E618(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_79(0x73746E656D656C65, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E696D726574 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_79(0x6C616E696D726574, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_79(0x726F727265, 0xE500000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_197A2E708(char a1)
{
  if (!a1)
  {
    return 0x73746E656D656C65;
  }

  if (a1 == 1)
  {
    return 0x6C616E696D726574;
  }

  return 0x726F727265;
}

uint64_t sub_197A2E7C0(uint64_t a1)
{
  sub_197A882F8();
  sub_197984424(v3, *v1);
  return sub_197A88358();
}

uint64_t sub_197A2E808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_197A2E618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_197A2E844(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a1W0, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_197A2E898(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(a1W0, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GreedyBufferResult<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v82 = a5;
  v11 = *(a2 + 24);
  OUTLINED_FUNCTION_34_0();
  v73 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_34(v15 - v14);
  v17 = *(v16 + 16);
  OUTLINED_FUNCTION_53_9();
  sub_197A87DB8();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v84 = v19;
  OUTLINED_FUNCTION_34_0();
  v76 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_5();
  v83 = v22;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v23);
  v85 = v72 - v24;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v26);
  OUTLINED_FUNCTION_34_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_0();
  v32 = v31 - v30;
  v33 = *(a2 + 32);
  v75 = v17;
  v89[0] = v17;
  v89[1] = v11;
  v78 = v11;
  v89[2] = a3;
  v90 = a4;
  v94 = a4;
  v91 = v82;
  v92 = a6;
  v72[1] = a6;
  v93 = v33;
  v34 = _s10CodingKeysOMa(255, v89);
  v35 = OUTLINED_FUNCTION_24_10();
  swift_getWitnessTable(v35, v34);
  OUTLINED_FUNCTION_43_8();
  v79 = sub_197A88138();
  OUTLINED_FUNCTION_2();
  v77 = v36;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v72 - v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v82 = v39;
  sub_197A883D8();
  (*(v28 + 16))(v32, v81, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v76 + 32))(v74, v32, v75);
    LOBYTE(v86) = 0;
    v51 = v79;
    v52 = v82;
    sub_197A88048();
    __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    OUTLINED_FUNCTION_70_6();
    sub_197A881E8();
    v53 = OUTLINED_FUNCTION_70_6();
    v54(v53);
    OUTLINED_FUNCTION_67_9();
    v49 = v52;
    v50 = v51;
LABEL_6:
    v48(v49, v50);
    return __swift_destroy_boxed_opaque_existential_1Tm(v89);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v41 = v75;
    sub_197A87448();
    OUTLINED_FUNCTION_53_9();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v74 = *(v32 + *(TupleTypeMetadata3 + 48));
    LODWORD(v73) = *(v32 + *(TupleTypeMetadata3 + 64));
    v43 = v76 + 32;
    v81 = *(v76 + 32);
    v81(v85, v32, v41);
    LOBYTE(v86) = 0;
    v44 = v79;
    sub_197A88048();
    __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    OUTLINED_FUNCTION_70_6();
    v45 = v80;
    sub_197A881E8();
    if (v45)
    {

      v46 = OUTLINED_FUNCTION_70_6();
      v47(v46);
      OUTLINED_FUNCTION_67_9();
      v49 = v82;
      v50 = v44;
    }

    else
    {
      v78 = v43;
      OUTLINED_FUNCTION_50_8();
      v86 = sub_197A873B8();
      v87 = v63;
      v88 = v64;
      OUTLINED_FUNCTION_53_9();
      v80 = sub_197A87408();
      while (1)
      {
        v65 = v84;
        sub_197A873F8();
        if (__swift_getEnumTagSinglePayload(v65, 1, v41) == 1)
        {
          break;
        }

        v81(v83, v65, v41);
        __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
        OUTLINED_FUNCTION_50_8();
        sub_197A881E8();
        v66 = OUTLINED_FUNCTION_50_8();
        v67(v66);
      }

      LOBYTE(v86) = 1;
      v68 = v79;
      v69 = v82;
      sub_197A880C8();

      v70 = OUTLINED_FUNCTION_70_6();
      v71(v70);
      OUTLINED_FUNCTION_67_9();
      v49 = v69;
      v50 = v68;
    }

    goto LABEL_6;
  }

  v56 = v78;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v78);
  v58 = v79;
  if (EnumTagSinglePayload == 1)
  {
    LOBYTE(v89[0]) = 1;
    v59 = v82;
    sub_197A880C8();
  }

  else
  {
    v60 = v73;
    v61 = v72[0];
    (*(v73 + 32))(v72[0], v32, v56);
    LOBYTE(v89[0]) = 2;
    v59 = v82;
    sub_197A880E8();
    (*(v60 + 8))(v61, v56);
  }

  OUTLINED_FUNCTION_67_9();
  return v62(v59, v58);
}

uint64_t GreedyBufferResult<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v89 = a1;
  v80 = a9;
  OUTLINED_FUNCTION_34_0();
  v74 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_5();
  v73 = v18;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v20);
  v82 = sub_197A87DB8();
  OUTLINED_FUNCTION_2();
  v81 = v21;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30();
  v87 = v23;
  OUTLINED_FUNCTION_34_0();
  v78 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_34(v27 - v26);
  v91[0] = a2;
  v91[1] = a3;
  v75 = a4;
  v91[2] = a4;
  v92 = a5;
  v84 = a6;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v28 = _s10CodingKeysOMa(255, v91);
  v29 = OUTLINED_FUNCTION_24_10();
  swift_getWitnessTable(v29, v28);
  OUTLINED_FUNCTION_53_9();
  sub_197A88038();
  OUTLINED_FUNCTION_2();
  v85 = v31;
  v86 = v30;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v72 - v33;
  v76 = a2;
  v83 = a3;
  v35 = type metadata accessor for GreedyBufferResult(0, a2, a3, a8);
  OUTLINED_FUNCTION_2();
  v79 = v36;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v72 - v38;
  v40 = v89;
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  v41 = v88;
  sub_197A883A8();
  if (v41)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  v42 = v81;
  v43 = v82;
  v88 = v39;
  v72[1] = v35;
  LOBYTE(v91[0]) = 2;
  v44 = v83;
  sub_197A87F88();
  if (__swift_getEnumTagSinglePayload(v87, 1, v44) != 1)
  {
    v45 = OUTLINED_FUNCTION_59_7();
    v46(v45);
    v54 = *(v78 + 32);
    (v54)(v77, v87, v44);
    v47 = v88;
    v48 = OUTLINED_FUNCTION_50_8();
    (v54)(v48);
    OUTLINED_FUNCTION_34_6();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    OUTLINED_FUNCTION_11_7();
    swift_storeEnumTagMultiPayload();
LABEL_5:
    v40 = v89;
    (*(v79 + 32))(v80, v47, v54);
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  (*(v42 + 8))(v87, v43);
  LOBYTE(v91[0]) = 1;
  LODWORD(v87) = sub_197A87F58();
  v96 = 0;
  sub_197A87F18();
  v84 = v34;
  sub_197945EF8(&v90, v91);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  sub_197A881B8();
  v47 = v87;
  if (v87 == 2)
  {
    v55 = OUTLINED_FUNCTION_65_6();
    v56(v55);
    v57 = OUTLINED_FUNCTION_68_6();
    v58(v57);
    OUTLINED_FUNCTION_11_7();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v91, v92);
  v59 = sub_197A88198();
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v59;
  }

  result = sub_197A87438();
  *&v90 = result;
  v62 = v61 - 1;
  if (v61 >= 1)
  {
    v63 = (v74 + 8);
    if (v61 != 1)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
        v64 = v73;
        v65 = v76;
        sub_197A881B8();
        sub_197A87448();
        sub_197A873D8();
        (*v63)(v64, v65);
        --v62;
      }

      while (v62);
    }

    v66 = OUTLINED_FUNCTION_65_6();
    v67(v66);
    sub_197A87448();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v69 = *(TupleTypeMetadata3 + 48);
    v54 = *(TupleTypeMetadata3 + 64);
    v70 = OUTLINED_FUNCTION_68_6();
    v71(v70);
    *(v47 + v69) = v90;
    *(v47 + v54) = v47 & 1;
    OUTLINED_FUNCTION_11_7();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_197A2F7EC(uint64_t a1)
{
  v1 = 0x74616E696D726554;
  if (a1 != 1)
  {
    v1 = 0x6E69726566667542;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6666756220746F4ELL;
  }
}

uint64_t sub_197A2F858(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return MEMORY[0x1EEE6DA00]();
}

uint64_t sub_197A2F8C0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_197A2FA04(v2);
}

uint64_t sub_197A2F980@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 120);
  v5 = OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_95(v5, v6);
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_36_0();
  return (*(v7 + 16))(a1, v1 + v4);
}

uint64_t sub_197A2FA04(uint64_t a1)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_86_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_36_0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_197A2FA98())(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_48_7();
  return j_j__swift_endAccess;
}

unint64_t sub_197A2FAEC()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v0 + *(v1 + 128));
  sub_197A3466C(v2);
  return v2;
}

unint64_t sub_197A2FB28()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 128);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
  return sub_197A33628(v3);
}

uint64_t sub_197A2FB58@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 144);
  v5 = OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_95(v5, v6);
  OUTLINED_FUNCTION_42_6();
  v8 = *(v7 + 80);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult(255, v8, v9, MEMORY[0x1E69E7288]);
  sub_197A87DB8();
  OUTLINED_FUNCTION_36_0();
  return (*(v10 + 16))(a1, v1 + v4);
}

uint64_t sub_197A2FC18(uint64_t a1)
{
  OUTLINED_FUNCTION_37_8();
  v4 = *(v3 + 144);
  OUTLINED_FUNCTION_86_4();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_6();
  v6 = *(v5 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult(255, v6, v7, MEMORY[0x1E69E7288]);
  sub_197A87DB8();
  OUTLINED_FUNCTION_36_0();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_197A2FCE8())(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_48_7();
  return j_j__swift_endAccess;
}

uint64_t sub_197A2FD3C@<X0>(void *a1@<X8>)
{
  result = sub_197A3000C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = &unk_197A97A00;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_197A2FDAC(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_197960E38;

  return v5();
}

uint64_t sub_197A2FE94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_197A979F0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_197948F1C(v1, v2);
  return sub_197A30060(v4, v3);
}

uint64_t sub_197A2FF24(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_197960FB0;

  return v4();
}

uint64_t sub_197A3000C()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_95(v0 + *(v1 + 152), v5);
  v2 = OUTLINED_FUNCTION_63();
  sub_197948F1C(v2, v3);
  return OUTLINED_FUNCTION_63();
}

uint64_t sub_197A30060(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_2();
  v6 = (v2 + *(v5 + 152));
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_197956214(v7, v8);
}

uint64_t (*sub_197A300C8())(uint64_t a1)
{
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_48_7();
  return j__swift_endAccess;
}

uint64_t GreedyBufferingAsyncSequence.invalidator.getter()
{
  OUTLINED_FUNCTION_7_2();
  v0 = OUTLINED_FUNCTION_22();
  sub_197948F1C(v0, v1);
  return OUTLINED_FUNCTION_22();
}

uint64_t GreedyBufferingAsyncSequence.__allocating_init(backing:fillBuffer:onTermination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  GreedyBufferingAsyncSequence.init(backing:fillBuffer:onTermination:)(a1, a2, a3, a4, a5);
  return v10;
}

char *GreedyBufferingAsyncSequence.init(backing:fillBuffer:onTermination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_26_6();
  *&v6[*(v13 + 128)] = 0;
  OUTLINED_FUNCTION_26_6();
  v15 = *(v14 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  v16 = swift_allocObject();
  *(v16 + 20) = 0;
  *&v6[v15] = v16;
  *(v16 + 16) = 0;
  OUTLINED_FUNCTION_26_6();
  v17 = v12[10];
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult(0, v17, v18, MEMORY[0x1E69E7288]);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  OUTLINED_FUNCTION_26_6();
  v24 = &v6[*(v23 + 152)];
  *v24 = 0;
  *(v24 + 1) = 0;
  OUTLINED_FUNCTION_26_6();
  v26 = v12[11];
  v27 = *(v26 - 8);
  (*(v27 + 16))(&v6[*(v25 + 120)], a1, v26);
  *(v6 + 14) = a2;
  *(v6 + 15) = a3;
  swift_beginAccess();
  *v24 = a4;
  *(v24 + 1) = a5;
  v28 = (*(v12[12] + 8))(v26);
  v30 = v29;
  (*(v27 + 8))(a1, v26);
  OUTLINED_FUNCTION_26_6();
  v32 = &v6[*(v31 + 160)];
  *v32 = v28;
  v32[1] = v30;
  return v6;
}

uint64_t GreedyBufferingAsyncSequence.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_14_7();
  v3 = v2;
  v5 = (v0 + *(v4 + 160));
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];

    v6(v8);
    sub_197956214(v6, v7);
  }

  OUTLINED_FUNCTION_26_6();
  (*(*(*(v3 + 88) - 8) + 8))(v1 + *(v9 + 120));
  OUTLINED_FUNCTION_26_6();
  sub_197A33628(*(v1 + *(v10 + 128)));
  OUTLINED_FUNCTION_26_6();

  OUTLINED_FUNCTION_26_6();
  v12 = *(v11 + 144);
  v13 = *(v3 + 80);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  type metadata accessor for GreedyBufferResult(255, v13, v14, MEMORY[0x1E69E7288]);
  sub_197A87DB8();
  OUTLINED_FUNCTION_36_0();
  (*(v15 + 8))(v1 + v12);
  OUTLINED_FUNCTION_26_6();
  sub_197956214(*(v1 + *(v16 + 152)), *(v1 + *(v16 + 152) + 8));
  sub_197956214(*v5, v5[1]);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t GreedyBufferingAsyncSequence.__deallocating_deinit()
{
  GreedyBufferingAsyncSequence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_197A305EC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  sub_197A2FB28();
  OUTLINED_FUNCTION_7_2();
  v3 = *(v1 + *(v2 + 160));
  if (v3)
  {
    v3();
  }

  v4 = sub_197A3000C();
  v0[3] = v4;
  if (v4)
  {
    v6 = v4;
    v0[4] = v5;
    sub_197A30060(0, 0);
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_197A30768;

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v9();
  }
}

uint64_t sub_197A30768()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A30860()
{
  OUTLINED_FUNCTION_9();
  sub_197956214(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_197A308B8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_34_0();
  v76 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_5();
  v75 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33_4();
  v77 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v10 = type metadata accessor for GreedyBufferResult(255, v3, v9, MEMORY[0x1E69E7288]);
  OUTLINED_FUNCTION_43_8();
  v11 = sub_197A87DB8();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_5();
  v74 = v15;
  OUTLINED_FUNCTION_134();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v66 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - v20;
  sub_197A2FB58(&v66 - v20);
  if (__swift_getEnumTagSinglePayload(v21, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  v73 = a1;
  OUTLINED_FUNCTION_72_6();
  v26();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = v19;
    v44 = v3;
    v45 = *(v76 + 32);
    v45(v77, v43, v3);
    v46 = v74;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v10);
    sub_197A2FC18(v46);
    v45(v73, v77, v44);
    v22 = OUTLINED_FUNCTION_58_8();
    v25 = v44;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v72 = v13;
    v69 = v11;
    v28 = sub_197A87448();
    OUTLINED_FUNCTION_53_9();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v30 = *(v19 + *(TupleTypeMetadata3 + 48));
    v67 = TupleTypeMetadata3;
    v70 = *(v19 + *(TupleTypeMetadata3 + 64));
    v71 = *(v76 + 32);
    v71(v75, v19, v3);
    v80 = v30;
    v31 = v74;
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v10);

    sub_197A2FC18(v31);
    v79 = v30;
    v35 = OUTLINED_FUNCTION_27_10();
    swift_getWitnessTable(v35, v28);
    v68 = v28;
    v36 = sub_197A87D28();

    if (v36)
    {
      if (v70)
      {
        *v31 = 0;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_34_6();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
        sub_197A2FC18(v31);
      }

      v41 = v73;
      v42 = v75;
    }

    else
    {
      v56 = v77;
      sub_197A873A8();
      v57 = *(v67 + 48);
      v58 = v76;
      v68 = *(v67 + 64);
      (*(v76 + 16))(v31, v56, v3);
      *(v31 + v57) = v80;
      *(v31 + v68) = v70;
      OUTLINED_FUNCTION_74_7();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_34_6();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);

      sub_197A2FC18(v31);
      (*(v58 + 8))(v77, v3);
      v41 = v73;
      v42 = v75;
    }

    v71(v41, v42, v3);
    v63 = OUTLINED_FUNCTION_58_8();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v3);
    goto LABEL_11;
  }

  v53 = *v19;
  if (!*v19)
  {
LABEL_2:
    OUTLINED_FUNCTION_41();
    v25 = v3;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
LABEL_11:
    v50 = OUTLINED_FUNCTION_140();
    return v51(v50);
  }

  swift_willThrow();
  v54 = OUTLINED_FUNCTION_140();
  result = v55(v54);
  v78 = v53;
  return result;
}

uint64_t sub_197A30D90()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  OUTLINED_FUNCTION_7_2();
  v4 = *(v3 + 80);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v1[8] = type metadata accessor for GreedyBufferResult(255, v4, v5, MEMORY[0x1E69E7288]);
  v6 = sub_197A87DB8();
  v1[9] = v6;
  OUTLINED_FUNCTION_10(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197A30E8C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  sub_197A2FB58(v1);
  v5 = OUTLINED_FUNCTION_40_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v4);
  (*(v3 + 8))(v1, v2);
  if (EnumTagSinglePayload == 1)
  {
    v8 = v0[11];
    OUTLINED_FUNCTION_36_0();
    (*(v9 + 16))(v8);
    OUTLINED_FUNCTION_34_6();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    sub_197A2FC18(v8);
  }

  else
  {
    v14 = v0[8];
    v15 = sub_197A2FCE8();
    if (!__swift_getEnumTagSinglePayload(v16, 1, v14))
    {
      GreedyBufferResult.concat(_:)();
    }

    (v15)(v0 + 2, 0);
  }

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t sub_197A30FDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197A30FF8, v1);
}

uint64_t sub_197A30FF8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0[3] + *(*v0[3] + 136));
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    sub_197A87F08();
  }

  v7 = (*(v0[3] + 112) + **(v0[3] + 112));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_19796D708;
  v4 = v0[2];
  v5 = v0[3];

  return v7(v4, v5);
}

uint64_t sub_197A31164@<X0>(BOOL *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A50, &qword_197A979E0);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  v5 = OUTLINED_FUNCTION_83_5();
  sub_1979D9354(v5, v6);
  v7 = sub_197A87CE8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_19795B378(v4, &qword_1EAF49A50, &qword_197A979E0);
  }

  else
  {
    sub_197A87CD8();
    OUTLINED_FUNCTION_36_0();
    result = (*(v10 + 8))(v4, v7);
  }

  *a1 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_197A31274(char a1)
{
  OUTLINED_FUNCTION_7_2();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  result = sub_197A2FAEC();
  if (!result || result != 1 && (result = sub_197A33628(result), (a1 & 1) != 0))
  {
    sub_197A87C08();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = *(v3 + 80);
    *(v11 + 48) = *(v3 + 96);
    *(v11 + 56) = v10;
    sub_19795CB2C();

    sub_197A2FB28();
  }

  return result;
}

uint64_t sub_197A313DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v8 = type metadata accessor for GreedyBufferResult(0, a5, v7, MEMORY[0x1E69E7288]);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197A314C4, 0, 0);
}

uint64_t sub_197A314C4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_95(v0[14] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_197A315AC;
    v3 = v0[17];

    return sub_197A30FDC(v3);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v5();
  }
}

uint64_t sub_197A315AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A31690()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[14];

  OUTLINED_FUNCTION_95(v1 + 16, (v0 + 5));
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_197A3184C;

    return sub_197A30D90();
  }

  v5 = GreedyBufferResult.isTerminal.getter(v0[15]);
  v6 = v0[14];
  if (v5)
  {
    OUTLINED_FUNCTION_95(v6 + 16, (v0 + 11));
    v7 = swift_weakLoadStrong();
    v0[22] = v7;
    if (v7)
    {
      v8 = swift_task_alloc();
      v0[23] = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_17_8(v8);

      return sub_197A305D0();
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_95(v6 + 16, (v0 + 8));
  v9 = swift_weakLoadStrong();
  v0[24] = v9;
  if (!v9)
  {
LABEL_14:
    v13 = OUTLINED_FUNCTION_64_7();
    v14(v13);

    OUTLINED_FUNCTION_13();

    return v15();
  }

  v10 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197A3184C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A3194C()
{
  OUTLINED_FUNCTION_9();
  v1 = GreedyBufferResult.isTerminal.getter(v0[15]);
  v2 = v0[14];
  if (v1)
  {
    OUTLINED_FUNCTION_95(v2 + 16, (v0 + 11));
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      v0[23] = v4;
      *v4 = v0;
      OUTLINED_FUNCTION_17_8(v4);

      return sub_197A305D0();
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_95(v2 + 16, (v0 + 8));
  v6 = swift_weakLoadStrong();
  v0[24] = v6;
  if (!v6)
  {
LABEL_10:
    v10 = OUTLINED_FUNCTION_64_7();
    v11(v10);

    OUTLINED_FUNCTION_13();

    return v12();
  }

  v7 = OUTLINED_FUNCTION_19_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197A31A70()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A31B70()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_64_7();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_197A31BD8()
{
  OUTLINED_FUNCTION_9();
  sub_197A31274(1);

  v0 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

unint64_t sub_197A31C40()
{
  result = sub_197A2FAEC();
  if (result <= 1)
  {
    sub_197A33628(result);
    return 0;
  }

  return result;
}

unint64_t sub_197A31C68()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v0 + *(v1 + 136));
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  result = sub_197A31C40();
  if (result)
  {
    sub_197A87C38();
  }

  return result;
}

uint64_t sub_197A31CFC()
{
  *(v1 + 24) = v0;
  OUTLINED_FUNCTION_7_2();
  *(v1 + 32) = v2;
  return OUTLINED_FUNCTION_32_0(sub_197A31D4C, v3);
}

uint64_t sub_197A31D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v49 = v17;
  if (qword_1ED880370 != -1)
  {
    OUTLINED_FUNCTION_50(&qword_1ED880370);
  }

  v18 = sub_197A87608();
  v17[5] = __swift_project_value_buffer(v18, qword_1ED880520);
  v19 = sub_197A875E8();
  v20 = sub_197A87D78();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_137(v21);
    _os_log_impl(&dword_197941000, v19, v20, "Cancelling sequence buffering and waiting for upstream sequence termination", v16, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  sub_197A31C68();
  v22 = sub_197A2FAEC();
  if (v22)
  {
    sub_197A33628(v22);
  }

  else
  {
    v23 = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)();
    sub_197A31274(v23 & 1);
  }

  v24 = sub_197A31C40();
  v17[6] = v24;
  if (!v24)
  {

    v34 = sub_197A875E8();
    v35 = sub_197A87D78();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v17[4];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      v17[2] = sub_197A2FAEC();
      v39 = type metadata accessor for GreedyBufferingAsyncSequence.State(0, v36[10], v36[11], v36[12]);
      OUTLINED_FUNCTION_28_9(v39);
      v40 = sub_197A87998();
      v42 = sub_197948834(v40, v41, &v48);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_31(&dword_197941000, v43, v44, "Sequence buffering terminated post-cancellation in state: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v25 = swift_task_alloc();
  v17[7] = v25;
  *v25 = v17;
  OUTLINED_FUNCTION_21_8(v25);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DA40](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A31FC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A320B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_0();
  v42 = v16;

  v17 = sub_197A31C40();
  v16[6] = v17;
  if (!v17)
  {

    v27 = sub_197A875E8();
    v28 = sub_197A87D78();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v16[4];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315138;
      v16[2] = sub_197A2FAEC();
      v32 = type metadata accessor for GreedyBufferingAsyncSequence.State(0, v29[10], v29[11], v29[12]);
      OUTLINED_FUNCTION_28_9(v32);
      v33 = sub_197A87998();
      v35 = sub_197948834(v33, v34, &v41);

      *(v30 + 4) = v35;
      OUTLINED_FUNCTION_31(&dword_197941000, v36, v37, "Sequence buffering terminated post-cancellation in state: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v18 = swift_task_alloc();
  v16[7] = v18;
  *v18 = v16;
  OUTLINED_FUNCTION_21_8(v18);
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DA40](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A32274()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_14_7();
  v1[4] = v3;
  v5 = *(v4 + 80);
  v1[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v1[6] = type metadata accessor for GreedyBufferResult(255, v5, v6, MEMORY[0x1E69E7288]);
  v7 = sub_197A87DB8();
  v1[7] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[8] = v8;
  v1[9] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_197A32390()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_197A2FAEC();
  if (v1)
  {
    sub_197A33628(v1);
  }

  else
  {
    v2 = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)();
    sub_197A31274(v2 & 1);
  }

  v3 = v0[4];
  v4 = sub_197A2FAEC();
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  sub_197A33628(v4);
  if (v4 == 1)
  {
    goto LABEL_11;
  }

  v7 = v0[6];
  sub_197A2FB58(v0[9]);
  v8 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v8, v9, v7);
  v10 = OUTLINED_FUNCTION_92_5();
  if (!v12)
  {
    (*(v11 + 8))(v10);
LABEL_11:
    sub_197A308B8(v0[2]);
LABEL_12:

    OUTLINED_FUNCTION_13();

    return v27();
  }

  OUTLINED_FUNCTION_85_6();
  v13();
  v14 = sub_197A31C40();
  v0[10] = v14;
  if (!v14)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50(&qword_1ED880370);
    }

    v28 = sub_197A87608();
    __swift_project_value_buffer(v28, qword_1ED880520);
    v29 = sub_197A875E8();
    v30 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v30))
    {
      v31 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v31);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v32, v33, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    type metadata accessor for ModelManagerError(0);
    sub_19795E388();
    v34 = OUTLINED_FUNCTION_46_5();
    v36 = OUTLINED_FUNCTION_88(v34, v35);
    OUTLINED_FUNCTION_95_5(v36, v37);
    swift_willThrow();
    goto LABEL_12;
  }

  v15 = OUTLINED_FUNCTION_84_5();
  v17 = type metadata accessor for GreedyBufferingAsyncSequence(v15, v16, v5, v6);
  OUTLINED_FUNCTION_32_6(v17);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_18_10(v18);
  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_76_6();

  return MEMORY[0x1EEE6DE18](v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_197A325CC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  else
  {
    v6 = *(v3 + 24);

    MEMORY[0x1EEE6DFA0](sub_197A326F4, v6, 0);
  }
}

uint64_t sub_197A326F4()
{
  OUTLINED_FUNCTION_49_0();

  v1 = v0[4];
  v2 = sub_197A2FAEC();
  v4 = *(v1 + 88);
  v3 = *(v1 + 96);
  sub_197A33628(v2);
  if (v2 == 1)
  {
    goto LABEL_8;
  }

  v5 = v0[6];
  sub_197A2FB58(v0[9]);
  v6 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v6, v7, v5);
  v8 = OUTLINED_FUNCTION_92_5();
  if (!v10)
  {
    (*(v9 + 8))(v8);
LABEL_8:
    sub_197A308B8(v0[2]);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_85_6();
  v11();
  v12 = sub_197A31C40();
  v0[10] = v12;
  if (!v12)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50(&qword_1ED880370);
    }

    v27 = sub_197A87608();
    __swift_project_value_buffer(v27, qword_1ED880520);
    v28 = sub_197A875E8();
    v29 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v29))
    {
      v30 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v30);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v31, v32, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    type metadata accessor for ModelManagerError(0);
    sub_19795E388();
    v33 = OUTLINED_FUNCTION_46_5();
    v35 = OUTLINED_FUNCTION_88(v33, v34);
    OUTLINED_FUNCTION_95_5(v35, v36);
    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_84_5();
  v15 = type metadata accessor for GreedyBufferingAsyncSequence(v13, v14, v4, v3);
  OUTLINED_FUNCTION_32_6(v15);
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_18_10(v16);
  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_76_6();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x1EEE6DE18](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_197A32908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = v16;
  v19 = v18;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_8_0(v20);
  *v21 = v27;
  v21[1] = sub_19795BD18;
  v28 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v19, v17, v28, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A329AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_19795CB2C();
}

uint64_t sub_197A32AC4()
{
  OUTLINED_FUNCTION_9();
  sub_197A31C68();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_197A32B1C()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_14_7();
  v1[4] = v3;
  v1[5] = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v5 = OUTLINED_FUNCTION_43_8();
  v1[6] = type metadata accessor for GreedyBufferResult(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2();
  v1[7] = v9;
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_43_8();
  v10 = sub_197A87DB8();
  v1[9] = v10;
  OUTLINED_FUNCTION_10(v10);
  v1[10] = v11;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_197A32C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33();
  v20 = sub_197A2FAEC();
  if (v20)
  {
    sub_197A33628(v20);
  }

  else
  {
    v21 = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)();
    sub_197A31274(v21 & 1);
  }

  v22 = sub_197A2FAEC();
  sub_197A33628(v22);
  if (v22 == 1)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_52_7();
  v23 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v23, v24, v16);
  v25 = OUTLINED_FUNCTION_91_6();
  if (!v27)
  {
    (*(v26 + 8))(v25);
LABEL_11:
    v39 = v17[12];
    OUTLINED_FUNCTION_52_7();
    v40 = OUTLINED_FUNCTION_40_6();
    if (__swift_getEnumTagSinglePayload(v40, v41, v16) != 1)
    {
      v44 = OUTLINED_FUNCTION_36_6();
      v45(v44);
      v46 = OUTLINED_FUNCTION_77_8();
      v47(v46);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v16);
      sub_197A2FC18(v18);
      (*(v19 + 8))(v39, v16);
      goto LABEL_15;
    }

    v42 = OUTLINED_FUNCTION_71_7(v17[12]);
    v43(v42);
    *v39 = 0;
    OUTLINED_FUNCTION_22();
LABEL_13:
    swift_storeEnumTagMultiPayload();
LABEL_15:

    OUTLINED_FUNCTION_13();

    return v51();
  }

  OUTLINED_FUNCTION_85_6();
  v28();
  v29 = sub_197A31C40();
  v17[14] = v29;
  if (!v29)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50(&qword_1ED880370);
    }

    v52 = sub_197A87608();
    __swift_project_value_buffer(v52, qword_1ED880520);
    v53 = sub_197A875E8();
    v54 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v54))
    {
      v55 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v55);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v56, v57, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    v58 = v17[2];

    v59 = type metadata accessor for ModelManagerError(0);
    v60 = sub_19795E388();
    v61 = OUTLINED_FUNCTION_88(v59, v60);
    OUTLINED_FUNCTION_96_4(v61, v62);
    *v58 = v18;
    OUTLINED_FUNCTION_100();
    goto LABEL_13;
  }

  v30 = swift_task_alloc();
  v17[15] = v30;
  *v30 = v17;
  OUTLINED_FUNCTION_20_10(v30);
  OUTLINED_FUNCTION_38_9();

  return MEMORY[0x1EEE6DA40](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A32F44()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_197A3303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33();

  v20 = sub_197A2FAEC();
  sub_197A33628(v20);
  if (v20 == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_52_7();
  v21 = OUTLINED_FUNCTION_40_6();
  __swift_getEnumTagSinglePayload(v21, v22, v16);
  v23 = OUTLINED_FUNCTION_91_6();
  if (!v25)
  {
    (*(v24 + 8))(v23);
LABEL_8:
    v37 = v17[12];
    OUTLINED_FUNCTION_52_7();
    v38 = OUTLINED_FUNCTION_40_6();
    if (__swift_getEnumTagSinglePayload(v38, v39, v16) != 1)
    {
      v42 = OUTLINED_FUNCTION_36_6();
      v43(v42);
      v44 = OUTLINED_FUNCTION_77_8();
      v45(v44);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v16);
      sub_197A2FC18(v18);
      (*(v19 + 8))(v37, v16);
      goto LABEL_12;
    }

    v40 = OUTLINED_FUNCTION_71_7(v17[12]);
    v41(v40);
    *v37 = 0;
    OUTLINED_FUNCTION_22();
LABEL_10:
    swift_storeEnumTagMultiPayload();
LABEL_12:

    OUTLINED_FUNCTION_13();

    return v49();
  }

  OUTLINED_FUNCTION_85_6();
  v26();
  v27 = sub_197A31C40();
  v17[14] = v27;
  if (!v27)
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50(&qword_1ED880370);
    }

    v50 = sub_197A87608();
    __swift_project_value_buffer(v50, qword_1ED880520);
    v51 = sub_197A875E8();
    v52 = sub_197A87D68();
    if (OUTLINED_FUNCTION_65(v52))
    {
      v53 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_137(v53);
      OUTLINED_FUNCTION_31_8(&dword_197941000, v54, v55, "GreedyBufferAyncSequence tried to buffer with no buffering task");
      OUTLINED_FUNCTION_42_0();
    }

    v56 = v17[2];

    v57 = type metadata accessor for ModelManagerError(0);
    v58 = sub_19795E388();
    v59 = OUTLINED_FUNCTION_88(v57, v58);
    OUTLINED_FUNCTION_96_4(v59, v60);
    *v56 = v18;
    OUTLINED_FUNCTION_100();
    goto LABEL_10;
  }

  v28 = swift_task_alloc();
  v17[15] = v28;
  *v28 = v17;
  OUTLINED_FUNCTION_20_10(v28);
  OUTLINED_FUNCTION_38_9();

  return MEMORY[0x1EEE6DA40](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_197A332F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return sub_197A32274();
}

uint64_t sub_197A3338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  v13 = type metadata accessor for GreedyBufferingAsyncSequence(0, a5[10], a5[11], a5[12]);
  *v12 = v6;
  v12[1] = sub_19799C7FC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, v13, a6, v6 + 16);
}

uint64_t sub_197A3347C(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A350, &qword_197A97A18);
  }

  else
  {

    return sub_197A88158();
  }
}

uint64_t sub_197A334F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 16) & ~*(*(v14 - 8) + 80)), v13);
  if (v9)
  {
    return (*(v11 + 32))(a9, v13, a6);
  }

  return result;
}

unint64_t sub_197A33628(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_197A33638()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_8_1(v6);

  return sub_197A313DC(v8, v2, v3, v4, v1);
}

uint64_t sub_197A3374C(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for GreedyBufferingAsyncSequence<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A33788(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for GreedyBufferingAsyncSequence<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197A337F4(uint64_t a1)
{
  TupleTypeMetadata3 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_197A87448();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v3 <= 0x3F)
    {
      TupleTypeMetadata3 = sub_197A87DB8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return TupleTypeMetadata3;
}

uint64_t sub_197A338BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > v3)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  }

  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!v5)
  {
    ++v6;
  }

  if (v6 > v3)
  {
    v3 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v7 = v3 + 1;
  v8 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v3);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 254;
}

void sub_197A33A38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v6 <= v5)
  {
    v6 = *(*(*(a4 + 16) - 8) + 64);
  }

  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v8;
  }

  if (v8 <= v6)
  {
    v8 = v6;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 253) >> v10) + 1;
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

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_197A33C54(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 80);
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
    type metadata accessor for GreedyBufferResult(255, v4, v5, MEMORY[0x1E69E7288]);
    result = sub_197A87DB8();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of GreedyBufferingAsyncSequence.cancelBufferingAndWait()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v4 = (*(v1 + 344) + **(v1 + 344));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_197960FB0;

  return v4();
}

uint64_t dispatch thunk of GreedyBufferingAsyncSequence.next()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v6 = (*(v0 + 360) + **(v0 + 360));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GreedyBufferingAsyncSequence.nextBufferResult()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v6 = (*(v0 + 368) + **(v0 + 368));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_1(v2);

  return v6(v4);
}

uint64_t sub_197A34250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20ModelManagerServices28GreedyBufferingAsyncSequenceC5StateOyxq__G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_197A342A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197A342F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_197A3435C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_197A3447C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;
  v2 = OUTLINED_FUNCTION_22();

  return v3(v2);
}

uint64_t sub_197A34520()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;

  return sub_197A2FDAC(v2, v3);
}

uint64_t sub_197A345CC()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_1(v5);

  return sub_197A32AA4(v7, v1, v2, v3);
}

unint64_t sub_197A3466C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_197A346E0(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4)
{
  v4 = HIDWORD(a1) < HIDWORD(a3);
  if (HIDWORD(a1) == HIDWORD(a3))
  {
    v4 = a2 < a4;
  }

  if (a1 != a3)
  {
    v4 = a1 < a3;
  }

  return !v4;
}

double RemoteInterfaceInformation.version.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = v2;
  return result;
}

uint64_t RemoteInterfaceInformation.uuid.getter()
{
  v1 = *(v0 + 16);
  sub_197A878A8();
  return v1;
}

double RemoteInterfaceInformation.init(source:uuid:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (qword_1EAF485D8 != -1)
  {
    swift_once();
  }

  v8 = dword_1EAF485E8;
  result = *&qword_1EAF485E0;
  *a4 = qword_1EAF485E0;
  *(a4 + 8) = v8;
  *(a4 + 12) = v7;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

double RemoteInterfaceInformation.init(version:source:uuid:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *a2;
  result = *a1;
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 12) = v6;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void sub_197A34840()
{
  qword_1EAF4A358 = 0;
  dword_1EAF4A360 = 0;
  byte_1EAF4A364 = 3;
  qword_1EAF4A368 = 0;
  unk_1EAF4A370 = 0xE000000000000000;
}

uint64_t static RemoteInterfaceInformation.unknownInterface.getter()
{
  if (qword_1EAF48940 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_14(&qword_1EAF4A358);

  return sub_197A878A8();
}

double sub_197A348D0()
{
  if (qword_1EAF485D8 != -1)
  {
    swift_once();
  }

  result = *&qword_1EAF485E0;
  qword_1EAF4A378 = qword_1EAF485E0;
  dword_1EAF4A380 = dword_1EAF485E8;
  byte_1EAF4A384 = 3;
  qword_1EAF4A388 = 0;
  unk_1EAF4A390 = 0xE000000000000000;
  return result;
}

uint64_t static RemoteInterfaceInformation.currentInterface.getter()
{
  if (qword_1EAF48948 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_14(&qword_1EAF4A378);

  return sub_197A878A8();
}

ModelManagerServices::RemoteInterfaceInformation::RemoteSource_optional __swiftcall RemoteInterfaceInformation.RemoteSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RemoteInterfaceInformation.RemoteSource.rawValue.getter()
{
  result = 7170419;
  switch(*v0)
  {
    case 1:
      result = 28022;
      break;
    case 2:
      result = 0x6C61636973796870;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}