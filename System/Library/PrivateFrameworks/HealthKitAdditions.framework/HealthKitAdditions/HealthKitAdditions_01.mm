void sub_1DF6B5E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6BCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DF6B5E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6DFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF6B5ECC()
{
  result = qword_1ECE4D878;
  if (!qword_1ECE4D878)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECE4D878);
  }

  return result;
}

uint64_t HKHealthStore.makeSamplePublisher(queryDescriptors:limit:sortDescriptors:debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v6;

  v7 = v6;
}

uint64_t HKHealthStore.SamplePublisher.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
}

void sub_1DF6B5FFC(int a1, void *a2, id a3, void (*a4)(id *))
{
  if (a2)
  {
    v6 = a2;
    v7 = 1;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v6 = a3;
    v7 = 2;
    v5 = a3;
  }

  a4(&v6);
  sub_1DF6B6574(v6, v7);
}

uint64_t sub_1DF6B6074@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
}

uint64_t sub_1DF6B60DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6B6500();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6B6140(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03568, 0x1E696C3A8);
    v5 = sub_1DF6F65AC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE15SamplePublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0mG6ResultOySaySo8HKSampleCGGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a1[4];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);

  v9 = sub_1DF6F659C();
  sub_1DF69EF80(0, qword_1EDC046D8, 0x1E696AEB0);
  v10 = sub_1DF6F659C();
  v16[4] = sub_1DF6B6554;
  v16[5] = v7;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DF6B6140;
  v16[3] = &block_descriptor_3;
  v11 = _Block_copy(v16);
  v12 = [v8 initWithQueryDescriptors:v9 limit:v5 sortDescriptors:v10 resultsHandler:v11];

  _Block_release(v11);

  v13 = v12;
  if (v6)
  {
    v14 = sub_1DF6F63BC();
  }

  else
  {
    v14 = 0;
  }

  [v12 setDebugIdentifier_];

  return v12;
}

unint64_t sub_1DF6B63BC(uint64_t a1)
{
  result = sub_1DF6B63E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6B63E4()
{
  result = qword_1EDC03EA8;
  if (!qword_1EDC03EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EA8);
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

uint64_t sub_1DF6B644C(uint64_t *a1, int a2)
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

uint64_t sub_1DF6B6494(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF6B6500()
{
  result = qword_1EDC03EA0;
  if (!qword_1EDC03EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EA0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6B6574(void *a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_1DF6B65A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Descriptor = type metadata accessor for HKSampleCountQueryDescriptor(0, *(a3 + a4 - 8), a3, a4);

  return HKSampleCountQueryDescriptor.samplePredicates.setter(v5, Descriptor);
}

uint64_t HKSampleCountQueryDescriptor.samplePredicates.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;

  return sub_1DF6B663C(a2);
}

uint64_t sub_1DF6B663C(uint64_t result)
{
  if (*v1 == 1)
  {
    sub_1DF6F616C();
    sub_1DF6F663C();
    swift_getWitnessTable();
    v2 = sub_1DF6F67FC();
    if (v2)
    {
      return v2;
    }

    __break(1u);
  }

  sub_1DF6F616C();
  sub_1DF6F663C();
  swift_getWitnessTable();
  v2 = sub_1DF6F67FC();
  if (v2)
  {
    __break(1u);
  }

  return v2;
}

uint64_t *(*HKSampleCountQueryDescriptor.samplePredicates.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_1DF6B673C;
}

uint64_t *sub_1DF6B673C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1DF6B663C(*result);
  }

  return result;
}

uint64_t HKSampleCountQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1DF6F613C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HKSampleCountQueryDescriptor.queryAttributes.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1DF6F613C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t HKSampleCountQueryDescriptor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for HKSampleCountQueryDescriptor(0, a2, a4, a5);
  result = sub_1DF6F610C();
  *a3 = 0;
  *(a3 + 8) = a1;
  return result;
}

uint64_t HKSampleCountQueryDescriptor.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for HKSampleCountQueryDescriptor(0, a1, a2, a3);
  sub_1DF6F610C();
  *a4 = 1;
  sub_1DF6F616C();
  result = sub_1DF6F628C();
  *(a4 + 8) = result;
  return result;
}

uint64_t HKSampleCountQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6B6960, 0, 0);
}

uint64_t sub_1DF6B6960()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DF6B6A14;
  v4 = swift_continuation_init();
  sub_1DF6B6B54(v4, v1, v3, *(v2 + 16));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6B6A14()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 80);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

void sub_1DF6B6B54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  aBlock = v7;
  sub_1DF6F616C();
  v8 = sub_1DF6F663C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1DF6F67FC();
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a1;
    v12 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
    v36 = sub_1DF6B7C60;
    v37 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1DF6E335C;
    v35 = &block_descriptor_9;
    v13 = _Block_copy(&aBlock);
    v14 = a3;
    v15 = [v12 initWithResultsHandler_];
    v16 = v13;
  }

  else
  {
    aBlock = v7;
    MEMORY[0x1EEE9AC00](v10);
    v30[2] = a4;
    v31 = a4;
    v17 = sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);

    v19 = sub_1DF6DE70C(sub_1DF6B78B0, v30, v8, v17, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);

    sub_1DF6E5494(v19);

    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a1;
    v21 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
    sub_1DF69FA98(&qword_1ECE4D900, &qword_1EDC03658, 0x1E696C388);
    v22 = a3;
    a4 = v31;
    v23 = sub_1DF6F671C();

    v36 = sub_1DF6B7C40;
    v37 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1DF6B78D0;
    v35 = &block_descriptor_4;
    v24 = _Block_copy(&aBlock);
    v15 = [v21 initWithQueryDescriptors:v23 resultsHandler:v24];

    v16 = v24;
  }

  _Block_release(v16);

  type metadata accessor for HKSampleCountQueryDescriptor(0, a4, v25, v26);
  v27 = v15;
  sub_1DF6F611C();
  if (v28)
  {
    v29 = sub_1DF6F63BC();
  }

  else
  {
    v29 = 0;
  }

  [v27 setDebugIdentifier_];

  [v27 setQualityOfService_];
  [a3 executeQuery_];
}

void *sub_1DF6B6F0C(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      if (a2 >= 0)
      {
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v8 = a2;
      }

      v9 = sub_1DF6B79DC(v8);
LABEL_22:
      **(*(a5 + 64) + 40) = v9;

      return swift_continuation_throwingResume();
    }

    else
    {
      v29 = a5;
      sub_1DF6B7CC0(0);
      result = sub_1DF6F6D1C();
      v9 = result;
      v12 = 0;
      v13 = 1 << *(a2 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(a2 + 64);
      v16 = (v13 + 63) >> 6;
      v17 = result + 8;
      if (v15)
      {
        while (1)
        {
          v18 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
LABEL_18:
          v21 = v18 | (v12 << 6);
          v22 = *(*(a2 + 56) + 8 * v21);
          v23 = *(*(a2 + 48) + 8 * v21);
          result = [v22 integerValue];
          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          *(v9[6] + 8 * v21) = v23;
          *(v9[7] + 8 * v21) = result;
          v24 = v9[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            break;
          }

          v9[2] = v26;
          if (!v15)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v12 >= v16)
          {
            a5 = v29;
            goto LABEL_22;
          }

          v20 = *(a2 + 64 + 8 * v12);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v15 = (v20 - 1) & v20;
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF6B7C68();
      sub_1DF6F599C();
      v10 = v30;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v27 = v10;
    v28 = a3;
    return swift_continuation_throwingResumeWithError();
  }

  return result;
}

void sub_1DF6B7180(void *a2@<X8>)
{
  sub_1DF6F616C();
  v3 = sub_1DF6F615C();
  v4 = sub_1DF6F614C();
  v5 = [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v3 predicate:v4];

  *a2 = v5;
}

uint64_t sub_1DF6B720C(uint64_t a1, unint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (!a2)
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF6B7C68();
      sub_1DF6F599C();
      v12 = v51;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v43 = v12;
    v44 = a3;
    return swift_continuation_throwingResumeWithError();
  }

  v46 = a5;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_1DF6F6C9C() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(a2 + 32);
    v9 = ~v13;
    v8 = a2 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v10 = v15 & *(a2 + 64);
    v11 = a2;
  }

  v16 = 0;
  v45 = v9;
  v17 = (v9 + 64) >> 6;
  v18 = MEMORY[0x1E69E7CC8];
  v48 = v11;
  v49 = v17;
  v47 = v8;
  while ((v11 & 0x8000000000000000) != 0)
  {
    if (!sub_1DF6F6CBC() || (sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388), swift_dynamicCast(), sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98), v25 = v51, swift_dynamicCast(), v26 = v51, v21 = v16, v22 = v10, !v51))
    {
LABEL_31:
      sub_1DF6B1D20(v11);
      **(*(v46 + 64) + 40) = v18;
      return swift_continuation_throwingResume();
    }

LABEL_22:
    v50 = v22;
    v27 = [v25 sampleType];
    v28 = v26;
    v29 = [v26 integerValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v18;
    v32 = sub_1DF6C350C(v27);
    v33 = v18[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_35;
    }

    v36 = v31;
    if (v18[3] >= v35)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF6E82F4();
      }
    }

    else
    {
      sub_1DF6E3468(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_1DF6C350C(v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_37;
      }

      v32 = v37;
    }

    if (v36)
    {
      *(v18[7] + 8 * v32) = v29;
    }

    else
    {
      v18[(v32 >> 6) + 8] |= 1 << v32;
      *(v18[6] + 8 * v32) = v27;
      *(v18[7] + 8 * v32) = v29;

      v39 = v18[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_36;
      }

      v18[2] = v41;
    }

    v16 = v21;
    v17 = v49;
    v10 = v50;
    v8 = v47;
    v11 = v48;
  }

  v19 = v16;
  v20 = v10;
  v21 = v16;
  if (v10)
  {
LABEL_18:
    v22 = (v20 - 1) & v20;
    v23 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
    v24 = *(*(v11 + 56) + v23);
    v25 = *(*(v11 + 48) + v23);
    v26 = v24;
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_31;
    }

    v20 = *(v8 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  result = sub_1DF6F6E8C();
  __break(1u);
  return result;
}

uint64_t sub_1DF6B762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1DF6B76D4;

  return HKSampleCountQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_1DF6B76D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1DF6B77E4(uint64_t a1)
{
  sub_1DF6F616C();
  result = sub_1DF6F663C();
  if (v2 <= 0x3F)
  {
    result = sub_1DF6F613C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6B78D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);
    sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
    sub_1DF69FA98(&qword_1ECE4D900, &qword_1EDC03658, 0x1E696C388);
    v5 = sub_1DF6F62AC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1DF6B79DC(uint64_t a1)
{
  if (sub_1DF6F6A8C())
  {
    sub_1DF6B7CC0(0);
    v1 = sub_1DF6F6D3C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v19 = v1;
  sub_1DF6F6C9C();
  swift_unknownObjectRetain();
  v2 = sub_1DF6F6CBC();
  if (v2)
  {
    v3 = v2;
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    v4 = v3;
    do
    {
      v17 = v4;
      swift_dynamicCast();
      sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
      swift_dynamicCast();
      v11 = [v17 integerValue];

      v12 = *(v1 + 16);
      if (*(v1 + 24) <= v12)
      {
        sub_1DF6E3468(v12 + 1, 1);
      }

      v1 = v19;
      result = sub_1DF6F69CC();
      v6 = v19 + 64;
      v7 = -1 << *(v19 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
      {
        v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = 0;
        v14 = (63 - v7) >> 6;
        do
        {
          if (++v9 == v14 && (v13 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v15 = v9 == v14;
          if (v9 == v14)
          {
            v9 = 0;
          }

          v13 |= v15;
          v16 = *(v6 + 8 * v9);
        }

        while (v16 == -1);
        v10 = __clz(__rbit64(~v16)) + (v9 << 6);
      }

      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v19 + 48) + 8 * v10) = v18;
      *(*(v19 + 56) + 8 * v10) = v11;
      ++*(v19 + 16);
      v4 = sub_1DF6F6CBC();
    }

    while (v4);
  }

  return v1;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6B7C68()
{
  result = qword_1ECE4D450;
  if (!qword_1ECE4D450)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D450);
  }

  return result;
}

void sub_1DF6B7CC0(uint64_t a1)
{
  if (!qword_1EDC03540)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF69FA98(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0);
    v1 = sub_1DF6F6D4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03540);
    }
  }
}

uint64_t sub_1DF6B7D64(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = a4;
  v7 = (a3 + 56);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    v17 = *(v7 - 3);
    v18 = v9;
    v19 = v10;

    a1(&v15, &v17);
    if (v4)
    {
      break;
    }

    if ((v16 & 1) == 0)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = v20(0, *(v8 + 16) + 1, 1, v8);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v8 = v20(v12 > 1, v13 + 1, 1, v8);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
    }

    v7 += 4;
    if (!--v5)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1DF6B7EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000003ALL;
  a3[1] = 0x80000001DF6FCE20;
  a3[2] = 0xD000000000000028;
  a3[3] = 0x80000001DF6FCDF0;
  return result;
}

uint64_t sub_1DF6B7F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000002CLL;
  a3[1] = 0x80000001DF6FCDC0;
  a3[2] = 0xD00000000000002ELL;
  a3[3] = 0x80000001DF6FCD90;
  return result;
}

uint64_t sub_1DF6B8014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();

  result = MEMORY[0x1E12DB8A0](a1, a2);
  *a3 = 0xD00000000000002DLL;
  a3[1] = 0x80000001DF6FCD60;
  a3[2] = 0xD00000000000002FLL;
  a3[3] = 0x80000001DF6FCD30;
  return result;
}

