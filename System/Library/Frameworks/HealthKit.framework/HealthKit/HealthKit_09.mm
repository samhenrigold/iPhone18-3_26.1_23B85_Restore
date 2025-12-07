uint64_t HKSleepDaySummaryCollection.isEqual(_:)(uint64_t a1)
{
  v2 = sub_191C0DAF0(a1, v10);
  if (!v11)
  {
    sub_191C74400(v10);
    goto LABEL_5;
  }

  type metadata accessor for HKSleepDaySummaryCollection(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = [v9 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  v4 = sub_191CC68E8();

  v5 = [v1 sleepDaySummaries];
  v6 = sub_191CC68E8();

  v7 = sub_191C74470(v4, v6);

  return v7 & 1;
}

uint64_t sub_191C74400(uint64_t a1)
{
  sub_191C0B13C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C74470(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x193B02790](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x193B02790](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_191CC6DA8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_191CC6DA8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_191CC6EE8();
  }

  result = sub_191CC6EE8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t HKSleepDaySummaryCollection.hash.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  sub_191CC68E8();

  sub_191C74868();
  v2 = sub_191CC6998();

  return v2;
}

unint64_t sub_191C74868()
{
  result = qword_1EADCC6E0;
  if (!qword_1EADCC6E0)
  {
    sub_191BFAE6C(255, &qword_1EADCC4C0, off_1E7375508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6E0);
  }

  return result;
}

id HKSleepDaySummaryCollection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

HealthKit::SleepClockTime __swiftcall SleepClockTime.init(hour:minute:seconds:)(Swift::Int hour, Swift::Int minute, Swift::Int seconds)
{
  *v3 = hour;
  v3[1] = minute;
  v3[2] = seconds;
  result.seconds = seconds;
  result.minute = minute;
  result.hour = hour;
  return result;
}

id sub_191C74A38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_191CC6288();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC62A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191CC5CF8();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_191CC6148();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 primarySleepPeriod];
  if (result)
  {
    v46 = v15;
    v47 = v9;
    v51 = v2;
    v18 = result;
    v19 = [result segments];

    sub_191BFAE6C(0, &qword_1EADCC6F0, off_1E7375570);
    v20 = sub_191CC68E8();

    v52 = a1;
    v49 = v5;
    v50 = v4;
    v48 = v7;
    v56 = v8;
    if (v20 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193B02790](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if ([v23 category] != 2 || objc_msgSend(v24, sel_category))
        {

          v26 = [v24 dateInterval];
          sub_191CC5CA8();

          sub_191CC5CE8();
          (*(v53 + 8))(v14, v54);
          v27 = v51;
          v28 = [v51 calendar];
          sub_191CC6238();

          v29 = *MEMORY[0x1E6969A58];
          v31 = v48;
          v30 = v49;
          v45 = *(v49 + 104);
          v32 = v50;
          v45(v48, v29, v50);
          v33 = sub_191CC6298();
          v34 = *(v30 + 8);
          v53 = v33;
          v54 = v34;
          v34(v31, v32);
          v35 = *(v47 + 1);
          v35(v11, v56);
          v47 = v35;
          v36 = [v27 calendar];
          sub_191CC6238();

          v37 = v45;
          v45(v31, *MEMORY[0x1E6969A88], v32);
          v49 = sub_191CC6298();
          v54(v31, v32);
          v35(v11, v56);
          v38 = [v51 calendar];
          sub_191CC6238();

          v37(v31, *MEMORY[0x1E6969A98], v32);
          v39 = v57;
          v40 = sub_191CC6298();

          v54(v31, v32);
          v47(v11, v56);
          result = (*(v55 + 8))(v39, v46);
          v41 = v52;
          v42 = v49;
          *v52 = v53;
          v41[1] = v42;
          v41[2] = v40;
          *(v41 + 24) = 0;
          return result;
        }

        ++v22;
        if (v25 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    v43 = v52;
    *v52 = 0;
    v43[1] = 0;
    v43[2] = 0;
    *(v43 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

id sub_191C7501C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_191CC6288();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC62A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_191CC5CF8();
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_191CC6148();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 primarySleepPeriod];
  if (!result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    return result;
  }

  v49 = v11;
  v50 = v14;
  v53 = v5;
  v17 = result;
  v18 = [result segments];

  sub_191BFAE6C(0, &qword_1EADCC6F0, off_1E7375570);
  v19 = sub_191CC68E8();

  v61 = v19;
  v54 = v4;
  v55 = a1;
  v59 = v8;
  v51 = v13;
  v52 = v9;
  if (v19 >> 62)
  {
    goto LABEL_25;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    while (1)
    {
      if (!v20)
      {
        v26 = 0;
        goto LABEL_18;
      }

      if (__OFSUB__(v20--, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v20 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(v19 + 32 + 8 * v20);
        goto LABEL_10;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      v20 = sub_191CC6EE8();
    }

    v22 = MEMORY[0x193B02790](v20, v19);
LABEL_10:
    v23 = v22;
    if ([v22 category] != 2)
    {
      break;
    }

    v24 = [v23 category];

    if (v24)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  MEMORY[0x1EEE9AC00](v25);
  *(&v47 - 2) = &v61;
  v62 = v20;
  sub_191C7595C(&v62, &v63);
  v26 = v63;
LABEL_18:

  if (v26)
  {
    v27 = [v26 dateInterval];
    v48 = v26;
    v28 = v27;
    v29 = v56;
    sub_191CC5CA8();

    sub_191CC5CB8();
    (*(v57 + 8))(v29, v49);
    v30 = [v2 calendar];
    v31 = v58;
    sub_191CC6238();

    v32 = *MEMORY[0x1E6969A58];
    v34 = v53;
    v33 = v54;
    v49 = *(v53 + 104);
    v49(v7, v32, v54);
    v57 = sub_191CC6298();
    v35 = *(v34 + 8);
    v35(v7, v33);
    v47 = v2;
    v53 = *(v52 + 8);
    v36 = v59;
    (v53)(v31, v59);
    v37 = [v2 calendar];
    sub_191CC6238();

    v38 = v49;
    v49(v7, *MEMORY[0x1E6969A88], v33);
    v56 = sub_191CC6298();
    v35(v7, v33);
    v39 = v36;
    v40 = v53;
    (v53)(v31, v39);
    v41 = [v47 calendar];
    sub_191CC6238();

    v38(v7, *MEMORY[0x1E6969A98], v33);
    v42 = v60;
    v43 = sub_191CC6298();

    v35(v7, v33);
    v40(v31, v59);
    result = (*(v50 + 8))(v42, v51);
    v44 = v55;
    v45 = v56;
    *v55 = v57;
    v44[1] = v45;
    v44[2] = v43;
    *(v44 + 24) = 0;
  }

  else
  {
    v46 = v55;
    *v55 = 0;
    v46[1] = 0;
    v46[2] = 0;
    *(v46 + 24) = 1;
  }

  return result;
}

uint64_t sub_191C75698@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  v6 = sub_191CC68E8();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v7 = sub_191CC6EE8();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193B02790](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      a1(v21);

      if ((v22 & 1) == 0)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    v13 = v21[0];
    v18 = v21[2];
    v19 = v21[1];
    v20 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_191C07970(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_191C07970((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v16 = &v9[24 * v15];
    *(v16 + 4) = v13;
    *(v16 + 5) = v19;
    *(v16 + 6) = v18;
    a2 = v20;
  }

  while (v8 != v7);
LABEL_23:

  static HKSleepClockTimeAveraging.averageClockTimeAsleep(for:)(v9, a2);
}

uint64_t getEnumTagSinglePayload for SleepClockTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepClockTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_191C758F0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x193B02790](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id HKAppleSleepingBreathingDisturbancesClassification.init(classifying:)(void *a1)
{
  v1 = a1;
  v2 = HKAppleSleepingBreathingDisturbancesClassificationForQuantity(a1);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];

    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_191C75A10()
{
  result = qword_1EADCC6F8;
  if (!qword_1EADCC6F8)
  {
    sub_191C75A68(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6F8);
  }

  return result;
}

void sub_191C75A68(uint64_t a1)
{
  if (!qword_1EADCC700)
  {
    type metadata accessor for HKAppleSleepingBreathingDisturbancesClassification(255);
    v1 = sub_191CC6978();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC700);
    }
  }
}

BOOL HKAppleWalkingSteadinessClassification.init(for:)(HKQuantity *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = swift_slowAlloc();
  v8[0] = 0;
  result = HKAppleWalkingSteadinessClassificationForQuantity(a1, v3, v8);
  v5 = v8[0];
  if (result)
  {
    v1 = *v3;
    v6 = v8[0];
    MEMORY[0x193B047C0](v3, -1, -1);

    return v1;
  }

  if (v8[0])
  {
    swift_willThrow();
    v7 = v5;
    MEMORY[0x193B047C0](v3, -1, -1);

    return v1;
  }

  __break(1u);
  return result;
}

HKQuantity *HKAppleWalkingSteadinessClassification.minimum.getter(HKAppleWalkingSteadinessClassification a1)
{
  v1 = HKAppleWalkingSteadinessMinimumQuantityForClassification(a1);

  return v1;
}

HKQuantity *HKAppleWalkingSteadinessClassification.maximum.getter(HKAppleWalkingSteadinessClassification a1)
{
  v1 = HKAppleWalkingSteadinessMaximumQuantityForClassification(a1);

  return v1;
}

unint64_t sub_191C75C30()
{
  result = qword_1EADCC708;
  if (!qword_1EADCC708)
  {
    sub_191C75C88(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC708);
  }

  return result;
}

void sub_191C75C88(uint64_t a1)
{
  if (!qword_1EADCC710)
  {
    type metadata accessor for HKAppleWalkingSteadinessClassification(255);
    v1 = sub_191CC6978();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC710);
    }
  }
}

id HKQuantitySeriesSampleQueryDescriptor.predicate.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void HKQuantitySeriesSampleQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
}

__n128 HKQuantitySeriesSampleQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t *HKQuantitySeriesSampleQueryDescriptor.init(predicate:options:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2;
  a3[4] = 0;
  a3[5] = -1;
  *a3 = v3;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = 0;
  return result;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Result.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0) + 20);
  v4 = sub_191CC5CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *HKQuantitySeriesSampleQueryDescriptor.Result.sample.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Result.init(quantity:dateInterval:sample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v8 = *(v7 + 20);
  v9 = sub_191CC5CF8();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

void HKQuantitySeriesSampleQueryDescriptor.Result.hash(into:)(uint64_t a1)
{
  sub_191CC6DB8();
  v2 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_191CC66A8();
  v3 = *(v1 + *(v2 + 24));
  if (v3)
  {
    sub_191CC74E8();
    v4 = v3;
    sub_191CC6DB8();
  }

  else
  {
    sub_191CC74E8();
  }
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Result.hashValue.getter()
{
  sub_191CC74C8();
  sub_191CC6DB8();
  v1 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_191CC66A8();
  v2 = *(v0 + *(v1 + 24));
  sub_191CC74E8();
  if (v2)
  {
    v3 = v2;
    sub_191CC6DB8();
  }

  return sub_191CC7508();
}

uint64_t sub_191C761F4(uint64_t a1)
{
  sub_191CC74C8();
  sub_191CC6DB8();
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_191CC66A8();
  v3 = *(v1 + *(a1 + 24));
  sub_191CC74E8();
  if (v3)
  {
    v4 = v3;
    sub_191CC6DB8();
  }

  return sub_191CC7508();
}

void sub_191C762DC(uint64_t a1, uint64_t a2)
{
  sub_191CC6DB8();
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_191CC66A8();
  v4 = *(v2 + *(a2 + 24));
  if (v4)
  {
    sub_191CC74E8();
    v5 = v4;
    sub_191CC6DB8();
  }

  else
  {
    sub_191CC74E8();
  }
}

uint64_t sub_191C763E4(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  sub_191CC6DB8();
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_191CC66A8();
  v4 = *(v2 + *(a2 + 24));
  sub_191CC74E8();
  if (v4)
  {
    v5 = v4;
    sub_191CC6DB8();
  }

  return sub_191CC7508();
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_191C77D64(0);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C76620, 0, 0);
}

uint64_t sub_191C76620()
{
  v1 = HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.modify();
  v3 = v1;
  v4 = *v2;
  if (!*v2)
  {
    v9 = v0[13];
    (v1)(v0 + 2, 0);
    v10 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_8;
  }

  v5 = *(v4 + 16);
  v6 = v2[1];
  if (v6 == v5)
  {
    v7 = v0[13];
    v8 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    if (v6 >= v5)
    {
      __break(1u);
      return MEMORY[0x1EEE6DB98](v1, v2);
    }

    v11 = v0[13];
    v12 = v2;
    v8 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    v13 = *(v8 - 8);
    sub_191C77D98(v4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v6, v11);
    v12[1] = v6 + 1;
    (*(v13 + 56))(v11, 0, 1, v8);
  }

  v14 = v0[13];
  (v3)(v0 + 2, 0);
  type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v15 = *(v8 - 8);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
LABEL_8:
    sub_191C78654(v0[13], sub_191C77D64);
    v16 = swift_task_alloc();
    v0[14] = v16;
    sub_191C77EC4(0, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
    v2 = v17;
    *v16 = v0;
    v16[1] = sub_191C76988;
    v1 = (v0 + 10);

    return MEMORY[0x1EEE6DB98](v1, v2);
  }

  v18 = v0[11];
  sub_191C77E60(v0[13], v18);
  (*(v15 + 56))(v18, 0, 1, v8);

  v19 = v0[1];

  return v19();
}

uint64_t sub_191C76988()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_191BFB724;
  }

  else
  {
    v2 = sub_191C76A9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void (*sub_191C76A9C())()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = (v1 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0) + 20));

  *v3 = v2;
  v3[1] = 0;
  result = HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.modify();
  v6 = result;
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v7 + 16);
    v9 = v5[1];
    if (v9 == v8)
    {
      v10 = v0[11];
      v11 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    }

    else
    {
      if (v9 >= v8)
      {
        __break(1u);
        return result;
      }

      v14 = v0[11];
      v15 = v5;
      v16 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
      v17 = *(v16 - 8);
      sub_191C77D98(v7 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v9, v14);
      v15[1] = v9 + 1;
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    (v6)(v0 + 6, 0);
  }

  else
  {
    v12 = v0[11];
    (result)(v0 + 6, 0);
    v13 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  v18 = v0[1];

  return v18();
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.nextResultIterator()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  sub_191C77EC4(0, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
  *v1 = v0;
  v1[1] = sub_191C012B8;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_191C76D80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_191BFD978;

  return HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.next()(a1);
}

uint64_t sub_191C76E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_191BFDBF4;

  return HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.next()(a1);
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  sub_191C77EC4(0, &qword_1EADCC730, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  result = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_191C76F18@<X0>(uint64_t a1@<X8>)
{
  sub_191C77EC4(0, &qword_1EADCC730, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  sub_191C78654(v1, type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results);
  result = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0);
  v4 = (a1 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_191C76F94(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (!*(v2 + 16))
  {
    *(v2 + 16) = sub_191C07A90(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
  }

  sub_191C77D98(a1, v8);
  result = swift_beginAccess();
  v10 = *(v2 + 16);
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_191C07A90(0, v10[2] + 1, 1, v10);
      *(v2 + 16) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_191C07A90((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    sub_191C77E60(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13);
    *(v2 + 16) = v10;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_191C77144()
{

  return swift_deallocClassInstance();
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.results(for:)(void *a1)
{
  sub_191C77EC4(0, &qword_1EADCC738, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = v1[1];
  v19[0] = *v1;
  v19[1] = v8;
  v19[2] = v1[2];
  type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.ResultBatch();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  v11 = v1[1];
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = v1[2];
  *(v10 + 64) = v9;
  *(v10 + 72) = a1;
  v15 = sub_191C77F60;
  v16 = v10;
  v17 = a1;
  sub_191BFAD0C(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  sub_191C77F78(v19, v18);

  v12 = a1;
  sub_191CC6AF8();
}

id sub_191C77344(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v28[-v12 - 8];
  v27 = a2[1];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  (*(v10 + 32))(v16 + v15, v13, v9);
  *(v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v17 = objc_allocWithZone(HKQuantitySeriesSampleQuery);
  v32 = sub_191C786B4;
  v33 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_191C77B78;
  v31 = &block_descriptor_19;
  v18 = _Block_copy(&aBlock);

  v19 = a4;
  v20 = [v17 initWithQuantityType:v14 predicate:v27 quantityBatchHandler:v18];
  _Block_release(v18);

  v21 = a2[2];
  [v20 setIncludeSample_];
  [v20 setOrderByQuantitySampleStartDate_];
  aBlock = *(a2 + 3);
  v30 = a2[5];
  v22 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v23 = v20;
    sub_191BFC340(&aBlock, v28);
    v22 = sub_191CC6778();
  }

  else
  {
    v24 = v20;
  }

  v25 = v30;
  [v20 setDebugIdentifier_];

  [v20 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  return v20;
}

uint64_t sub_191C77634(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, id a11)
{
  v39 = a8;
  v34 = a1;
  v35 = a6;
  v40 = a5;
  sub_191C77EC4(0, &qword_1EADCC7D8, MEMORY[0x1E69E8780]);
  v37 = *(v15 - 8);
  v38 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v33 - v16;
  v17 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_191CC6148();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = &v33 - v26;
  if (a2)
  {
    v28 = a2;
    sub_191CC6058();
    (*(v21 + 16))(v24, v27, v20);
    sub_191CC5CD8();
    *v19 = v28;
    *(v19 + *(v17 + 24)) = a3;
    v29 = a3;
    sub_191C76F94(v19, a4);
    sub_191C78654(v19, type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result);
    result = (*(v21 + 8))(v27, v20);
  }

  v30 = v40;
  if (!a4 || (v40 & 1) != 0)
  {
    swift_beginAccess();
    if (*(a7 + 16))
    {
      v41 = *(a7 + 16);
      sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);

      v31 = v36;
      sub_191CC6A88();
      (*(v37 + 8))(v31, v38);
    }

    *(a7 + 16) = 0;

    if (v30)
    {
      [a11 stopQuery_];
      v41 = v35;
      v32 = v35;
      sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
      return sub_191CC6A98();
    }
  }

  return result;
}

uint64_t sub_191C779B0(void *a1)
{
  sub_191C77EC4(0, &qword_1EADCC738, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-v6];
  v8 = v1[1];
  v19[0] = *v1;
  v19[1] = v8;
  v19[2] = v1[2];
  type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.ResultBatch();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  v11 = v1[1];
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = v1[2];
  *(v10 + 64) = v9;
  *(v10 + 72) = a1;
  v15 = sub_191C787E0;
  v16 = v10;
  v17 = a1;
  sub_191BFAD0C(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  sub_191C77F78(v19, v18);

  v12 = a1;
  sub_191CC6AF8();
}

void sub_191C77B78(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v17 = *(a1 + 32);

  v21 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a7;
  v17(v21, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _s9HealthKit37HKQuantitySeriesSampleQueryDescriptorV6ResultV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  sub_191BFAE6C(0, &qword_1EADCC5C0, 0x1E69E58C0);
  if (sub_191CC6DA8())
  {
    v4 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    if (sub_191CC5C98())
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_191BFAE6C(0, &qword_1EADCA928, off_1E7375390);
          v8 = v7;
          v9 = v6;
          v10 = sub_191CC6DA8();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_191C77D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_191C77DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_191C77E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_191C77EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_191BFAD0C(255);
    v7 = v6;
    v8 = sub_191BF92E0();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_191C77FB4()
{
  result = qword_1EADCC740;
  if (!qword_1EADCC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC740);
  }

  return result;
}

unint64_t sub_191C7800C()
{
  result = qword_1EADCC748;
  if (!qword_1EADCC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC748);
  }

  return result;
}

unint64_t sub_191C78064()
{
  result = qword_1EADCC750;
  if (!qword_1EADCC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC750);
  }

  return result;
}

unint64_t sub_191C780BC()
{
  result = qword_1EADCC758;
  if (!qword_1EADCC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC758);
  }

  return result;
}

uint64_t sub_191C78158(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_191C78298(uint64_t a1)
{
  sub_191BFAE6C(319, &qword_1EADCC788, off_1E7375378);
  if (v1 <= 0x3F)
  {
    sub_191CC5CF8();
    if (v2 <= 0x3F)
    {
      sub_191C78344(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_191C78344(uint64_t a1)
{
  if (!qword_1EADCC790)
  {
    sub_191BFAE6C(255, &qword_1EADCA928, off_1E7375390);
    v1 = sub_191CC6DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC790);
    }
  }
}

void sub_191C783D4(uint64_t a1)
{
  sub_191C77DFC(319, &qword_1EADCC798, sub_191BFAD0C, type metadata accessor for HKQueryAsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C78498(uint64_t a1)
{
  sub_191C77EC4(319, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    sub_191C77DFC(319, &qword_1EADCC7C0, sub_191C78568, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_191C78568(uint64_t a1)
{
  if (!qword_1EADCC7C8)
  {
    sub_191BFAD0C(255);
    sub_191C78158(&qword_1EADCC7D0, sub_191BFAD0C, MEMORY[0x1E69E6340]);
    v1 = sub_191CC7108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC7C8);
    }
  }
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_191C78654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_191C786B4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, double a7, double a8)
{
  sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
  v18 = (*(*(v17 - 8) + 80) + 24) & ~*(*(v17 - 8) + 80);
  return sub_191C77634(a1, a2, a3, a4, a5, a6, *(v8 + 16), v8 + v18, a7, a8, *(v8 + ((*(*(v17 - 8) + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static HKCategoryValuePredicateProviding<>.predicateForSamples(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_opt_self();
  sub_191CC6878();
  v6 = [v5 predicateForCategorySamplesWithOperatorType:a1 value:v8];

  return v6;
}

id static HKCategoryValuePredicateProviding<>.predicateForSamples(equalTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v15[5] = a1;
  v15[2] = a2;
  v15[3] = a3;
  v7 = sub_191CC6B88();
  v8 = sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_191C69C84(sub_191C789D0, v15, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  sub_191C7B380(v11);

  sub_191C3E29C(&qword_1EADCC7E0, &qword_1EADCD140, 0x1E696AD98);
  v12 = sub_191CC6B28();

  v13 = [v6 predicateForCategorySamplesEqualToValues_];

  return v13;
}

id sub_191C789D0@<X0>(void *a1@<X8>)
{
  sub_191CC6878();
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *a1 = result;
  return result;
}

uint64_t sub_191C78A3C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_191CC6EF8();

    if (v9)
    {

      sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_191CC6EE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_191C8F6D8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_191C796E8(v20 + 1, &qword_1EADCC818, &qword_1EADCD140, 0x1E696AD98, &qword_1EADCC7E0);
    }

    v18 = v8;
    sub_191C910F8();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v11 = sub_191CC6D98();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_191C79FEC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_1EADCC818, &qword_1EADCD140, 0x1E696AD98, &qword_1EADCC7E0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_191CC6DA8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_191C78CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v6 = *(DatabaseAccessibilityAssertionsRecord - 8);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  v10 = sub_191CC7508();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_191C7B914(*(v9 + 48) + v14 * v12, v8);
      v15 = sub_191CC6178();
      sub_191C7B9DC(v8);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_191C7B9DC(a2);
    sub_191C7B914(*(v9 + 48) + v14 * v12, v19);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_191C7B914(a2, v8);
    v20 = *v3;
    sub_191C79D9C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_191C7B978(a2, v17);
    return 1;
  }
}

uint64_t sub_191C78EC4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_191CC6EF8();

    if (v9)
    {

      sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_191CC6EE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_191C8F8D8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_191C796E8(v20 + 1, &unk_1EADCD0C0, &unk_1EADCD0A0, off_1E7374DD0, &qword_1EADCC800);
    }

    v18 = v8;
    sub_191C910F8();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
  v11 = sub_191CC6D98();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_191C79FEC(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1EADCD0C0, &unk_1EADCD0A0, off_1E7374DD0, &qword_1EADCC800);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_191CC6DA8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_191C7913C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_191CC74C8();
  MEMORY[0x193B02C70](a2);
  v6 = sub_191CC7508();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_191C7A194(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_191C79234(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_191CC6F48();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_191C7B610(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x193B026F0](v16, a2);
      sub_191C7B66C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_191C7B66C(a2);
    sub_191C7B610(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_191C7B610(a2, v16);
    v15 = *v3;
    sub_191C7A2F0(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_191C793A4(uint64_t a1)
{
  v2 = v1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v32 = *(DatabaseAccessibilityAssertionsRecord - 8);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_191C7B880(0);
  result = sub_191CC6F78();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_191C7B978(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_191CC74C8();
      sub_191CC61A8();
      sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_191CC66A8();
      result = sub_191CC7508();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_191C7B978(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_191C796E8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_191C7B7F4(0, a2, a3, a4, a5);
  result = sub_191CC6F78();
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
      result = sub_191CC6D98();
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

uint64_t sub_191C79904(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_191C7B760(0);
  result = sub_191CC6F78();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_191CC74C8();
      MEMORY[0x193B02C70](v17);
      result = sub_191CC7508();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

uint64_t sub_191C79B48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_191C7B6C0();
  result = sub_191CC6F78();
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
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_191CC6F48();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_191C79D9C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v9 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v10 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_191C793A4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_191C7A468();
      goto LABEL_12;
    }

    v26 = v10;
    sub_191C7AA54(v13 + 1);
  }

  v15 = *v4;
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  v16 = sub_191CC7508();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_191C7B914(*(v15 + 48) + v19 * a2, v12);
      v20 = sub_191CC6178();
      sub_191C7B9DC(v12);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_191C7B978(a1, *(v21 + 48) + *(v9 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_191CC7438();
  __break(1u);
  return result;
}

void sub_191C79FEC(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
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
    sub_191C796E8(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_191C7A660(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_191C7AD44(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_191CC6D98();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_191BFAE6C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_191CC6DA8();

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
  sub_191CC7438();
  __break(1u);
}

void sub_191C7A194(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_191C79904(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_191C7A7B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_191C7AF4C(v5 + 1);
  }

  v8 = *v3;
  sub_191CC74C8();
  MEMORY[0x193B02C70](result);
  v9 = sub_191CC7508();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HKCategoryValueSleepAnalysis(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_191CC7438();
  __break(1u);
}

uint64_t sub_191C7A2F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_191C79B48(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_191C7A8E8();
      goto LABEL_12;
    }

    sub_191C7B160(v7 + 1);
  }

  v9 = *v3;
  result = sub_191CC6F48();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_191C7B610(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x193B026F0](v19, v6);
      result = sub_191C7B66C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_191CC7438();
  __break(1u);
  return result;
}

void *sub_191C7A468()
{
  v1 = v0;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v3 = *(DatabaseAccessibilityAssertionsRecord - 8);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C7B880(0);
  v6 = *v0;
  v7 = sub_191CC6F68();
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_191C7B914(*(v6 + 48) + v21, v5);
        result = sub_191C7B978(v5, *(v8 + 48) + v21);
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

    *v1 = v8;
  }

  return result;
}

id sub_191C7A660(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_191C7B7F4(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_191CC6F68();
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

void *sub_191C7A7B4()
{
  v1 = v0;
  sub_191C7B760(0);
  v2 = *v0;
  v3 = sub_191CC6F68();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_191C7A8E8()
{
  v1 = v0;
  sub_191C7B6C0();
  v2 = *v0;
  v3 = sub_191CC6F68();
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
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_191C7B610(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_191C7AA54(uint64_t a1)
{
  v2 = v1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v31 = *(DatabaseAccessibilityAssertionsRecord - 8);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_191C7B880(0);
  result = sub_191CC6F78();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_191C7B914(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_191CC74C8();
      sub_191CC61A8();
      sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_191CC66A8();
      result = sub_191CC7508();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_191C7B978(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_191C7AD44(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_191C7B7F4(0, a2, a3, a4, a5);
  result = sub_191CC6F78();
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
      result = sub_191CC6D98();
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

uint64_t sub_191C7AF4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_191C7B760(0);
  result = sub_191CC6F78();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_191CC74C8();
      MEMORY[0x193B02C70](v16);
      result = sub_191CC7508();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

uint64_t sub_191C7B160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_191C7B6C0();
  result = sub_191CC6F78();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_191C7B610(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_191CC6F48();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

uint64_t sub_191C7B380(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_191CC6EE8())
  {
    v4 = sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
    v5 = sub_191C3E29C(&qword_1EADCC7E0, &qword_1EADCD140, 0x1E696AD98);
    result = MEMORY[0x193B022E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x193B02790](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_191C78A3C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_191CC6EE8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_191C7B4D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKCategoryValueSleepAnalysis(0);
  v4 = v3;
  v5 = sub_191C7B718(&qword_1EADCC7F0, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_191DCFC9C);
  result = MEMORY[0x193B022E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_191C7913C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_191C7B584(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x193B022E0](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_191C7B610(v4, v5);
      sub_191C79234(v6, v5);
      sub_191C7B66C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_191C7B6C0()
{
  if (!qword_1EADCC7E8)
  {
    v0 = sub_191CC6FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC7E8);
    }
  }
}

uint64_t sub_191C7B718(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_191C7B760(uint64_t a1)
{
  if (!qword_1EADCC7F8)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    sub_191C7B718(&qword_1EADCC7F0, type metadata accessor for HKCategoryValueSleepAnalysis, &unk_191DCFC9C);
    v1 = sub_191CC6FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC7F8);
    }
  }
}

void sub_191C7B7F4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_191BFAE6C(255, a3, a4);
    sub_191C3E29C(a5, a3, a4);
    v9 = sub_191CC6FA8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_191C7B880(uint64_t a1)
{
  if (!qword_1EADCC808)
  {
    type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(255);
    sub_191C7B718(&qword_1EADCC810, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord, &unk_191DDA38C);
    v1 = sub_191CC6FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC808);
    }
  }
}

uint64_t sub_191C7B914(uint64_t a1, uint64_t a2)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  (*(*(DatabaseAccessibilityAssertionsRecord - 8) + 16))(a2, a1, DatabaseAccessibilityAssertionsRecord);
  return a2;
}

uint64_t sub_191C7B978(uint64_t a1, uint64_t a2)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  (*(*(DatabaseAccessibilityAssertionsRecord - 8) + 32))(a2, a1, DatabaseAccessibilityAssertionsRecord);
  return a2;
}

uint64_t sub_191C7B9DC(uint64_t a1)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  (*(*(DatabaseAccessibilityAssertionsRecord - 8) + 8))(a1, DatabaseAccessibilityAssertionsRecord);
  return a1;
}

void sub_191C7BA38(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_191C7BA90()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_191C7BAD4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_191C7BB2C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_191C7BB90()
{
  v1 = v0 + 2;
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_191C7BD28;
  v3 = swift_continuation_init();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v0[14] = sub_191C7BF7C;
  v0[15] = v6;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_191C7BF84;
  v0[13] = &block_descriptor_20;
  v7 = _Block_copy(v0 + 10);
  v8 = v4;
  v9 = v5;

  v10 = [v8 getDataForAttachment:v9 completion:v7];
  _Block_release(v7);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_191C7BD28(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 160);
    v8 = *(v3 + 8);

    return v8(v6, v7);
  }
}

uint64_t sub_191C7BE68(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v6 = v13;
    }

    sub_191BF92E0();
    swift_allocError();
    *v11 = v6;
    v12 = a3;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_191C0492C(a1, a2);
    v9 = *(*(a4 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_191C7BF84(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_191CC6048();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_191C049C4(v4, v8);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C7C048@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  swift_unknownObjectUnownedInit();
  result = swift_unknownObjectUnownedInit();
  *(a1 + 16) = 10485760;
  return result;
}

uint64_t HKAttachmentDataReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HKAttachmentDataReader.unitTest_bytesWithChunkSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  swift_unknownObjectUnownedInit();
  result = swift_unknownObjectUnownedInit();
  *(a2 + 16) = a1;
  return result;
}

uint64_t dispatch thunk of HKAttachmentDataReader.data.getter()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_191C7C314;

  return v4();
}

uint64_t sub_191C7C314(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t HKTypeError.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

unint64_t sub_191C7C4D4()
{
  result = qword_1EADCC820;
  if (!qword_1EADCC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC820);
  }

  return result;
}

id sub_191C7C53C(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier_];
  if (result)
  {
    v3 = result;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static HKSleepClockTimeAveraging.averageClockTimeAsleep(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    return;
  }

  if (v3 < 4)
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
LABEL_8:
    v21 = v3 - v4;
    v22 = (a1 + 24 * v4 + 48);
    do
    {
      v23 = vaddvq_f64(vmulq_f64(vcvtq_f64_s64(v22[-1]), xmmword_191DD8980));
      v24 = v22->i64[0];
      v22 = (v22 + 24);
      v25 = __sincos_stret((v23 + v24 * 0.00416666667) * 0.0174532925);
      v6 = v6 + v25.__sinval;
      v5 = v5 + v25.__cosval;
      --v21;
    }

    while (v21);
    goto LABEL_10;
  }

  v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = a1;
  v8 = (a1 + 80);
  v5 = 0.0;
  __asm { FMOV            V1.2D, #15.0 }

  v36 = vdupq_n_s64(0x3F71111111111111uLL);
  v37 = _Q1;
  __asm { FMOV            V1.2D, #0.25 }

  v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v35 = _Q1;
  v15 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = 0.0;
  do
  {
    v16 = v8 - 6;
    v40 = vld3q_f64(v16);
    v41 = vld3q_f64(v8);
    v38 = vmulq_f64(vaddq_f64(vaddq_f64(vmulq_f64(vcvtq_f64_s64(v40.val[0]), v37), vmulq_f64(vcvtq_f64_s64(v40.val[1]), v35)), vmulq_f64(vcvtq_f64_s64(v40.val[2]), v36)), v34);
    v39 = vmulq_f64(vaddq_f64(vaddq_f64(vmulq_f64(vcvtq_f64_s64(v41.val[0]), v37), vmulq_f64(vcvtq_f64_s64(v41.val[1]), v35)), vmulq_f64(vcvtq_f64_s64(v41.val[2]), v36)), v34);
    v17 = __sincos_stret(v38.f64[1]);
    v18 = __sincos_stret(v38.f64[0]);
    v19 = __sincos_stret(v39.f64[1]);
    v20 = __sincos_stret(v39.f64[0]);
    v5 = v5 + v18.__cosval + v17.__cosval + v20.__cosval + v19.__cosval;
    v6 = v6 + v18.__sinval + v17.__sinval + v20.__sinval + v19.__sinval;
    v8 += 12;
    v15 -= 4;
  }

  while (v15);
  a1 = v7;
  if (v3 != v4)
  {
    goto LABEL_8;
  }

LABEL_10:
  v26 = atan2(v6 / v3, v5 / v3) * 57.2957795;
  if (v26 < 0.0)
  {
    v26 = v26 + 360.0;
  }

  v27 = round(v26 * 240.0);
  v28 = v27 / 3600.0;
  if (v27 / 3600.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = COERCE_UNSIGNED_INT64(fabs(v27 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v29)
  {
    goto LABEL_24;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = 3600 * v28;
  if ((v28 * 3600) >> 64 != v30 >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  _VF = __OFSUB__(v27, v30);
  v31 = v27 - v30;
  if (_VF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v32 = v31 / 60;
  _VF = __OFSUB__(v31, 60 * (v31 / 60));
  v33 = v31 % 60;
  if (!_VF)
  {
    *a2 = v28;
    *(a2 + 8) = v32;
    *(a2 + 16) = v33;
    *(a2 + 24) = 0;
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_191C7C90C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C7C930, 0, 0);
}

uint64_t sub_191C7C930()
{
  v1 = v0[5];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_191C7CA0C;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_191C7CA0C(__int16 a1)
{
  v4 = *v2;
  v4[7] = v1;

  if (v1)
  {
    if (v4[3])
    {
      swift_getObjectType();
      v5 = sub_191CC69B8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_191C7CB80, v5, v7);
  }

  else
  {
    v8 = v4[1];

    return v8(a1 & 0x1FF);
  }
}

uint64_t sub_191C7CB80()
{
  v0[2] = v0[7];
  sub_191BF92E0();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_191C7CC04()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    MEMORY[0x193B047C0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

void sub_191C7CCD4(uint64_t result)
{
  if (*v1[2])
  {
    type metadata accessor for _AsyncBytesBuffer.Storage();
    swift_unknownObjectRetain();
    v2 = swift_dynamicCastClassUnconditional();
    v1[3] = v2;
    if (*(v2 + 48) == 1)
    {

      v3 = v1[1];

      v3(256);
    }

    else
    {
      v4 = v2;
      sub_191CC6A48();
      v5 = v1[2];
      v6 = v4;
      v7 = v4[2];
      v1[4] = v6[3];
      v8 = v6[4];
      v9 = v6[5];
      v10 = *(v5 + 24);
      v1[5] = v10;

      v12 = (v7 + *v7);
      v11 = swift_task_alloc();
      v1[6] = v11;
      *v11 = v1;
      v11[1] = sub_191C7CEDC;

      v12(v8, v9, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_191C7CEDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_191C7D150;
  }

  else
  {

    v4 = sub_191C7CFF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C7CFF8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 56);
  v5 = *(v3 + 40);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(*(v3 + 16) + 24) = v7;
  a1 = *(v3 + 24);
  if (v4)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = *(v3 + 16);
      v10 = &v8[*(v3 + 56)];
      *(v9 + 8) = v8;
      *(v9 + 16) = v10;
      *(v3 + 72) = *v8;
      *(v9 + 8) = v8 + 1;
      a1 = sub_191C7D0E8;
      a2 = 0;
      a3 = 0;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  *(a1 + 48) = 1;

  v11 = *(v3 + 8);

  return v11(256);
}

uint64_t sub_191C7D0E8()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_191C7D150()
{
  v1 = *(v0 + 24);

  *(v1 + 48) = 1;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_191C7D1F4()
{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_191C7D2D0;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_191C7D2D0(__int16 a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 0x1FF);
  }
}

uint64_t BufferedAsyncByteIterator.buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectRelease();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_191C7D4D4()
{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_191C7DA84;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_191C7D5B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C7D5D0, 0, 0);
}

uint64_t sub_191C7D5D0()
{
  v1 = v0[3];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_191C7D6B8;

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[2];
    *v4 = v3;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_191C7D6B8(__int16 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    v6 = *(v4 + 16);
    *v6 = a1;
    v6[1] = HIBYTE(a1) & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_191C7D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_191C7D88C;

  return sub_191C7C90C(a2, a3);
}

uint64_t sub_191C7D88C(__int16 a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    **(v4 + 24) = v1;
  }

  else
  {
    v7 = *(v4 + 16);
    *v7 = a1;
    v7[1] = HIBYTE(a1) & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t _s9HealthKit17_AsyncBytesBufferV8capacity12readFunctionACSi_SiSw_SitYaKctcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _AsyncBytesBuffer.Storage();
  result = swift_allocObject();
  *(result + 48) = 0;
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    v7 = result;
    v8 = swift_slowAlloc();
    *(v7 + 32) = v8;
    *(v7 + 40) = v8 + a1;
    return v7;
  }

  return result;
}

uint64_t HKHealthRecordsStore.isImproveHealthRecordsDataSubmissionAllowed()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C7E044(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C7DB58, 0, 0);
}

uint64_t sub_191C7DB58()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C7DD1C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C7E0C4;
  v1[13] = &block_descriptor_21;
  [v11 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C7DD1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_191C7DE2C;
  }

  else
  {
    v2 = sub_191C7EE00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C7DE2C(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EADCA158 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 192);
  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADE7078);
  v4 = v2;
  v5 = sub_191CC6328();
  v6 = sub_191CC6C98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = sub_191CC76A8();
    v14 = sub_191C3B288(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_19197B000, v5, v6, "%s failed to fetch Improve Health Records (IHR) status: %@", v9, 0x16u);
    sub_191C6E5A8(v10);
    MEMORY[0x193B047C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x193B047C0](v11, -1, -1);
    MEMORY[0x193B047C0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v1 + 8);

  return v17(0);
}

void sub_191C7E044(uint64_t a1)
{
  if (!qword_1EADCC828)
  {
    sub_191BFAE6C(255, &qword_1EADCD140, 0x1E696AD98);
    sub_191BF92E0();
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCC828);
    }
  }
}

void sub_191C7E0C4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_191C7E044(0);
    v5 = a3;
    sub_191CC69D8();
  }

  else if (a2)
  {
    sub_191C7E044(0);
    v6 = a2;
    sub_191CC69E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HKHealthRecordsStore.shouldPromptForImproveHealthRecordsDataSubmission()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C7E044(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C7E248, 0, 0);
}

uint64_t sub_191C7E248()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C7E40C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C7E0C4;
  v1[13] = &block_descriptor_3_0;
  [v11 fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C7E40C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_191C7E59C;
  }

  else
  {
    v2 = sub_191C7E51C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C7E51C()
{
  v1 = *(v0 + 144);
  v2 = [v1 BOOLValue];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_191C7E59C(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EADCA158 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 192);
  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADE7078);
  v4 = v2;
  v5 = sub_191CC6328();
  v6 = sub_191CC6C98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = sub_191CC76A8();
    v14 = sub_191C3B288(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_19197B000, v5, v6, "%s failed to fetch whether we should prompt for Improve Health Records (IHR): %@", v9, 0x16u);
    sub_191C6E5A8(v10);
    MEMORY[0x193B047C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x193B047C0](v11, -1, -1);
    MEMORY[0x193B047C0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v1 + 8);

  return v17(0);
}

uint64_t HKHealthRecordsStore.currentDeviceSupportsImproveHealthRecordsDataSubmissionOption()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C7E044(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C7E880, 0, 0);
}

uint64_t sub_191C7E880()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C7EA44;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C7E0C4;
  v1[13] = &block_descriptor_6;
  [v11 fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C7EA44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_191C7EB54;
  }

  else
  {
    v2 = sub_191C7E51C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C7EB54(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EADCA158 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 192);
  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADE7078);
  v4 = v2;
  v5 = sub_191CC6328();
  v6 = sub_191CC6C98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = sub_191CC76A8();
    v14 = sub_191C3B288(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_19197B000, v5, v6, "%s failed to fetch whether current device supports prompting for Improve Health Records (IHR): %@", v9, 0x16u);
    sub_191C6E5A8(v10);
    MEMORY[0x193B047C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x193B047C0](v11, -1, -1);
    MEMORY[0x193B047C0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v1 + 8);

  return v17(2);
}

uint64_t sub_191C7ED6C()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7078);
  __swift_project_value_buffer(v0, qword_1EADE7078);
  return sub_191CC6338();
}

uint64_t AnySecureCoding.decoded<A>(_:)()
{
  if (*(v3 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType) == 1)
  {
    sub_191CC5C18();
    swift_allocObject();
    sub_191CC5C08();
    sub_191CC5BF8();
  }

  else
  {
    sub_191C6D438();
    swift_allocError();
    return swift_willThrow();
  }
}

id AnyCodable.decoded<A>(_:)(uint64_t a1, id a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_191C0492C(v5, v6);
  v8 = sub_191C800EC(v5, v6);
  sub_191C049D8(v5, v6);
  if (!v3)
  {
    a2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = v8;
    v10 = [a2 initWithCoder_];
    if (v10)
    {
      a2 = v10;
    }

    else
    {
      v12 = [v9 error];

      if (!v12)
      {
        [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
      }

      swift_willThrow();
    }
  }

  return a2;
}

id AnySecureCoding.__allocating_init<A>(_:)(void *a1)
{
  v1 = sub_191C8028C(a1);
  swift_unknownObjectRelease();
  return v1;
}

id AnySecureCoding.init<A>(_:)(void *a1)
{
  v1 = sub_191C801AC(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_191C7F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a5(a1, a2, a3, a4);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

id AnySecureCoding.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_191CC6778();
  v3 = [a1 containsValueForKey_];

  if (v3 && (v4 = sub_191CC6778(), v5 = [a1 containsValueForKey_], v4, v5))
  {
    v6 = sub_191CC6778();
    v7 = [a1 decodeIntegerForKey_];

    if (v7 <= 1)
    {
      sub_191C802D8();
      v8 = sub_191CC6D88();
      if (v8)
      {
        v9 = v8;
        sub_191CC6038();
      }
    }

    v10 = 4866;
  }

  else
  {
    v10 = 4865;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:v10 userInfo:0];
  v12 = sub_191CC5FB8();

  [a1 failWithError_];
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall AnySecureCoding.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType);
  v4 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = sub_191CC6028();
  v6 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id AnySecureCoding.decoded<A>(_:)(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType))
  {
    sub_191C6D438();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = a2;
    v5 = *(v2 + OBJC_IVAR___HKAnySecureCoding_payload);
    v6 = *(v2 + OBJC_IVAR___HKAnySecureCoding_payload + 8);
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_191C0492C(v5, v6);
    v8 = sub_191C800EC(v5, v6);
    sub_191C049D8(v5, v6);
    if (!v3)
    {
      v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v10 = v8;
      v11 = [v4 initWithCoder_];
      if (v11)
      {
        v4 = v11;
      }

      else
      {
        v12 = [v10 error];

        if (!v12)
        {
          [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
        }

        swift_willThrow();
      }
    }
  }

  return v4;
}

id AnySecureCoding.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnySecureCoding.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AnySecureCodingCompatible<>.toAnySecureCoding()(uint64_t a1)
{
  v2 = type metadata accessor for AnySecureCoding();
  swift_unknownObjectRetain();
  v3 = objc_allocWithZone(v2);
  v4 = sub_191C801AC(v1);
  swift_unknownObjectRelease();
  return v4;
}

void AnyCodable.init<A>(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [a1 encodeWithCoder_];
  v5 = [v4 encodedData];
  v6 = sub_191CC6048();
  v8 = v7;

  swift_unknownObjectRelease();
  *a2 = v6;
  a2[1] = v8;
}

uint64_t AnyCodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  sub_191CC5C48();
  swift_allocObject();
  sub_191CC5C38();
  v8 = sub_191CC5C28();
  if (v4)
  {
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    v11 = v8;
    v12 = v9;
    (*(*(a2 - 8) + 8))(a1, a2);

    *a4 = v11;
    a4[1] = v12;
  }

  return result;
}

uint64_t AnyCodable.decoded<A>(_:)()
{
  sub_191CC5C18();
  swift_allocObject();
  sub_191CC5C08();
  sub_191CC5BF8();
}

uint64_t sub_191C7FB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C7FBD4(uint64_t a1)
{
  v2 = sub_191C80348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C7FC10(uint64_t a1)
{
  v2 = sub_191C80348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  sub_191C8039C(0, &qword_1EADCC850, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C0492C(v8, v9);
  sub_191C80348();
  sub_191CC7548();
  v11 = v8;
  v12 = v9;
  sub_191C511C4();
  sub_191CC7348();
  sub_191C049D8(v11, v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_191C8039C(0, &qword_1EADCC868, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C80348();
  sub_191CC7528();
  if (!v2)
  {
    sub_191C57508();
    sub_191CC7268();
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

id sub_191C7FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR___HKAnySecureCoding_encodedObjectType] = 1;
  sub_191CC5C48();
  swift_allocObject();
  sub_191CC5C38();
  v7 = sub_191CC5C28();
  v9 = v8;

  if (v5)
  {
    return swift_deallocPartialClassInstance();
  }

  v11 = &v4[OBJC_IVAR___HKAnySecureCoding_payload];
  *v11 = v7;
  v11[1] = v9;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_191C800EC(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_191CC6028();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  return v4;
}

id sub_191C801AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___HKAnySecureCoding_encodedObjectType] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [a1 encodeWithCoder_];
  v5 = [v4 encodedData];
  v6 = sub_191CC6048();
  v8 = v7;

  v9 = &v1[OBJC_IVAR___HKAnySecureCoding_payload];
  *v9 = v6;
  v9[1] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_191C802D8()
{
  result = qword_1EADCC848;
  if (!qword_1EADCC848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCC848);
  }

  return result;
}

unint64_t sub_191C80348()
{
  result = qword_1EADCC858;
  if (!qword_1EADCC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC858);
  }

  return result;
}

void sub_191C8039C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C80348();
    v7 = a3(a1, &type metadata for AnyCodable.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C80404()
{
  result = qword_1EADCC878;
  if (!qword_1EADCC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC878);
  }

  return result;
}

unint64_t sub_191C8045C()
{
  result = qword_1EADCC880;
  if (!qword_1EADCC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC880);
  }

  return result;
}

uint64_t dispatch thunk of AnySecureCoding.__allocating_init<A>(_:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t sub_191C8058C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_191C805E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_191C80670()
{
  result = qword_1EADCC890;
  if (!qword_1EADCC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC890);
  }

  return result;
}

unint64_t sub_191C806C8()
{
  result = qword_1EADCC898;
  if (!qword_1EADCC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC898);
  }

  return result;
}

unint64_t sub_191C80720()
{
  result = qword_1EADCC8A0;
  if (!qword_1EADCC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC8A0);
  }

  return result;
}

unint64_t sub_191C80778()
{
  result = qword_1EADCC8A8[0];
  if (!qword_1EADCC8A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADCC8A8);
  }

  return result;
}

uint64_t sub_191C8088C(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 152) - 8) + 32))(v2 + *(*v2 + 168), a1);
  return v2;
}

uint64_t sub_191C80A60()
{
  (*(*(*(*v0 + 152) - 8) + 8))(v0 + *(*v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t AnyObjectType.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v9;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  type metadata accessor for AnyObjectType.Box(0, v15);
  (*(v6 + 16))(v8, a1, a2);
  v13 = sub_191C8088C(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

uint64_t AnyObjectType.hashValue.getter(uint64_t a1)
{
  v5[9] = *v1;
  sub_191CC74C8();
  WitnessTable = swift_getWitnessTable();
  ObjectType.hash(into:)(v5, a1, WitnessTable);
  return sub_191CC7508();
}

BOOL static ObjectType.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v6(v15, a3, a4);
  v8 = v15[0];
  v7 = v15[1];
  v9 = v15[2];
  v6(v14, a3, a4);
  v10 = v14[2];
  if (v8 == v14[0] && v7 == v14[1])
  {

    return v9 == v10;
  }

  v12 = sub_191CC73E8();

  result = 0;
  if (v12)
  {
    return v9 == v10;
  }

  return result;
}

uint64_t sub_191C80EA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ObjectType.hash(into:)(a1, a2, WitnessTable);
}

uint64_t ObjectType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(v5, a2, a3);
  v3 = v5[2];
  sub_191CC67E8();
  MEMORY[0x193B02C70](v3);
}

uint64_t sub_191C80F8C(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  WitnessTable = swift_getWitnessTable();
  ObjectType.hash(into:)(v5, a2, WitnessTable);
  return sub_191CC7508();
}

uint64_t ObjectType.query(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v16 - v10;
  (*(a3 + 48))(&v18, a2, a3);
  v16 = v18;
  v17 = v19;
  (*(v9 + 16))(v11, a1, AssociatedTypeWitness);
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  return sub_191C81C88(&v16, v11, AssociatedTypeWitness, v12, AssociatedConformanceWitness, v14, a4);
}

uint64_t ObjectType.eraseToAnyObjectType()@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v8, a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return AnyObjectType.init<A>(_:)(v6, a1, a3);
}

uint64_t ObjectType<>.query()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(a3 + 8))();
  (*(a2 + 56))(v9, a1, a2);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_191C813FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C8145C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C814D0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C81520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C81570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_191C81654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_191C8169C(uint64_t result, int a2, int a3)
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

uint64_t sub_191C81740(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_191C81844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = a7(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
}

double BaseQueryDescriptor.encode()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = *(v2 + 1);
  v11 = *(v2 + 2);
  (*(v12 + 16))(v8, &v2[*(v6 + 52)], v5);

  AnyCodable.init<A>(_:)(v8, v5, &v14);
  if (v3)
  {
  }

  else
  {
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v11;
    result = *&v14;
    *(a2 + 24) = v14;
  }

  return result;
}

double TypeQueryDescriptor.encode()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v5 + 48))(v17, a1, v5);
  v9 = v17[1];
  v14 = v17[2];
  v15 = v17[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = v17[4];
  AnyCodable.init<A>(_:)(v8, AssociatedTypeWitness, v16);
  if (v11)
  {
  }

  else
  {
    v13 = v14;
    *a3 = v15;
    *(a3 + 8) = v9;
    *(a3 + 16) = v13;
    result = v16[0];
    *(a3 + 24) = *v16;
  }

  return result;
}

uint64_t sub_191C81C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v10;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v13);
  return (*(*(a3 - 8) + 32))(a7 + *(Descriptor + 52), a2, a3);
}

uint64_t BaseQueryDescriptor.typeIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 BaseQueryDescriptor.typeIdentifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t (*sub_191C81E34(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = BaseQueryDescriptor.configuration.modify();
  return sub_191C81EAC;
}

void sub_191C81EAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t BaseQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C81F34, 0, 0);
}

uint64_t sub_191C81F34()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[7] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C82004;
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];

  return QueryStore.evaluate<A, B>(_:)(v10, v5, v6, v7, v8, v11, v9);
}

uint64_t sub_191C82004(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C8215C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_191C8215C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BaseQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C821E4, 0, 0);
}

uint64_t sub_191C821E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[5] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C822B0;
  v9 = v0[4];

  return QueryStore.evaluate<A, B>(_:)(v9, v5, v6, v7, v8);
}

uint64_t sub_191C822B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C82408, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_191C82408()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191C8246C(uint64_t a1)
{
  v2 = sub_191C82EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C824A8(uint64_t a1)
{
  v2 = sub_191C82EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C824E4()
{
  v1 = 0x6E657461636E6F63;
  if (*v0 != 1)
  {
    v1 = 0x656772656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_191C8253C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C86928(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C82564(uint64_t a1)
{
  v2 = sub_191C82F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C825A0(uint64_t a1)
{
  v2 = sub_191C82F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C825DC(uint64_t a1)
{
  v2 = sub_191C82E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C82618(uint64_t a1)
{
  v2 = sub_191C82E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C82654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C82720(uint64_t a1)
{
  v2 = sub_191C82E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C8275C(uint64_t a1)
{
  v2 = sub_191C82E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncodedQueryDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_191C83954(0, &qword_1EADCCA30, sub_191C82E20, &type metadata for EncodedQueryDescriptor.MergeCodingKeys, MEMORY[0x1E69E6F58]);
  *&v52 = v4;
  *&v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  *&v50 = &v42 - v5;
  sub_191C83954(0, &qword_1EADCCA40, sub_191C82E74, &type metadata for EncodedQueryDescriptor.ConcatenateCodingKeys, v3);
  *&v49 = v6;
  *&v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  *&v47 = &v42 - v7;
  sub_191C83954(0, &qword_1EADCCA50, sub_191C82EC8, &type metadata for EncodedQueryDescriptor.BaseCodingKeys, v3);
  *&v46 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v42 - v9;
  sub_191C83954(0, &qword_1EADCCA60, sub_191C82F1C, &type metadata for EncodedQueryDescriptor.CodingKeys, v3);
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = *v1;
  v43 = v1[1];
  v15 = v1[3];
  v42 = v1[2];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C82F1C();
  v17 = v13;
  sub_191CC7548();
  v18 = (v16 >> 60) & 3;
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = *(v14 + 48);
      v46 = *(v14 + 72);
      v50 = *(v14 + 56);
      v20 = *(v14 + 88);
      LOBYTE(v56) = 1;
      sub_191C82E74();
      v21 = *(v14 + 16);
      v51 = *(v14 + 32);
      v52 = v21;
      v22 = v47;
      v23 = v54;
      v24 = v13;
      sub_191CC72B8();
      v56 = v52;
      v57 = v51;
      v58 = v19;
      v59 = 0;
      sub_191C6D8B4();
      v25 = v49;
      v26 = v53;
      sub_191CC7348();
      if (!v26)
      {
        v56 = v50;
        v57 = v46;
        v58 = v20;
        v59 = 1;
        sub_191CC7348();
      }

      (*(v48 + 8))(v22, v25);
      v27 = *(v55 + 8);
      v28 = v24;
    }

    else
    {
      v36 = *(v14 + 48);
      v46 = *(v14 + 72);
      v47 = *(v14 + 56);
      v37 = *(v14 + 88);
      LOBYTE(v56) = 2;
      sub_191C82E20();
      v38 = *(v14 + 16);
      v48 = *(v14 + 32);
      v49 = v38;
      v39 = v50;
      v23 = v54;
      sub_191CC72B8();
      v56 = v49;
      v57 = v48;
      v58 = v36;
      v59 = 0;
      sub_191C6D8B4();
      v40 = v52;
      v41 = v53;
      sub_191CC7348();
      if (!v41)
      {
        v56 = v47;
        v57 = v46;
        v58 = v37;
        v59 = 1;
        sub_191CC7348();
      }

      (*(v51 + 8))(v39, v40);
      v27 = *(v55 + 8);
      v28 = v17;
    }

    return v27(v28, v23);
  }

  else
  {
    v29 = v15;
    v30 = v44;
    LOBYTE(v56) = 0;
    sub_191C82EC8();
    v31 = v45;
    v32 = v54;
    sub_191CC72B8();
    *&v56 = v14;
    *(&v56 + 1) = v43;
    *&v57 = v42;
    v59 = 0;
    sub_191C82F70();
    v33 = v46;
    v34 = v53;
    sub_191CC7348();
    if (!v34)
    {
      *&v56 = v29;
      *(&v56 + 1) = v16;
      v59 = 1;
      sub_191C6D2C4();
      sub_191CC7348();
    }

    (*(v30 + 8))(v31, v33);
    return (*(v55 + 8))(v17, v32);
  }
}

unint64_t sub_191C82E20()
{
  result = qword_1EADCCA38;
  if (!qword_1EADCCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA38);
  }

  return result;
}

unint64_t sub_191C82E74()
{
  result = qword_1EADCCA48;
  if (!qword_1EADCCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA48);
  }

  return result;
}

unint64_t sub_191C82EC8()
{
  result = qword_1EADCCA58;
  if (!qword_1EADCCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA58);
  }

  return result;
}

unint64_t sub_191C82F1C()
{
  result = qword_1EADCCA68;
  if (!qword_1EADCCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA68);
  }

  return result;
}

unint64_t sub_191C82F70()
{
  result = qword_1EADCCA70;
  if (!qword_1EADCCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA70);
  }

  return result;
}

uint64_t EncodedQueryDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C83954(0, &qword_1EADCCA78, sub_191C82E20, &type metadata for EncodedQueryDescriptor.MergeCodingKeys, MEMORY[0x1E69E6F48]);
  v55 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v47 - v5;
  sub_191C83954(0, &qword_1EADCCA80, sub_191C82E74, &type metadata for EncodedQueryDescriptor.ConcatenateCodingKeys, v3);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - v8;
  sub_191C83954(0, &qword_1EADCCA88, sub_191C82EC8, &type metadata for EncodedQueryDescriptor.BaseCodingKeys, v3);
  v10 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  sub_191C83954(0, &qword_1EADCCA90, sub_191C82F1C, &type metadata for EncodedQueryDescriptor.CodingKeys, v3);
  v14 = v13;
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_191C82F1C();
  v18 = v57;
  sub_191CC7528();
  if (!v18)
  {
    v19 = v10;
    v21 = v53;
    v20 = v54;
    v22 = v55;
    v23 = sub_191CC7298();
    v24 = (2 * *(v23 + 16)) | 1;
    v63 = v23;
    v64 = v23 + 32;
    v65 = 0;
    v66 = v24;
    v25 = sub_191C23FC8();
    if (v25 == 3 || v65 != v66 >> 1)
    {
      v27 = sub_191CC7028();
      swift_allocError();
      v28 = v14;
      v30 = v29;
      sub_191C2CAB4(0);
      *v30 = &type metadata for EncodedQueryDescriptor;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v56 + 8))(v16, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        if (v25 == 1)
        {
          LOBYTE(v60) = 1;
          sub_191C82E74();
          sub_191CC71C8();
          v26 = v56;
          v35 = v14;
          v36 = swift_allocObject();
          LOBYTE(v60) = 0;
          sub_191C839BC();
          v37 = v50;
          sub_191CC7268();
          LOBYTE(v60) = 1;
          sub_191CC7268();
          (*(v51 + 8))(v21, v37);
          (*(v26 + 8))(v16, v35);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 0;
          v45 = xmmword_191DD91A0;
        }

        else
        {
          LOBYTE(v60) = 2;
          sub_191C82E20();
          v32 = v14;
          v33 = v20;
          sub_191CC71C8();
          v34 = v56;
          v38 = v32;
          v39 = swift_allocObject();
          LOBYTE(v60) = 0;
          sub_191C839BC();
          sub_191CC7268();
          LOBYTE(v60) = 1;
          sub_191CC7268();
          (*(v52 + 8))(v33, v22);
          (*(v34 + 8))(v16, v38);
          swift_unknownObjectRelease();
          v43 = 0;
          v44 = 0;
          v45 = xmmword_191DD9190;
          v36 = v39;
        }

        v46 = v48;
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_191C82EC8();
        sub_191CC71C8();
        LOBYTE(v59) = 0;
        sub_191C83A10();
        sub_191CC7268();
        v40 = v14;
        v41 = v16;
        v42 = v60;
        v43 = v61;
        v44 = v62;
        v67 = 1;
        sub_191C6D270();
        sub_191CC7268();
        (*(v49 + 8))(v12, v19);
        (*(v56 + 8))(v41, v40);
        swift_unknownObjectRelease();
        v45 = v59;
        v46 = v48;
        v36 = v42;
      }

      *v46 = v36;
      *(v46 + 8) = v43;
      *(v46 + 16) = v44;
      *(v46 + 24) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

void sub_191C83954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_191C839BC()
{
  result = qword_1EADCCA98;
  if (!qword_1EADCCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA98);
  }

  return result;
}

unint64_t sub_191C83A10()
{
  result = qword_1EADCCAA0[0];
  if (!qword_1EADCCAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADCCAA0);
  }

  return result;
}

uint64_t TypeQueryDescriptor<>.limit(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v27 = a2;
  *&v28 = a1;
  v29 = a6;
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26[-v14];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a5 + 8))(v28, v27 & 1, AssociatedTypeWitness, a5);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  v17 = *(v10 + 32);
  v17(v15, v13, AssociatedTypeWitness);
  (*(v8 + 48))(&v30, a3, v8);
  v28 = v30;
  v18 = v31;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = v29;
  *v29 = v28;
  *(v22 + 2) = v18;
  v23 = v22;
  v32[0] = AssociatedTypeWitness;
  v32[1] = v19;
  v32[2] = v20;
  v32[3] = v21;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v32);
  return v17(&v23[*(Descriptor + 52)], v15, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v27 = a5;
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  v17 = *(v10 + 32);
  v17(v15, v13, AssociatedTypeWitness);
  (*(v8 + 48))(&v28, a2, v8);
  v26 = v28;
  v18 = v29;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = v27;
  *v27 = v26;
  *(v22 + 2) = v18;
  v23 = v22;
  v30[0] = AssociatedTypeWitness;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v30);
  return (v17)(v23 + *(Descriptor + 52), v15, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.sort(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v27 = a5;
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  v17 = *(v10 + 32);
  v17(v15, v13, AssociatedTypeWitness);
  (*(v8 + 48))(&v28, a2, v8);
  v26 = v28;
  v18 = v29;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = v27;
  *v27 = v26;
  *(v22 + 2) = v18;
  v23 = v22;
  v30[0] = AssociatedTypeWitness;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v30);
  return (v17)(v23 + *(Descriptor + 52), v15, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.within(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v27 = a5;
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 8))(a1, AssociatedTypeWitness, a4);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  v17 = *(v10 + 32);
  v17(v15, v13, AssociatedTypeWitness);
  (*(v8 + 48))(&v28, a2, v8);
  v26 = v28;
  v18 = v29;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = v27;
  *v27 = v26;
  *(v22 + 2) = v18;
  v23 = v22;
  v30[0] = AssociatedTypeWitness;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v30);
  return (v17)(v23 + *(Descriptor + 52), v15, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.sortAscending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v25 = a4;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 8))(AssociatedTypeWitness, a3);
  (*(v8 + 8))(v13, AssociatedTypeWitness);
  v15 = *(v8 + 32);
  v15(v13, v11, AssociatedTypeWitness);
  (*(v6 + 48))(&v26, a1, v6);
  v24 = v26;
  v16 = v27;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = v25;
  *v25 = v24;
  *(v20 + 2) = v16;
  v21 = v20;
  v28[0] = AssociatedTypeWitness;
  v28[1] = v17;
  v28[2] = v18;
  v28[3] = v19;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v28);
  return (v15)(v21 + *(Descriptor + 52), v13, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.sortDescending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v25 = a4;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 16))(AssociatedTypeWitness, a3);
  (*(v8 + 8))(v13, AssociatedTypeWitness);
  v15 = *(v8 + 32);
  v15(v13, v11, AssociatedTypeWitness);
  (*(v6 + 48))(&v26, a1, v6);
  v24 = v26;
  v16 = v27;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = v25;
  *v25 = v24;
  *(v20 + 2) = v16;
  v21 = v20;
  v28[0] = AssociatedTypeWitness;
  v28[1] = v17;
  v28[2] = v18;
  v28[3] = v19;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v28);
  return (v15)(v21 + *(Descriptor + 52), v13, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.withOptions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v27 = a5;
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 24))(a1, AssociatedTypeWitness, a4);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  v17 = *(v10 + 32);
  v17(v15, v13, AssociatedTypeWitness);
  (*(v8 + 48))(&v28, a2, v8);
  v26 = v28;
  v18 = v29;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = v27;
  *v27 = v26;
  *(v22 + 2) = v18;
  v23 = v22;
  v30[0] = AssociatedTypeWitness;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = v21;
  Descriptor = type metadata accessor for BaseQueryDescriptor(0, v30);
  return (v17)(v23 + *(Descriptor + 52), v15, AssociatedTypeWitness);
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C84D14, 0, 0);
}

uint64_t sub_191C84D14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[10] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C84DF4;
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[5];
  v12 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v12, v9, v5, v6, v7, v8, v11, v10);
}

uint64_t sub_191C84DF4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C84F30, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_191C84F30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C84FBC, 0, 0);
}

{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C851F4, 0, 0);
}

uint64_t sub_191C84FBC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[8] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C85090;
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v12, v9, v5, v6, v7, v8, v11, v10);
}

uint64_t sub_191C85090()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C86A6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_191C851F4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[8] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C852C8;
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v12, v9, v5, v6, v7, v8, v11, v10);
}

uint64_t sub_191C852C8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C85404, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_191C85404()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C8548C, 0, 0);
}

uint64_t sub_191C8548C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[6] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C8555C;
  v9 = v0[5];
  v10 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v10, v9, v5, v6, v7, v8);
}