void sub_1DF6B80BC()
{
  v1 = v0;
  sub_1DF6B8FA0(0, &qword_1ECE4D860, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DF6F9960;
  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  v3 = [swift_getObjCClassFromMetadata() stateOfMindType];
  v4 = [v3 identifier];

  v5 = sub_1DF6F63EC();
  v7 = v6;

  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  [v1 valence];
  *(v2 + 48) = sub_1DF6F66FC();
  *(v2 + 56) = v8;
  [v1 reflectiveInterval];
  v9 = NSStringFromHKStateOfMindReflectiveInterval();
  v10 = sub_1DF6F63EC();
  v12 = v11;

  *(v2 + 64) = v10;
  *(v2 + 72) = v12;
  v54 = v1;
  v13 = sub_1DF6F683C();
  v14 = *(v13 + 16);
  v53 = v2;
  if (v14)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1DF6C38E8(0, v14, 0);
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      v16 = NSStringFromHKStateOfMindLabel();
      v17 = sub_1DF6F63EC();
      v19 = v18;

      v21 = *(v55 + 16);
      v20 = *(v55 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DF6C38E8((v20 > 1), v21 + 1, 1);
      }

      ++v15;
      *(v55 + 16) = v21 + 1;
      v22 = v55 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      if (v14 == v15)
      {

        v2 = v53;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_9:
  sub_1DF6B8FA0(0, &qword_1ECE4D910, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DF6B8EA0();
  v23 = sub_1DF6F632C();
  v25 = v24;

  *(v2 + 80) = v23;
  *(v2 + 88) = v25;
  v26 = sub_1DF6F684C();
  v27 = *(v26 + 16);
  if (v27)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1DF6C38E8(0, v27, 0);
    v28 = 0;
    while (v28 < *(v26 + 16))
    {
      v29 = NSStringFromHKStateOfMindDomain();
      v30 = sub_1DF6F63EC();
      v32 = v31;

      v34 = *(v56 + 16);
      v33 = *(v56 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1DF6C38E8((v33 > 1), v34 + 1, 1);
      }

      ++v28;
      *(v56 + 16) = v34 + 1;
      v35 = v56 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      if (v27 == v28)
      {

        v2 = v53;
        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_17:
  v36 = sub_1DF6F632C();
  v38 = v37;

  *(v2 + 96) = v36;
  *(v2 + 104) = v38;
  v39 = [v54 context];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1DF6F63EC();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xE000000000000000;
  }

  *(v2 + 112) = v41;
  *(v2 + 120) = v43;
  *(v2 + 128) = sub_1DF6D62E0();
  *(v2 + 136) = v44;
  v45 = [v54 metadata];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1DF6F62AC();
  }

  else
  {
    v47 = 0;
  }

  v48 = sub_1DF6E5B5C(v47);
  if (v52)
  {

    *(v2 + 16) = 0;
  }

  else
  {
    v50 = v48;
    v51 = v49;

    *(v2 + 144) = v50;
    *(v2 + 152) = v51;
    sub_1DF6F632C();
  }
}

uint64_t sub_1DF6B85E4()
{
  v2 = sub_1DF6F5A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  sub_1DF6D14DC(1);
  if (v1)
  {
    return v0;
  }

  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  v9 = [swift_getObjCClassFromMetadata() stateOfMindType];
  v10 = [v9 identifier];

  v11 = sub_1DF6F63EC();
  v13 = v12;

  sub_1DF6D1664(v11, v13);

  sub_1DF6D1834();
  sub_1DF6B8A00();
  sub_1DF6B8B1C(3, sub_1DF6B9134, sub_1DF6B5400);
  v25 = sub_1DF6B8B1C(4, sub_1DF6B9098, sub_1DF6B5420);
  sub_1DF6F5BAC();
  if (v29)
  {
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v26;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v27;
    }

    else
    {
      v16 = 0;
    }

    v23 = v15;
    v24 = v16;
  }

  else
  {
    sub_1DF6B8F1C(v28);
    v23 = 0;
    v24 = 0;
  }

  sub_1DF6D19B0(6, v8);
  sub_1DF6F5BAC();
  if (v29)
  {
    if (swift_dynamicCast())
    {
      v17 = v26;
      v18 = v27;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1DF6B8F1C(v28);
  }

  v17 = 0;
  v18 = 0xE000000000000000;
LABEL_16:
  v19 = sub_1DF6E56B0(v17, v18);
  v22 = 0;
  v21 = v19;

  (*(v3 + 16))(v6, v8, v2);
  if (!v21)
  {
    sub_1DF6C4044(MEMORY[0x1E69E7CC0]);
  }

  sub_1DF69EF80(0, &qword_1ECE4D920, 0x1E696C4B8);
  v0 = sub_1DF6F682C();
  (*(v3 + 8))(v8, v2);
  return v0;
}

id sub_1DF6B8A00()
{
  sub_1DF6F5BAC();
  if (!v8)
  {
    sub_1DF6B8F1C(v7);
LABEL_6:
    v2 = sub_1DF6DA9E8(2);
    v4 = v3;
    sub_1DF6B90E0();
    swift_allocError();
    sub_1DF6B7EC0(v2, v4, v5);

    swift_willThrow();
    return v2;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v0 = sub_1DF6F63BC();

  v1 = HKStateOfMindReflectiveIntervalFromNSString();

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = [v1 integerValue];

  return v2;
}

uint64_t sub_1DF6B8B1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  sub_1DF6F5BAC();
  if (v16[3])
  {
    if (swift_dynamicCast())
    {
      v6 = v14;
      v7 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF6B8F1C(v16);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_6:
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v16[0] = v6;
    v16[1] = v7;
    v14 = 31868;
    v15 = 0xE200000000000000;
    sub_1DF6B8FF0();
    sub_1DF6B9044();
    v9 = sub_1DF6F631C();

    MEMORY[0x1EEE9AC00](v10);
    v13[2] = v3;
    v11 = sub_1DF6B7D64(a2, v13, v9, a3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

void sub_1DF6B8C88(void *a1@<X0>, uint64_t (*a2)(void *)@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x1E12DB850](*a1, a1[1], a1[2], a1[3]);
  v9 = sub_1DF6F63BC();

  v10 = a2(v9);

  if (v10)
  {
    v11 = [v10 integerValue];

    *a5 = v11;
    *(a5 + 8) = 0;
  }

  else
  {
    v12 = sub_1DF6DA9E8(a3);
    v14 = v13;
    sub_1DF6B90E0();
    swift_allocError();
    a4(v12, v14);

    swift_willThrow();
  }
}

unint64_t sub_1DF6B8E48()
{
  result = qword_1ECE4D908;
  if (!qword_1ECE4D908)
  {
    type metadata accessor for Association(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D908);
  }

  return result;
}

unint64_t sub_1DF6B8EA0()
{
  result = qword_1ECE4D918;
  if (!qword_1ECE4D918)
  {
    sub_1DF6B8FA0(255, &qword_1ECE4D910, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D918);
  }

  return result;
}

uint64_t sub_1DF6B8F1C(uint64_t a1)
{
  sub_1DF6B8FA0(0, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DF6B8FA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DF6B8FF0()
{
  result = qword_1ECE4D928;
  if (!qword_1ECE4D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D928);
  }

  return result;
}

unint64_t sub_1DF6B9044()
{
  result = qword_1ECE4D930;
  if (!qword_1ECE4D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D930);
  }

  return result;
}

unint64_t sub_1DF6B90E0()
{
  result = qword_1ECE4D938;
  if (!qword_1ECE4D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D938);
  }

  return result;
}

void sub_1DF6B9190(uint64_t a1)
{
  if (!qword_1ECE4D940)
  {
    sub_1DF6F590C();
    v1 = sub_1DF6F6A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D940);
    }
  }
}

uint64_t type metadata accessor for StateOfMindDecoder(uint64_t a1)
{
  result = qword_1ECE4D948;
  if (!qword_1ECE4D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF6B9248(uint64_t a1)
{
  sub_1DF6F5B9C();
  if (v1 <= 0x3F)
  {
    sub_1DF6F5B5C();
    if (v2 <= 0x3F)
    {
      sub_1DF6B9190(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DF6B9350()
{
  result = qword_1ECE4D958;
  if (!qword_1ECE4D958)
  {
    sub_1DF6B93A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D958);
  }

  return result;
}

unint64_t sub_1DF6B93A8()
{
  result = qword_1EDC03810;
  if (!qword_1EDC03810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03810);
  }

  return result;
}

uint64_t sub_1DF6B9438(uint64_t result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v12 = *v2;

      sub_1DF6B59B0(v3, 1);
      type metadata accessor for StreamConduitBase(255, a2[2], a2[3], a2[4]);
      swift_getWitnessTable();
      sub_1DF6F678C();
      v5 = v2;
      sub_1DF6F675C();

      v6 = *v2;
      *v5 = v12;
      v7 = *(v5 + 8);
      *(v5 + 8) = 1;

      sub_1DF6B5A20(v6, v7);
    }

    else
    {
      *v2 = result;
      *(v2 + 8) = 0;
    }
  }

  else if (v3 != result)
  {
    v8 = result;
    v9 = type metadata accessor for StreamConduitBase(0, a2[2], a2[3], a2[4]);
    sub_1DF6B9BF4();
    swift_allocObject();
    v10 = sub_1DF6F65BC();
    *v11 = v3;
    v11[1] = v8;
    sub_1DF6ABB04(v10, v9);
    sub_1DF6F663C();

    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1DF6F679C();
    *v2 = result;
    *(v2 + 8) = 1;
  }

  return result;
}

uint64_t (*sub_1DF6B962C(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3, char a4))(uint64_t)
{
  if (!a4)
  {
    return result(a3);
  }

  if (a4 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for StreamConduitBase(255, v4, v5, v6);
    swift_getWitnessTable();
    sub_1DF6F678C();
    swift_getWitnessTable();
    return sub_1DF6F655C();
  }

  return result;
}

uint64_t sub_1DF6B9750()
{
  result = sub_1DF6B5A20(*v0, *(v0 + 8));
  *v0 = 0;
  *(v0 + 8) = 2;
  return result;
}

void *sub_1DF6B977C(void *result, void *a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) == 1)
    {
      v4 = v2;
      v8 = *v2;
      v7 = result;
      type metadata accessor for StreamConduitBase(255, a2[2], a2[3], a2[4]);

      swift_getWitnessTable();
      sub_1DF6F678C();
      sub_1DF6F676C();

      v5 = sub_1DF6F674C();
      if (v5 == 1)
      {
        swift_getWitnessTable();
        result = sub_1DF6F67EC();
        if (v7)
        {
          sub_1DF6B5A20(v3, 1);

          *v2 = v7;
          *(v2 + 8) = 0;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v6 = v5;
        result = sub_1DF6B5A20(v3, 1);
        if (v6)
        {
          *v4 = v8;
          *(v4 + 8) = 1;
        }

        else
        {

          *v4 = 0;
          *(v4 + 8) = 2;
        }
      }
    }
  }

  else if (v3 == result)
  {
    result = sub_1DF6B5A20(*v2, 0);
    *v2 = 0;
    *(v2 + 8) = 2;
  }

  return result;
}

uint64_t sub_1DF6B9954()
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B99D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18HealthKitAdditions17StreamConduitListOyxq_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1DF6B9ACC(uint64_t a1)
{
  sub_1DF6F6F0C();
  sub_1DF6B9928();
  return sub_1DF6F6F2C();
}

void sub_1DF6B9BF4()
{
  if (!qword_1EDC034B8)
  {
    v0 = sub_1DF6F6DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC034B8);
    }
  }
}

Swift::Void __swiftcall PostDarwinNotification(name:)(HealthKitAdditions::DarwinNotificationPublisher::DarwinNotificationName name)
{
  v1 = sub_1DF6F642C();

  notify_post((v1 + 32));
}

unint64_t DarwinNotificationPublisher.DarwinNotificationName.rawValue.getter()
{
  v1 = 0xD000000000000031;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

HealthKitAdditions::DarwinNotificationPublisher::DarwinNotificationName_optional __swiftcall DarwinNotificationPublisher.DarwinNotificationName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF6F6D6C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DF6B9D98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = ".keybagd.lock_status";
  v4 = 0xD000000000000031;
  if (v2 == 1)
  {
    v5 = 0xD000000000000031;
  }

  else
  {
    v5 = 0xD000000000000044;
  }

  if (v2 == 1)
  {
    v6 = ".keybagd.lock_status";
  }

  else
  {
    v6 = "istics.did-change";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "periodPrediction";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000044;
    v3 = "istics.did-change";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "periodPrediction";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF6F6E2C();
  }

  return v11 & 1;
}

uint64_t sub_1DF6B9E70()
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B9F0C(uint64_t a1)
{
  sub_1DF6F645C();
}

uint64_t sub_1DF6B9F94(uint64_t a1)
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();

  return sub_1DF6F6F2C();
}

void sub_1DF6BA038(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = ".keybagd.lock_status";
  v4 = 0xD000000000000031;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000044;
    v3 = "istics.did-change";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "periodPrediction";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t DarwinNotificationPublisher.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *DarwinNotificationPublisher.__allocating_init(name:queue:)(_BYTE *a1, uint64_t a2)
{
  v4 = 0xD000000000000024;
  v5 = sub_1DF6F697C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF6F696C();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1DF6F609C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = ".keybagd.lock_status";
  v12 = 0xD000000000000031;
  if (*a1 != 1)
  {
    v12 = 0xD000000000000044;
    v11 = "istics.did-change";
  }

  if (*a1)
  {
    v4 = v12;
    v13 = v11;
  }

  else
  {
    v13 = "periodPrediction";
  }

  v14 = v13 | 0x8000000000000000;
  result = swift_allocObject();
  result[2] = v4;
  result[3] = v14;
  if (!a2)
  {
    v17 = result;
    v16 = sub_1DF6BA8B8();
    v18 = 0x656873696C627570;
    v19 = 0xEA00000000002E72;

    MEMORY[0x1E12DB8A0](v4, v14);

    sub_1DF6F608C();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DF6BA904();
    sub_1DF6BBB98(0, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1DF6BA95C();
    sub_1DF6F6A4C();
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v5);
    a2 = sub_1DF6F698C();
    result = v17;
  }

  result[4] = a2;
  return result;
}

void *DarwinNotificationPublisher.__allocating_init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6F697C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF6F696C();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1DF6F609C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  if (!a3)
  {
    v14 = result;
    v13 = sub_1DF6BA8B8();
    v15 = 0x656873696C627570;
    v16 = 0xEA00000000002E72;

    MEMORY[0x1E12DB8A0](a1, a2);

    sub_1DF6F608C();
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DF6BA904();
    sub_1DF6BBB98(0, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1DF6BA95C();
    sub_1DF6F6A4C();
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8090], v6);
    a3 = sub_1DF6F698C();
    result = v14;
  }

  result[4] = a3;
  return result;
}

void *DarwinNotificationPublisher.init(name:queue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DF6F697C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DF6F696C();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1DF6F609C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v4[2] = a1;
  v4[3] = a2;
  if (!a3)
  {
    v15[1] = sub_1DF6BA8B8();
    v16 = 0x656873696C627570;
    v17 = 0xEA00000000002E72;

    MEMORY[0x1E12DB8A0](a1, a2);

    v15[0] = v16;
    sub_1DF6F608C();
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DF6BA904();
    sub_1DF6BBB98(0, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1DF6BA95C();
    sub_1DF6F6A4C();
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8090], v8);
    a3 = sub_1DF6F698C();
  }

  v4[4] = a3;
  return v4;
}

unint64_t sub_1DF6BA8B8()
{
  result = qword_1EDC03640;
  if (!qword_1EDC03640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03640);
  }

  return result;
}

unint64_t sub_1DF6BA904()
{
  result = qword_1EDC03648;
  if (!qword_1EDC03648)
  {
    sub_1DF6F696C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03648);
  }

  return result;
}

unint64_t sub_1DF6BA95C()
{
  result = qword_1EDC03F20;
  if (!qword_1EDC03F20)
  {
    sub_1DF6BBB98(255, &qword_1EDC03F28, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03F20);
  }

  return result;
}

uint64_t DarwinNotificationPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DarwinNotificationPublisher.Inner(0, a2, a3, a4);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  swift_allocObject();

  v10 = sub_1DF6BB6A8(a1, v7, v8, v9);
  v12[3] = v6;
  v12[4] = swift_getWitnessTable();
  v12[0] = v10;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void sub_1DF6BAAD0(void *a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 112));
  sub_1DF6BBB98(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  a1[3] = v4;
  a1[4] = &protocol witness table for <A> UnsafeMutablePointer<A>;
  *a1 = v3;
}