uint64_t sub_191C8555C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C85698, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_191C85698()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191C8583C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  (*(*(*(a1[4] + 8) + 8) + 16))(a1[2]);
  if (v3)
  {
    return swift_deallocUninitializedObject();
  }

  result = (*(*(*(a1[5] + 8) + 8) + 16))(a1[3]);
  *a3 = v7;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = a2;
  return result;
}

uint64_t sub_191C85934(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C85970(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C859AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C85A00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C85A80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 24) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_191C85C04(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
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

  else if (v13)
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
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 24] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_191C85EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 32) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_191C85EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_191C85F8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_191C86018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_191C861F4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_191C8650C()
{
  result = qword_1EADCCC28;
  if (!qword_1EADCCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC28);
  }

  return result;
}

unint64_t sub_191C86564()
{
  result = qword_1EADCCC30;
  if (!qword_1EADCCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC30);
  }

  return result;
}

unint64_t sub_191C865BC()
{
  result = qword_1EADCCC38;
  if (!qword_1EADCCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC38);
  }

  return result;
}

unint64_t sub_191C86614()
{
  result = qword_1EADCCC40;
  if (!qword_1EADCCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC40);
  }

  return result;
}

unint64_t sub_191C8666C()
{
  result = qword_1EADCCC48;
  if (!qword_1EADCCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC48);
  }

  return result;
}