char *sub_1DF6BAB50()
{
  v1 = *v0;
  MEMORY[0x1E12DCBA0](*(v0 + *(*v0 + 112)), -1, -1);

  v2 = *(*v0 + 104);
  v4 = type metadata accessor for DownstreamHandlerSubscriptionState(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t sub_1DF6BAC54()
{
  sub_1DF6BAB50();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6BACAC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 112));
  sub_1DF6BBB98(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  v5 = v4;
  v22 = v4;
  v23 = &protocol witness table for <A> UnsafeMutablePointer<A>;
  v21[0] = v3;
  __swift_project_boxed_opaque_existential_0(v21, v4);
  v6 = off_1F5AAAF98;
  (off_1F5AAAF98)();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v7 = *(*v1 + 128);
  v8 = *(v1 + *(*v1 + 112));
  if (*(v1 + v7))
  {
    v22 = v5;
    v23 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v21[0] = v8;
    __swift_project_boxed_opaque_existential_0(v21, v5);
    (off_1F5AAAFA0)();
  }

  else
  {
    v22 = v5;
    v23 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v21[0] = v8;
    __swift_project_boxed_opaque_existential_0(v21, v5);
    v20 = off_1F5AAAFA0;
    (off_1F5AAAFA0)();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v9 = *(v1 + *(*v1 + 120));
    v19 = v6;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = *(v2 + 80);
    v11[3] = *(v2 + 88);
    v11[4] = v10;
    v12 = sub_1DF6F642C() + 32;
    type metadata accessor for DarwinNotificationObserverToken();
    v13 = swift_allocObject();
    sub_1DF6BBC08(0);
    v14 = swift_allocObject();
    *(v14 + 16) = 0xFFFFFFFFLL;
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v9;
    v15 = v9;

    DarwinNotificationObserverToken.beginObservation(handler:)(sub_1DF6BBBFC, v11);

    v16 = *(v1 + *(*v1 + 112));
    v22 = v5;
    v23 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v21[0] = v16;
    __swift_project_boxed_opaque_existential_0(v21, v5);
    v19();
    __swift_destroy_boxed_opaque_existential_1(v21);
    *(v1 + v7) = v13;

    v17 = *(v1 + *(*v1 + 112));
    v22 = v5;
    v23 = &protocol witness table for <A> UnsafeMutablePointer<A>;
    v21[0] = v17;
    __swift_project_boxed_opaque_existential_0(v21, v5);
    v20(v5, &protocol witness table for <A> UnsafeMutablePointer<A>);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1DF6BB05C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DF6BB0B4(result, v2, v3, v4);
  }

  return result;
}

uint64_t sub_1DF6BB0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for DownstreamHandlerSendFailureReason(255, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v6 = sub_1DF6F6F6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  WitnessTable = swift_getWitnessTable();
  DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)(WitnessTable, v5, WitnessTable, v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DF6BB22C()
{
  v1 = v0;
  v2 = *(v0 + *(*v0 + 112));
  sub_1DF6BBB98(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  v4 = v3;
  v13 = v3;
  v14 = &protocol witness table for <A> UnsafeMutablePointer<A>;
  v12[0] = v2;
  __swift_project_boxed_opaque_existential_0(v12, v3);
  (off_1F5AAAF98)();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v5 = *v1;
  v6 = *(*v1 + 128);
  v7 = *(v1 + v6);
  if (v7)
  {
    v8 = *(v7 + 24);

    os_unfair_lock_lock(v8 + 5);
    os_unfair_lock_opaque = v8[4]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque != -1)
    {
      notify_cancel(os_unfair_lock_opaque);
      v8[4]._os_unfair_lock_opaque = -1;
    }

    os_unfair_lock_unlock(v8 + 5);

    *(v1 + v6) = 0;

    v5 = *v1;
  }

  v10 = *(v1 + *(v5 + 112));
  v13 = v4;
  v14 = &protocol witness table for <A> UnsafeMutablePointer<A>;
  v12[0] = v10;
  __swift_project_boxed_opaque_existential_0(v12, v4);
  (off_1F5AAAFA0)();
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1DF6BB3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 104);
  swift_beginAccess();
  v7 = type metadata accessor for DownstreamHandlerSubscriptionState(0, *(a1 + 80), *(a1 + 88), v6);
  return (*(*(v7 - 8) + 16))(a2, v2 + v5, v7);
}

uint64_t sub_1DF6BB45C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  swift_beginAccess();
  v7 = type metadata accessor for DownstreamHandlerSubscriptionState(0, *(a2 + 80), *(a2 + 88), v6);
  (*(*(v7 - 8) + 40))(v2 + v5, a1, v7);
  return swift_endAccess();
}

uint64_t DarwinNotificationPublisher.deinit()
{

  return v0;
}

uint64_t DarwinNotificationPublisher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1DF6BB6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  v11 = type metadata accessor for DownstreamHandlerSubscriptionState(0, v9, v10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15 = *(v8 + 112);
  v16 = swift_slowAlloc();
  *&v4[v15] = v16;
  *v16 = 0;
  *&v4[*(*v4 + 128)] = 0;
  static DownstreamHandlerSubscriptionState.ready(_:)(a1, v9, v10, v14);
  (*(v12 + 32))(&v4[*(*v4 + 104)], v14, v11);
  *(v4 + 2) = a2;
  *(v4 + 3) = a3;
  *&v4[*(*v4 + 120)] = v19;
  return v4;
}

unint64_t sub_1DF6BB850()
{
  result = qword_1ECE4D960;
  if (!qword_1ECE4D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D960);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DarwinNotificationPublisher.DarwinNotificationName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DarwinNotificationPublisher.DarwinNotificationName(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DF6BBA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for DownstreamHandlerSubscriptionState(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6BBB24(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DF6BBB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DF6BBC08(uint64_t a1)
{
  if (!qword_1EDC04678)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1DF6F6BCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04678);
    }
  }
}

uint64_t HKProfileStore.createFetchDisplayNamePublisher()()
{
  *(swift_allocObject() + 16) = v0;
  sub_1DF6BBDFC(0);
  swift_allocObject();
  v1 = v0;
  return sub_1DF6F5FBC();
}

void sub_1DF6BBCE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DF6BBF24;
  *(v7 + 24) = v6;
  v9[4] = sub_1DF6BC008;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DF6BC010;
  v9[3] = &block_descriptor_5;
  v8 = _Block_copy(v9);

  [a3 fetchDisplayName_];
  _Block_release(v8);
}

void sub_1DF6BBDFC(uint64_t a1)
{
  if (!qword_1ECE4D968)
  {
    sub_1DF6BBE6C(255);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D968);
    }
  }
}

void sub_1DF6BBE6C(uint64_t a1)
{
  if (!qword_1ECE4D970)
  {
    sub_1DF6BBED4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4D970);
    }
  }
}

void sub_1DF6BBED4()
{
  if (!qword_1EDC04798)
  {
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04798);
    }
  }
}

uint64_t sub_1DF6BBF24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

void sub_1DF6BBF68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(id *))
{
  if (a5)
  {
    v9 = a5;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v8 = a5;
    a6(&v9);
  }

  else
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13 = 0;
    a6(&v9);
  }
}

uint64_t sub_1DF6BC010(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1DF6F63EC();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_1DF6F63EC();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HKAllowedCountries.Category.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 3 || (MEMORY[0x1E12DC330](1), !v2))
  {
    v3 = 0;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 2)
  {
    v3 = 2;
    return MEMORY[0x1E12DC330](v3);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t HKAllowedCountries.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1 == 3 || (MEMORY[0x1E12DC330](1), !v1))
  {
    v2 = 0;
  }

  else if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (v1 != 2)
    {
      MEMORY[0x1E12DC330](3);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v2 = 2;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BC218(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 3 || (MEMORY[0x1E12DC330](1), !v2))
  {
    v3 = 0;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 2)
  {
    v3 = 2;
    return MEMORY[0x1E12DC330](v3);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t sub_1DF6BC294(uint64_t a1)
{
  v2 = *v1;
  sub_1DF6F6F0C();
  if (v2 == 3 || (MEMORY[0x1E12DC330](1), !v2))
  {
    v3 = 0;
  }

  else if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (v2 != 2)
    {
      MEMORY[0x1E12DC330](3);
      sub_1DF6F69EC();
      return sub_1DF6F6F2C();
    }

    v3 = 2;
  }

  MEMORY[0x1E12DC330](v3);
  return sub_1DF6F6F2C();
}

uint64_t HKAllowedCountries.RemoteState.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 2)
  {
    v3 = 2;
    return MEMORY[0x1E12DC330](v3);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t HKAllowedCountries.RemoteState.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1E12DC330](3);
        sub_1DF6F69EC();
        return sub_1DF6F6F2C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BC430()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1E12DC330](3);
        sub_1DF6F69EC();
        return sub_1DF6F6F2C();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BC4B4(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1E12DC330](v3);
  }

  if (v2 == 2)
  {
    v3 = 2;
    return MEMORY[0x1E12DC330](v3);
  }

  MEMORY[0x1E12DC330](3);
  return sub_1DF6F69EC();
}

uint64_t sub_1DF6BC52C(uint64_t a1)
{
  v2 = *v1;
  sub_1DF6F6F0C();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1E12DC330](3);
        sub_1DF6F69EC();
        return sub_1DF6F6F2C();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1E12DC330](v3);
  return sub_1DF6F6F2C();
}

void HKAllowedCountries.category.getter(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 category];
  if (v3 == 1)
  {
    goto LABEL_14;
  }

  if (v3 != 2)
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v18, qword_1EDC07CE0);
    v19 = v1;
    v7 = sub_1DF6F5DBC();
    v8 = sub_1DF6F687C();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v20 = sub_1DF6F6FBC();
    v22 = sub_1DF6A9D50(v20, v21, &v26);

    *(v9 + 4) = v22;
    *(v9 + 12) = 2080;
    [v19 category];
    type metadata accessor for HKAllowedCountriesCategory(0);
    v23 = sub_1DF6F63FC();
    v25 = sub_1DF6A9D50(v23, v24, &v26);

    *(v9 + 14) = v25;
    v17 = "[%{public}s] Unrecognized category value: %s";
    goto LABEL_12;
  }

  sub_1DF6BC8E8(&v26);
  v4 = v26;
  if (v26 == 3)
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v5, qword_1EDC07CE0);
    v6 = v1;
    v7 = sub_1DF6F5DBC();
    v8 = sub_1DF6F687C();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v11 = sub_1DF6F6FBC();
    v13 = sub_1DF6A9D50(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    [v6 remoteState];
    type metadata accessor for HKRemoteAllowedCountriesState(0);
    v14 = sub_1DF6F63FC();
    v16 = sub_1DF6A9D50(v14, v15, &v26);

    *(v9 + 14) = v16;
    v17 = "[%{public}s] Unrecognized remote state: %s";
LABEL_12:
    _os_log_impl(&dword_1DF69D000, v7, v8, v17, v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12DCBA0](v10, -1, -1);
    MEMORY[0x1E12DCBA0](v9, -1, -1);
LABEL_13:

LABEL_14:
    v4 = 3;
  }

  *a1 = v4;
}

uint64_t sub_1DF6BC8E8@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 category];
  if (result == 2)
  {
    result = [v1 remoteState];
    v4 = 3;
    if (result > 3)
    {
      if (result == 4)
      {
        v4 = 2;
      }

      else if (result == 5)
      {
        result = [v1 remoteCountrySet];
        v4 = 3;
        if (result)
        {
          v4 = result;
        }
      }
    }

    else
    {
      if (result == 3)
      {
        v4 = 1;
      }

      if (result == 2)
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
  return result;
}

uint64_t _sSo18HKAllowedCountriesC18HealthKitAdditionsE11RemoteStateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1DF6BCFB8();
      sub_1DF6BCF98(v3);
      sub_1DF6BCF98(v2);
      v4 = sub_1DF6F69DC();
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_1DF6BCF98(*a2);
    sub_1DF6BCF98(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_1DF6BCFA8(v2);
  sub_1DF6BCFA8(v3);
  return v4 & 1;
}

BOOL _sSo18HKAllowedCountriesC18HealthKitAdditionsE8CategoryO2eeoiySbAE_AEtFZ_0(void **a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != 3)
  {
    if (v3 != 3)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          if (v3 == 1)
          {
            v5 = 1;
            sub_1DF6BD004(1);
            sub_1DF6BCF98(1);
            sub_1DF6BCFA8(1);
            sub_1DF6BCFA8(1);
            sub_1DF6BD014(1);
            sub_1DF6BD014(1);
            sub_1DF6BD014(1);
            sub_1DF6BD014(1);
            return v5;
          }
        }

        else if (v2 == 2)
        {
          if (v3 == 2)
          {
            sub_1DF6BD004(2);
            sub_1DF6BCF98(2);
            sub_1DF6BCFA8(2);
            sub_1DF6BCFA8(2);
            sub_1DF6BD014(2);
            sub_1DF6BD014(2);
            sub_1DF6BD014(2);
            v4 = 2;
            goto LABEL_4;
          }
        }

        else if (v3 >= 3)
        {
          sub_1DF6BCFB8();
          sub_1DF6BD004(v3);
          sub_1DF6BD004(v2);
          sub_1DF6BD004(v3);
          sub_1DF6BD004(v2);
          sub_1DF6BD004(v3);
          sub_1DF6BD004(v2);
          v8 = sub_1DF6F69DC();
          sub_1DF6BCFA8(v2);
          sub_1DF6BCFA8(v3);
          sub_1DF6BD014(v2);
          sub_1DF6BD014(v3);
          sub_1DF6BD014(v3);
          sub_1DF6BD014(v2);
          return (v8 & 1) != 0;
        }
      }

      else if (!v3)
      {
        sub_1DF6BD004(0);
        sub_1DF6BCF98(0);
        sub_1DF6BCFA8(0);
        sub_1DF6BCFA8(0);
        sub_1DF6BD014(0);
        sub_1DF6BD014(0);
        sub_1DF6BD014(0);
        v4 = 0;
        goto LABEL_4;
      }

      sub_1DF6BD004(*a2);
      sub_1DF6BD004(v2);
      sub_1DF6BD004(v3);
      sub_1DF6BD004(v2);
      sub_1DF6BD004(v3);
      sub_1DF6BD004(v2);
      sub_1DF6BCFA8(v2);
      sub_1DF6BCFA8(v3);
      sub_1DF6BD014(v2);
      sub_1DF6BD014(v3);
      sub_1DF6BD014(v3);
      v6 = v2;
LABEL_18:
      sub_1DF6BD014(v6);
      return 0;
    }

LABEL_6:
    sub_1DF6BD004(*a2);
    sub_1DF6BD004(v2);
    sub_1DF6BD014(v2);
    v6 = v3;
    goto LABEL_18;
  }

  if (v3 != 3)
  {
    goto LABEL_6;
  }

  sub_1DF6BD014(3);
  v4 = 3;
LABEL_4:
  sub_1DF6BD014(v4);
  return 1;
}