unint64_t sub_191C866C4()
{
  result = qword_1EADCCC50;
  if (!qword_1EADCCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC50);
  }

  return result;
}

unint64_t sub_191C8671C()
{
  result = qword_1EADCCC58;
  if (!qword_1EADCCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC58);
  }

  return result;
}

unint64_t sub_191C86774()
{
  result = qword_1EADCCC60;
  if (!qword_1EADCCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC60);
  }

  return result;
}

unint64_t sub_191C867CC()
{
  result = qword_1EADCCC68;
  if (!qword_1EADCCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC68);
  }

  return result;
}

unint64_t sub_191C86824()
{
  result = qword_1EADCCC70;
  if (!qword_1EADCCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC70);
  }

  return result;
}

unint64_t sub_191C8687C()
{
  result = qword_1EADCCC78;
  if (!qword_1EADCCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC78);
  }

  return result;
}

unint64_t sub_191C868D4()
{
  result = qword_1EADCCC80;
  if (!qword_1EADCCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC80);
  }

  return result;
}

uint64_t sub_191C86928(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E657461636E6F63 && a2 == 0xEB00000000657461 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656772656DLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_191C86A70()
{
  v1 = v0;
  v2 = [v0 minimum];
  v3 = objc_opt_self();
  v4 = [v3 millimeterOfMercuryUnit];
  [v2 doubleValueForUnit_];
  v6 = v5;

  v7 = [v1 maximum];
  v8 = [v3 millimeterOfMercuryUnit];
  [v7 doubleValueForUnit_];
  v10 = v9;

  v11 = 1.79769313e308 - fabs(v10);
  if (1.79769313e308 - fabs(v6) > 2.22044605e-16)
  {
    if (v11 <= 2.22044605e-16)
    {
      v12 = [v1 isMinimumInclusive];
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 61;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = 0xE000000000000000;
      }

      else
      {
        v15 = 0xE100000000000000;
      }

      MEMORY[0x193B01F90](v14, v15);

      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v6 > -9.22337204e18)
        {
          if (v6 < 9.22337204e18)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }

        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_36;
    }

    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v6 <= -9.22337204e18)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v6 >= 9.22337204e18)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_191CC7398();
    MEMORY[0x193B01F90](11822, 0xE200000000000000);
    if ([v1 isMaximumInclusive])
    {
      v16 = 46;
    }

    else
    {
      v16 = 60;
    }

    MEMORY[0x193B01F90](v16, 0xE100000000000000);

    if ((~*&v10 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_44;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_45:
      __break(1u);
      return;
    }

    if (v10 < 9.22337204e18)
    {
LABEL_34:
      v21 = sub_191CC7398();
      MEMORY[0x193B01F90](v21);

      return;
    }

    __break(1u);
LABEL_25:
    v17 = [v1 isMaximumInclusive];
    v18 = v17 == 0;
    if (v17)
    {
      v19 = 61;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = 0xE100000000000000;
    }

    MEMORY[0x193B01F90](v19, v20);

    if ((~*&v10 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_37;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v10 >= 9.22337204e18)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  if (v11 > 2.22044605e-16)
  {
    goto LABEL_25;
  }
}

unint64_t HKBloodPressureClassificationGuidelines.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (!a1)
  {
    v1 = 0xD000000000000020;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000024;
  }

  if (a1 == 2)
  {
    return 0xD00000000000003CLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_191C86EAC@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo37HKBloodPressureClassificationCategorya9HealthKitE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_191C86ED4()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7090);
  __swift_project_value_buffer(v0, qword_1EADE7090);
  return sub_191CC6338();
}

uint64_t sub_191C86F64()
{
  type metadata accessor for HKError(0);
  sub_191C872E8(0, &unk_1EADCD110, sub_191C3D154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x8000000191D2EBA0;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v2 = sub_191CC5FB8();

  return v2;
}

uint64_t _sSo37HKBloodPressureClassificationCategorya9HealthKitE8allCasesSayABGvgZ_0()
{
  sub_191C872E8(0, &qword_1EADCCCA8, type metadata accessor for HKBloodPressureClassificationCategory, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_191DD4750;
  *(v0 + 32) = @"AHA.Normal";
  *(v0 + 40) = @"AHA.Elevated";
  *(v0 + 48) = @"AHA.HypertensionStage1";
  *(v0 + 56) = @"AHA.HypertensionStage2";
  *(v0 + 64) = @"AHA.HypertensiveCrisis";
  *(v0 + 72) = @"ESC.NonElevated";
  *(v0 + 80) = @"ESC.Elevated";
  *(v0 + 88) = @"ESC.Hypertension";
  *(v0 + 96) = @"ESC.HypertensiveEmergency";
  *(v0 + 104) = @"FIGO.Normal";
  *(v0 + 112) = @"FIGO.MildlyElevated";
  *(v0 + 120) = @"FIGO.SeverelyElevated";
  v1 = @"AHA.Normal";
  v2 = @"AHA.Elevated";
  v3 = @"AHA.HypertensionStage1";
  v4 = @"AHA.HypertensionStage2";
  v5 = @"AHA.HypertensiveCrisis";
  v6 = @"ESC.NonElevated";
  v7 = @"ESC.Elevated";
  v8 = @"ESC.Hypertension";
  v9 = @"ESC.HypertensiveEmergency";
  v10 = @"FIGO.Normal";
  v11 = @"FIGO.MildlyElevated";
  v12 = @"FIGO.SeverelyElevated";
  return v0;
}

uint64_t sub_191C87284(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_191C872E8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_191C872E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_191C873B8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_191CC6778();

  return v3;
}

uint64_t sub_191C8743C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_191C8749C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_191CC67B8();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_191C87514(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_191C87570(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_191CC67B8();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

id HKCloudSyncManagerRecordTaskRecord.init(ownerID:zoneID:recordID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_191CC6778();

  v8 = sub_191CC6778();

  v9 = sub_191CC6778();

  v10 = [v6 initWithOwnerID:v7 zoneID:v8 recordID:v9];

  return v10;
}

{
  v7 = (v6 + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_ownerID);
  *v7 = a1;
  v7[1] = a2;
  v8 = (v6 + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_zoneID);
  *v8 = a3;
  v8[1] = a4;
  v9 = (v6 + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_recordID);
  *v9 = a5;
  v9[1] = a6;
  v11.super_class = HKCloudSyncManagerRecordTaskRecord;
  return objc_msgSendSuper2(&v11, sel_init);
}

id HKCloudSyncManagerRecordTaskRecord.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  sub_191BFAE6C(0, qword_1EADCCD40, 0x1E696AEC0);
  v2 = sub_191CC6D88();
  if (v2)
  {
    v3 = v2;
    sub_191CC67A8();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall HKCloudSyncManagerRecordTaskRecord.encode(with:)(NSCoder with)
{
  v3 = [v1 ownerID];
  if (!v3)
  {
    sub_191CC67B8();
    v3 = sub_191CC6778();
  }

  v4 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 zoneID];
  if (!v5)
  {
    sub_191CC67B8();
    v5 = sub_191CC6778();
  }

  v6 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 recordID];
  if (!v7)
  {
    sub_191CC67B8();
    v7 = sub_191CC6778();
  }

  v8 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id HKCloudSyncManagerRecordTaskRecord.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void keypath_setTm(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_191CC6778();
  [v6 *a5];
}

uint64_t CodableBox.wrappedValue.getter()
{
  sub_19198EBF4();

  return swift_unknownObjectRetain();
}

uint64_t CodableBox.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t CodableBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a2;
  sub_191C8A1E0(0, &qword_1EADCCCE0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C8A094();
  sub_191CC7528();
  if (!v3)
  {
    v11 = v8;
    v17 = a3;
    sub_191C57508();
    sub_191CC7268();
    v12 = v7;
    v13 = v19[0];
    v14 = v19[1];
    sub_191BFAE6C(0, &qword_1EADCCCF8, 0x1E696ACD0);
    sub_191C8A0E8(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_191DD4540;
    *(v15 + 32) = v18;
    sub_191CC6CD8();

    if (v19[3])
    {
      if (swift_dynamicCast())
      {
        (*(v11 + 8))(v10, v12);
        sub_191C049D8(v13, v14);
        *v17 = v19[5];
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }
    }

    else
    {
      sub_191C74400(v19);
    }

    sub_191C8A18C();
    swift_allocError();
    swift_willThrow();
    sub_191C049D8(v13, v14);
    (*(v11 + 8))(v10, v12);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t DefaultEncodable.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  sub_191C8A1E0(0, &unk_1EADCCD20, MEMORY[0x1E69E6F58]);
  v24 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  v13 = objc_opt_self();
  (*(a3 + 16))(a2, a3);
  v14 = sub_191CC73D8();
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v25[0] = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v25];
  swift_unknownObjectRelease();
  v16 = v25[0];
  if (v15)
  {
    v17 = sub_191CC6048();
    v19 = v18;

    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_191C8A094();
    sub_191CC7548();
    v25[0] = v17;
    v25[1] = v19;
    sub_191C511C4();
    v20 = v24;
    sub_191CC7348();
    (*(v23 + 8))(v8, v20);
    return sub_191C049D8(v17, v19);
  }

  else
  {
    v22 = v16;
    sub_191CC5FC8();

    return swift_willThrow();
  }
}

uint64_t sub_191C88464@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_19198EBF4();

  return swift_unknownObjectRetain();
}

void (*sub_191C884A4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CodableBox.wrappedValue.modify();
  return sub_191C88514;
}

uint64_t CodableBox<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C88618(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return a5(&v8, &v7) & 1;
}

uint64_t OptionalCodableBox.wrappedValue.getter()
{
  sub_19198EBF4();

  return swift_unknownObjectRetain();
}

uint64_t sub_191C88694@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for OptionalCodableBox(0, *(a1 + a2 - 8), a2, a4);
  *a3 = sub_19198EBF4();

  return swift_unknownObjectRetain();
}

uint64_t OptionalCodableBox.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t (*OptionalCodableBox.wrappedValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return sub_191C88794;
}

uint64_t sub_191C88794(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v3 = v2;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *v3 = v2;
  }

  return result;
}

uint64_t sub_191C88810(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x42656C6261646F63 && a2 == 0xEA0000000000786FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_191CC73E8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_191C888AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C88810(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_191C888DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_191C2230C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_191C8890C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C88960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t OptionalCodableBox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *(a2 + 16);
  type metadata accessor for OptionalCodableBox.CodingKeys(255, v14, a3, a4);
  swift_getWitnessTable();
  v6 = sub_191CC7378();
  v15 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_191CC7548();
  v16 = v9;
  type metadata accessor for CodableBox(0, v14, v10, v11);
  swift_getWitnessTable();
  sub_191CC72F8();
  swift_unknownObjectRelease();
  return (*(v15 + 8))(v8, v6);
}

uint64_t OptionalCodableBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v17 = a3;
  type metadata accessor for OptionalCodableBox.CodingKeys(255, a2, a4, a5);
  swift_getWitnessTable();
  v8 = sub_191CC72A8();
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7528();
  if (!v5)
  {
    v14 = v16;
    v13 = v17;
    type metadata accessor for CodableBox(0, a2, v11, v12);
    swift_getWitnessTable();
    sub_191CC7218();
    (*(v14 + 8))(v10, v8);
    *v13 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL static OptionalCodableBox<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (!*a1)
  {
    if (!v4)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (!v4)
  {
LABEL_7:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v5 = sub_191CC6768();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  return (v5 & 1) != 0;
}

uint64_t OptionalCodableBox<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CodableBox(255, *(a2 + 16), a3, a4);
  sub_191CC6DD8();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  sub_191CC6DE8();
  return swift_unknownObjectRelease();
}

uint64_t OptionalCodableBox<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v7[9] = *v2;
  sub_191CC74C8();
  OptionalCodableBox<>.hash(into:)(v7, a1, a2, v5);
  return sub_191CC7508();
}

uint64_t static OptionalCodableBox<>.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return sub_191CC66F8() & 1;
  }
}

uint64_t CodableBoxArray.wrappedValue.getter()
{
  sub_19198EBF4();
}

uint64_t CodableBoxArray.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CodableBoxArray.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = a2;
  sub_191C8A1E0(0, &qword_1EADCCCE0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C8A094();
  sub_191CC7528();
  if (!v3)
  {
    v11 = v8;
    v12 = v20;
    v19 = a3;
    sub_191C57508();
    sub_191CC7268();
    v13 = v21[0];
    v17 = v21[1];
    sub_191BFAE6C(0, &qword_1EADCCCF8, 0x1E696ACD0);
    sub_191C8A0E8(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_191DD1F40;
    *(v14 + 32) = sub_191BFAE6C(0, &qword_1EADCCD30, 0x1E695DEC8);
    *(v14 + 40) = v12;
    v18 = v13;
    v15 = v17;
    sub_191CC6CD8();

    if (v21[3])
    {
      sub_191CC6978();
      if (swift_dynamicCast())
      {
        (*(v11 + 8))(v10, v7);
        sub_191C049D8(v18, v15);
        *v19 = v21[5];
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }
    }

    else
    {
      sub_191C74400(v21);
    }

    sub_191C8A18C();
    swift_allocError();
    swift_willThrow();
    sub_191C049D8(v18, v15);
    (*(v11 + 8))(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_191C893B0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CodableBoxArray.wrappedValue.modify();
  return sub_191C8A758;
}

uint64_t CodableBoxArray<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  sub_191CC6988();
  return sub_191CC7508();
}

uint64_t CodableBoxDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  sub_191C8A1E0(0, &qword_1EADCCCE0, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C8A094();
  sub_191CC7528();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = a5;
  v28 = a1;
  v14 = v10;
  v16 = v30;
  v15 = v31;
  sub_191C57508();
  sub_191CC7268();
  v17 = v32[0];
  v25 = v32[1];
  sub_191BFAE6C(0, &qword_1EADCCCF8, 0x1E696ACD0);
  sub_191C8A0E8(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_191DD1F50;
  *(v18 + 32) = sub_191BFAE6C(0, &qword_1EADCCD38, 0x1E695DF20);
  *(v18 + 40) = sub_191BFAE6C(0, qword_1EADCCD40, 0x1E696AEC0);
  *(v18 + 48) = v16;
  v26 = v17;
  v19 = v25;
  sub_191CC6CD8();

  v20 = v15;
  v21 = v29;
  if (v32[3])
  {
    v22 = v16;
    sub_191CC6648();
    if (swift_dynamicCast())
    {
      (*(v14 + 8))(v12, v9);
      sub_191C049D8(v26, v19);
      *v27 = v32[5];
      return __swift_destroy_boxed_opaque_existential_0(v28);
    }
  }

  else
  {
    sub_191C74400(v32);
    v22 = v16;
  }

  swift_getTupleTypeMetadata2();
  v23 = sub_191CC6918();
  sub_191C89DA8(v23, v21, v22, v20);

  sub_191C8A18C();
  swift_allocError();
  swift_willThrow();
  sub_191C049D8(v26, v19);
  (*(v14 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_0(v28);
}

void (*sub_191C8991C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CodableBoxDictionary.wrappedValue.modify();
  return sub_191C8A758;
}

uint64_t CodableBoxDictionary<>.hashValue.getter(void *a1, uint64_t a2)
{
  sub_191CC74C8();
  sub_191CC6658();
  return sub_191CC7508();
}

uint64_t sub_191C89A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_191CC74C8();
  a4(v8, a2, v6);
  return sub_191CC7508();
}

uint64_t sub_191C89AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C89B4C(uint64_t a1)
{
  v2 = sub_191C8A094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C89B88(uint64_t a1)
{
  v2 = sub_191C8A094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C89BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC6698();

  return sub_191C89C20(a1, v6, a2, a3);
}

unint64_t sub_191C89C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_191CC6768();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_191C89DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_191CC6958())
  {
    sub_191CC7198();
    v13 = sub_191CC7188();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_191CC6958();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_191CC6938())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_191CC6FE8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_191C89BC4(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_191C8A094()
{
  result = qword_1EADCCCE8;
  if (!qword_1EADCCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCCE8);
  }

  return result;
}

void sub_191C8A0E8(uint64_t a1)
{
  if (!qword_1EADCCD00)
  {
    sub_191C8A140();
    v1 = sub_191CC73A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCCD00);
    }
  }
}

unint64_t sub_191C8A140()
{
  result = qword_1EADCCD08;
  if (!qword_1EADCCD08)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EADCCD08);
  }

  return result;
}

unint64_t sub_191C8A18C()
{
  result = qword_1EADCCD18;
  if (!qword_1EADCCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCD18);
  }

  return result;
}