unint64_t sub_1DF6BCCD8()
{
  result = qword_1ECE4D978;
  if (!qword_1ECE4D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D978);
  }

  return result;
}

unint64_t sub_1DF6BCD30()
{
  result = qword_1ECE4D980;
  if (!qword_1ECE4D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D980);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So18HKAllowedCountriesC18HealthKitAdditionsE11RemoteStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_So18HKAllowedCountriesC18HealthKitAdditionsE8CategoryO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF6BCDCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6BCE28(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1DF6BCE84(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    v2 = -2147483645;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_1DF6BCEBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6BCF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1DF6BCF68(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1DF6BCF98(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1DF6BCFA8(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1DF6BCFB8()
{
  result = qword_1EDC03558;
  if (!qword_1EDC03558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03558);
  }

  return result;
}

id sub_1DF6BD004(id result)
{
  if (result != 3)
  {
    return sub_1DF6BCF98(result);
  }

  return result;
}

void sub_1DF6BD014(id a1)
{
  if (a1 != 3)
  {
    sub_1DF6BCFA8(a1);
  }
}

uint64_t FeatureStatus.PerContextEvaluation.requirementsEvaluationByContext.getter()
{
  sub_1DF6BD050(0);

  return sub_1DF6F61BC();
}

void sub_1DF6BD050(uint64_t a1)
{
  if (!qword_1EDC04FB8)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1DF69EF80(255, &qword_1EDC04F70, 0x1E696C158);
    sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
    sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
    sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
    v1 = sub_1DF6F61EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04FB8);
    }
  }
}

uint64_t FeatureStatus.PerContextEvaluation.requirementsEvaluationByContext.setter(uint64_t a1)
{
  sub_1DF6BD050(0);

  return sub_1DF6F61CC();
}

uint64_t (*FeatureStatus.PerContextEvaluation.requirementsEvaluationByContext.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1DF6BD050(0);
  *(v3 + 32) = sub_1DF6F61AC();
  return sub_1DF6C5FD0;
}

uint64_t FeatureStatus.PerContextEvaluation.init(requirementsEvaluationByContext:)(uint64_t a1)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);

  return sub_1DF6F61FC();
}

void FeatureStatus.PerContextEvaluation.init(requirementSatisfactionByContext:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  sub_1DF6BD050(0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6BDCD8(0);
  v5 = sub_1DF6F6D1C();
  v6 = 0;
  v81 = v5;
  v82 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v80 = v5 + 64;
  v78 = v8;
  v79 = v13;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v15 = (v12 - 1) & v12;
LABEL_11:
      v18 = v14 | (v6 << 6);
      v83 = v15;
      v84 = v6;
      v19 = *(v82 + 56);
      v20 = *(*(v82 + 48) + 8 * v18);
      v85 = v20;
      v86 = v18;
      v21 = *(v19 + 8 * v18);
      v22 = *(v21 + 16);
      if (v22)
      {
        break;
      }

      v43 = v20;

LABEL_30:
      v44 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
      v45 = sub_1DF6F659C();

      v89 = [v44 initWithArray_];

      sub_1DF6C3E20(0);
      v46 = sub_1DF6F6D1C();
      v47 = v46;
      v48 = 0;
      v49 = v21 + 64;
      v50 = 1 << *(v21 + 32);
      if (v50 < 64)
      {
        v51 = ~(-1 << v50);
      }

      else
      {
        v51 = -1;
      }

      v52 = v51 & *(v21 + 64);
      v53 = (v50 + 63) >> 6;
      for (i = v46 + 64; v52; v21 = v58)
      {
        v54 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
LABEL_40:
        v57 = v54 | (v48 << 6);
        v58 = v21;
        v59 = *(*(v21 + 48) + 8 * v57);
        v60 = sub_1DF6F664C();
        *(i + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
        *(v47[6] + 8 * v57) = v59;
        *(v47[7] + 8 * v57) = v60;
        v61 = v47[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_54;
        }

        v47[2] = v63;
      }

      v55 = v48;
      while (1)
      {
        v48 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_48;
        }

        if (v48 >= v53)
        {
          break;
        }

        v56 = *(v49 + 8 * v48);
        ++v55;
        if (v56)
        {
          v54 = __clz(__rbit64(v56));
          v52 = (v56 - 1) & v56;
          goto LABEL_40;
        }
      }

      v64 = objc_allocWithZone(MEMORY[0x1E696C158]);
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
      sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1DF6F881C);
      v65 = sub_1DF6F629C();

      v66 = v89;
      v67 = [v64 initWithRequirementIdentifiersOrderedByPriority:v89 satisfactionByRequirementIdentifier:v65];

      v68 = v86;
      v69 = v81;
      *(v80 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
      *(v69[6] + 8 * v68) = v85;
      *(v69[7] + 8 * v68) = v67;
      v70 = v69[2];
      v62 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v62)
      {
        goto LABEL_55;
      }

      v69[2] = v71;
      v12 = v83;
      v6 = v84;
      v13 = v79;
      if (!v83)
      {
        goto LABEL_6;
      }
    }

    v93 = MEMORY[0x1E69E7CC0];
    v23 = v20;

    sub_1DF6C3908(0, v22, 0);
    v24 = v93;
    v25 = (v21 + 64);
    v26 = sub_1DF6F6A5C();
    v27 = 0;
    v87 = v21 + 72;
    v88 = v22;
    v89 = (v21 + 64);
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v21 + 32))
    {
      v29 = v26 >> 6;
      if ((v25[v26 >> 6] & (1 << v26)) == 0)
      {
        goto LABEL_49;
      }

      i = *(v21 + 36);
      v30 = *(*(v21 + 48) + 8 * v26);
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      v92 = v31;
      v93 = v24;
      *&v91 = v30;
      v32 = v21;
      v33 = *(v24 + 16);
      v34 = *(v24 + 24);
      v35 = v30;
      if (v33 >= v34 >> 1)
      {
        sub_1DF6C3908((v34 > 1), v33 + 1, 1);
        v24 = v93;
      }

      *(v24 + 16) = v33 + 1;
      sub_1DF6B1E38(&v91, (v24 + 32 * v33 + 32));
      v28 = 1 << *(v32 + 32);
      if (v26 >= v28)
      {
        goto LABEL_50;
      }

      v21 = v32;
      v25 = v89;
      v36 = *(v89 + v29);
      if ((v36 & (1 << v26)) == 0)
      {
        goto LABEL_51;
      }

      if (i != *(v21 + 36))
      {
        goto LABEL_52;
      }

      v37 = v36 & (-2 << (v26 & 0x3F));
      if (v37)
      {
        v28 = __clz(__rbit64(v37)) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v29 << 6;
        v39 = v29 + 1;
        v40 = (v87 + 8 * v29);
        while (v39 < (v28 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_1DF6C3EDC(v26, i, 0);
            v28 = __clz(__rbit64(v41)) + v38;
            goto LABEL_14;
          }
        }

        sub_1DF6C3EDC(v26, i, 0);
      }

LABEL_14:
      ++v27;
      v26 = v28;
      if (v27 == v88)
      {
        goto LABEL_30;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_6:
    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v13)
      {

        type metadata accessor for HKFeatureAvailabilityContext(0);
        sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
        sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
        sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
        sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
        v72 = v74;
        sub_1DF6F61FC();
        (*(v75 + 32))(v77, v72, v76);
        return;
      }

      v17 = *(v78 + 8 * v6);
      ++v16;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v15 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void *HKFeatureAvailabilityRequirementsEvaluation.init(satisfactionByRequirementIdentifier:)(uint64_t a1)
{
  swift_getKeyPath();

  sub_1DF6C4508(a1, sub_1DF6C3EE8);

  v2 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v3 = sub_1DF6F659C();

  v23 = [v2 initWithArray_];

  sub_1DF6C3E20(0);
  result = sub_1DF6F6D1C();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 8;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      result = sub_1DF6F664C();
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v16;
      *(v5[7] + 8 * v15) = result;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      v5[2] = v19;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
        sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
        sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1DF6F881C);
        v21 = sub_1DF6F629C();

        v22 = [v20 initWithRequirementIdentifiersOrderedByPriority:v23 satisfactionByRequirementIdentifier:v21];

        return v22;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DF6BDCD8(uint64_t a1)
{
  if (!qword_1ECE4D988)
  {
    type metadata accessor for HKFeatureAvailabilityContext(255);
    sub_1DF69EF80(255, &qword_1EDC04F70, 0x1E696C158);
    sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
    v1 = sub_1DF6F6D4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D988);
    }
  }
}

id FeatureStatus.PerContextEvaluation.evaluation(for:)(void *a1)
{
  sub_1DF6BD050(0);
  v2 = sub_1DF6F61BC();
  if (*(v2 + 16) && (v3 = sub_1DF6C35C8(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    return v5;
  }

  else
  {

    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v7, qword_1EDC07CE0);
    v8 = a1;
    v9 = sub_1DF6F5DBC();
    v10 = sub_1DF6F687C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1DF6A9D50(0xD000000000000014, 0x80000001DF6FA090, &v24);
      *(v11 + 12) = 2082;
      v13 = sub_1DF6F63EC();
      v15 = sub_1DF6A9D50(v13, v14, &v24);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1DF69D000, v9, v10, "[%{public}s] No evaluation present for context '%{public}s'; ensure the context is declared in the feature availability extension's requirements", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12DCBA0](v12, -1, -1);
      MEMORY[0x1E12DCBA0](v11, -1, -1);
    }

    v16 = sub_1DF6F63BC();
    v17 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v24 = v16;
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v18 = v16;
    v19 = [v17 initWithObject_];

    swift_unknownObjectRelease();
    sub_1DF6C4E00(0, &qword_1ECE4D998, sub_1DF6C4778, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DF6FA080;
    *(inited + 32) = sub_1DF6F63BC();
    sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
    *(inited + 40) = sub_1DF6F69BC();
    sub_1DF6C415C(inited);
    swift_setDeallocating();
    sub_1DF69FE90(inited + 32, sub_1DF6C4778);
    v21 = objc_allocWithZone(MEMORY[0x1E696C158]);
    sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1DF6F881C);
    v22 = sub_1DF6F629C();

    v23 = [v21 initWithRequirementIdentifiersOrderedByPriority:v19 satisfactionByRequirementIdentifier:v22];

    return v23;
  }
}