void sub_191C8A1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C8A094();
    v7 = a3(a1, &type metadata for CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_191C8A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C8A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C8A394(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_191C8A3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_191C8A440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C8A494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_191C8A578()
{
  result = qword_1EADCCFC8;
  if (!qword_1EADCCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFC8);
  }

  return result;
}

unint64_t sub_191C8A5D0()
{
  result = qword_1EADCCFD0;
  if (!qword_1EADCCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFD0);
  }

  return result;
}

unint64_t sub_191C8A67C()
{
  result = qword_1EADCCFD8;
  if (!qword_1EADCCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFD8);
  }

  return result;
}

unint64_t sub_191C8A6D4()
{
  result = qword_1EADCCFE0;
  if (!qword_1EADCCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFE0);
  }

  return result;
}

uint64_t sub_191C8A7B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_191CC6348();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_191CC6338();
}

uint64_t sub_191C8A8D0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_191CC6348();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = a3();
  return sub_191CC6358();
}

uint64_t sub_191C8A95C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_191CC6348();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void sub_191C8A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_191CC5FB8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_191C8AA64()
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C8AAEC(uint64_t a1)
{
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_191CC66A8();
}

uint64_t sub_191C8AB70(uint64_t a1)
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

NSObject *sub_191C8ABF8()
{
  v1 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue;
  v2 = *&v0[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue];
  }

  else
  {
    swift_getObjectType();
    v4 = [swift_getObjCClassFromMetadata() description];
    if (!v4)
    {
      sub_191CC67B8();
      v4 = sub_191CC6778();
    }

    v5 = HKCreateSerialDispatchQueue(v0, v4);

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *DatabaseAccessibilityAssertionStoreKeeper.init(healthStore:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock;
  sub_191C8AEF0(0);
  v5 = swift_allocObject();
  *&v1[v4] = v5;
  v6 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertions] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequestsTimer] = 0;
  *(v5 + 16) = 0;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequests] = v6;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__healthdRequests] = v6;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken] = -1;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue] = 0;
  swift_unknownObjectWeakAssign();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  v8 = sub_191C8ABF8();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_191C8AFAC;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_191C8B87C;
  v14[3] = &block_descriptor_22;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken;
  swift_beginAccess();
  notify_register_dispatch("HKProtectedHealthDatabaseDidBecomeAvailableNotification", &v7[v12], v11, v10);
  swift_endAccess();
  _Block_release(v10);

  return v7;
}