uint64_t sub_1DF6BE150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001DF6FCFE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DF6F6E2C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DF6BE1F0(uint64_t a1)
{
  v2 = sub_1DF6C47F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6BE22C(uint64_t a1)
{
  v2 = sub_1DF6C47F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.PerContextEvaluation.encode(to:)(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC034E8, sub_1DF6C47F8, &type metadata for FeatureStatus.PerContextEvaluation.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C47F8();
  sub_1DF6F6F8C();
  sub_1DF6BD050(0);
  sub_1DF69FA50(&qword_1EDC03F68, sub_1DF6BD050, MEMORY[0x1E696B3A8]);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FeatureStatus.PerContextEvaluation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1DF6BD050(0);
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03518, sub_1DF6C47F8, &type metadata for FeatureStatus.PerContextEvaluation.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C47F8();
  v13 = v21;
  sub_1DF6F6F7C();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    sub_1DF69FA50(&qword_1EDC03F60, sub_1DF6BD050, MEMORY[0x1E696B3B8]);
    sub_1DF6F6D9C();
    (*(v14 + 8))(v9, v7);
    (*(v15 + 32))(v12, v20, v4);
    sub_1DF69F970(v12, v17, type metadata accessor for FeatureStatus.PerContextEvaluation);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF6BE708(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC034E8, sub_1DF6C47F8, &type metadata for FeatureStatus.PerContextEvaluation.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C47F8();
  sub_1DF6F6F8C();
  sub_1DF6BD050(0);
  sub_1DF69FA50(&qword_1EDC03F68, sub_1DF6BD050, MEMORY[0x1E696B3A8]);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FeatureStatus.OnboardingRecord.settings.getter()
{
  type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  return sub_1DF6F60BC();
}

uint64_t sub_1DF6BE90C(void **a1)
{
  v1 = *a1;
  type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  v2 = v1;
  return sub_1DF6F60CC();
}

uint64_t FeatureStatus.OnboardingRecord.settings.setter(uint64_t a1)
{
  type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  return sub_1DF6F60CC();
}

uint64_t (*FeatureStatus.OnboardingRecord.settings.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  *(v3 + 32) = sub_1DF6F60AC();
  return sub_1DF6BEA3C;
}

void sub_1DF6BEA40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t FeatureStatus.OnboardingRecord.allOnboardedCountryCodes.getter()
{
  type metadata accessor for FeatureStatus.OnboardingRecord(0);
}

uint64_t FeatureStatus.OnboardingRecord.allOnboardedCountryCodes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t FeatureStatus.OnboardingRecord.dateOnboardingCompleted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 28);
  v4 = sub_1DF6F5A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeatureStatus.OnboardingRecord.dateOnboardingCompleted.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureStatus.OnboardingRecord(0) + 28);
  v4 = sub_1DF6F5A7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeatureStatus.OnboardingRecord.init(perContextEvaluation:settings:allOnboardedCountryCodes:dateOnboardingCompleted:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DF69F908(a1, a5, type metadata accessor for FeatureStatus.PerContextEvaluation);
  v9 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
  sub_1DF6F60FC();
  sub_1DF69FE90(a1, type metadata accessor for FeatureStatus.PerContextEvaluation);
  *(a5 + *(v9 + 24)) = a3;
  v10 = *(v9 + 28);
  v11 = sub_1DF6F5A7C();
  v12 = *(*(v11 - 8) + 32);

  return v12(a5 + v10, a4, v11);
}

uint64_t static FeatureStatus.OnboardingRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
  sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158, MEMORY[0x1E69E81C0]);
  if ((sub_1DF6F61DC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
  sub_1DF69FAE8(qword_1EDC03660, &qword_1EDC04FA8, 0x1E696C168, MEMORY[0x1E69E81C0]);
  if ((sub_1DF6F60DC() & 1) == 0 || (sub_1DF69FCD8(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  return sub_1DF6F5A5C();
}

uint64_t sub_1DF6BEFBC()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BF030(uint64_t a1)
{
  v2 = *v1;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

unint64_t sub_1DF6BF074()
{
  v1 = 0x73676E6974746573;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF6BF0FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF6C5B68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF6BF130(uint64_t a1)
{
  v2 = sub_1DF6C49DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6BF16C(uint64_t a1)
{
  v2 = sub_1DF6C49DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.OnboardingRecord.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DF6C4CDC(0, &qword_1EDC034F8, sub_1DF6C49DC, &type metadata for FeatureStatus.OnboardingRecord.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C49DC();
  sub_1DF6F6F8C();
  v16 = 0;
  type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  sub_1DF69FA50(&qword_1EDC04598, type metadata accessor for FeatureStatus.PerContextEvaluation, &protocol conformance descriptor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6DCC();
  if (!v2)
  {
    v10 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
    v15 = 1;
    sub_1DF6C4974(0);
    sub_1DF69FA50(&qword_1EDC03F80, sub_1DF6C4974, MEMORY[0x1E696B378]);
    sub_1DF6F6DCC();
    v12[1] = *(v3 + *(v10 + 24));
    v14 = 2;
    sub_1DF6C4A30();
    sub_1DF6C4B2C(&qword_1EDC03ED8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1DF6F6DCC();
    v13 = 3;
    sub_1DF6F5A7C();
    sub_1DF69FA50(&qword_1EDC04648, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF6F6DCC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t FeatureStatus.OnboardingRecord.hash(into:)(__int128 *a1)
{
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v3 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(a1, *(v1 + *(v3 + 24)));
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DF6F62FC();
}

uint64_t FeatureStatus.OnboardingRecord.hashValue.getter()
{
  sub_1DF6F6F0C();
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  v1 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(v3, *(v0 + *(v1 + 24)));
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.OnboardingRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1DF6F5A7C();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4974(0);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03528, sub_1DF6C49DC, &type metadata for FeatureStatus.OnboardingRecord.CodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v8;
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C49DC();
  v35 = v10;
  v14 = v37;
  sub_1DF6F6F7C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v30;
  v15 = v31;
  v17 = v32;
  v42 = 0;
  sub_1DF69FA50(&qword_1EDC04590, type metadata accessor for FeatureStatus.PerContextEvaluation, &protocol conformance descriptor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6D9C();
  v25 = v13;
  sub_1DF69F970(v34, v13, type metadata accessor for FeatureStatus.PerContextEvaluation);
  v41 = 1;
  sub_1DF69FA50(&qword_1EDC03F78, sub_1DF6C4974, MEMORY[0x1E696B390]);
  sub_1DF6F6D9C();
  v18 = v11;
  v19 = *(v11 + 20);
  v20 = v25;
  (*(v15 + 32))(&v25[v19], v6, v17);
  sub_1DF6C4A30();
  v40 = 2;
  sub_1DF6C4B2C(&qword_1EDC03ED0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_1DF6F6D9C();
  v37 = 0;
  *&v20[*(v18 + 24)] = v38;
  v39 = 3;
  sub_1DF69FA50(&qword_1EDC04640, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v22 = v28;
  v21 = v29;
  sub_1DF6F6D9C();
  (*(v16 + 8))(v35, v36);
  v23 = v25;
  (*(v26 + 32))(&v25[*(v18 + 28)], v22, v21);
  sub_1DF69F908(v23, v27, type metadata accessor for FeatureStatus.OnboardingRecord);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF69FE90(v23, type metadata accessor for FeatureStatus.OnboardingRecord);
}

uint64_t sub_1DF6BFCD8(uint64_t a1)
{
  sub_1DF6F6F0C();
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  sub_1DF6C4974(0);
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(v4, *(v1 + *(a1 + 24)));
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BFDD0(__int128 *a1, uint64_t a2)
{
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  sub_1DF6C4974(0);
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(a1, *(v2 + *(a2 + 24)));
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DF6F62FC();
}

uint64_t sub_1DF6BFEB8(uint64_t a1, uint64_t a2)
{
  sub_1DF6F6F0C();
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  sub_1DF6C4974(0);
  sub_1DF6C4A88();
  sub_1DF6F62FC();
  sub_1DF6C3CC4(v5, *(v2 + *(a2 + 24)));
  sub_1DF6F5A7C();
  sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6BFFDC(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
  sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158, MEMORY[0x1E69E81C0]);
  if ((sub_1DF6F61DC() & 1) == 0)
  {
    return 0;
  }

  sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
  sub_1DF69FAE8(qword_1EDC03660, &qword_1EDC04FA8, 0x1E696C168, MEMORY[0x1E69E81C0]);
  if ((sub_1DF6F60DC() & 1) == 0 || (sub_1DF69FCD8(*(a1 + a3[6]), *(a2 + a3[6])) & 1) == 0)
  {
    return 0;
  }

  return sub_1DF6F5A5C();
}

uint64_t sub_1DF6C0278(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
  sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158, MEMORY[0x1E69E81C0]);

  return sub_1DF6F61DC();
}

uint64_t sub_1DF6C03EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001DF6FD000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DF6F6E2C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DF6C0480(uint64_t a1)
{
  v2 = sub_1DF6C4B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C04BC(uint64_t a1)
{
  v2 = sub_1DF6C4B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.Eligibility.encode(to:)(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC03500, sub_1DF6C4B8C, &type metadata for FeatureStatus.Eligibility.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4B8C();
  sub_1DF6F6F8C();
  type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  sub_1DF69FA50(&qword_1EDC04598, type metadata accessor for FeatureStatus.PerContextEvaluation, &protocol conformance descriptor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DF6C06A8(uint64_t a1)
{
  sub_1DF6BD050(0);
  sub_1DF6C484C();

  return sub_1DF6F62FC();
}

uint64_t sub_1DF6C0700()
{
  sub_1DF6F6F0C();
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.Eligibility.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03530, sub_1DF6C4B8C, &type metadata for FeatureStatus.Eligibility.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for FeatureStatus.Eligibility(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4B8C();
  v12 = v20;
  sub_1DF6F6F7C();
  if (!v12)
  {
    v13 = v18;
    sub_1DF69FA50(&qword_1EDC04590, type metadata accessor for FeatureStatus.PerContextEvaluation, &protocol conformance descriptor for FeatureStatus.PerContextEvaluation);
    v14 = v19;
    sub_1DF6F6D9C();
    (*(v13 + 8))(v8, v6);
    sub_1DF69F970(v14, v11, type metadata accessor for FeatureStatus.PerContextEvaluation);
    sub_1DF69F970(v11, v17, type metadata accessor for FeatureStatus.Eligibility);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF6C0A10(uint64_t a1)
{
  sub_1DF6F6F0C();
  sub_1DF6BD050(0);
  sub_1DF6C484C();
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C0A7C(void *a1)
{
  sub_1DF6C4CDC(0, &qword_1EDC03500, sub_1DF6C4B8C, &type metadata for FeatureStatus.Eligibility.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4B8C();
  sub_1DF6F6F8C();
  type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  sub_1DF69FA50(&qword_1EDC04598, type metadata accessor for FeatureStatus.PerContextEvaluation, &protocol conformance descriptor for FeatureStatus.PerContextEvaluation);
  sub_1DF6F6DCC();
  return (*(v4 + 8))(v6, v3);
}

BOOL FeatureStatus.isOnboardingRecordPresent.getter()
{
  v1 = type metadata accessor for FeatureStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69F908(v0, v3, type metadata accessor for FeatureStatus);
  v4 = swift_getEnumCaseMultiPayload() != 1;
  sub_1DF69FE90(v3, type metadata accessor for FeatureStatus);
  return v4;
}

id FeatureStatus.subscript.getter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeatureStatus.Eligibility(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeatureStatus(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69F908(v2, v12, type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DF69F970(v12, v6, type metadata accessor for FeatureStatus.Eligibility);
    v13 = FeatureStatus.PerContextEvaluation.evaluation(for:)(a1);
    v14 = type metadata accessor for FeatureStatus.Eligibility;
    v15 = v6;
  }

  else
  {
    sub_1DF69F970(v12, v9, type metadata accessor for FeatureStatus.OnboardingRecord);
    v13 = FeatureStatus.PerContextEvaluation.evaluation(for:)(a1);
    v14 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v15 = v9;
  }

  sub_1DF69FE90(v15, v14);
  return v13;
}

uint64_t sub_1DF6C0EE4()
{
  if (*v0)
  {
    return 0x616F626E4F746F6ELL;
  }

  else
  {
    return 0x656472616F626E6FLL;
  }
}

uint64_t sub_1DF6C0F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656472616F626E6FLL && a2 == 0xE900000000000064;
  if (v6 || (sub_1DF6F6E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616F626E4F746F6ELL && a2 == 0xEC00000064656472)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF6F6E2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF6C1020(uint64_t a1)
{
  v2 = sub_1DF6C4C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C105C(uint64_t a1)
{
  v2 = sub_1DF6C4C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6C10A4(uint64_t a1)
{
  v2 = sub_1DF6C4BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C10E0(uint64_t a1)
{
  v2 = sub_1DF6C4BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6C111C()
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C1160(uint64_t a1)
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](0);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C11A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF6F6E2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF6C1220(uint64_t a1)
{
  v2 = sub_1DF6C4C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6C125C(uint64_t a1)
{
  v2 = sub_1DF6C4C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatus.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1DF6C4CDC(0, &qword_1EDC034E0, sub_1DF6C4BE0, &type metadata for FeatureStatus.NotOnboardedCodingKeys, MEMORY[0x1E69E6F58]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v25 - v4;
  v29 = type metadata accessor for FeatureStatus.Eligibility(0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC034F0, sub_1DF6C4C34, &type metadata for FeatureStatus.OnboardedCodingKeys, v2);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - v7;
  v25 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeatureStatus(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6C4CDC(0, &qword_1EDC03508, sub_1DF6C4C88, &type metadata for FeatureStatus.CodingKeys, v2);
  v14 = v13;
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4C88();
  sub_1DF6F6F8C();
  sub_1DF69F908(v34, v12, type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v30;
    sub_1DF69F970(v12, v30, type metadata accessor for FeatureStatus.Eligibility);
    v37 = 1;
    sub_1DF6C4BE0();
    v18 = v31;
    sub_1DF6F6DBC();
    sub_1DF69FA50(&qword_1EDC04600, type metadata accessor for FeatureStatus.Eligibility, &protocol conformance descriptor for FeatureStatus.Eligibility);
    v19 = v33;
    sub_1DF6F6DCC();
    (*(v32 + 8))(v18, v19);
    v20 = type metadata accessor for FeatureStatus.Eligibility;
    v21 = v17;
  }

  else
  {
    sub_1DF69F970(v12, v9, type metadata accessor for FeatureStatus.OnboardingRecord);
    v36 = 0;
    sub_1DF6C4C34();
    v22 = v26;
    sub_1DF6F6DBC();
    sub_1DF69FA50(&qword_1EDC045D8, type metadata accessor for FeatureStatus.OnboardingRecord, &protocol conformance descriptor for FeatureStatus.OnboardingRecord);
    v23 = v28;
    sub_1DF6F6DCC();
    (*(v27 + 8))(v22, v23);
    v20 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v21 = v9;
  }

  sub_1DF69FE90(v21, v20);
  return (*(v35 + 8))(v16, v14);
}

uint64_t FeatureStatus.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FeatureStatus.Eligibility(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeatureStatus(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF69F908(v1, v11, type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DF69F970(v11, v5, type metadata accessor for FeatureStatus.Eligibility);
    MEMORY[0x1E12DC330](1);
    sub_1DF6BD050(0);
    sub_1DF6C484C();
    sub_1DF6F62FC();
    v12 = type metadata accessor for FeatureStatus.Eligibility;
    v13 = v5;
  }

  else
  {
    sub_1DF69F970(v11, v8, type metadata accessor for FeatureStatus.OnboardingRecord);
    MEMORY[0x1E12DC330](0);
    sub_1DF6BD050(0);
    sub_1DF6C484C();
    sub_1DF6F62FC();
    sub_1DF6C4974(0);
    sub_1DF6C4A88();
    sub_1DF6F62FC();
    sub_1DF6C3CC4(a1, *&v8[*(v6 + 24)]);
    sub_1DF6F5A7C();
    sub_1DF69FA50(&qword_1ECE4D9C8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1DF6F62FC();
    v12 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v13 = v8;
  }

  return sub_1DF69FE90(v13, v12);
}

uint64_t FeatureStatus.hashValue.getter()
{
  sub_1DF6F6F0C();
  FeatureStatus.hash(into:)(v1);
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DF6C4CDC(0, &qword_1EDC03510, sub_1DF6C4BE0, &type metadata for FeatureStatus.NotOnboardedCodingKeys, MEMORY[0x1E69E6F48]);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v43 - v5;
  sub_1DF6C4CDC(0, &qword_1EDC03520, sub_1DF6C4C34, &type metadata for FeatureStatus.OnboardedCodingKeys, v3);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v7;
  sub_1DF6C4CDC(0, &qword_1EDC03538, sub_1DF6C4C88, &type metadata for FeatureStatus.CodingKeys, v3);
  v53 = v8;
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for FeatureStatus(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6C4C88();
  v20 = v56;
  sub_1DF6F6F7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v14;
  v44 = v17;
  v45 = v19;
  v46 = 0;
  v21 = v53;
  v22 = v54;
  v23 = v11;
  v56 = a1;
  v24 = v10;
  v25 = sub_1DF6F6DAC();
  v26 = v25;
  if (*(v25 + 16) != 1)
  {
    v32 = sub_1DF6F6BAC();
    swift_allocError();
    v34 = v33;
    sub_1DF6C4D44(0);
    *v34 = v23;
    sub_1DF6F6D8C();
    sub_1DF6F6B8C();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v55 + 8))(v10, v21);
    swift_unknownObjectRelease();
    a1 = v56;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if ((*(v25 + 32) & 1) == 0)
  {
    v57 = 0;
    sub_1DF6C4C34();
    v35 = v46;
    sub_1DF6F6D7C();
    if (!v35)
    {
      v37 = v10;
      v46 = v26;
      type metadata accessor for FeatureStatus.OnboardingRecord(0);
      sub_1DF69FA50(&qword_1EDC045D0, type metadata accessor for FeatureStatus.OnboardingRecord, &protocol conformance descriptor for FeatureStatus.OnboardingRecord);
      v38 = v44;
      v39 = v49;
      sub_1DF6F6D9C();
      v40 = v22;
      v41 = v55;
      (*(v48 + 8))(v40, v39);
      (*(v41 + 8))(v37, v21);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v29 = v45;
      v42 = v38;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v58 = 1;
  sub_1DF6C4BE0();
  v27 = v52;
  v28 = v46;
  sub_1DF6F6D7C();
  v29 = v45;
  if (v28)
  {
LABEL_8:
    (*(v55 + 8))(v24, v21);
    swift_unknownObjectRelease();
    a1 = v56;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v24;
  v46 = v26;
  type metadata accessor for FeatureStatus.Eligibility(0);
  sub_1DF69FA50(&qword_1EDC045F8, type metadata accessor for FeatureStatus.Eligibility, &protocol conformance descriptor for FeatureStatus.Eligibility);
  v30 = v43;
  v31 = v51;
  sub_1DF6F6D9C();
  (*(v50 + 8))(v27, v31);
  (*(v55 + 8))(v54, v21);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v42 = v30;
LABEL_11:
  sub_1DF69F970(v42, v29, type metadata accessor for FeatureStatus);
  sub_1DF69F970(v29, v47, type metadata accessor for FeatureStatus);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_1DF6C2218()
{
  sub_1DF6F6F0C();
  FeatureStatus.hash(into:)(v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6C225C(uint64_t a1)
{
  sub_1DF6F6F0C();
  FeatureStatus.hash(into:)(v2);
  return sub_1DF6F6F2C();
}

uint64_t FeatureStatus.PerContextEvaluation.init(dictionaryLiteral:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF6BDCD8(0);
    v1 = sub_1DF6F6D3C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DF6C3968(v2, 1, &v4);

  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);

  return sub_1DF6F61FC();
}

uint64_t sub_1DF6C2460(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF6BDCD8(0);
    v1 = sub_1DF6F6D3C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DF6C3968(v2, 1, &v4);

  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);

  return sub_1DF6F61FC();
}

uint64_t HKFeatureAvailabilityRequirementsEvaluation.satisfactionByRequirementIdentifier.getter()
{
  v1 = v0;
  v2 = [v0 requirementIdentifiersOrderedByPriority];
  v3 = [v2 array];

  v4 = sub_1DF6F65AC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DF6AAB1C(v6, v23);
      sub_1DF6B1E38(v23, &v21);
      type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
      if (swift_dynamicCast())
      {
        v8 = v22;
        if (v22)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1DF6B5540(0, v7[2] + 1, 1, v7);
          }

          v10 = v7[2];
          v9 = v7[3];
          if (v10 >= v9 >> 1)
          {
            v7 = sub_1DF6B5540((v9 > 1), v10 + 1, 1, v7);
          }

          v7[2] = v10 + 1;
          v7[v10 + 4] = v8;
        }
      }

      v6 += 32;
      --v5;
    }

    while (v5);

    v11 = v7[2];
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

  v7 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_12:
  *&v23[0] = MEMORY[0x1E69E7CC0];
  sub_1DF6C3928(0, v11, 0);
  v12 = 4;
  v13 = *&v23[0];
  do
  {
    v14 = v7[v12];
    v15 = [v1 isRequirementSatisfiedWithIdentifier_];
    *&v23[0] = v13;
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      v19 = v15;
      sub_1DF6C3928((v16 > 1), v17 + 1, 1);
      v15 = v19;
      v13 = *&v23[0];
    }

    *(v13 + 16) = v17 + 1;
    v18 = v13 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    ++v12;
    --v11;
  }

  while (v11);

  return v13;
}

uint64_t sub_1DF6C287C(void *a1, char a2, uint64_t a3)
{
  v3 = a1;
  swift_getAtKeyPath();

  return v5;
}

uint64_t FeatureStatus.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  sub_1DF6C4E00(0, &qword_1EDC05240, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v87 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = v73 - v6;
  v7 = sub_1DF6F5A7C();
  v86 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v88 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = v73 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v89 = v73 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v84 = v73 - v14;
  v82 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  MEMORY[0x1EEE9AC00](v82);
  v83 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeatureStatus.Eligibility(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (v73 - v22);
  v24 = [a1 requirementsEvaluationByContext];
  type metadata accessor for HKFeatureAvailabilityContext(0);
  sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
  sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
  sub_1DF6F62AC();

  sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
  sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
  v25 = a1;
  sub_1DF6F61FC();
  v26 = &off_1E86C1000;
  v27 = [a1 onboardingRecord];
  v28 = &off_1E86C1000;
  v29 = [v27 onboardingState];

  if ((v29 - 2) < 4)
  {
    sub_1DF69F908(v23, v21, type metadata accessor for FeatureStatus.PerContextEvaluation);
    v30 = [a1 onboardingRecord];
    v31 = [v30 featureSettings];

    v32 = v23;
    if (!v31)
    {
      sub_1DF6C4044(MEMORY[0x1E69E7CC0]);
      v33 = objc_allocWithZone(MEMORY[0x1E696C168]);
      v34 = sub_1DF6F629C();

      v31 = [v33 initWithDictionary_];
    }

    v79 = v31;
    v35 = [v25 onboardingRecord];
    v36 = [v35 allOnboardedCountryCodesRegardlessOfSupportedState];

    v37 = sub_1DF6F672C();
    v38 = [v25 onboardingRecord];
    v39 = [v38 allOnboardingCompletionsRegardlessOfSupportedState];

    sub_1DF69EF80(0, &qword_1EDC04FA0, 0x1E696C2F8);
    v40 = sub_1DF6F65AC();

    KeyPath = swift_getKeyPath();
    v91 = v40;
    v92 = 0;
    v93 = sub_1DF6C4E70;
    v94 = KeyPath;
    swift_retain_n();

    v42 = v87;
    sub_1DF6C3EF0(v87);
    v43 = v86;
    v44 = v86 + 48;
    v77 = *(v86 + 48);
    v45 = v77(v42, 1, v7);
    v80 = v32;
    v78 = v37;
    if (v45 == 1)
    {

      sub_1DF6C4E78(v42);
      v46 = v81;
      (*(v43 + 56))(v81, 1, 1, v7);
      v48 = v84;
      v47 = v85;
    }

    else
    {
      v73[2] = v44;
      v75 = v25;
      v49 = v43;
      v50 = v40;
      v51 = *(v49 + 32);
      v25 = (v49 + 32);
      v26 = v51;
      v28 = v89;
      v51(v89, v42, v7);
      v76 = v50;
      v74 = v21;
      v73[1] = KeyPath;
      if (v50 >> 62)
      {
        goto LABEL_32;
      }

      v29 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v52 = v92;
      if (v92 != v29)
      {
        v87 = v76 & 0xC000000000000001;
        v58 = v76 & 0xFFFFFFFFFFFFFF8;
        v59 = v76 + 32;
        v23 = (v86 + 8);
        do
        {
          if (v87)
          {
            v60 = MEMORY[0x1E12DBF80](v52, v76);
            v61 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              v29 = sub_1DF6F6A8C();
              goto LABEL_8;
            }

            if (v52 >= *(v58 + 16))
            {
              goto LABEL_31;
            }

            v60 = *(v59 + 8 * v52);
            v61 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }
          }

          v92 = v61;
          v62 = v60;
          v63 = [v62 completionDate];
          v64 = v88;
          sub_1DF6F5A6C();

          v28 = v89;
          v65 = v64;
          v66 = v90;
          v26(v90, v65, v7);
          sub_1DF69FA50(&qword_1EDC04F68, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v67 = sub_1DF6F634C();
          v68 = *v23;
          if (v67)
          {
            v68(v28, v7);
            v26(v28, v66, v7);
          }

          else
          {
            v68(v66, v7);
          }

          v52 = v92;
        }

        while (v92 != v29);
      }

      v46 = v81;
      v26(v81, v28, v7);
      v43 = v86;
      (*(v86 + 56))(v46, 0, 1, v7);
      v48 = v84;
      v47 = v85;
      v25 = v75;
      v21 = v74;
    }

    v53 = v77;
    if (v77(v46, 1, v7) == 1)
    {
      sub_1DF6F5A1C();
      if (v53(v46, 1, v7) != 1)
      {
        sub_1DF6C4E78(v46);
      }
    }

    else
    {
      (*(v43 + 32))(v48, v46, v7);
    }

    v54 = v21;
    v55 = v21;
    v56 = v83;
    sub_1DF69F908(v54, v83, type metadata accessor for FeatureStatus.PerContextEvaluation);
    v57 = v82;
    sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168);
    sub_1DF6F60FC();

    sub_1DF69FE90(v55, type metadata accessor for FeatureStatus.PerContextEvaluation);
    sub_1DF69FE90(v80, type metadata accessor for FeatureStatus.PerContextEvaluation);
    *(v56 + *(v57 + 24)) = v78;
    (*(v43 + 32))(v56 + *(v57 + 28), v48, v7);
    sub_1DF69F970(v56, v47, type metadata accessor for FeatureStatus.OnboardingRecord);
    goto LABEL_29;
  }

LABEL_27:
  if (v29 == 1)
  {

    v69 = v79;
    sub_1DF69F970(v23, v79, type metadata accessor for FeatureStatus.PerContextEvaluation);
    sub_1DF69F970(v69, v85, type metadata accessor for FeatureStatus.Eligibility);
LABEL_29:
    type metadata accessor for FeatureStatus(0);
    return swift_storeEnumTagMultiPayload();
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1DF6F6B2C();
  MEMORY[0x1E12DB8A0](0xD000000000000012, 0x80000001DF6FCFA0);
  v71 = [v25 *(v26 + 248)];
  v72 = [v71 *(v28 + 249)];

  v95[0] = v72;
  type metadata accessor for HKFeatureAvailabilityOnboardedCountrySupportedState(0);
  sub_1DF6F6C7C();
  MEMORY[0x1E12DB8A0](0xD00000000000001BLL, 0x80000001DF6FCFC0);
  result = sub_1DF6F6CCC();
  __break(1u);
  return result;
}

void sub_1DF6C3454(id *a1)
{
  v1 = [*a1 completionDate];
  sub_1DF6F5A6C();
}

void sub_1DF6C34B4(id *a1)
{
  v3 = *a1;
  swift_getAtKeyPath();
}

unint64_t sub_1DF6C350C(uint64_t a1)
{
  v2 = sub_1DF6F69CC();

  return sub_1DF6C3658(a1, v2);
}

unint64_t sub_1DF6C3550(uint64_t a1, uint64_t a2)
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v4 = sub_1DF6F6F2C();

  return sub_1DF6C372C(a1, a2, v4);
}

unint64_t sub_1DF6C35C8(uint64_t a1)
{
  sub_1DF6F63EC();
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v2 = sub_1DF6F6F2C();

  return sub_1DF6C37E4(a1, v2);
}

unint64_t sub_1DF6C3658(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DF6F69DC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DF6C372C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DF6F6E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DF6C37E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1DF6F63EC();
      v8 = v7;
      if (v6 == sub_1DF6F63EC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1DF6F6E2C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

char *sub_1DF6C38E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF6E8730(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF6C3908(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF6E8854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF6C3928(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF6E8980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF6C3948(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF6E8ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DF6C3968(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_1DF6C35C8(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1DF6E396C(v16, v6 & 1);
    v11 = sub_1DF6C35C8(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for HKFeatureAvailabilityContext(0);
    v11 = sub_1DF6F6E8C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1DF6E85DC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1DF69F1E4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DF6F6B2C();
    MEMORY[0x1E12DB8A0](0xD00000000000001BLL, 0x80000001DF6FD080);
    type metadata accessor for HKFeatureAvailabilityContext(0);
    sub_1DF6F6C7C();
    MEMORY[0x1E12DB8A0](39, 0xE100000000000000);
    sub_1DF6F6CCC();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_1DF6C35C8(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1DF6E396C(v32, 1);
        v28 = sub_1DF6C35C8(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1DF6C3CC4(__int128 *a1, uint64_t a2)
{
  sub_1DF6F6F2C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E12DC330](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1DF6F6F0C();

        sub_1DF6F645C();
        v11 = sub_1DF6F6F2C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_1DF6C3E20(uint64_t a1)
{
  if (!qword_1ECE4D990)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_1DF69EF80(255, &qword_1EDC03560, 0x1E696AD98);
    sub_1DF69FA50(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1DF6F881C);
    v1 = sub_1DF6F6D4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D990);
    }
  }
}

uint64_t sub_1DF6C3EDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id sub_1DF6C3EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    result = sub_1DF6F6A8C();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[1];
  if (v5 != result)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12DBF80](v1[1], v3);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      result = *(v3 + 8 * v5 + 32);
    }

    v11 = result;
    if (!__OFADD__(v5, 1))
    {
      v1[1] = v5 + 1;
      v12 = v1[2];
      v14 = result;
      v12(&v14);

      v13 = sub_1DF6F5A7C();
      v7 = *(*(v13 - 8) + 56);
      v8 = v13;
      v9 = a1;
      v10 = 0;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v6 = sub_1DF6F5A7C();
  v7 = *(*(v6 - 8) + 56);
  v8 = v6;
  v9 = a1;
  v10 = 1;
LABEL_11:

  return v7(v9, v10, 1, v8);
}

unint64_t sub_1DF6C4044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C5EE8();
    v3 = sub_1DF6F6D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF69F908(v4, &v13, sub_1DF6C5F4C);
      v5 = v13;
      v6 = v14;
      result = sub_1DF6C3550(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF6B1E38(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF6C415C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C3E20(0);
    v3 = sub_1DF6F6D3C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DF6C35C8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1DF6C4248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF6C5E18(0);
    v3 = sub_1DF6F6D3C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DF6C350C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1DF6C4334(uint64_t a1)
{
  sub_1DF6C5CD8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1DF6C5D58(0);
    v8 = sub_1DF6F6D3C();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1DF69F908(v10, v6, sub_1DF6C5CD8);
      v12 = *v6;
      result = sub_1DF6C350C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1DF6F584C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_1DF6C4508(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1DF6C3908(0, v2, 0);
  v3 = v28;
  v24 = a1 + 64;
  result = sub_1DF6F6A5C();
  v6 = result;
  v7 = 0;
  v25 = *(a1 + 36);
  v22 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v24 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = *(*(a1 + 48) + 8 * v6);
    v11 = a2();
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    v27 = v12;

    *&v26 = v11;
    v28 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1DF6C3908((v13 > 1), v14 + 1, 1);
      v3 = v28;
    }

    *(v3 + 16) = v14 + 1;
    result = sub_1DF6B1E38(&v26, (v3 + 32 * v14 + 32));
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v15 = *(v24 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DF6C3EDC(v6, v25, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DF6C3EDC(v6, v25, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v3;
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
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DF6C4778(uint64_t a1)
{
  if (!qword_1ECE4D9A0)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    sub_1DF69EF80(255, &qword_1EDC03560, 0x1E696AD98);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4D9A0);
    }
  }
}

unint64_t sub_1DF6C47F8()
{
  result = qword_1EDC045B0;
  if (!qword_1EDC045B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045B0);
  }

  return result;
}

unint64_t sub_1DF6C484C()
{
  result = qword_1ECE4D9A8;
  if (!qword_1ECE4D9A8)
  {
    sub_1DF6BD050(255);
    sub_1DF69FAE8(&qword_1ECE4D9B0, &qword_1EDC04F70, 0x1E696C158, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D9A8);
  }

  return result;
}

uint64_t sub_1DF6C4910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DF6C4974(uint64_t a1)
{
  if (!qword_1EDC04FC0)
  {
    sub_1DF69EF80(255, &qword_1EDC04FA8, 0x1E696C168);
    v1 = sub_1DF6F60EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04FC0);
    }
  }
}

unint64_t sub_1DF6C49DC()
{
  result = qword_1EDC045F0;
  if (!qword_1EDC045F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045F0);
  }

  return result;
}

void sub_1DF6C4A30()
{
  if (!qword_1EDC04FB0)
  {
    v0 = sub_1DF6F678C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04FB0);
    }
  }
}

unint64_t sub_1DF6C4A88()
{
  result = qword_1ECE4D9B8;
  if (!qword_1ECE4D9B8)
  {
    sub_1DF6C4974(255);
    sub_1DF69FAE8(&qword_1ECE4D9C0, &qword_1EDC04FA8, 0x1E696C168, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D9B8);
  }

  return result;
}

uint64_t sub_1DF6C4B2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DF6C4A30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF6C4B8C()
{
  result = qword_1EDC04618;
  if (!qword_1EDC04618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04618);
  }

  return result;
}

unint64_t sub_1DF6C4BE0()
{
  result = qword_1EDC04588;
  if (!qword_1EDC04588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04588);
  }

  return result;
}

unint64_t sub_1DF6C4C34()
{
  result = qword_1EDC045C8;
  if (!qword_1EDC045C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045C8);
  }

  return result;
}

unint64_t sub_1DF6C4C88()
{
  result = qword_1EDC04630;
  if (!qword_1EDC04630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04630);
  }

  return result;
}

void sub_1DF6C4CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DF6C4D44(uint64_t a1)
{
  if (!qword_1ECE4D9D0)
  {
    sub_1DF6C4DB4();
    sub_1DF6F6B9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4D9D0);
    }
  }
}

unint64_t sub_1DF6C4DB4()
{
  result = qword_1ECE4D9D8;
  if (!qword_1ECE4D9D8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECE4D9D8);
  }

  return result;
}

void sub_1DF6C4E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF6C4E78(uint64_t a1)
{
  sub_1DF6C4E00(0, &qword_1EDC05240, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF6C5074(uint64_t a1)
{
  result = type metadata accessor for FeatureStatus.OnboardingRecord(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeatureStatus.Eligibility(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DF6C5150(uint64_t a1)
{
  type metadata accessor for FeatureStatus.PerContextEvaluation(319);
  if (v1 <= 0x3F)
  {
    sub_1DF6C4974(319);
    if (v2 <= 0x3F)
    {
      sub_1DF6C4A30();
      if (v3 <= 0x3F)
      {
        sub_1DF6F5A7C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DF6C5328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureStatus.OnboardingRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeatureStatus.OnboardingRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF6C553C()
{
  result = qword_1ECE4DA00;
  if (!qword_1ECE4DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA00);
  }

  return result;
}

unint64_t sub_1DF6C5594()
{
  result = qword_1ECE4DA08;
  if (!qword_1ECE4DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA08);
  }

  return result;
}

unint64_t sub_1DF6C55EC()
{
  result = qword_1ECE4DA10;
  if (!qword_1ECE4DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA10);
  }

  return result;
}

unint64_t sub_1DF6C5644()
{
  result = qword_1ECE4DA18;
  if (!qword_1ECE4DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA18);
  }

  return result;
}

unint64_t sub_1DF6C569C()
{
  result = qword_1ECE4DA20;
  if (!qword_1ECE4DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA20);
  }

  return result;
}

unint64_t sub_1DF6C56F4()
{
  result = qword_1ECE4DA28;
  if (!qword_1ECE4DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DA28);
  }

  return result;
}

unint64_t sub_1DF6C574C()
{
  result = qword_1EDC04620;
  if (!qword_1EDC04620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04620);
  }

  return result;
}

unint64_t sub_1DF6C57A4()
{
  result = qword_1EDC04628;
  if (!qword_1EDC04628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04628);
  }

  return result;
}

unint64_t sub_1DF6C57FC()
{
  result = qword_1EDC045B8;
  if (!qword_1EDC045B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045B8);
  }

  return result;
}

unint64_t sub_1DF6C5854()
{
  result = qword_1EDC045C0;
  if (!qword_1EDC045C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045C0);
  }

  return result;
}

unint64_t sub_1DF6C58AC()
{
  result = qword_1EDC04578;
  if (!qword_1EDC04578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04578);
  }

  return result;
}

unint64_t sub_1DF6C5904()
{
  result = qword_1EDC04580;
  if (!qword_1EDC04580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04580);
  }

  return result;
}

unint64_t sub_1DF6C595C()
{
  result = qword_1EDC04608;
  if (!qword_1EDC04608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04608);
  }

  return result;
}

unint64_t sub_1DF6C59B4()
{
  result = qword_1EDC04610;
  if (!qword_1EDC04610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC04610);
  }

  return result;
}

unint64_t sub_1DF6C5A0C()
{
  result = qword_1EDC045E0;
  if (!qword_1EDC045E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045E0);
  }

  return result;
}

unint64_t sub_1DF6C5A64()
{
  result = qword_1EDC045E8;
  if (!qword_1EDC045E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045E8);
  }

  return result;
}

unint64_t sub_1DF6C5ABC()
{
  result = qword_1EDC045A0;
  if (!qword_1EDC045A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045A0);
  }

  return result;
}

unint64_t sub_1DF6C5B14()
{
  result = qword_1EDC045A8;
  if (!qword_1EDC045A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC045A8);
  }

  return result;
}

uint64_t sub_1DF6C5B68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DF6FD000 == a2 || (sub_1DF6F6E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000 || (sub_1DF6F6E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF6FD020 == a2 || (sub_1DF6F6E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DF6FD040 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1DF6F6E2C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1DF6C5CD8(uint64_t a1)
{
  if (!qword_1ECE4DA30)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF6F584C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DA30);
    }
  }
}

void sub_1DF6C5D58(uint64_t a1)
{
  if (!qword_1ECE4DA38)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF6F584C();
    sub_1DF69FAE8(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0, MEMORY[0x1E69E81B8]);
    v1 = sub_1DF6F6D4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4DA38);
    }
  }
}

void sub_1DF6C5E18(uint64_t a1)
{
  if (!qword_1ECE4DA40)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF69EF80(255, &qword_1EDC03638, 0x1E696C3D8);
    sub_1DF69FAE8(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0, MEMORY[0x1E69E81B8]);
    v1 = sub_1DF6F6D4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4DA40);
    }
  }
}

void sub_1DF6C5EE8()
{
  if (!qword_1ECE4DA48)
  {
    v0 = sub_1DF6F6D4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DA48);
    }
  }
}

void sub_1DF6C5F4C()
{
  if (!qword_1ECE4DA50)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DA50);
    }
  }
}

uint64_t HKHealthStore.makeObserverPublisher(queryDescriptors:debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v4;

  v5 = v4;
}

uint64_t HKHealthStore.ObserverPublisher.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

void sub_1DF6C608C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(id *, uint64_t, uint64_t, uint64_t))
{
  if (a5)
  {
    v8 = a5;
    v9 = 2;
    v7 = a5;
    (a6)(&v8);
    sub_1DF6C65D8(v8, v9);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    a6(&v8, a2, a3, a4);
  }
}

uint64_t sub_1DF6C6100@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_1DF6C6150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6C64EC();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6C61B4(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF6C6570();
    v7 = sub_1DF6F672C();
  }

  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  v12 = a2;
  v13 = a5;
  v9(v12, v7, sub_1DF6C6560, v11, a5);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE17ObserverPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0mG6ResultOyytGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = objc_allocWithZone(MEMORY[0x1E696C2E8]);
  sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);

  v8 = sub_1DF6F659C();
  v14[4] = sub_1DF6C6540;
  v14[5] = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DF6C61B4;
  v14[3] = &block_descriptor_6;
  v9 = _Block_copy(v14);
  v10 = [v7 initWithQueryDescriptors:v8 updateHandler:v9];

  _Block_release(v9);

  v11 = v10;
  if (v5)
  {
    v12 = sub_1DF6F63BC();
  }

  else
  {
    v12 = 0;
  }

  [v10 setDebugIdentifier_];

  return v10;
}

unint64_t sub_1DF6C6450(uint64_t a1)
{
  result = sub_1DF6C6478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6C6478()
{
  result = qword_1EDC03E98;
  if (!qword_1EDC03E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E98);
  }

  return result;
}

unint64_t sub_1DF6C64EC()
{
  result = qword_1EDC03E90;
  if (!qword_1EDC03E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E90);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6C6570()
{
  result = qword_1EDC03EB0;
  if (!qword_1EDC03EB0)
  {
    sub_1DF69EF80(255, &qword_1EDC03EB8, 0x1E696C3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EB0);
  }

  return result;
}

void sub_1DF6C65D8(id a1, char a2)
{
  if (a2 == 2)
  {
  }
}

void *DarwinNotificationObserverToken.__allocating_init(notificationName:queue:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1DF6BBC08(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0xFFFFFFFFLL;
  v8[2] = a1;
  v8[3] = v9;
  v8[4] = a2;

  DarwinNotificationObserverToken.beginObservation(handler:)(a3, a4);

  return v8;
}

Swift::Void __swiftcall DarwinNotificationObserverToken.cancel()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v1[4]._os_unfair_lock_opaque = -1;
  }

  os_unfair_lock_unlock(v1 + 5);
}

void DarwinNotificationObserverToken.beginObservation(handler:)(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  out_token = -1;
  v5 = v2[2];
  v6 = v2[4];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10[4] = sub_1DF6C68D8;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DF6C6900;
  v10[3] = &block_descriptor_7;
  v8 = _Block_copy(v10);

  notify_register_dispatch(v5, &out_token, v6, v8);
  _Block_release(v8);
  LODWORD(a2) = out_token;
  v9 = v2[3];
  os_unfair_lock_lock(v9 + 5);
  v9[4]._os_unfair_lock_opaque = a2;
  os_unfair_lock_unlock(v9 + 5);
}

void *DarwinNotificationObserverToken.__allocating_init(notificationName:queue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1DF6BBC08(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xFFFFFFFFLL;
  v4[2] = a1;
  v4[3] = v5;
  v4[4] = a2;
  return v4;
}

void *DarwinNotificationObserverToken.init(notificationName:queue:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6BBC08(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0xFFFFFFFFLL;
  v2[2] = a1;
  v2[3] = v5;
  v2[4] = a2;
  return v2;
}

uint64_t sub_1DF6C6900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DarwinNotificationObserverToken.deinit()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v1[4]._os_unfair_lock_opaque = -1;
  }

  os_unfair_lock_unlock(v1 + 5);

  return v0;
}

uint64_t DarwinNotificationObserverToken.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 5);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v1[4]._os_unfair_lock_opaque = -1;
  }

  os_unfair_lock_unlock(v1 + 5);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PostDarwinNotification(name:)(Swift::String name)
{
  v1 = sub_1DF6F642C();
  notify_post((v1 + 32));
}

void sub_1DF6C6AF8(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  if (*(v3 + 25) == 1)
  {
    *(v3 + 25) = 0;
    swift_beginAccess();
    v8 = *(v3 + 32);
    *(v3 + 32) = a1;
    v9 = a1;
    sub_1DF6C74E8(v8);
    v10 = swift_beginAccess();
    v11 = *(v3 + 40);
    *(v3 + 40) = 0;
    LOBYTE(v8) = *(v3 + 48);
    *(v3 + 48) = 2;
    (*(*v3 + 408))(v10);
    os_unfair_lock_unlock(v7 + 4);
    MEMORY[0x1EEE9AC00](v12);
    a3(a2);
    sub_1DF6B5A20(v11, v8);
  }

  else
  {

    os_unfair_lock_unlock(v7 + 4);
  }
}

uint64_t HKHealthStore.sharedSummaryTransactionPublisher()()
{
  sub_1DF6C6E4C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s38SharedSummaryTransactionQueryPublisherCMa(0);
  v6 = swift_allocObject();
  *(v6 + 96) = 0;
  *(v6 + 80) = v0;
  *(v6 + 88) = 0;
  v10[1] = sub_1DF6ABB00();
  sub_1DF6C6EF8(0);
  sub_1DF6C6F68(0);
  sub_1DF6C7434(&qword_1EDC04450, sub_1DF6C6EF8, &protocol conformance descriptor for StreamPublisher<A, B>);
  v7 = v0;
  sub_1DF6F5FFC();

  sub_1DF6C7434(&qword_1EDC040F0, sub_1DF6C6E4C, MEMORY[0x1E695BC80]);
  v8 = sub_1DF6F5FEC();
  (*(v3 + 8))(v5, v2);
  return v8;
}

void sub_1DF6C6E4C(uint64_t a1)
{
  if (!qword_1EDC040E8)
  {
    sub_1DF6C6EF8(255);
    sub_1DF6C6F68(255);
    sub_1DF6C7434(&qword_1EDC04450, sub_1DF6C6EF8, &protocol conformance descriptor for StreamPublisher<A, B>);
    v1 = sub_1DF6F5DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC040E8);
    }
  }
}

void sub_1DF6C6EF8(uint64_t a1)
{
  if (!qword_1EDC04448)
  {
    sub_1DF6C6F68(255);
    v3 = v2;
    v4 = sub_1DF69F1E4();
    PublisherBase = type metadata accessor for QueryPublisherBase(a1, v3, v4, MEMORY[0x1E69E7288]);
    if (!v6)
    {
      atomic_store(PublisherBase, &qword_1EDC04448);
    }
  }
}

void sub_1DF6C6F68(uint64_t a1)
{
  if (!qword_1EDC03F10)
  {
    sub_1DF6C6FC0();
    v1 = sub_1DF6F663C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03F10);
    }
  }
}

unint64_t sub_1DF6C6FC0()
{
  result = qword_1EDC03610;
  if (!qword_1EDC03610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03610);
  }

  return result;
}

uint64_t sub_1DF6C700C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 96) = 0;
  *(v2 + 80) = a1;
  *(v2 + 88) = 0;
  return sub_1DF6ABB00();
}

uint64_t _s38SharedSummaryTransactionQueryPublisherCMa(uint64_t a1)
{
  result = qword_1EDC03848;
  if (!qword_1EDC03848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DF6C709C()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = objc_allocWithZone(MEMORY[0x1E696C420]);
  v11 = sub_1DF6C757C;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1DF6C7324;
  v10 = &block_descriptor_8;
  v2 = _Block_copy(&v7);

  v3 = [v1 initWithHandler_];
  _Block_release(v2);

  v4 = swift_allocObject();
  swift_weakInit();
  v11 = sub_1DF6C74CC;
  v12 = v4;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1DF6C7324;
  v10 = &block_descriptor_17;
  v5 = _Block_copy(&v7);

  [v3 setUpdateHandler_];
  _Block_release(v5);
  return v3;
}

void sub_1DF6C7254(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a3)
    {
      v6 = a3;
      v7 = a3;
      sub_1DF6C6AF8(a3, sub_1DF6C7584, sub_1DF6F4258);
    }

    else
    {
      if (a2)
      {
        sub_1DF6F3D24(a2);
      }
    }
  }
}

uint64_t sub_1DF6C7324(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1DF6C6FC0();
    v5 = sub_1DF6F65AC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1DF6C73CC()
{
  if (*(v0 + 88))
  {
    [*(v0 + 80) stopQuery_];
  }

  v1 = sub_1DF6F5124();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6C7434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6C74E8(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t HKDateRangeQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF6F613C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HKDateRangeQueryDescriptor.queryAttributes.setter(uint64_t a1)
{
  v3 = sub_1DF6F613C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HKDateRangeQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF6C76BC, 0, 0);
}

uint64_t sub_1DF6C76BC()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 16;
  v0[3] = sub_1DF6C7850;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E696C620]);
  v0[14] = sub_1DF6C7AE0;
  v0[15] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF6C8924;
  v0[13] = &block_descriptor_9;
  v5 = _Block_copy(v0 + 10);
  v6 = v1;
  v7 = [v4 initWithDateIntervalHandler_];
  _Block_release(v5);

  sub_1DF6F699C();
  [v6 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF6C7850(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 128);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DF6C7990(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF69FB2C(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);
      sub_1DF6F599C();
      v9 = v12;
    }

    sub_1DF69F1E4();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1DF6C7AE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DF6B76D4;

  return HKDateRangeQueryDescriptor.result(for:)(a2);
}