void sub_191C8AEF0(uint64_t a1)
{
  if (!qword_1ED5F0030)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_191CC7048();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED5F0030);
    }
  }
}

void sub_191C8AF54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_191C8AFB4(0);
  }
}

void sub_191C8AFB4(char a1)
{
  v2 = v1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord(0);
  v79 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v4 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v81 = &v64 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - v9;
  v73 = v11;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v64 - v12;
  v13 = sub_191CC63D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v16 = sub_191C8ABF8();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v17 = sub_191CC63F8();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = objc_allocWithZone(type metadata accessor for DatabaseAccessibilityAssertionStore());
    v75 = DatabaseAccessibilityAssertionStore.init(healthStore:)(v19);
    if (v75)
    {
      v21 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequests;
      swift_beginAccess();
      v22 = *&v2[v21];
      v23 = v22 + 56;
      v24 = 1 << *(v22 + 32);
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v26 = v25 & *(v22 + 56);
      v71 = v2;
      v27 = &v2[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__healthdRequests];
      v68 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider;
      v76 = v22;

      v78 = v27;
      swift_beginAccess();
      v28 = 0;
      v29 = (v24 + 63) >> 6;
      v67 = &v84;
      v66 = a1 & 1;
      v70 = v23;
      v69 = v29;
      v65 = v10;
      if (!v26)
      {
LABEL_8:
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v29)
          {

            sub_191C8DDBC();

            return;
          }

          v26 = *(v23 + 8 * v30);
          ++v28;
          if (v26)
          {
            v28 = v30;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

      while (1)
      {
LABEL_12:
        v31 = *(v76 + 48);
        v80 = *(v79 + 72);
        v32 = v77;
        sub_191C90BAC(v31 + v80 * (__clz(__rbit64(v26)) | (v28 << 6)), v77, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        sub_191C7B978(v32, v10);
        v33 = *v78;
        if (*(*v78 + 16))
        {
          sub_191CC74C8();
          sub_191CC61A8();
          sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

          v34 = v10;
          sub_191CC66A8();
          v35 = sub_191CC7508();
          v36 = -1 << *(v33 + 32);
          v37 = v35 & ~v36;
          if ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
          {
            v38 = ~v36;
            while (1)
            {
              v39 = v81;
              sub_191C90BAC(*(v33 + 48) + v37 * v80, v81, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
              v40 = sub_191CC6178();
              sub_191C90AE8(v39, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
              if (v40)
              {
                break;
              }

              v37 = (v37 + 1) & v38;
              if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v10 = v34;
            goto LABEL_19;
          }

LABEL_17:

          v10 = v34;
        }

        v41 = v72;
        sub_191C90BAC(v10, v72, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        swift_beginAccess();
        v42 = v81;
        sub_191C78CB4(v81, v41);
        swift_endAccess();
        sub_191C90AE8(v42, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v43 = *(DatabaseAccessibilityAssertionsRecord + 24);
        v44 = &v10[*(DatabaseAccessibilityAssertionsRecord + 20)];
        v45 = *(v44 + 1);
        v80 = *v44;
        v46 = *&v10[v43];
        sub_191C90BAC(v10, v42, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v47 = (*(v79 + 80) + 24) & ~*(v79 + 80);
        v48 = swift_allocObject();
        v49 = v71;
        *(v48 + 16) = v71;
        sub_191C7B978(v42, v48 + v47);
        v50 = v49;
        v51 = v75;
        v52 = sub_191C70884();
        v53 = swift_allocObject();
        v53[2] = sub_191C907CC;
        v53[3] = v48;
        v53[4] = v51;
        v86 = sub_191C71000;
        v87 = v53;
        aBlock = MEMORY[0x1E69E9820];
        v83 = 1107296256;
        v84 = sub_191C7100C;
        v85 = &block_descriptor_47;
        v54 = _Block_copy(&aBlock);

        v55 = v51;

        v56 = [v52 clientQueueObjectHandlerWithCompletion_];
        _Block_release(v54);

        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        v58 = *&v51[v68];
        v59 = swift_allocObject();
        *(v59 + 16) = v80;
        *(v59 + 24) = v45;
        *(v59 + 32) = v46;
        *(v59 + 40) = v66;
        *(v59 + 48) = sub_191C7123C;
        *(v59 + 56) = v57;
        v86 = sub_191C90850;
        v87 = v59;
        aBlock = MEMORY[0x1E69E9820];
        v83 = 1107296256;
        v84 = sub_191C707AC;
        v85 = &block_descriptor_56;
        v60 = _Block_copy(&aBlock);
        v61 = v58;

        v62 = swift_allocObject();
        *(v62 + 16) = sub_191C7123C;
        *(v62 + 24) = v57;
        v86 = sub_191C715DC;
        v87 = v62;
        aBlock = MEMORY[0x1E69E9820];
        v83 = 1107296256;
        v84 = sub_191C7081C;
        v85 = &block_descriptor_62;
        v63 = _Block_copy(&aBlock);

        [v61 fetchProxyWithHandler:v60 errorHandler:v63];
        _Block_release(v63);
        _Block_release(v60);

        v10 = v65;
LABEL_19:
        v26 &= v26 - 1;
        sub_191C90AE8(v10, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v23 = v70;
        v29 = v69;
        if (!v26)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

uint64_t sub_191C8B87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}