uint64_t HKDateRangeQueryDescriptor.Results.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  *v1 = v0;
  v1[1] = sub_1DF6C7C40;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_1DF6C7C40()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1DF6C7D70;
  }

  else
  {
    v2 = sub_1DF6C7D54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF6C7D88(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  *v2 = v1;
  v2[1] = sub_1DF6C7E4C;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_1DF6C7E4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1DF6C7F80;
  }

  else
  {
    v2 = sub_1DF6C7F60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF6C7F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_1DF6C8050;

  return MEMORY[0x1EEE6D8C8](v6 + 2, a5, a6);
}

uint64_t sub_1DF6C8050()
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1DF6F665C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1DF6C8204;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1DF6F665C();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1DF6C81E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1DF6C8204()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[3] = v1;
  sub_1DF69F1E4();
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t HKDateRangeQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_1DF6C8B30(0);

  return sub_1DF6F617C();
}

uint64_t sub_1DF6C82D4()
{
  sub_1DF6C8B30(0);
  sub_1DF6F617C();

  return sub_1DF6C9104(v0);
}

uint64_t HKDateRangeQueryDescriptor.results(for:)(void *a1)
{
  v2 = v1;
  Descriptor = type metadata accessor for HKDateRangeQueryDescriptor(0);
  v5 = *(Descriptor - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  sub_1DF6C8BA8(v2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1DF6C8C0C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_1DF6C8A38(0);
  v9 = a1;
  return sub_1DF6F618C();
}

id sub_1DF6C8434(uint64_t a1, uint64_t a2)
{
  sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = objc_allocWithZone(MEMORY[0x1E696C620]);
  aBlock[4] = sub_1DF6C9160;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6C8924;
  aBlock[3] = &block_descriptor_41;
  v11 = _Block_copy(aBlock);
  v12 = [v10 initWithDateIntervalHandler_];
  _Block_release(v11);

  v13 = v12;
  sub_1DF6F699C();

  return v13;
}

uint64_t sub_1DF6C8620(uint64_t a1, void *a2, void *a3)
{
  sub_1DF6C9204(0, &qword_1ECE4DAB8, MEMORY[0x1E69E8780]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  if (a2)
  {
    v14 = a2;
    sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);

    sub_1DF6F66CC();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v13 = 0;
      sub_1DF6E0CEC(MEMORY[0x1E69E7CC0]);
      sub_1DF69FB2C(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);
      sub_1DF6F599C();
      v11 = v14;
    }

    v14 = v11;
    v12 = a3;
    sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
    return sub_1DF6F66DC();
  }
}

uint64_t sub_1DF6C8810(void *a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DF6C8BA8(v5, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1DF6C8C0C(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1DF6C8A38(0);
  v8 = a1;
  return sub_1DF6F618C();
}

uint64_t sub_1DF6C8924(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1DF6C8AE4();
    sub_1DF6F584C();
    sub_1DF69FB2C(&qword_1EDC03EB0, sub_1DF6C8AE4, MEMORY[0x1E69E81B8]);
    v5 = sub_1DF6F62AC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6C8A38(uint64_t a1)
{
  if (!qword_1ECE4DA60)
  {
    sub_1DF6C8AE4();
    sub_1DF6F584C();
    sub_1DF69FB2C(&qword_1EDC03EB0, sub_1DF6C8AE4, MEMORY[0x1E69E81B8]);
    v1 = sub_1DF6F62BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4DA60);
    }
  }
}

unint64_t sub_1DF6C8AE4()
{
  result = qword_1EDC03EB8;
  if (!qword_1EDC03EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03EB8);
  }

  return result;
}

void sub_1DF6C8B30(uint64_t a1)
{
  if (!qword_1ECE4DA68)
  {
    sub_1DF6C8A38(255);
    v1 = sub_1DF6F619C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4DA68);
    }
  }
}

uint64_t sub_1DF6C8BA8(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKDateRangeQueryDescriptor(0);
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_1DF6C8C0C(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKDateRangeQueryDescriptor(0);
  (*(*(Descriptor - 8) + 32))(a2, a1, Descriptor);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DF6C8EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DF6C8F40(uint64_t a1)
{
  sub_1DF6C9204(319, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(type metadata accessor for HKDateRangeQueryDescriptor(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1DF6F613C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_1DF6C9094(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDateRangeQueryDescriptor(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DF6C8434(a1, v4);
}

uint64_t sub_1DF6C9104(uint64_t a1)
{
  v2 = type metadata accessor for HKDateRangeQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF6C9160(uint64_t a1, void *a2, void *a3)
{
  sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);

  return sub_1DF6C8620(a1, a2, a3);
}

void sub_1DF6C9204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_1DF6C8A38(255);
    v7 = v6;
    v8 = sub_1DF69F1E4();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t RelativeDate.hashValue.getter(unsigned __int8 a1)
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](a1);
  return sub_1DF6F6F2C();
}

uint64_t RelativeDate.init(day:today:)(char *a1, char *a2)
{
  v4 = sub_1DF6F627C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1DF6F623C();
  sub_1DF6F620C();
  v11 = sub_1DF6F621C();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v12(a2, v4);
    v12(a1, v4);
    v12(v10, v4);
    return 0;
  }

  else
  {
    sub_1DF6F620C();
    sub_1DF6C94F0();
    v14 = sub_1DF6F633C();
    v12(a2, v4);
    v12(a1, v4);
    v12(v8, v4);
    v12(v10, v4);
    if (v14)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t sub_1DF6C94F0()
{
  result = qword_1ECE4DAC0;
  if (!qword_1ECE4DAC0)
  {
    sub_1DF6F627C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DAC0);
  }

  return result;
}

unint64_t sub_1DF6C954C()
{
  result = qword_1ECE4DAC8;
  if (!qword_1ECE4DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DAC8);
  }

  return result;
}

uint64_t sub_1DF6C97F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Comparable.clamped(within:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6F6E5C();
  sub_1DF6F639C();
  sub_1DF6F6E6C();
  return (*(v4 + 8))(v6, a2);
}

uint64_t DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v58 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v49 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DownstreamHandlerSubscriptionState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v54 = *(a3 + 32);
  v54(v62, a2, a3);
  v16 = v63;
  v15 = v64;
  __swift_project_boxed_opaque_existential_0(v62, v63);
  v17 = v16;
  v18 = v4;
  (*(v15 + 8))(v17, v15);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v19 = *(a3 + 40);
  v61 = a3;
  v19(a2, a3);
  v53 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = AssociatedConformanceWitness;
    v22 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
    v23 = *(v22 - 8);
    v24 = v58;
    (*(v23 + 32))(v58, v14, v22);
    (*(v23 + 56))(v24, 0, 1, v22);
    v26 = 255;
    v27 = v61;
LABEL_21:
    type metadata accessor for DownstreamHandlerSendFailureReason(v26, AssociatedTypeWitness, v21, v25);
    swift_getWitnessTable();
    sub_1DF6F6F6C();
    swift_storeEnumTagMultiPayload();
    return sub_1DF6CA9A0(v18, a2, v27);
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *&v14[*(TupleTypeMetadata2 + 48)];
  v30 = v57;
  (*(v57 + 32))(v59, v14, AssociatedTypeWitness);
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  v21 = AssociatedConformanceWitness;
  v27 = v61;
  if ((result & 1) == 0)
  {
    if (v29 < 0)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (!v29)
    {
      (*(v30 + 8))(v59, AssociatedTypeWitness);
      v48 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive(0, AssociatedTypeWitness, v21, v47);
      (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
      v26 = 255;
      goto LABEL_21;
    }
  }

  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  v51 = TupleTypeMetadata2;
  v52 = AssociatedTypeWitness;
  if (result)
  {
    v50 = sub_1DF6F5F0C();
    v32 = v59;
    goto LABEL_11;
  }

  if (v29 < 0)
  {
    goto LABEL_23;
  }

  v32 = v59;
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v50 = v29 - 1;
LABEL_11:
  v33 = v54;
  v54(v62, a2, v27);
  v34 = v63;
  v35 = v64;
  __swift_project_boxed_opaque_existential_0(v62, v63);
  (*(v35 + 16))(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v36 = v52;
  v55 = sub_1DF6F5E9C();
  v37 = v18;
  v33(v62, a2, v61);
  v38 = v63;
  v39 = v64;
  __swift_project_boxed_opaque_existential_0(v62, v63);
  (*(v39 + 8))(v38, v39);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v41 = v56;
  v40 = v57;
  (*(v57 + 16))(v56, v32, v36);
  sub_1DF6F5F0C();
  v42 = v50;
  v43 = sub_1DF6F5EEC();
  v44 = sub_1DF6F5F0C();
  if (v43)
  {
    v18 = v37;
    v45 = v59;
    v21 = AssociatedConformanceWitness;
LABEL_20:
    *&v41[*(v51 + 48)] = v44;
    swift_storeEnumTagMultiPayload();
    v27 = v61;
    (*(v61 + 48))(v41, a2, v61);
    AssociatedTypeWitness = v52;
    (*(v40 + 8))(v45, v52);
    v26 = 0;
    goto LABEL_21;
  }

  v46 = v55;
  result = sub_1DF6F5EEC();
  v18 = v37;
  v45 = v59;
  v21 = AssociatedConformanceWitness;
  if (result)
  {
LABEL_17:
    v44 = sub_1DF6F5F0C();
    goto LABEL_20;
  }

  if ((v46 | v42) < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v44 = v42 + v46;
  if (__OFADD__(v42, v46))
  {
    goto LABEL_17;
  }

  if ((v44 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t DownstreamHandlerSubscription.sendCompletionToDownstreamIfNeeded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v53 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v51 = v8;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v44 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DownstreamHandlerSubscriptionState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = *(a3 + 32);
  v19(v57, a2, a3);
  v20 = v58;
  v21 = v59;
  __swift_project_boxed_opaque_existential_0(v57, v58);
  (*(v21 + 8))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v22 = a3;
  (*(a3 + 40))(a2, a3);
  v48 = a2;
  v49 = v4;
  v45 = v19;
  v19(v57, a2, a3);
  v23 = v58;
  v24 = v59;
  __swift_project_boxed_opaque_existential_0(v57, v58);
  (*(v24 + 16))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v25 = v50;
  v26 = *(v55 + 16);
  v52 = v18;
  v26(v16, v18, v56);
  v27 = v51;
  if (swift_getEnumCaseMultiPayload() == 1 && (*(v27 + 48))(v16, 1, v25) == 1)
  {
    (*(v55 + 8))(v52, v56);
    v28 = v53;
    (*(v27 + 56))(v53, 1, 1, v25);
    v29 = AssociatedConformanceWitness;
    v31 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive(0, v25, AssociatedConformanceWitness, v30);
    (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
    v33 = 255;
  }

  else
  {
    v34 = v44;
    (*(v27 + 32))(v44, v16, v25);
    sub_1DF6F5E7C();
    (*(v27 + 8))(v34, v25);
    v35 = v48;
    v36 = v45;
    v45(v57, v48, v22);
    v37 = v58;
    v38 = v59;
    __swift_project_boxed_opaque_existential_0(v57, v58);
    (*(v38 + 8))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v39 = v46;
    (*(v27 + 56))(v46, 1, 1, v25);
    v40 = v56;
    swift_storeEnumTagMultiPayload();
    (*(v22 + 48))(v39, v35, v22);
    v36(v57, v35, v22);
    v41 = v58;
    v42 = v59;
    __swift_project_boxed_opaque_existential_0(v57, v58);
    (*(v42 + 16))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v57);
    (*(v22 + 88))(v35, v22);
    v29 = AssociatedConformanceWitness;
    (*(v55 + 8))(v52, v40);
    v33 = 0;
  }

  type metadata accessor for DownstreamHandlerSendFailureReason(v33, v25, v29, v32);
  swift_getWitnessTable();
  sub_1DF6F6F6C();
  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall DownstreamHandlerSubscription.cancel()()
{
  v2 = v1;
  v3 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for DownstreamHandlerSubscriptionState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v24 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v27 = *(v2 + 32);
  v27(v28, v3, v2);
  v12 = v29;
  v11 = v30;
  __swift_project_boxed_opaque_existential_0(v28, v29);
  (*(v11 + 8))(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(v28);
  (*(v2 + 40))(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(AssociatedTypeWitness - 8);
    v14 = (*(v13 + 48))(v10, 1, AssociatedTypeWitness);
    v16 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
    (*(*(v16 - 8) + 8))(v10, v16);
    if (v14 == 1)
    {
      v27(v28, v3, v2);
      v17 = v29;
      v18 = v30;
      __swift_project_boxed_opaque_existential_0(v28, v29);
      (*(v18 + 16))(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return;
    }
  }

  else
  {
    (*(v24 + 8))(v10, v6);
    v13 = *(AssociatedTypeWitness - 8);
  }

  v19 = *(v13 + 56);
  v20 = v26;
  v19(v26, 1, 1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 48))(v20, v3, v2);
  v27(v28, v3, v2);
  v21 = v29;
  v22 = v30;
  __swift_project_boxed_opaque_existential_0(v28, v29);
  (*(v22 + 16))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  (*(v2 + 88))(v3, v2);
}

uint64_t static Result<>.success.getter()
{
  sub_1DF6F6F6C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DF6CA9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(v6, a2, a3);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v4 + 16))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DF6CAA28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_1DF6CABB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

uint64_t sub_1DF6CAE78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(v3 + 84))
  {
    ++v4;
  }

  if (v4 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v11 < 2)
    {
LABEL_28:
      v13 = *(a1 + v6);
      if (v13 >= 2)
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
    goto LABEL_28;
  }

LABEL_17:
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

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_1DF6CAFD0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(v5 + 84))
  {
    ++v6;
  }

  if (v6 <= v7)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_41:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v6] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_26;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1DF6CB1C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1DF6CB348(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1DF6CB614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for FeatureStatusPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a5);

  return DownstreamHandlerSubscription.sendValueToDownstreamIfNeeded(_:)(a1, v8, a3, a4);
}

uint64_t sub_1DF6CB674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for FeatureStatusPublisher.Inner(0, *(a2 + 80), *(a2 + 88), a5);

  return DownstreamHandlerSubscription.sendCompletionToDownstreamIfNeeded(_:)(a1, v8, a3, a4);
}

uint64_t sub_1DF6CB704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = _s23SharingEntriesPublisherV5InnerCMa(0, *(a2 + 80), *(a2 + 88), a4);

  return a4(a1, v6, a3);
}

uint64_t sub_1DF6CB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for FeatureStatusPublisher.Inner(0, a3, a4, a4);
  swift_unknownObjectRetain();
  v9 = sub_1DF6CD3EC(a1, a2, v7, v8);
  v11[3] = v6;
  v11[4] = swift_getWitnessTable();
  v11[0] = v9;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void sub_1DF6CB840(void *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  sub_1DF6CD438(0, &qword_1EDC046A0, type metadata accessor for os_unfair_lock_s, MEMORY[0x1E69E6708]);
  a1[3] = v4;
  a1[4] = &protocol witness table for <A> UnsafeMutablePointer<A>;
  *a1 = v3;
}

uint64_t sub_1DF6CB8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v7 = type metadata accessor for DownstreamHandlerSubscriptionState(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  return (*(*(v7 - 8) + 16))(a1, &v1[v5], v7);
}