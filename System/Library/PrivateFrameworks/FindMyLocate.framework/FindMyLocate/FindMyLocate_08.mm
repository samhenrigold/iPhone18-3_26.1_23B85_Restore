uint64_t Fence.Schedule.Matcher.doesMatchSchedule(_:)(uint64_t a1)
{
  v2 = sub_1B80C8F2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B80C8E2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v3 + 104))(v5, *MEMORY[0x1E69699A0], v2);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v5, v12);
  (*(v3 + 8))(v5, v2);
  sub_1B8084878(v12, v10);
  sub_1B8089004(&qword_1EBA65F30, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1B80C907C())
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1B80C907C() ^ 1;
  }

  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Fence.Schedule.Matcher.nextStartOrEndDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B80C8F2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B80C8E2C();
  v8 = *(v22 - 8);
  v9 = MEMORY[0x1EEE9AC00](v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *MEMORY[0x1E69699A0];
  v20 = *(v5 + 104);
  v20(v7, v14, v4);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v7, v13);
  v15 = *(v5 + 8);
  v15(v7, v4);
  v21 = v2;
  sub_1B8084878(v13, v11);
  if (sub_1B80C8D9C())
  {
    v16 = v22;
    (*(v8 + 8))(v13, v22);
    return (*(v8 + 32))(v23, v11, v16);
  }

  else
  {
    v20(v7, *MEMORY[0x1E6969998], v4);
    Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v7, v23);
    v15(v7, v4);
    v18 = *(v8 + 8);
    v19 = v22;
    v18(v11, v22);
    return (v18)(v13, v19);
  }
}

uint64_t Fence.Schedule.Matcher.previousInterval(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = sub_1B80C8F2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B80C8E2C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v22 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v22 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - v17;
  (*(v3 + 104))(v5, *MEMORY[0x1E69699A0], v2);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(v22[0], v5, v18);
  (*(v3 + 8))(v5, v2);
  sub_1B8084878(v18, v16);
  v19 = *(v7 + 16);
  v19(v13, v18, v6);
  v19(v10, v16, v6);
  sub_1B80C8BCC();
  v20 = *(v7 + 8);
  v20(v16, v6);
  return (v20)(v18, v6);
}

uint64_t Fence.Schedule.Matcher.previousStartDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8F2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69699A0], v4);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t Fence.Schedule.Matcher.previousEndDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1B80C8F2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B80C8E2C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v4 + 104))(v6, *MEMORY[0x1E69699A0], v3);
  Fence.Schedule.Matcher.nextStartDate(from:direction:)(a1, v6, v16);
  (*(v4 + 8))(v6, v3);
  sub_1B8084878(v16, v14);
  if (sub_1B80C8D9C())
  {
    (*(v8 + 8))(v16, v7);
    return (*(v8 + 32))(v20, v14, v7);
  }

  else
  {
    sub_1B80C8E0C();
    Fence.Schedule.Matcher.previousEndDate(from:)(v11, v20);
    v18 = *(v8 + 8);
    v18(v11, v7);
    v18(v14, v7);
    return (v18)(v16, v7);
  }
}

void Fence.DaysOfWeek.gregorianCalendarWeekdays.getter()
{
  v1 = *v0;
  v2 = sub_1B8083850(&unk_1F2FFA030);
  v3 = v2;
  v13[1] = MEMORY[0x1E69E7CD0];
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    if ((*(*(v3 + 48) + v12) & v1) != 0)
    {
      sub_1B80873C0(v13, *(*(v3 + 56) + 8 * v12));
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B8085D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v80 = a4;
  v95 = a2;
  v82 = a1;
  v4 = sub_1B80C8F3C();
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1B80C8F0C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1B80C8E2C();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D80, &unk_1B80DC400);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v71 - v14;
  v15 = type metadata accessor for Fence.Schedule(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC0, &qword_1B80D9A00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v86 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC8, &unk_1B80D9FD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v71 - v21;
  v23 = sub_1B80C8C7C();
  v84 = *(v23 - 8);
  v85 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v92 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - v26;
  v28 = *(type metadata accessor for Fence.Schedule.Matcher(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FD0, &qword_1B80D9A08);
  v29 = sub_1B80C8F8C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B80D20F0;
  v34 = v33 + v32;
  v35 = *(v30 + 104);
  v35(v34, *MEMORY[0x1E6969A68], v29);
  v35(v34 + v31, *MEMORY[0x1E6969A10], v29);
  sub_1B8088CE4(v33);
  swift_setDeallocating();
  v36 = v87;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v90 = v28;
  v37 = v86;
  sub_1B80C8F1C();

  v38 = sub_1B80C8F9C();
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
  v39 = v93;
  sub_1B8083E1C(v36, v93);
  v40 = *(v16 + 36);
  v41 = sub_1B80C8FCC();
  v42 = *(v41 - 8);
  (*(v42 + 32))(v37, v39 + v40, v41);
  (*(v42 + 56))(v37, 0, 1, v41);
  v93 = v27;
  result = sub_1B80C8C4C();
  if ((*v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v36[1] & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1B80C8C2C();
  sub_1B80C8C6C();
  v44 = v94;
  sub_1B80C8F4C();
  v46 = v88;
  v45 = v89;
  v47 = v91;
  v86 = *(v89 + 16);
  (v86)(v88, v95, v91);
  v48 = *(v45 + 56);
  v48(v46, 0, 1, v47);
  v49 = *(v81 + 48);
  v50 = v83;
  sub_1B7FD6818(v44, v83);
  sub_1B7FD6818(v46, v50 + v49);
  v51 = *(v45 + 48);
  if (v51(v50, 1, v47) != 1)
  {
    v54 = v72;
    sub_1B7FD6818(v50, v72);
    if (v51(v50 + v49, 1, v47) != 1)
    {
      v64 = v89;
      v65 = v50 + v49;
      v66 = v71;
      (*(v89 + 32))(v71, v65, v47);
      sub_1B8089004(&qword_1EBA65D90, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v67 = sub_1B80C908C();
      v68 = *(v64 + 8);
      v68(v66, v91);
      sub_1B7FB86D4(v88, &unk_1EBA65FD0, &unk_1B80D1920);
      v68(v54, v91);
      v47 = v91;
      sub_1B7FB86D4(v50, &unk_1EBA65FD0, &unk_1B80D1920);
      v53 = v80;
      if (v67)
      {
        goto LABEL_11;
      }

LABEL_9:
      v55 = v92;
      sub_1B80C8C5C();
      sub_1B80C8C3C();
      v56 = v74;
      v57 = v73;
      v58 = v76;
      (*(v74 + 104))(v73, *MEMORY[0x1E69698D0], v76);
      v60 = v77;
      v59 = v78;
      v61 = v75;
      (*(v77 + 104))(v75, *MEMORY[0x1E69699C8], v78);
      sub_1B80C8F6C();
      (*(v60 + 8))(v61, v59);
      (*(v56 + 8))(v57, v58);
      sub_1B7FB86D4(v94, &unk_1EBA65FD0, &unk_1B80D1920);
      v62 = v85;
      v63 = *(v84 + 8);
      v63(v55, v85);
      return (v63)(v93, v62);
    }

    sub_1B7FB86D4(v88, &unk_1EBA65FD0, &unk_1B80D1920);
    (*(v89 + 8))(v54, v47);
LABEL_8:
    sub_1B7FB86D4(v50, &qword_1EBA65D80, &unk_1B80DC400);
    goto LABEL_9;
  }

  sub_1B7FB86D4(v46, &unk_1EBA65FD0, &unk_1B80D1920);
  v52 = v51(v50 + v49, 1, v47);
  v53 = v80;
  if (v52 != 1)
  {
    goto LABEL_8;
  }

  sub_1B7FB86D4(v50, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_11:
  sub_1B7FB86D4(v94, &unk_1EBA65FD0, &unk_1B80D1920);
  v69 = v85;
  v70 = *(v84 + 8);
  v70(v92, v85);
  v70(v93, v69);
  (v86)(v53, v95, v47);
  return (v48)(v53, 0, 1, v47);
}

uint64_t sub_1B8086880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E2C();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1B8089004(&qword_1EBA65F30, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v20 = sub_1B80C907C();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1B8086B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E2C();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1B8089004(&qword_1EBA65F30, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v20 = sub_1B80C907C();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t static Fence.Schedule.Matcher.matchingPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69698D0];
  v3 = sub_1B80C8F0C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B8086E54()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7AC98);
  __swift_project_value_buffer(v0, qword_1EBA7AC98);
  return sub_1B80C8FFC();
}

char *sub_1B8086EC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB8, &qword_1B80D99F8);
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

uint64_t sub_1B8086FBC(_OWORD *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  v5 = sub_1B80C997C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = (*(v4 + 48) + 176 * v7);
      v11 = v9[1];
      v10 = v9[2];
      v48[0] = *v9;
      v48[1] = v11;
      v48[2] = v10;
      v12 = v9[3];
      v13 = v9[4];
      v14 = v9[6];
      v48[5] = v9[5];
      v48[6] = v14;
      v48[3] = v12;
      v48[4] = v13;
      v15 = v9[7];
      v16 = v9[8];
      v17 = v9[10];
      v48[9] = v9[9];
      v48[10] = v17;
      v48[7] = v15;
      v48[8] = v16;
      v18 = sub_1B80C90FC();
      v20 = v19;
      if (v18 == sub_1B80C90FC() && v20 == v21)
      {
        break;
      }

      v22 = sub_1B80C981C();
      sub_1B7FC8DA4(v48, v47);

      sub_1B7FCAD28(v48);
      if (v22)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1B7FC8DA4(v48, v47);

    sub_1B7FCAD28(v48);
LABEL_9:
    sub_1B7FCAD28(a2);
    v30 = (*(v4 + 48) + 176 * v7);
    v32 = v30[1];
    v31 = v30[2];
    v47[0] = *v30;
    v47[1] = v32;
    v47[2] = v31;
    v33 = v30[3];
    v34 = v30[4];
    v35 = v30[6];
    v47[5] = v30[5];
    v47[6] = v35;
    v47[3] = v33;
    v47[4] = v34;
    v36 = v30[7];
    v37 = v30[8];
    v38 = v30[10];
    v47[9] = v30[9];
    v47[10] = v38;
    v47[7] = v36;
    v47[8] = v37;
    v39 = v30[9];
    a1[8] = v30[8];
    a1[9] = v39;
    a1[10] = v30[10];
    v40 = v30[5];
    a1[4] = v30[4];
    a1[5] = v40;
    v41 = v30[7];
    a1[6] = v30[6];
    a1[7] = v41;
    v42 = v30[1];
    *a1 = *v30;
    a1[1] = v42;
    v43 = v30[3];
    a1[2] = v30[2];
    a1[3] = v43;
    sub_1B7FC8DA4(v47, v46);
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47[0] = *v44;
    sub_1B7FC8DA4(a2, v48);
    sub_1B8088724(a2, v7, isUniquelyReferenced_nonNull_native);
    *v44 = *&v47[0];
    v24 = *(a2 + 144);
    a1[8] = *(a2 + 128);
    a1[9] = v24;
    a1[10] = *(a2 + 160);
    v25 = *(a2 + 80);
    a1[4] = *(a2 + 64);
    a1[5] = v25;
    v26 = *(a2 + 112);
    a1[6] = *(a2 + 96);
    a1[7] = v26;
    v27 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v27;
    v28 = *(a2 + 48);
    result = 1;
    a1[2] = *(a2 + 32);
    a1[3] = v28;
  }

  return result;
}

uint64_t sub_1B8087270(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B80C993C();
  sub_1B80C911C();
  v8 = sub_1B80C997C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B80C981C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B8088998(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B80873C0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1B80C992C();
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
    sub_1B8088B18(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1B80874A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA8, &qword_1B80D99E8);
  v2 = *v0;
  v3 = sub_1B80C94EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 176 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[6];
      v27[5] = v17[5];
      v27[6] = v20;
      v27[3] = v18;
      v27[4] = v19;
      v21 = v17[7];
      v22 = v17[8];
      v23 = v17[10];
      v27[9] = v17[9];
      v27[10] = v23;
      v27[7] = v21;
      v27[8] = v22;
      v25 = v17[1];
      v24 = v17[2];
      v27[0] = *v17;
      v27[1] = v25;
      v27[2] = v24;
      memmove((*(v4 + 48) + v16), v17, 0xB0uLL);
      sub_1B7FC8DA4(v27, &v26);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
}

void sub_1B8087648()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF0, &qword_1B80D9A18);
  v2 = *v0;
  v3 = sub_1B80C94EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_1B80877A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB0, &qword_1B80D99F0);
  v2 = *v0;
  v3 = sub_1B80C94EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1B80878E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA8, &qword_1B80D99E8);
  v4 = sub_1B80C94FC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v22 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v25 = (*(v3 + 48) + 176 * (v22 | (v6 << 6)));
      v27 = *v25;
      v26 = v25[1];
      v45 = v25[2];
      v28 = v25[3];
      v29 = v25[4];
      v30 = v25[6];
      v48 = v25[5];
      v49 = v30;
      v46 = v28;
      v47 = v29;
      v31 = v25[7];
      v32 = v25[8];
      v33 = v25[10];
      v52 = v25[9];
      v53 = v33;
      v50 = v31;
      v51 = v32;
      v43 = v27;
      v44 = v26;
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B7FC8DA4(&v43, v42);
      sub_1B80C911C();

      v34 = sub_1B80C997C();
      v35 = -1 << *(v5 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v11 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v11 + 8 * v37);
          if (v41 != -1)
          {
            v12 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v36) & ~*(v11 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 176 * v12);
      v14 = v45;
      v15 = v43;
      v13[1] = v44;
      v13[2] = v14;
      v16 = v46;
      v17 = v47;
      v18 = v49;
      v13[5] = v48;
      v13[6] = v18;
      v13[3] = v16;
      v13[4] = v17;
      v19 = v50;
      v20 = v51;
      v21 = v53;
      v13[9] = v52;
      v13[10] = v21;
      v13[7] = v19;
      v13[8] = v20;
      *v13 = v15;
      ++*(v5 + 16);
    }

    v23 = v6;
    while (1)
    {
      v6 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v24 = *(v3 + 56 + 8 * v6);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v9 = (v24 - 1) & v24;
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
}

void sub_1B8087B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF0, &qword_1B80D9A18);
  v4 = sub_1B80C94FC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B80C993C();

      sub_1B80C911C();
      v20 = sub_1B80C997C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

void sub_1B8087DD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB0, &qword_1B80D99F0);
  v4 = sub_1B80C94FC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1B80C992C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1B8087FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FA8, &qword_1B80D99E8);
  v4 = sub_1B80C94FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 176 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v37 = *(v18 + 112);
      v38 = *(v18 + 128);
      v39 = *(v18 + 144);
      v40 = *(v18 + 160);
      v33 = *(v18 + 48);
      v34 = *(v18 + 64);
      v35 = *(v18 + 80);
      v36 = *(v18 + 96);
      v31 = *(v18 + 16);
      v32 = *(v18 + 32);
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B80C911C();

      v21 = sub_1B80C997C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 176 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 112) = v37;
      *(v14 + 128) = v38;
      *(v14 + 144) = v39;
      *(v14 + 160) = v40;
      *(v14 + 48) = v33;
      *(v14 + 64) = v34;
      *(v14 + 80) = v35;
      *(v14 + 96) = v36;
      *(v14 + 16) = v31;
      *(v14 + 32) = v32;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B80882A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF0, &qword_1B80D9A18);
  v4 = sub_1B80C94FC();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B80C993C();
      sub_1B80C911C();
      v21 = sub_1B80C997C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B8088500(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB0, &qword_1B80D99F0);
  v4 = sub_1B80C94FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1B80C992C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
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
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1B8088724(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_1B8087FC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B80874A0();
      goto LABEL_14;
    }

    sub_1B80878E4(v6 + 1);
  }

  v8 = *v3;
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  v9 = sub_1B80C997C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v8 + 48) + 176 * a2);
      v14 = v12[1];
      v13 = v12[2];
      v38[0] = *v12;
      v38[1] = v14;
      v38[2] = v13;
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      v38[5] = v12[5];
      v38[6] = v17;
      v38[3] = v15;
      v38[4] = v16;
      v18 = v12[7];
      v19 = v12[8];
      v20 = v12[10];
      v38[9] = v12[9];
      v38[10] = v20;
      v38[7] = v18;
      v38[8] = v19;
      v21 = sub_1B80C90FC();
      v23 = v22;
      if (v21 == sub_1B80C90FC() && v23 == v24)
      {
        goto LABEL_17;
      }

      v25 = sub_1B80C981C();
      sub_1B7FC8DA4(v38, v37);

      sub_1B7FCAD28(v38);
      if (v25)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v26 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 176 * a2);
  v28 = *(a1 + 5);
  v27[4] = *(a1 + 4);
  v27[5] = v28;
  v29 = *(a1 + 10);
  v27[9] = *(a1 + 9);
  v27[10] = v29;
  v30 = *(a1 + 8);
  v27[7] = *(a1 + 7);
  v27[8] = v30;
  v27[6] = *(a1 + 6);
  v31 = *(a1 + 1);
  *v27 = *a1;
  v27[1] = v31;
  v32 = *(a1 + 3);
  v27[2] = *(a1 + 2);
  v27[3] = v32;
  v33 = *(v26 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v26 + 16) = v35;
    return;
  }

  __break(1u);
LABEL_17:
  sub_1B7FC8DA4(v38, v37);

  sub_1B7FCAD28(v38);
LABEL_18:
  sub_1B80C985C();
  __break(1u);
}

void sub_1B8088998(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B80882A0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1B8087648();
      goto LABEL_16;
    }

    sub_1B8087B9C(v8 + 1);
  }

  v10 = *v4;
  sub_1B80C993C();
  sub_1B80C911C();
  v11 = sub_1B80C997C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_1B80C981C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1B80C985C();
  __break(1u);
}

void sub_1B8088B18(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8088500(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1B80877A4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B8087DD4(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1B80C992C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B80C985C();
  __break(1u);
}

uint64_t sub_1B8088C60(uint64_t a1)
{
  result = type metadata accessor for Fence.Schedule(319);
  if (v2 <= 0x3F)
  {
    result = sub_1B80C8F9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8088CE4(uint64_t a1)
{
  v2 = sub_1B80C8F8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FD8, &qword_1B80D9A10);
    v9 = sub_1B80C950C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B8089004(&qword_1EBA66FE0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1B80C904C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1B8089004(&qword_1EBA66FE8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1B80C908C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B8089004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Friend.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Friend(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

unint64_t sub_1B80890F8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x614872656E776F5FLL;
    v6 = 0x6E696769726F5FLL;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x797269707865;
    v8 = 0x6E696769726FLL;
    if (a1 != 7)
    {
      v8 = 0x646574616572635FLL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C646E6168;
    v2 = 0xD000000000000017;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000023;
    }

    v3 = 1701869940;
    if (a1 != 1)
    {
      v3 = 0xD000000000000016;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B8089284@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B808A480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80892B8(uint64_t a1)
{
  v2 = sub_1B808A1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80892F4(uint64_t a1)
{
  v2 = sub_1B808A1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Friend.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FF8, &qword_1B80D9A20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v40 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B808A1D8();
  sub_1B80C99DC();
  v8 = v2[6];
  v100 = v2[7];
  v9 = v2[7];
  v101 = v2[8];
  v10 = v2[8];
  v102 = v2[9];
  v11 = v2[9];
  v103 = v2[10];
  v12 = v2[4];
  v13 = v2[2];
  v96 = v2[3];
  v97 = v12;
  v14 = v2[4];
  v15 = v2[6];
  v98 = v2[5];
  v99 = v15;
  v16 = *v2;
  v17 = v2[2];
  v94 = v2[1];
  v95 = v17;
  v18 = *v2;
  v90 = v10;
  v91 = v11;
  v92 = v2[10];
  v93 = v18;
  v86 = v14;
  v87 = v98;
  v88 = v8;
  v89 = v9;
  v82 = v16;
  v83 = v94;
  v84 = v13;
  v85 = v96;
  v81 = 0;
  sub_1B7FC8DA4(&v93, &v70);
  sub_1B7FDC224();
  v19 = v4;
  v20 = v104;
  sub_1B80C97DC();
  if (v20)
  {
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v70 = v82;
    v71 = v83;
    v72 = v84;
    v73 = v85;
    sub_1B7FCAD28(&v70);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v104 = v5;
    v78 = v90;
    v79 = v91;
    v80 = v92;
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v77 = v89;
    v70 = v82;
    v71 = v83;
    v72 = v84;
    v73 = v85;
    sub_1B7FCAD28(&v70);
    LOBYTE(v58) = *(v2 + 176);
    LOBYTE(v47) = 1;
    sub_1B8010F34();
    sub_1B80C97DC();
    LOBYTE(v58) = 2;
    sub_1B80C979C();
    LOBYTE(v58) = 3;
    sub_1B80C979C();
    LOBYTE(v58) = 4;
    sub_1B80C979C();
    LOBYTE(v58) = 5;
    sub_1B80C979C();
    v22 = type metadata accessor for Friend(0);
    v23 = *(v22 + 40);
    v41 = v22;
    v42 = v23;
    LOBYTE(v58) = 6;
    v24 = sub_1B80C8E2C();
    v25 = sub_1B7FBADA8(&qword_1ED8DC390, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v42 = v19;
    sub_1B80C977C();
    v40[1] = v25;
    v40[2] = v24;
    LOBYTE(v58) = *(v2 + *(v41 + 44));
    LOBYTE(v47) = 7;
    v26 = sub_1B808A22C();
    sub_1B80C97DC();
    v40[0] = v26;
    v27 = v41;
    v69 = 8;
    sub_1B80C977C();
    v28 = (v2 + *(v27 + 52));
    v29 = v28[8];
    v30 = v28[6];
    v65 = v28[7];
    v66 = v29;
    v31 = v28[8];
    v32 = v28[10];
    v67 = v28[9];
    v68 = v32;
    v33 = v28[4];
    v34 = v28[2];
    v61 = v28[3];
    v62 = v33;
    v35 = v28[4];
    v36 = v28[6];
    v63 = v28[5];
    v64 = v36;
    v37 = *v28;
    v38 = v28[2];
    v59 = v28[1];
    v60 = v38;
    v39 = *v28;
    v55 = v31;
    v56 = v67;
    v57 = v28[10];
    v58 = v39;
    v51 = v35;
    v52 = v63;
    v53 = v30;
    v54 = v65;
    v47 = v37;
    v48 = v59;
    v49 = v34;
    v50 = v61;
    v46 = 9;
    sub_1B7FB8448(&v58, v45, &qword_1EBA65D78, &qword_1B80D2640);
    sub_1B80C977C();
    v45[8] = v55;
    v45[9] = v56;
    v45[10] = v57;
    v45[4] = v51;
    v45[5] = v52;
    v45[6] = v53;
    v45[7] = v54;
    v45[0] = v47;
    v45[1] = v48;
    v45[2] = v49;
    v45[3] = v50;
    sub_1B7FB86D4(v45, &qword_1EBA65D78, &qword_1B80D2640);
    v44 = *(v2 + *(v27 + 56));
    v43 = 10;
    sub_1B80C97DC();
    v44 = 11;
    sub_1B80C976C();
    return (*(v104 + 8))(0, v19);
  }
}

uint64_t Friend.hashValue.getter()
{
  sub_1B80C993C();
  Friend.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t Friend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67008, &qword_1B80D9A28);
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - v10;
  v12 = type metadata accessor for Friend(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 44);
  v15[v16] = 2;
  v17 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B808A1D8();
  v43 = v11;
  v18 = v46;
  sub_1B80C99BC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(v73);
  }

  v39 = v16;
  v40 = v7;
  v46 = v15;
  v61 = 0;
  v19 = sub_1B7FDC440();
  sub_1B80C972C();
  v20 = v71;
  v21 = v46;
  *(v46 + 8) = v70;
  *(v21 + 9) = v20;
  *(v21 + 10) = v72;
  v22 = v67;
  *(v21 + 4) = v66;
  *(v21 + 5) = v22;
  v23 = v69;
  *(v21 + 6) = v68;
  *(v21 + 7) = v23;
  v24 = v63;
  *v21 = v62;
  *(v21 + 1) = v24;
  v25 = v65;
  *(v21 + 2) = v64;
  *(v21 + 3) = v25;
  v60 = 1;
  sub_1B808A280();
  sub_1B80C972C();
  v21[176] = v49;
  LOBYTE(v49) = 2;
  v21[177] = sub_1B80C96EC() & 1;
  LOBYTE(v49) = 3;
  v21[178] = sub_1B80C96EC() & 1;
  LOBYTE(v49) = 4;
  v21[179] = sub_1B80C96EC() & 1;
  LOBYTE(v49) = 5;
  v26 = sub_1B80C96EC();
  v38[0] = v19;
  v21[180] = v26 & 1;
  sub_1B80C8E2C();
  LOBYTE(v49) = 6;
  v38[1] = sub_1B7FBADA8(&qword_1ED8DBBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1B80C96CC();
  sub_1B805DC34(v40, &v21[v12[10]]);
  v60 = 7;
  v27 = sub_1B7FCFA58();
  sub_1B80C972C();
  v40 = v27;
  v21[v39] = v49;
  LOBYTE(v49) = 8;
  v28 = v42;
  sub_1B80C96CC();
  sub_1B805DC34(v28, &v21[v12[12]]);
  v60 = 9;
  sub_1B80C96CC();
  v29 = &v46[v12[13]];
  v30 = v58;
  *(v29 + 8) = v57;
  *(v29 + 9) = v30;
  *(v29 + 10) = v59;
  v31 = v54;
  *(v29 + 4) = v53;
  *(v29 + 5) = v31;
  v32 = v56;
  *(v29 + 6) = v55;
  *(v29 + 7) = v32;
  v33 = v50;
  *v29 = v49;
  *(v29 + 1) = v33;
  v34 = v52;
  *(v29 + 2) = v51;
  *(v29 + 3) = v34;
  v47 = 10;
  sub_1B80C972C();
  v46[v12[14]] = v48;
  v48 = 11;
  v35 = sub_1B80C96BC();
  (*(v45 + 8))(v43, v44);
  v36 = v46;
  v46[v12[15]] = v35;
  sub_1B7FE7BD0(v36, v41);
  __swift_destroy_boxed_opaque_existential_0(v73);
  return sub_1B7FE7C34(v36);
}

uint64_t sub_1B808A190()
{
  sub_1B80C993C();
  Friend.hash(into:)(v1);
  return sub_1B80C997C();
}

unint64_t sub_1B808A1D8()
{
  result = qword_1EBA67000;
  if (!qword_1EBA67000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67000);
  }

  return result;
}

unint64_t sub_1B808A22C()
{
  result = qword_1ED8DC470;
  if (!qword_1ED8DC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC470);
  }

  return result;
}

unint64_t sub_1B808A280()
{
  result = qword_1EBA67010;
  if (!qword_1EBA67010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67010);
  }

  return result;
}

void sub_1B808A31C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B80C946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B808A37C()
{
  result = qword_1EBA67018;
  if (!qword_1EBA67018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67018);
  }

  return result;
}

unint64_t sub_1B808A3D4()
{
  result = qword_1EBA67020;
  if (!qword_1EBA67020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67020);
  }

  return result;
}

unint64_t sub_1B808A42C()
{
  result = qword_1EBA67028;
  if (!qword_1EBA67028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67028);
  }

  return result;
}

uint64_t sub_1B808A480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B80CDE20 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B80CDE40 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B80CDE70 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDE90 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646574616572635FLL && a2 == 0xEA00000000007441 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x614872656E776F5FLL && a2 == 0xEC000000656C646ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E696769726F5FLL && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDEB0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void __swiftcall FriendContainer.init(followers:following:futureFollowers:futureFollowing:pendingOffers:)(FindMyLocate::FriendContainer *__return_ptr retstr, Swift::OpaquePointer followers, Swift::OpaquePointer following, Swift::OpaquePointer futureFollowers, Swift::OpaquePointer futureFollowing, Swift::OpaquePointer pendingOffers)
{
  retstr->followers = followers;
  retstr->following = following;
  retstr->futureFollowers = futureFollowers;
  retstr->futureFollowing = futureFollowing;
  retstr->pendingOffers = pendingOffers;
}

uint64_t FriendContainer.all.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = *v0;

  sub_1B808C5C8(v1);
  sub_1B808C5C8(v2);
  sub_1B808C5C8(v3);
  sub_1B808C5C8(v4);
  return v6;
}

uint64_t FriendContainer.allHandles.getter()
{
  v1 = type metadata accessor for Friend(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 4);
  v6 = v0[1];
  v50 = *v0;
  v51 = v6;
  v52 = v5;
  v7 = FriendContainer.all.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B8092BA8(0, v8, 0);
    v9 = v49;
    v10 = *(v2 + 80);
    v36 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v12 = *(v2 + 72);
    for (i = v8 - 1; ; --i)
    {
      sub_1B7FE7BD0(v11, v4);
      v14 = v4[9];
      v46 = v4[8];
      v47 = v14;
      v48 = v4[10];
      v15 = v4[5];
      v42 = v4[4];
      v43 = v15;
      v16 = v4[7];
      v44 = v4[6];
      v45 = v16;
      v17 = v4[1];
      v38 = *v4;
      v39 = v17;
      v18 = v4[3];
      v40 = v4[2];
      v41 = v18;
      sub_1B7FC8DA4(&v38, &v37);
      sub_1B7FE7C34(v4);
      v49 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B8092BA8((v19 > 1), v20 + 1, 1);
        v9 = v49;
      }

      *(v9 + 16) = v20 + 1;
      v21 = (v9 + 176 * v20);
      v22 = v38;
      v23 = v40;
      v21[3] = v39;
      v21[4] = v23;
      v21[2] = v22;
      v24 = v41;
      v25 = v42;
      v26 = v44;
      v21[7] = v43;
      v21[8] = v26;
      v21[5] = v24;
      v21[6] = v25;
      v27 = v45;
      v28 = v46;
      v29 = v48;
      v21[11] = v47;
      v21[12] = v29;
      v21[9] = v27;
      v21[10] = v28;
      if (!i)
      {
        break;
      }

      v11 += v12;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1B808D774(v9);

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_12;
  }

  v32 = sub_1B808BDCC(*(v30 + 16), 0);
  v33 = sub_1B808D510(&v38, v32 + 32, v31, v30);
  v34 = v38;

  sub_1B80343D8(v34);
  if (v33 != v31)
  {
    __break(1u);
LABEL_12:
    v32 = MEMORY[0x1E69E7CC0];
  }

  *&v38 = v32;
  sub_1B808C6F4(&v38);

  return v38;
}

uint64_t FriendContainer.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x7265776F6C6C6F66, 0xEB00000000203A73);
  v6 = type metadata accessor for Friend(0);
  v7 = MEMORY[0x1B8CB7B30](v2, v6);
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](0x69776F6C6C6F660ALL, 0xEC000000203A676ELL);
  v8 = MEMORY[0x1B8CB7B30](v1, v6);
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CDED0);
  v9 = MEMORY[0x1B8CB7B30](v4, v6);
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CDEF0);
  v10 = MEMORY[0x1B8CB7B30](v3, v6);
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CDF10);
  v11 = MEMORY[0x1B8CB7B30](v5, v6);
  MEMORY[0x1B8CB7A40](v11);

  return 0;
}

uint64_t sub_1B808ADA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B80C981C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B808AE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    v40 = 0x80000001B80CBD30;
    v41 = v15;
    for (i = v11 - 1; ; --i)
    {
      sub_1B7FE7BD0(v13, v10);
      sub_1B7FE7BD0(v14, v7);
      v17 = *(v10 + 9);
      v43[8] = *(v10 + 8);
      v43[9] = v17;
      v43[10] = *(v10 + 10);
      v18 = *(v10 + 5);
      v43[4] = *(v10 + 4);
      v43[5] = v18;
      v19 = *(v10 + 7);
      v43[6] = *(v10 + 6);
      v43[7] = v19;
      v20 = *(v10 + 1);
      v43[0] = *v10;
      v43[1] = v20;
      v21 = *(v10 + 3);
      v43[2] = *(v10 + 2);
      v43[3] = v21;
      v22 = *(v7 + 9);
      v44[8] = *(v7 + 8);
      v44[9] = v22;
      v44[10] = *(v7 + 10);
      v23 = *(v7 + 5);
      v44[4] = *(v7 + 4);
      v44[5] = v23;
      v24 = *(v7 + 7);
      v44[6] = *(v7 + 6);
      v44[7] = v24;
      v25 = *(v7 + 1);
      v44[0] = *v7;
      v44[1] = v25;
      v26 = *(v7 + 3);
      v44[2] = *(v7 + 2);
      v44[3] = v26;
      v27 = sub_1B80C90FC();
      v29 = v28;
      if (v27 == sub_1B80C90FC() && v29 == v30)
      {
        sub_1B7FC8DA4(v43, v42);
        sub_1B7FC8DA4(v44, v42);

        sub_1B7FCAD28(v44);
        sub_1B7FCAD28(v43);
      }

      else
      {
        v31 = sub_1B80C981C();
        sub_1B7FC8DA4(v43, v42);
        sub_1B7FC8DA4(v44, v42);

        sub_1B7FCAD28(v44);
        sub_1B7FCAD28(v43);
        if ((v31 & 1) == 0)
        {
          sub_1B7FE7C34(v7);
          sub_1B7FE7C34(v10);
          return 0;
        }
      }

      v32 = v10[176];
      if (v32 <= 1)
      {
        v33 = 0x65776F6C6C6F662ELL;
        v34 = 0xE900000000000072;
        if (v10[176])
        {
          v33 = 0x69776F6C6C6F662ELL;
          v34 = 0xEA0000000000676ELL;
        }
      }

      else if (v32 == 2)
      {
        v33 = 0x466572757475662ELL;
        v34 = 0xEF7265776F6C6C6FLL;
      }

      else if (v32 == 3)
      {
        v33 = 0xD000000000000010;
        v34 = v40;
      }

      else
      {
        v33 = 0x676E69646E65702ELL;
        v34 = 0xED0000726566664FLL;
      }

      v35 = v7[176];
      if (v35 <= 1)
      {
        v37 = 0x65776F6C6C6F662ELL;
        v36 = 0xE900000000000072;
        if (v7[176])
        {
          v36 = 0xEA0000000000676ELL;
          if (v33 != 0x69776F6C6C6F662ELL)
          {
            goto LABEL_30;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v35 != 2)
        {
          if (v35 == 3)
          {
            v36 = v40;
            if (v33 != 0xD000000000000010)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v36 = 0xED0000726566664FLL;
            if (v33 != 0x676E69646E65702ELL)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_27;
        }

        v37 = 0x466572757475662ELL;
        v36 = 0xEF7265776F6C6C6FLL;
      }

      if (v33 != v37)
      {
        goto LABEL_30;
      }

LABEL_27:
      if (v34 == v36)
      {

        sub_1B7FE7C34(v7);
        sub_1B7FE7C34(v10);
        goto LABEL_31;
      }

LABEL_30:
      v38 = sub_1B80C981C();

      sub_1B7FE7C34(v7);
      sub_1B7FE7C34(v10);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      if (!i)
      {
        return 1;
      }

      v14 += v41;
      v13 += v41;
    }
  }

  return 1;
}

uint64_t sub_1B808B2A8()
{
  v1 = *v0;
  v2 = 0x7265776F6C6C6F66;
  v3 = 0x6F46657275747566;
  v4 = 0x6F46657275747566;
  if (v1 != 3)
  {
    v4 = 0x4F676E69646E6570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69776F6C6C6F66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B808B36C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B808DC3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B808B3A0(uint64_t a1)
{
  v2 = sub_1B808D860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808B3DC(uint64_t a1)
{
  v2 = sub_1B808D860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67030, &qword_1B80D9C60);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v14 = v1[4];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B808D860();

  sub_1B80C99DC();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  sub_1B808D8B4(&qword_1EBA67040, &qword_1EBA67048, &protocol conformance descriptor for Friend, MEMORY[0x1E69E6300]);
  sub_1B80C97DC();
  if (v2)
  {
  }

  else
  {
    v11 = v16;

    v19 = v17;
    v18 = 1;
    sub_1B80C97DC();
    v19 = v11;
    v18 = 2;
    sub_1B80C97DC();
    v19 = v15;
    v18 = 3;
    sub_1B80C97DC();
    v19 = v14;
    v18 = 4;
    sub_1B80C97DC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FriendContainer.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1B808D31C(a1, v3);
  sub_1B808D31C(a1, v4);
  sub_1B808D31C(a1, v5);
  sub_1B808D31C(a1, v6);

  return sub_1B808D31C(a1, v7);
}

uint64_t FriendContainer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B80C993C();
  sub_1B808D31C(v7, v1);
  sub_1B808D31C(v7, v2);
  sub_1B808D31C(v7, v3);
  sub_1B808D31C(v7, v4);
  sub_1B808D31C(v7, v5);
  return sub_1B80C997C();
}

uint64_t FriendContainer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67050, &qword_1B80D9C68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B808D860();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  v18 = 0;
  sub_1B808D8B4(&qword_1ED8DCD88, qword_1ED8DD290, &protocol conformance descriptor for Friend, MEMORY[0x1E69E6330]);
  sub_1B80C972C();
  v17 = v19;
  v18 = 1;
  sub_1B80C972C();
  v15 = 0;
  v16 = v19;
  v18 = 2;
  sub_1B80C972C();
  v14 = v19;
  v18 = 3;
  sub_1B80C972C();
  v13 = v19;
  v18 = 4;
  sub_1B80C972C();
  (*(v6 + 8))(v8, v5);
  v10 = v19;
  v11 = v16;
  *a2 = v17;
  a2[1] = v11;
  v12 = v13;
  a2[2] = v14;
  a2[3] = v12;
  a2[4] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B808BC2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1B80C993C();
  sub_1B808D31C(v7, v1);
  sub_1B808D31C(v7, v2);
  sub_1B808D31C(v7, v3);
  sub_1B808D31C(v7, v4);
  sub_1B808D31C(v7, v5);
  return sub_1B80C997C();
}

uint64_t sub_1B808BCBC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1B808D31C(a1, v3);
  sub_1B808D31C(a1, v4);
  sub_1B808D31C(a1, v5);
  sub_1B808D31C(a1, v6);

  return sub_1B808D31C(a1, v7);
}

uint64_t sub_1B808BD38(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_1B80C993C();
  sub_1B808D31C(v8, v2);
  sub_1B808D31C(v8, v3);
  sub_1B808D31C(v8, v4);
  sub_1B808D31C(v8, v5);
  sub_1B808D31C(v8, v6);
  return sub_1B80C997C();
}

void *sub_1B808BDCC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

char *sub_1B808BE64(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1B807D780(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1B808BF58(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_1B807DAA4(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = (v10 - v12);
  v14 = sub_1B808D510(v107, &v5[176 * v12 + 32], v10 - v12, a1);
  if (v14 < v4)
  {
    goto LABEL_16;
  }

  if (v14)
  {
    v15 = *(v5 + 2);
    v16 = __OFADD__(v15, v14);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v5 + 2) = v17;
  }

  if (v14 != v13)
  {
    v18 = v107[0];
LABEL_14:
    sub_1B80343D8(v18);
    *v1 = v5;
    return;
  }

LABEL_17:
  v2 = *(v5 + 2);
  v3 = v107[0];
  v13 = v107[1];
  v4 = v107[2];
  v17 = v108;
  v19 = v109;
  if (v109)
  {
    v20 = v108;
LABEL_27:
    v24 = (v19 - 1) & v19;
    v25 = (*(v3 + 48) + 176 * (__clz(__rbit64(v19)) | (v20 << 6)));
    v27 = v25[1];
    v26 = v25[2];
    v85 = *v25;
    v86 = v27;
    v87 = v26;
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    v91 = v25[6];
    v90 = v30;
    v89 = v29;
    v88 = v28;
    v31 = v25[7];
    v32 = v25[8];
    v33 = v25[9];
    v95 = v25[10];
    v94 = v33;
    v93 = v32;
    v92 = v31;
    memmove(&__dst, v25, 0xB0uLL);
    nullsub_1();
    sub_1B7FC8DA4(&v85, &v74);
    v23 = v20;
LABEL_28:
    v93 = v104;
    v94 = v105;
    v95 = v106;
    v89 = v100;
    v90 = v101;
    v92 = v103;
    v91 = v102;
    v85 = __dst;
    v86 = v97;
    v88 = v99;
    v87 = v98;
    if (sub_1B7FDAA2C(&v85) != 1)
    {
      v34 = (v4 + 64) >> 6;
      do
      {
        v35 = *(v5 + 3);
        v48 = v35 >> 1;
        if ((v35 >> 1) < v2 + 1)
        {
          v5 = sub_1B807DAA4((v35 > 1), v2 + 1, 1, v5);
          v48 = *(v5 + 3) >> 1;
        }

        v71 = v104;
        v72 = v105;
        v73 = v106;
        v67 = v100;
        v68 = v101;
        v69 = v102;
        v70 = v103;
        __src = __dst;
        v64 = v97;
        v65 = v98;
        v66 = v99;
        v81 = v103;
        v82 = v104;
        v83 = v105;
        v84 = v106;
        v78 = v100;
        v79 = v101;
        v80 = v102;
        v74 = __dst;
        v75 = v97;
        v76 = v98;
        v77 = v99;
        if (sub_1B7FDAA2C(&v74) != 1)
        {
          while (v2 < v48)
          {
            v61[8] = v104;
            v61[9] = v105;
            v61[10] = v106;
            v61[4] = v100;
            v61[5] = v101;
            v61[6] = v102;
            v61[7] = v103;
            v61[0] = __dst;
            v61[1] = v97;
            v61[2] = v98;
            v61[3] = v99;
            v62[8] = v71;
            v62[9] = v72;
            v62[10] = v73;
            v62[4] = v67;
            v62[5] = v68;
            v62[6] = v69;
            v62[7] = v70;
            v62[0] = __src;
            v62[1] = v64;
            v62[2] = v65;
            v62[3] = v66;
            sub_1B7FC8DA4(v62, &v50);
            sub_1B806CB40(v61);
            memmove(&v5[176 * v2 + 32], &__src, 0xB0uLL);
            if (!v24)
            {
              if (v34 <= (v23 + 1))
              {
                v37 = v23 + 1;
              }

              else
              {
                v37 = v34;
              }

              v4 = v37 - 1;
              while (1)
              {
                v36 = v23 + 1;
                if (__OFADD__(v23, 1))
                {
                  break;
                }

                if (v36 >= v34)
                {
                  sub_1B7FF88D4(&v50);
                  v24 = 0;
                  v104 = v58;
                  v105 = v59;
                  v106 = v60;
                  v100 = v54;
                  v101 = v55;
                  v103 = v57;
                  v102 = v56;
                  __dst = v50;
                  v97 = v51;
                  v23 = v4;
                  v99 = v53;
                  v98 = v52;
                  goto LABEL_37;
                }

                v24 = v13[v36];
                ++v23;
                if (v24)
                {
                  v23 = v36;
                  goto LABEL_49;
                }
              }

              __break(1u);
              goto LABEL_51;
            }

            v36 = v23;
LABEL_49:
            v38 = __clz(__rbit64(v24));
            v24 &= v24 - 1;
            v39 = (*(v3 + 48) + 176 * (v38 | (v36 << 6)));
            v41 = v39[1];
            v40 = v39[2];
            v50 = *v39;
            v51 = v41;
            v52 = v40;
            v42 = v39[3];
            v43 = v39[4];
            v44 = v39[6];
            v55 = v39[5];
            v56 = v44;
            v53 = v42;
            v54 = v43;
            v45 = v39[7];
            v46 = v39[8];
            v47 = v39[10];
            v59 = v39[9];
            v60 = v47;
            v57 = v45;
            v58 = v46;
            memmove(&__dst, v39, 0xB0uLL);
            nullsub_1();
            sub_1B7FC8DA4(&v50, v49);
LABEL_37:
            v71 = v104;
            v72 = v105;
            v73 = v106;
            v67 = v100;
            v68 = v101;
            v69 = v102;
            v70 = v103;
            __src = __dst;
            v64 = v97;
            v65 = v98;
            v66 = v99;
            v81 = v103;
            v82 = v104;
            v83 = v105;
            v84 = v106;
            v78 = v100;
            v79 = v101;
            v80 = v102;
            v74 = __dst;
            v75 = v97;
            ++v2;
            v76 = v98;
            v77 = v99;
            if (sub_1B7FDAA2C(&v74) == 1)
            {
              break;
            }
          }
        }

        *(v5 + 2) = v2;
        v93 = v104;
        v94 = v105;
        v95 = v106;
        v89 = v100;
        v90 = v101;
        v92 = v103;
        v91 = v102;
        v85 = __dst;
        v86 = v97;
        v88 = v99;
        v87 = v98;
      }

      while (sub_1B7FDAA2C(&v85) != 1);
    }

    v83 = v105;
    v84 = v106;
    v78 = v100;
    v79 = v101;
    v81 = v103;
    v82 = v104;
    v80 = v102;
    v74 = __dst;
    v75 = v97;
    v76 = v98;
    v77 = v99;
    sub_1B806CB40(&v74);
    v18 = v3;
    goto LABEL_14;
  }

LABEL_20:
  v21 = (v4 + 64) >> 6;
  if (v21 <= (v17 + 1))
  {
    v22 = (v17 + 1);
  }

  else
  {
    v22 = (v4 + 64) >> 6;
  }

  v23 = v22 - 1;
  while (1)
  {
    v20 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v21)
    {
LABEL_51:
      sub_1B7FF88D4(&__dst);
      v24 = 0;
      goto LABEL_28;
    }

    v19 = v13[v20];
    ++v17;
    if (v19)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_1B808C5C8(uint64_t result)
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

  v3 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for Friend(0);
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

uint64_t sub_1B808C6F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B80B5754(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B808C760(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B808C760(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B80C97EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B80C924C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B808C9B4(v7, v8, a1, v4);
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
    return sub_1B808C858(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B808C858(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 176 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 176);
      v12 = *v10 == *(v10 - 176) && *(v10 + 8) == *(v10 - 168);
      if (v12 || (result = sub_1B80C981C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 176;
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

      v27 = *(v10 + 128);
      v28 = *(v10 + 144);
      v29 = *(v10 + 160);
      v23 = *(v10 + 64);
      v24 = *(v10 + 80);
      v25 = *(v10 + 96);
      v26 = *(v10 + 112);
      v19 = *v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 32);
      v22 = *(v10 + 48);
      v13 = *(v10 - 32);
      *(v10 + 128) = *(v10 - 48);
      *(v10 + 144) = v13;
      *(v10 + 160) = *(v10 - 16);
      v14 = *(v10 - 96);
      *(v10 + 64) = *(v10 - 112);
      *(v10 + 80) = v14;
      v15 = *(v10 - 64);
      *(v10 + 96) = *(v10 - 80);
      *(v10 + 112) = v15;
      v16 = *(v10 - 160);
      *v10 = *v11;
      *(v10 + 16) = v16;
      v17 = *(v10 - 128);
      *(v10 + 32) = *(v10 - 144);
      *(v10 + 48) = v17;
      *(v10 - 48) = v27;
      *(v10 - 32) = v28;
      *(v10 - 16) = v29;
      *(v10 - 112) = v23;
      *(v10 - 96) = v24;
      *(v10 - 80) = v25;
      *(v10 - 64) = v26;
      *v11 = v19;
      *(v10 - 160) = v20;
      v10 -= 176;
      v11[2] = v21;
      v11[3] = v22;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B808C9B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    __dst = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1B80B6240(v8);
      v8 = result;
    }

    v89 = v8 + 16;
    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (1)
      {
        v91 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v92 = &v8[16 * v90];
        v5 = *v92;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1B808D07C((v91 + 176 * *v92), (v91 + 176 * *v93), (v91 + 176 * v94), __dst);
        if (v4)
        {
        }

        if (v94 < v5)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v92 = v5;
        *(v92 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        v5 = a3;
        if (v90 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 176 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 176 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_1B80C981C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 176 * v9 + 184);
        v17 = v16;
        do
        {
          result = v16[21];
          v19 = v17[22];
          v17 += 22;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B80C981C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 176 * v7 - 176;
          v22 = 176 * v9;
          v23 = v9;
          v24 = v7;
          v96 = v23;
          do
          {
            if (v23 != --v24)
            {
              v26 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v26 + v21);
              v118 = *(v26 + v22 + 128);
              v120 = *(v26 + v22 + 144);
              v122 = *(v26 + v22 + 160);
              v110 = *(v26 + v22 + 64);
              v112 = *(v26 + v22 + 80);
              v114 = *(v26 + v22 + 96);
              v116 = *(v26 + v22 + 112);
              v102 = *(v26 + v22);
              v104 = *(v26 + v22 + 16);
              v106 = *(v26 + v22 + 32);
              v108 = *(v26 + v22 + 48);
              result = memmove((v26 + v22), (v26 + v21), 0xB0uLL);
              v25[8] = v118;
              v25[9] = v120;
              v25[10] = v122;
              v25[4] = v110;
              v25[5] = v112;
              v25[6] = v114;
              v25[7] = v116;
              *v25 = v102;
              v25[1] = v104;
              v25[2] = v106;
              v25[3] = v108;
            }

            ++v23;
            v21 -= 176;
            v22 += 176;
          }

          while (v23 < v24);
          v9 = v96;
        }
      }
    }

    v27 = v5[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v28 >= v27)
        {
          v28 = v5[1];
        }

        if (v28 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B807DDD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_1B807DDD0((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v44;
    v45 = &v8[16 * v43];
    *(v45 + 4) = v9;
    *(v45 + 5) = v7;
    v46 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_74:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_88:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_95:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_1B808D07C((*v5 + 176 * v86), (*v5 + 176 * *&v8[16 * v47 + 32]), (*v5 + 176 * v87), v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B80B6240(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_1B80B61B4(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v29 = *v5;
  v30 = *v5 + 176 * v7;
  v97 = v9;
  v31 = v9 - v7;
  __dst = v28;
LABEL_43:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 176);
    v35 = *v33 == *(v33 - 176) && *(v33 + 8) == *(v33 - 168);
    if (v35 || (result = sub_1B80C981C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 176;
      --v31;
      if (v7 != __dst)
      {
        goto LABEL_43;
      }

      v7 = __dst;
      v5 = a3;
      v9 = v97;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v119 = *(v33 + 128);
    v121 = *(v33 + 144);
    v123 = *(v33 + 160);
    v111 = *(v33 + 64);
    v113 = *(v33 + 80);
    v115 = *(v33 + 96);
    v117 = *(v33 + 112);
    v103 = *v33;
    v105 = *(v33 + 16);
    v107 = *(v33 + 32);
    v109 = *(v33 + 48);
    v36 = *(v33 - 32);
    *(v33 + 128) = *(v33 - 48);
    *(v33 + 144) = v36;
    *(v33 + 160) = *(v33 - 16);
    v37 = *(v33 - 96);
    *(v33 + 64) = *(v33 - 112);
    *(v33 + 80) = v37;
    v38 = *(v33 - 64);
    *(v33 + 96) = *(v33 - 80);
    *(v33 + 112) = v38;
    v39 = *(v33 - 160);
    *v33 = *v34;
    *(v33 + 16) = v39;
    v40 = *(v33 - 128);
    *(v33 + 32) = *(v33 - 144);
    *(v33 + 48) = v40;
    *(v33 - 48) = v119;
    *(v33 - 32) = v121;
    *(v33 - 16) = v123;
    *(v33 - 112) = v111;
    *(v33 - 96) = v113;
    *(v33 - 80) = v115;
    *(v33 - 64) = v117;
    *v34 = v103;
    *(v33 - 160) = v105;
    v33 -= 176;
    v34[2] = v107;
    v34[3] = v109;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1B808D07C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 176;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 176;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[176 * v9] <= __dst)
    {
      memmove(__dst, __src, 176 * v9);
    }

    v12 = &v4[176 * v9];
    if (v8 < 176 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1B80C981C() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 176;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 176;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 176;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0xB0uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[176 * v11] <= __dst)
  {
    memmove(__dst, a2, 176 * v11);
  }

  v12 = &v4[176 * v11];
  if (v10 >= 176 && v6 > v7)
  {
    do
    {
      v15 = v6 - 176;
      v5 -= 176;
      v16 = v12;
      while (1)
      {
        v17 = *(v16 - 22);
        v18 = *(v16 - 21);
        v16 -= 176;
        v19 = v17 == *(v6 - 22) && v18 == *(v6 - 21);
        if (!v19 && (sub_1B80C981C() & 1) != 0)
        {
          break;
        }

        if (v5 + 176 != v12)
        {
          memmove(v5, v16, 0xB0uLL);
        }

        v5 -= 176;
        v12 = v16;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      if (v5 + 176 != v6)
      {
        memmove(v5, v6 - 176, 0xB0uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 176;
    }

    while (v15 > v7);
    v6 = v15;
  }

LABEL_41:
  v20 = (v12 - v4) / 176;
  if (v6 != v4 || v6 >= &v4[176 * v20])
  {
    memmove(v6, v4, 176 * v20);
  }

  return 1;
}

uint64_t sub_1B808D31C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Friend(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1B8CB8250](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1B7FE7BD0(v9, v6);
      sub_1B80C90FC();
      sub_1B80C911C();

      sub_1B80C911C();

      result = sub_1B7FE7C34(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

void *sub_1B808D510(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 176 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v30[0] = *v18;
      v30[1] = v20;
      v30[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v30[5] = v18[5];
      v30[6] = v21;
      v30[3] = v23;
      v30[4] = v22;
      v24 = v18[10];
      v26 = v18[7];
      v25 = v18[8];
      v30[9] = v18[9];
      v30[10] = v24;
      v30[7] = v26;
      v30[8] = v25;
      memmove(v11, v18, 0xB0uLL);
      if (v14 == v10)
      {
        sub_1B7FC8DA4(v30, v29);
        goto LABEL_24;
      }

      v11 += 176;
      sub_1B7FC8DA4(v30, v29);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v28 = v12 + 1;
    }

    else
    {
      v28 = (63 - v7) >> 6;
    }

    v12 = v28 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s12FindMyLocate15FriendContainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1B808AE38(*a1, *a2) & 1) == 0 || (sub_1B808AE38(v2, v6) & 1) == 0 || (sub_1B808AE38(v4, v8) & 1) == 0 || (sub_1B808AE38(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1B808AE38(v5, v9);
}

uint64_t sub_1B808D774(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B8032C04();
  result = MEMORY[0x1B8CB7CD0](v2, &type metadata for Handle, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[9];
      v14[8] = v5[8];
      v14[9] = v6;
      v14[10] = v5[10];
      v7 = v5[5];
      v14[4] = v5[4];
      v14[5] = v7;
      v8 = v5[7];
      v14[6] = v5[6];
      v14[7] = v8;
      v9 = v5[1];
      v14[0] = *v5;
      v14[1] = v9;
      v10 = v5[3];
      v14[2] = v5[2];
      v14[3] = v10;
      sub_1B7FC8DA4(v14, v12);
      sub_1B8086FBC(v11, v14);
      v12[8] = v11[8];
      v12[9] = v11[9];
      v12[10] = v11[10];
      v12[4] = v11[4];
      v12[5] = v11[5];
      v12[6] = v11[6];
      v12[7] = v11[7];
      v12[0] = v11[0];
      v12[1] = v11[1];
      v12[2] = v11[2];
      v12[3] = v11[3];
      sub_1B7FCAD28(v12);
      v5 += 11;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

unint64_t sub_1B808D860()
{
  result = qword_1EBA67038;
  if (!qword_1EBA67038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67038);
  }

  return result;
}

uint64_t sub_1B808D8B4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65F80, &qword_1B80D2708);
    sub_1B808D93C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B808D93C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Friend(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B808D984()
{
  result = qword_1EBA67058;
  if (!qword_1EBA67058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67058);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B808D9EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B808DA34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B808DAA0()
{
  result = qword_1EBA67060;
  if (!qword_1EBA67060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67060);
  }

  return result;
}

unint64_t sub_1B808DAF8()
{
  result = qword_1EBA67068;
  if (!qword_1EBA67068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67068);
  }

  return result;
}

unint64_t sub_1B808DB50()
{
  result = qword_1EBA67070;
  if (!qword_1EBA67070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67070);
  }

  return result;
}

uint64_t sub_1B808DBA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CB7CD0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B8087270(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B808DC3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7265776F6C6C6F66 && a2 == 0xE900000000000073 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEF737265776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEF676E69776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F676E69646E6570 && a2 == 0xED00007372656666)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B808DE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B80C8F2C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B80C8F3C();
  v42 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1B80C8F0C();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC0, &qword_1B80D9A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FC8, &unk_1B80D9FD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v39 - v12;
  v14 = sub_1B80C8C7C();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B80C8E2C();
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B80C8F9C();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v51)
  {
    if (*v51 == 1)
    {
      v25 = v22;
      v40 = v22;
      v41 = v21;
      sub_1B80C8F5C();
      sub_1B80C8E1C();
      v26 = *(v21 + 56);
      v39[1] = a1;
      v26(v13, 1, 1, v25);
      v27 = sub_1B80C8FCC();
      (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
      v51 = v24;
      v39[0] = v16;
      sub_1B80C8C6C();
      (*(v5 + 104))(v7, *MEMORY[0x1E69698D0], v50);
      v29 = v42;
      v28 = v43;
      v30 = v47;
      (*(v42 + 104))(v43, *MEMORY[0x1E69699C8], v47);
      v32 = v48;
      v31 = v49;
      v33 = v46;
      (*(v48 + 104))(v46, *MEMORY[0x1E6969998], v49);
      sub_1B80C8F6C();
      (*(v32 + 8))(v33, v31);
      (*(v29 + 8))(v28, v30);
      (*(v5 + 8))(v7, v50);
      (*(v44 + 8))(v39[0], v45);
      (*(v52 + 8))(v19, v53);
      return (*(v41 + 8))(v51, v40);
    }

    v35 = *(v52 + 56);
    v36 = a1;
    v37 = 1;
  }

  else
  {
    sub_1B80C8DAC();
    v35 = *(v52 + 56);
    v36 = a1;
    v37 = 0;
  }

  v38 = v53;

  return v35(v36, v37, 1, v38);
}

uint64_t FriendshipExpiration.description.getter()
{
  v1 = 0x796144664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756F48656E6FLL;
  }
}

FindMyLocate::FriendshipExpiration_optional __swiftcall FriendshipExpiration.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B808E518()
{
  result = qword_1EBA67078;
  if (!qword_1EBA67078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67078);
  }

  return result;
}

uint64_t sub_1B808E574()
{
  v1 = 0x796144664F646E65;
  if (*v0 != 1)
  {
    v1 = 0x72657665726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756F48656E6FLL;
  }
}

uint64_t sub_1B808E5E4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B80C916C();
  }

  else
  {
    return 0;
  }
}

uint64_t static Handle.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = sub_1B80C90FC();
  v4 = v3;
  if (v2 == sub_1B80C90FC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B80C981C();
  }

  return v7 & 1;
}

double Handle.init(with:prettyName:contactIdentifier:siblingIdentifiers:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a5;
  v49 = a4;
  v48 = a2;
  v11 = sub_1B80C8E2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[9];
  v58 = a1[8];
  v59 = v15;
  v60 = a1[10];
  v16 = a1[5];
  v54 = a1[4];
  v55 = v16;
  v17 = a1[7];
  v56 = a1[6];
  v57 = v17;
  v18 = a1[1];
  v52[0] = *a1;
  v52[1] = v18;
  v19 = a1[3];
  v52[2] = a1[2];
  v53 = v19;
  sub_1B7FCEC00(*&v52[0], *(&v52[0] + 1));
  v47 = sub_1B80C90FC();
  v21 = v20;

  v22 = *(&v60 + 1);
  v23 = v60;
  v24 = *(&v53 + 1);

  v46 = v24;

  sub_1B80C8E1C();
  sub_1B80C8DDC();
  v26 = v25;
  (*(v12 + 8))(v14, v11);
  v27 = v57;

  sub_1B7FCAD28(v52);
  v28 = *(a6 + 16);
  if (v28)
  {
    v42 = v23;
    v43 = v22;
    v45 = a3;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v28, 0);
    v29 = v51;
    v44 = a6;
    v30 = a6 + 40;
    do
    {
      v31 = sub_1B80C90FC();
      v33 = v32;
      v51 = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1B7FCF988((v34 > 1), v35 + 1, 1);
        v29 = v51;
      }

      *(v29 + 16) = v35 + 1;
      v36 = v29 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
      v30 += 16;
      --v28;
    }

    while (v28);

    v37 = v50;
    v38 = v49;
    a3 = v45;
    v22 = v43;
    v23 = v42;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
    v37 = v50;
    v38 = v49;
  }

  v39 = v47;
  *a7 = v47;
  *(a7 + 8) = v21;
  *(a7 + 16) = v39;
  *(a7 + 24) = v21;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = v46;
  *(a7 + 64) = floor(v26 * 1000.0);
  result = 0.0;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 1;
  v41 = v48;
  *(a7 + 112) = v27;
  *(a7 + 120) = v41;
  *(a7 + 128) = a3;
  *(a7 + 136) = v38;
  *(a7 + 144) = v37;
  *(a7 + 152) = v29;
  *(a7 + 160) = v23;
  *(a7 + 168) = v22;
  return result;
}

uint64_t HandleType.description.getter()
{
  v1 = *v0;
  v2 = 0x65776F6C6C6F662ELL;
  v3 = 0x466572757475662ELL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x676E69646E65702ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69776F6C6C6F662ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B808EACC()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1 - 1);
  return sub_1B80C997C();
}

uint64_t sub_1B808EB44(uint64_t a1)
{
  v2 = *v1;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v2 - 1);
  return sub_1B80C997C();
}

uint64_t sub_1B808EBE8(uint64_t a1)
{
  v2 = sub_1B7FD1604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EC24(uint64_t a1)
{
  v2 = sub_1B7FD1604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808EC60(uint64_t a1)
{
  v2 = sub_1B7FD121C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EC9C(uint64_t a1)
{
  v2 = sub_1B7FD121C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808ECD8(uint64_t a1)
{
  v2 = sub_1B7FD1270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808ED14(uint64_t a1)
{
  v2 = sub_1B7FD1270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808ED50(uint64_t a1)
{
  v2 = sub_1B80931E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808ED8C(uint64_t a1)
{
  v2 = sub_1B80931E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808EDC8(uint64_t a1)
{
  v2 = sub_1B8093190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EE04(uint64_t a1)
{
  v2 = sub_1B8093190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B808EE40(uint64_t a1)
{
  v2 = sub_1B809313C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808EE7C(uint64_t a1)
{
  v2 = sub_1B809313C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HandleType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67080, &qword_1B80D9FE0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67088, &qword_1B80D9FE8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67090, &qword_1B80D9FF0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67098, &qword_1B80D9FF8);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670A0, &qword_1B80DA000);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670A8, &qword_1B80DA008);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1B7FD1604();
  sub_1B80C99DC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1B7FD1270();
      v31 = v45;
      sub_1B80C974C();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1B7FD121C();
      v31 = v45;
      sub_1B80C974C();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1B80931E4();
      v22 = v33;
      v23 = v45;
      sub_1B80C974C();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1B8093190();
      v22 = v36;
      v23 = v45;
      sub_1B80C974C();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1B809313C();
      v22 = v39;
      v23 = v45;
      sub_1B80C974C();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t HandleType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t Handle.qualifiedIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Handle.dsid.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Handle.hashedDSID.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Handle.favoriteOrder.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Handle.prettyName.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Handle.contactIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t Handle.serverIdentifier.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

__n128 Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)(a1, a2, a3, a4, a5, a6, a7, 0, v14, 0);
  v9 = v14[9];
  *(a8 + 128) = v14[8];
  *(a8 + 144) = v9;
  *(a8 + 160) = v14[10];
  v10 = v14[5];
  *(a8 + 64) = v14[4];
  *(a8 + 80) = v10;
  v11 = v14[7];
  *(a8 + 96) = v14[6];
  *(a8 + 112) = v11;
  v12 = v14[1];
  *a8 = v14[0];
  *(a8 + 16) = v12;
  result = v14[3];
  *(a8 + 32) = v14[2];
  *(a8 + 48) = result;
  return result;
}

uint64_t Handle.hash(into:)(uint64_t a1)
{
  sub_1B80C90FC();
  sub_1B80C911C();
}

uint64_t sub_1B808F6BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8093D3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B808F6E4(uint64_t a1)
{
  v2 = sub_1B7FCAE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808F720(uint64_t a1)
{
  v2 = sub_1B7FCAE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Handle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670F8, &qword_1B80DA050);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = *(v1 + 16);
  v42 = *(v1 + 24);
  v43 = v7;
  v41 = *(v1 + 32);
  v8 = *(v1 + 40);
  v39 = *(v1 + 48);
  v40 = v8;
  v9 = *(v1 + 56);
  v10 = *(v1 + 80);
  v37 = *(v1 + 72);
  v38 = v9;
  v11 = *(v1 + 96);
  v34 = *(v1 + 88);
  v35 = v11;
  v36 = v10;
  v33 = *(v1 + 104);
  v12 = *(v1 + 112);
  v13 = *(v1 + 120);
  v14 = *(v1 + 136);
  v31 = *(v1 + 128);
  v32 = v12;
  v28 = v14;
  v15 = *(v1 + 152);
  v29 = *(v1 + 144);
  v30 = v13;
  v16 = *(v1 + 168);
  v26 = *(v1 + 160);
  v27 = v15;
  v17 = a1[3];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1B7FCAE90();
  sub_1B80C99DC();
  LOBYTE(v45) = 0;
  v21 = v44;
  sub_1B80C978C();
  if (v21)
  {
    return (*(v4 + 8))(v6, v20);
  }

  v22 = v41;
  v23 = v38;
  v44 = v16;
  LOBYTE(v45) = 1;
  sub_1B80C975C();
  LOBYTE(v45) = v22;
  v46 = 2;
  sub_1B8093238();
  sub_1B80C977C();
  v43 = v4;
  LOBYTE(v45) = 3;
  sub_1B80C975C();
  v45 = v23;
  v46 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67100, &unk_1B80DA058);
  sub_1B809328C();
  sub_1B80C97DC();
  LOBYTE(v45) = 5;
  sub_1B80C97AC();
  LOBYTE(v45) = 6;
  sub_1B80C975C();
  LOBYTE(v45) = 7;
  sub_1B80C975C();
  LOBYTE(v45) = 8;
  sub_1B80C976C();
  v45 = v32;
  v46 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
  sub_1B7FCA738(&qword_1ED8DBBF8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v42 = v6;
  sub_1B80C977C();
  LOBYTE(v45) = 10;
  sub_1B80C975C();
  LOBYTE(v45) = 11;
  sub_1B80C975C();
  v45 = v27;
  v46 = 12;
  sub_1B80C97DC();
  LOBYTE(v45) = 13;
  v24 = v42;
  sub_1B80C975C();
  return (*(v4 + 8))(v24, v20);
}

uint64_t Handle.hashValue.getter()
{
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B808FC7C()
{
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B808FCE4(uint64_t a1)
{
  sub_1B80C90FC();
  sub_1B80C911C();
}

uint64_t sub_1B808FD38()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7ACB0);
  __swift_project_value_buffer(v0, qword_1EBA7ACB0);
  return sub_1B80C8FFC();
}

uint64_t PersonHandle.email.getter()
{
  v1 = *v0;
  sub_1B7FB6CB8();
  if ((sub_1B80C949C() & 1) == 0)
  {
    return 0;
  }

  return v1;
}

uint64_t PersonHandle.phoneNumber.getter()
{
  v1 = *v0;
  if ((_s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0(*v0, v0[1]) & 1) == 0)
  {
    return 0;
  }

  return v1;
}

uint64_t static PersonHandle.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t sub_1B808FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B808FF4C(uint64_t a1)
{
  v2 = sub_1B80933F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B808FF88(uint64_t a1)
{
  v2 = sub_1B80933F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonHandle.hashValue.getter()
{
  sub_1B80C993C();
  sub_1B80C911C();
  return sub_1B80C997C();
}

uint64_t sub_1B8090018()
{
  sub_1B80C993C();
  sub_1B80C911C();
  return sub_1B80C997C();
}

uint64_t sub_1B809006C(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();
  return sub_1B80C997C();
}

uint64_t sub_1B80900B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t PersonHandle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67110, &qword_1B80DA070);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80933F0();
  sub_1B80C99DC();
  sub_1B80C978C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PersonHandle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67120, &qword_1B80DA078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80933F0();
  sub_1B80C99BC();
  if (!v2)
  {
    v9 = sub_1B80C96DC();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B80903AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67110, &qword_1B80DA070);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80933F0();
  sub_1B80C99DC();
  sub_1B80C978C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static PersonHandle.< infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t sub_1B8090518(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t sub_1B8090548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1B80C981C() ^ 1) & 1;
  }
}

uint64_t sub_1B8090590(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_1B80C981C() ^ 1) & 1;
  }
}

uint64_t sub_1B80905E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1B80C981C();
  }
}

uint64_t PersonHandle.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B8090638()
{
  v1 = *v0;

  return v1;
}

void sub_1B8090668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67180, &unk_1B80DACA0);
  v41 = v4;
  v8 = sub_1B80C965C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_1B80148D0(v28, v42, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      }

      else
      {
        sub_1B80941CC(v28, v42, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      }

      sub_1B80C993C();
      sub_1B80C911C();
      v29 = sub_1B80C997C();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
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

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1B80148D0(v42, *(v9 + 56) + v27 * v17, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
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

LABEL_34:
  *v3 = v9;
}

void sub_1B80909E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Location(0);
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  v61 = v4;
  v8 = sub_1B80C965C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v58 = v2;
    v59 = v7;
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
    v16 = v8 + 64;
    while (v14)
    {
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v28 = v25 | (v10 << 6);
      if (v61)
      {
        v29 = *(v7 + 56);
        v30 = *(v7 + 48) + 176 * v28;
        v32 = *v30;
        v31 = *(v30 + 8);
        v63 = *(v30 + 16);
        v62 = *(v30 + 24);
        v64 = *(v30 + 32);
        v66 = *(v30 + 40);
        v65 = *(v30 + 48);
        v67 = *(v30 + 56);
        v33 = *(v30 + 64);
        v34 = *(v30 + 88);
        v68 = *(v30 + 72);
        v69 = v34;
        v70 = *(v30 + 104);
        v35 = *(v30 + 128);
        v71 = *(v30 + 112);
        v72 = v35;
        v73 = *(v30 + 144);
        v75 = *(v30 + 152);
        v36 = *(v60 + 72);
        v37 = v29 + v36 * v28;
        v38 = *(v30 + 168);
        v76 = *(v30 + 160);
        v77 = v36;
        v74 = v38;
        sub_1B80148D0(v37, v78, type metadata accessor for Location);
      }

      else
      {
        v39 = (*(v7 + 48) + 176 * v28);
        v40 = v39[3];
        v41 = v39[4];
        v42 = v39[6];
        v84[1] = v39[5];
        v84[2] = v42;
        v83 = v40;
        v84[0] = v41;
        v43 = v39[7];
        v44 = v39[8];
        v45 = v39[10];
        v87 = v39[9];
        v88 = v45;
        v85 = v43;
        v86 = v44;
        v47 = v39[1];
        v46 = v39[2];
        v80 = *v39;
        v81 = v47;
        v82 = v46;
        v48 = *(v7 + 56);
        v77 = *(v60 + 72);
        sub_1B80941CC(v48 + v77 * v28, v78, type metadata accessor for Location);
        v75 = *(&v87 + 1);
        v76 = v88;
        v73 = v87;
        v74 = *(&v88 + 1);
        v71 = v85;
        v72 = v86;
        v70 = BYTE8(v84[2]);
        v68 = *(v84 + 8);
        v69 = *(&v84[1] + 8);
        v33 = *&v84[0];
        v66 = *(&v82 + 1);
        v67 = *(&v83 + 1);
        v65 = v83;
        v64 = v82;
        v62 = *(&v81 + 1);
        v63 = v81;
        v31 = *(&v80 + 1);
        v32 = v80;
        sub_1B7FC8DA4(&v80, &v79);
      }

      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B80C911C();

      v49 = sub_1B80C997C();
      v50 = -1 << *(v9 + 32);
      v51 = v49 & ~v50;
      v52 = v51 >> 6;
      if (((-1 << v51) & ~*(v16 + 8 * (v51 >> 6))) == 0)
      {
        v53 = 0;
        v54 = (63 - v50) >> 6;
        while (++v52 != v54 || (v53 & 1) == 0)
        {
          v55 = v52 == v54;
          if (v52 == v54)
          {
            v52 = 0;
          }

          v53 |= v55;
          v56 = *(v16 + 8 * v52);
          if (v56 != -1)
          {
            v17 = __clz(__rbit64(~v56)) + (v52 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v51) & ~*(v16 + 8 * (v51 >> 6)))) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 176 * v17;
      *v18 = v32;
      *(v18 + 8) = v31;
      v19 = v62;
      *(v18 + 16) = v63;
      *(v18 + 24) = v19;
      *(v18 + 32) = v64;
      v20 = v65;
      *(v18 + 40) = v66;
      *(v18 + 48) = v20;
      *(v18 + 56) = v67;
      *(v18 + 64) = v33;
      v21 = v68;
      *(v18 + 88) = v69;
      *(v18 + 72) = v21;
      *(v18 + 104) = v70;
      v22 = v72;
      *(v18 + 112) = v71;
      *(v18 + 128) = v22;
      v23 = v75;
      *(v18 + 144) = v73;
      *(v18 + 152) = v23;
      v24 = v74;
      *(v18 + 160) = v76;
      *(v18 + 168) = v24;
      sub_1B80148D0(v78, *(v9 + 56) + v77 * v17, type metadata accessor for Location);
      ++*(v9 + 16);
      v7 = v59;
    }

    v26 = v10;
    while (1)
    {
      v10 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v27 = v11[v10];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v14 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v58;
      goto LABEL_34;
    }

    v57 = 1 << *(v7 + 32);
    v3 = v58;
    if (v57 >= 64)
    {
      bzero(v11, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v57;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1B8090F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F70, &qword_1B80DAC90);
  v31 = v4;
  v6 = sub_1B80C965C();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v20);
      v22 = sub_1B80C997C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

void sub_1B8091190(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v77 = sub_1B80C8E2C();
  v5 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67178, &qword_1B80DAC98);
  v59 = v4;
  v8 = sub_1B80C965C();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v56[0] = v2;
    v56[1] = v5 + 16;
    v57 = v7;
    v58 = v5;
    v60 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v28 = v25 | (v10 << 6);
      if (v59)
      {
        v29 = *(v7 + 56);
        v30 = *(v7 + 48) + 176 * v28;
        v31 = *v30;
        v32 = *(v30 + 8);
        v62 = *(v30 + 16);
        v61 = *(v30 + 24);
        v63 = *(v30 + 32);
        v65 = *(v30 + 40);
        v64 = *(v30 + 48);
        v66 = *(v30 + 56);
        v33 = *(v30 + 64);
        v34 = *(v30 + 88);
        v67 = *(v30 + 72);
        v68 = v34;
        v69 = *(v30 + 104);
        v35 = *(v30 + 128);
        v70 = *(v30 + 112);
        v71 = v35;
        v72 = *(v30 + 144);
        v36 = *(v30 + 160);
        v73 = *(v30 + 168);
        v74 = v36;
        v75 = *(v58 + 72);
        (*(v58 + 32))(v76, v29 + v75 * v28, v77);
      }

      else
      {
        v37 = (*(v7 + 48) + 176 * v28);
        v38 = v37[3];
        v39 = v37[4];
        v40 = v37[6];
        v83[1] = v37[5];
        v83[2] = v40;
        v82 = v38;
        v83[0] = v39;
        v41 = v37[7];
        v42 = v37[8];
        v43 = v37[10];
        v86 = v37[9];
        v87 = v43;
        v84 = v41;
        v85 = v42;
        v45 = v37[1];
        v44 = v37[2];
        v79 = *v37;
        v80 = v45;
        v81 = v44;
        v46 = *(v7 + 56);
        v75 = *(v58 + 72);
        (*(v58 + 16))(v76, v46 + v75 * v28, v77);
        v73 = *(&v87 + 1);
        v74 = v87;
        v72 = v86;
        v70 = v84;
        v71 = v85;
        v69 = BYTE8(v83[2]);
        v67 = *(v83 + 8);
        v68 = *(&v83[1] + 8);
        v33 = *&v83[0];
        v65 = *(&v81 + 1);
        v66 = *(&v82 + 1);
        v64 = v82;
        v63 = v81;
        v61 = *(&v80 + 1);
        v62 = v80;
        v32 = *(&v79 + 1);
        v31 = v79;
        sub_1B7FC8DA4(&v79, &v78);
      }

      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B80C911C();

      v47 = sub_1B80C997C();
      v48 = -1 << *(v9 + 32);
      v49 = v47 & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v16 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v16 + 8 * v50);
          if (v54 != -1)
          {
            v17 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v49) & ~*(v16 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 176 * v17;
      *v18 = v31;
      *(v18 + 8) = v32;
      v19 = v61;
      *(v18 + 16) = v62;
      *(v18 + 24) = v19;
      *(v18 + 32) = v63;
      v20 = v64;
      *(v18 + 40) = v65;
      *(v18 + 48) = v20;
      *(v18 + 56) = v66;
      *(v18 + 64) = v33;
      v21 = v67;
      *(v18 + 88) = v68;
      *(v18 + 72) = v21;
      *(v18 + 104) = v69;
      v22 = v71;
      *(v18 + 112) = v70;
      *(v18 + 128) = v22;
      v23 = *(&v72 + 1);
      *(v18 + 144) = v72;
      *(v18 + 152) = v23;
      v24 = v73;
      *(v18 + 160) = v74;
      *(v18 + 168) = v24;
      (*v60)(*(v9 + 56) + v75 * v17, v76, v77);
      ++*(v9 + 16);
      v7 = v57;
    }

    v26 = v10;
    while (1)
    {
      v10 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v27 = v11[v10];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v14 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v56[0];
      goto LABEL_34;
    }

    v55 = 1 << *(v7 + 32);
    v3 = v56[0];
    if (v55 >= 64)
    {
      bzero(v11, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v55;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1B80916B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_1B80C8E2C();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F8, &qword_1B80D2F88);
  v37 = v4;
  v8 = sub_1B80C965C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34[0] = v2;
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
    v38 = (v5 + 32);
    v34[2] = 0x80000001B80CB400;
    v35 = (v5 + 16);
    v34[1] = 0x80000001B80CB3E0;
    v16 = v8 + 64;
    v36 = v5;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v5 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        (*v38)(v39, v24, v40);
      }

      else
      {
        (*v35)(v39, v24, v40);
      }

      sub_1B80C993C();
      sub_1B80C911C();

      v25 = sub_1B80C997C();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      (*v38)((*(v9 + 56) + v23 * v17), v39, v40);
      ++*(v9 + 16);
      v5 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v34[0];
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34[0];
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1B8091A9C()
{
  v1 = v0;
  v2 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67180, &unk_1B80DACA0);
  v4 = *v0;
  v5 = sub_1B80C964C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1B80941CC(v21 + v27, v32, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1B80148D0(v26, *(v28 + 56) + v27, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1B8091CFC()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v2;
  v39 = sub_1B80C8E9C();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F80, &qword_1B80DAC80);
  v4 = *v0;
  v5 = sub_1B80C964C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1B8092058()
{
  v1 = v0;
  v2 = type metadata accessor for Location(0);
  v44 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F0, &unk_1B80DAC60);
  v4 = *v0;
  v5 = sub_1B80C964C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v42 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v45 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = 176 * v19;
      v21 = (*(v4 + 48) + 176 * v19);
      v22 = v21[3];
      v23 = v21[4];
      v24 = v21[6];
      v52 = v21[5];
      v53 = v24;
      v50 = v22;
      v51 = v23;
      v25 = v21[7];
      v26 = v21[8];
      v27 = v21[10];
      v56 = v21[9];
      v57 = v27;
      v54 = v25;
      v55 = v26;
      v29 = v21[1];
      v28 = v21[2];
      v47 = *v21;
      v48 = v29;
      v49 = v28;
      v30 = v43;
      v31 = *(v44 + 72) * v19;
      sub_1B80941CC(*(v4 + 56) + v31, v43, type metadata accessor for Location);
      v32 = v45;
      v33 = (*(v45 + 48) + v20);
      v34 = v54;
      v35 = v55;
      v36 = v57;
      v33[9] = v56;
      v33[10] = v36;
      v33[7] = v34;
      v33[8] = v35;
      v37 = v50;
      v38 = v51;
      v39 = v53;
      v33[5] = v52;
      v33[6] = v39;
      v33[3] = v37;
      v33[4] = v38;
      v41 = v48;
      v40 = v49;
      *v33 = v47;
      v33[1] = v41;
      v33[2] = v40;
      sub_1B80148D0(v30, *(v32 + 56) + v31, type metadata accessor for Location);
      sub_1B7FC8DA4(&v47, &v46);
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

        v1 = v42;
        v6 = v45;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1B809230C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F70, &qword_1B80DAC90);
  v2 = *v0;
  v3 = sub_1B80C964C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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
}

void sub_1B8092468()
{
  v1 = v0;
  v48 = sub_1B80C8E2C();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67178, &qword_1B80DAC98);
  v3 = *v0;
  v4 = sub_1B80C964C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v46[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v49 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v46[1] = v50 + 32;
    v46[2] = v50 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v51 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 176 * v18;
        v20 = (*(v3 + 48) + 176 * v18);
        v21 = v20[3];
        v22 = v20[4];
        v23 = v20[6];
        v58 = v20[5];
        v59 = v23;
        v56 = v21;
        v57 = v22;
        v24 = v20[7];
        v25 = v20[8];
        v26 = v20[10];
        v62 = v20[9];
        v63 = v26;
        v60 = v24;
        v61 = v25;
        v28 = v20[1];
        v27 = v20[2];
        v53 = *v20;
        v54 = v28;
        v55 = v27;
        v29 = v50;
        v30 = *(v50 + 72) * v18;
        v31 = *(v3 + 56) + v30;
        v32 = v47;
        v33 = v3;
        v34 = v48;
        (*(v50 + 16))(v47, v31, v48);
        v35 = v49;
        v36 = (*(v49 + 48) + v19);
        v37 = v60;
        v38 = v61;
        v39 = v63;
        v36[9] = v62;
        v36[10] = v39;
        v36[7] = v37;
        v36[8] = v38;
        v40 = v56;
        v41 = v57;
        v42 = v59;
        v36[5] = v58;
        v36[6] = v42;
        v36[3] = v40;
        v36[4] = v41;
        v44 = v54;
        v43 = v55;
        *v36 = v53;
        v36[1] = v44;
        v36[2] = v43;
        v45 = v34;
        v3 = v33;
        (*(v29 + 32))(*(v35 + 56) + v30, v32, v45);
        sub_1B7FC8DA4(&v53, &v52);
        v13 = v51;
      }

      while (v51);
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

        v1 = v46[0];
        v5 = v49;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v51 = (v17 - 1) & v17;
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
}

void sub_1B8092758()
{
  v1 = v0;
  v29 = sub_1B80C8E2C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660F8, &qword_1B80D2F88);
  v3 = *v0;
  v4 = sub_1B80C964C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

void sub_1B80929C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F88, &qword_1B80D99B0);
  v2 = *v0;
  v3 = sub_1B80C964C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v26 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 32 * v16;
        v18 = *(v2 + 48) + 32 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = 8 * v16;
        sub_1B7FC391C(*(v2 + 56) + 8 * v16, v28);
        v24 = *(v26 + 48) + v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        sub_1B7FBCEF4(v28, *(v26 + 56) + v23);

        v11 = v27;
      }

      while (v27);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v27 = (v15 - 1) & v15;
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
}

void *sub_1B8092B88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8092BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8092BA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8092DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8092BC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8092FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8092BE8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E88, &qword_1B80D9240);
  v10 = *(type metadata accessor for Friend(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Friend(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B8092DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8092EE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67170, &qword_1B80DAC88);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B8092FF4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67168, &unk_1B80DAC70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B809313C()
{
  result = qword_1EBA670B0;
  if (!qword_1EBA670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA670B0);
  }

  return result;
}

unint64_t sub_1B8093190()
{
  result = qword_1EBA670B8;
  if (!qword_1EBA670B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA670B8);
  }

  return result;
}

unint64_t sub_1B80931E4()
{
  result = qword_1EBA670C0;
  if (!qword_1EBA670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA670C0);
  }

  return result;
}

unint64_t sub_1B8093238()
{
  result = qword_1ED8DBC30;
  if (!qword_1ED8DBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC30);
  }

  return result;
}

unint64_t sub_1B809328C()
{
  result = qword_1ED8DBC20;
  if (!qword_1ED8DBC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67100, &unk_1B80DA058);
    sub_1B8093348();
    sub_1B7FBADF0(&qword_1ED8DC390, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC20);
  }

  return result;
}

unint64_t sub_1B8093348()
{
  result = qword_1ED8DBC50;
  if (!qword_1ED8DBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC50);
  }

  return result;
}

unint64_t sub_1B809339C()
{
  result = qword_1ED8DBBA0;
  if (!qword_1ED8DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBA0);
  }

  return result;
}

unint64_t sub_1B80933F0()
{
  result = qword_1EBA67118;
  if (!qword_1EBA67118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67118);
  }

  return result;
}

unint64_t sub_1B8093448()
{
  result = qword_1EBA67128;
  if (!qword_1EBA67128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67128);
  }

  return result;
}

unint64_t sub_1B80934A0()
{
  result = qword_1EBA67130;
  if (!qword_1EBA67130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67130);
  }

  return result;
}

unint64_t sub_1B80934F8()
{
  result = qword_1ED8DC410;
  if (!qword_1ED8DC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC410);
  }

  return result;
}

unint64_t sub_1B809354C()
{
  result = qword_1EBA67138;
  if (!qword_1EBA67138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67138);
  }

  return result;
}

uint64_t sub_1B80935B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B80935F8(uint64_t result, int a2, int a3)
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

unint64_t sub_1B80936B8()
{
  result = qword_1EBA67140;
  if (!qword_1EBA67140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67140);
  }

  return result;
}

unint64_t sub_1B8093710()
{
  result = qword_1EBA67148;
  if (!qword_1EBA67148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67148);
  }

  return result;
}

unint64_t sub_1B8093768()
{
  result = qword_1EBA67150;
  if (!qword_1EBA67150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67150);
  }

  return result;
}

unint64_t sub_1B80937C0()
{
  result = qword_1EBA67158;
  if (!qword_1EBA67158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67158);
  }

  return result;
}

unint64_t sub_1B8093818()
{
  result = qword_1EBA67160;
  if (!qword_1EBA67160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67160);
  }

  return result;
}

unint64_t sub_1B8093870()
{
  result = qword_1ED8DC428;
  if (!qword_1ED8DC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC428);
  }

  return result;
}

unint64_t sub_1B80938C8()
{
  result = qword_1ED8DC430;
  if (!qword_1ED8DC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC430);
  }

  return result;
}

unint64_t sub_1B8093920()
{
  result = qword_1ED8DD490;
  if (!qword_1ED8DD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD490);
  }

  return result;
}

unint64_t sub_1B8093978()
{
  result = qword_1ED8DD498;
  if (!qword_1ED8DD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD498);
  }

  return result;
}

unint64_t sub_1B80939D0()
{
  result = qword_1ED8DD480;
  if (!qword_1ED8DD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD480);
  }

  return result;
}

unint64_t sub_1B8093A28()
{
  result = qword_1ED8DD488;
  if (!qword_1ED8DD488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD488);
  }

  return result;
}

unint64_t sub_1B8093A80()
{
  result = qword_1ED8DD460;
  if (!qword_1ED8DD460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD460);
  }

  return result;
}

unint64_t sub_1B8093AD8()
{
  result = qword_1ED8DD468;
  if (!qword_1ED8DD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD468);
  }

  return result;
}

unint64_t sub_1B8093B30()
{
  result = qword_1ED8DD450;
  if (!qword_1ED8DD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD450);
  }

  return result;
}

unint64_t sub_1B8093B88()
{
  result = qword_1ED8DD458;
  if (!qword_1ED8DD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD458);
  }

  return result;
}

unint64_t sub_1B8093BE0()
{
  result = qword_1ED8DD470;
  if (!qword_1ED8DD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD470);
  }

  return result;
}

unint64_t sub_1B8093C38()
{
  result = qword_1ED8DD478;
  if (!qword_1ED8DD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD478);
  }

  return result;
}

unint64_t sub_1B8093C90()
{
  result = qword_1ED8DD4A0;
  if (!qword_1ED8DD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4A0);
  }

  return result;
}

unint64_t sub_1B8093CE8()
{
  result = qword_1ED8DD4A8;
  if (!qword_1ED8DD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4A8);
  }

  return result;
}

uint64_t sub_1B8093D3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B80CDF30 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7574617453736469 && a2 == 0xE900000000000073 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDF50 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B80CDF70 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5344646568736168 && a2 == 0xEA00000000004449 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xED0000726564724FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C62616863616572 && a2 == 0xE900000000000065 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E65644968737570 && a2 == 0xEF73726569666974 || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x614E797474657270 && a2 == 0xEA0000000000656DLL || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B80CDF90 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CDFB0 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CDFD0 == a2)
  {

    return 13;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1B80941CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void LocatePriority.schedulePriority.getter(char *a1@<X8>)
{
  if (*v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

unint64_t LocatePriority.description.getter()
{
  v1 = 0x776F6C6C6168732ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

unint64_t sub_1B80942FC()
{
  result = qword_1ED8DC370;
  if (!qword_1ED8DC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC370);
  }

  return result;
}

unint64_t sub_1B80943A4()
{
  result = qword_1EBA67188;
  if (!qword_1EBA67188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67190, &qword_1B80DADA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67188);
  }

  return result;
}

uint64_t Location.date.getter()
{
  type metadata accessor for Location(0);

  return sub_1B80C8DCC();
}

uint64_t Location.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Location.address.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Location(0) + 20));
  v4 = v3[9];
  v5 = v3[7];
  v30 = v3[8];
  v31 = v4;
  v6 = v3[9];
  v7 = v3[11];
  v32 = v3[10];
  v8 = v32;
  v33 = v7;
  v9 = v3[5];
  v11 = v3[3];
  v26 = v3[4];
  v10 = v26;
  v27 = v9;
  v12 = v3[5];
  v13 = v3[7];
  v28 = v3[6];
  v14 = v28;
  v29 = v13;
  v15 = v3[1];
  v16 = v3[3];
  v24 = v3[2];
  v17 = v24;
  v25 = v16;
  v18 = v3[1];
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  a1[8] = v30;
  a1[9] = v6;
  v20 = v3[11];
  a1[10] = v8;
  a1[11] = v20;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = v5;
  *a1 = v19;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v11;
  return sub_1B7FD7BE8(v23, &v22);
}

double Location.labels.getter()
{
  type metadata accessor for Location(0);

  return result;
}

uint64_t Location.locationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Location(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t Location.motionActivityState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Location(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t sub_1B8094738()
{
  v1 = *(v0 + *(type metadata accessor for Location(0) + 36));
  if (!v1[2])
  {
    return 0;
  }

  v3 = v1[4];
  v2 = v1[5];
  swift_bridgeObjectRetain_n();
  v4._countAndFlagsBits = v3;
  v4._object = v2;
  DefaultCustomLabel.init(rawValue:)(v4);
  if (v7 != 5)
  {
    v3 = DefaultCustomLabel.localizedLabel.getter(v5);
  }

  return v3;
}

uint64_t Location.description.getter()
{
  v28 = sub_1B80C8E2C();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0xE000000000000000;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v41 = v42;
  MEMORY[0x1B8CB7A40](0x696669746E656469, 0xEC000000203A7265);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  sub_1B809736C(&qword_1EBA67198, MEMORY[0x1E699C7F8]);
  v5 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0x737365726464610ALL, 0xE90000000000003ALL);
  v6 = type metadata accessor for Location(0);
  v7 = (v0 + v6[5]);
  v8 = v7[9];
  v50 = v7[8];
  v51 = v8;
  v9 = v7[11];
  v52 = v7[10];
  v53 = v9;
  v10 = v7[5];
  v46 = v7[4];
  v47 = v10;
  v11 = v7[7];
  v48 = v7[6];
  v49 = v11;
  v12 = v7[3];
  v44 = v7[2];
  v45 = v12;
  v13 = v7[1];
  v42 = *v7;
  v43 = v13;
  if (sub_1B8032DBC(&v42) == 1)
  {
    v14 = 0;
  }

  else
  {
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v14 = PlaceMark.description.getter();
    v4 = v15;
  }

  MEMORY[0x1B8CB7A40](v14, v4);

  MEMORY[0x1B8CB7A40](0x64757469746C610ALL, 0xEA00000000003A65);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x654C726F6F6C660ALL, 0xEC0000003A6C6576);
  *&v29 = *(v0 + v6[7]);
  v16 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v16);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CDFF0);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CE010);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A736C6562616C0ALL, 0xE800000000000000);
  v17 = MEMORY[0x1B8CB7B30](*(v0 + v6[9]), MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v17);

  MEMORY[0x1B8CB7A40](0x6475746974616C0ALL, 0xEA00000000003A65);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x757469676E6F6C0ALL, 0xEB000000003A6564);
  sub_1B80C938C();
  v18 = 0xE700000000000000;
  MEMORY[0x1B8CB7A40](0x3A64656570730ALL, 0xE700000000000000);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x617473656D69740ALL, 0xEB000000003A706DLL);
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A657079740ALL, 0xE600000000000000);
  if (*(v0 + v6[15]) > 1u)
  {
    if (*(v0 + v6[15]) == 2)
    {
      v18 = 0xE500000000000000;
      v19 = 0x6576696C2ELL;
    }

    else
    {
      v18 = 0xEA00000000006574;
      v19 = 0x696C6C657461732ELL;
    }
  }

  else if (*(v0 + v6[15]))
  {
    v18 = 0x80000001B80CCF10;
    v19 = 0xD000000000000013;
  }

  else
  {
    v19 = 0x79636167656C2ELL;
  }

  MEMORY[0x1B8CB7A40](v19, v18);

  MEMORY[0x1B8CB7A40](0x536E6F69746F6D0ALL, 0xED00003A65746174);
  v20 = *(v0 + v6[16]);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      v21 = 0xE800000000000000;
      v22 = 0x676E696E6E75722ELL;
    }

    else if (v20 == 4)
    {
      v21 = 0xE800000000000000;
      v22 = 0x676E696C6379632ELL;
    }

    else
    {
      v21 = 0xEB00000000657669;
      v22 = 0x746F6D6F7475612ELL;
    }
  }

  else if (*(v0 + v6[16]))
  {
    if (v20 == 1)
    {
      v21 = 0xEB00000000797261;
      v22 = 0x6E6F69746174732ELL;
    }

    else
    {
      v21 = 0xE800000000000000;
      v22 = 0x676E696B6C61772ELL;
    }
  }

  else
  {
    v21 = 0xE800000000000000;
    v22 = 0x6E776F6E6B6E752ELL;
  }

  MEMORY[0x1B8CB7A40](v22, v21);

  MEMORY[0x1B8CB7A40](0x3A657461640ALL, 0xE600000000000000);
  sub_1B80C8DCC();
  v23 = sub_1B80C8D4C();
  v25 = v24;
  (*(v1 + 8))(v3, v28);
  MEMORY[0x1B8CB7A40](v23, v25);

  return v41;
}

uint64_t Location.coarseAddressLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for Location(0) + 20));
  v2 = v1[9];
  v12 = v1[8];
  v13 = v2;
  v3 = v1[11];
  v14 = v1[10];
  v15 = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[7];
  v10[6] = v1[6];
  v11 = v5;
  v6 = v1[3];
  v10[2] = v1[2];
  v10[3] = v6;
  v7 = v1[1];
  v10[0] = *v1;
  v10[1] = v7;
  v8 = 0;
  if (sub_1B8032DBC(v10) != 1)
  {
    v8 = v11;
  }

  return v8;
}

Swift::String_optional __swiftcall Location.label(includeCustomLabel:includePointsOfInterest:wantsCoarseAddress:maxLength:)(Swift::Bool includeCustomLabel, Swift::Bool includePointsOfInterest, Swift::Bool wantsCoarseAddress, FindMyLocate::Location::LabelLength maxLength)
{
  v8 = *maxLength;
  v9 = type metadata accessor for Location(0);
  v11 = *(v4 + v9[16]) - 3 < 0xFFFFFFFE && *(v4 + v9[15]) == 2;
  v12 = (v4 + v9[5]);
  v13 = v12[9];
  v77 = v12[8];
  v78 = v13;
  v14 = v12[11];
  v79 = v12[10];
  v80 = v14;
  v15 = v12[5];
  v75[4] = v12[4];
  v75[5] = v15;
  v16 = v12[7];
  v75[6] = v12[6];
  v76 = v16;
  v17 = v12[1];
  v75[0] = *v12;
  v75[1] = v17;
  v18 = v12[3];
  v75[2] = v12[2];
  v75[3] = v18;
  v19 = 0;
  v20 = 0;
  if (sub_1B8032DBC(v75) != 1)
  {
    v20 = *(&v76 + 1);
    v19 = v76;
  }

  if (v11)
  {
    goto LABEL_18;
  }

  if (includeCustomLabel)
  {
    v21 = sub_1B8094738();
    if (v22)
    {
      v23 = v21;
      v20 = v22;

      v24 = v23;
LABEL_19:
      v32 = v20;
      goto LABEL_39;
    }
  }

  if (!includePointsOfInterest || (v25 = v12[9], v71 = v12[8], v72 = v25, v26 = v12[11], v73 = v12[10], v74 = v26, v27 = v12[5], v67 = v12[4], v68 = v27, v28 = v12[7], v69 = v12[6], v70 = v28, v29 = v12[1], v63 = *v12, v64 = v29, v30 = v12[3], v65 = v12[2], v66 = v30, sub_1B8032DBC(&v63) == 1) || !*(&v71 + 1))
  {
    if (wantsCoarseAddress)
    {
LABEL_18:
      v24 = v19;
      goto LABEL_19;
    }

    v33 = v12[9];
    v71 = v12[8];
    v72 = v33;
    v34 = v12[11];
    v73 = v12[10];
    v74 = v34;
    v35 = v12[5];
    v67 = v12[4];
    v68 = v35;
    v36 = v12[7];
    v69 = v12[6];
    v70 = v36;
    v37 = v12[1];
    v63 = *v12;
    v64 = v37;
    v38 = v12[3];
    v65 = v12[2];
    v66 = v38;
    if (sub_1B8032DBC(&v63) == 1)
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v40 = *(&v72 + 1);
      v39 = v72;
    }

    v41 = v12[9];
    v60[8] = v12[8];
    v60[9] = v41;
    v42 = v12[11];
    v61 = v12[10];
    v62 = v42;
    v43 = v12[5];
    v60[4] = v12[4];
    v60[5] = v43;
    v44 = v12[7];
    v60[6] = v12[6];
    v60[7] = v44;
    v45 = v12[1];
    v60[0] = *v12;
    v60[1] = v45;
    v46 = v12[3];
    v60[2] = v12[2];
    v60[3] = v46;
    if (sub_1B8032DBC(v60) == 1)
    {
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v48 = *(&v61 + 1);
      v47 = v61;
    }

    v49 = v12[9];
    v58[8] = v12[8];
    v58[9] = v49;
    v50 = v12[11];
    v58[10] = v12[10];
    v59 = v50;
    v51 = v12[5];
    v58[4] = v12[4];
    v58[5] = v51;
    v52 = v12[7];
    v58[6] = v12[6];
    v58[7] = v52;
    v53 = v12[1];
    v58[0] = *v12;
    v58[1] = v53;
    v54 = v12[3];
    v58[2] = v12[2];
    v58[3] = v54;
    if (sub_1B8032DBC(v58) == 1)
    {
      v55 = 0;
      v56 = 0;
      if (v8)
      {
LABEL_28:
        if (v8 == 1)
        {

          if (v48)
          {
LABEL_30:

            v24 = v47;
            v32 = v48;
            goto LABEL_39;
          }
        }

        else
        {
          if (v56)
          {

            v24 = v55;
            v32 = v56;
            goto LABEL_39;
          }

          if (v48)
          {
            goto LABEL_30;
          }
        }

        if (!v40)
        {
          goto LABEL_18;
        }

LABEL_38:

        v32 = v40;
        v24 = v39;
        goto LABEL_39;
      }
    }

    else
    {
      v56 = *(&v59 + 1);
      v55 = v59;

      if (v8)
      {
        goto LABEL_28;
      }
    }

    if (!v40)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  v31 = v71;

  v32 = *(&v31 + 1);
  v24 = v31;
LABEL_39:
  result.value._object = v32;
  result.value._countAndFlagsBits = v24;
  return result;
}

uint64_t Location.displayAddress.getter()
{
  v1 = type metadata accessor for Location(0);
  v3 = *(v0 + v1[16]) - 3 < 0xFFFFFFFE && *(v0 + v1[15]) == 2;
  v4 = (v0 + v1[5]);
  v5 = v4[9];
  v52 = v4[8];
  v53 = v5;
  v6 = v4[11];
  v54 = v4[10];
  v55 = v6;
  v7 = v4[5];
  v50[4] = v4[4];
  v50[5] = v7;
  v8 = v4[7];
  v50[6] = v4[6];
  v51 = v8;
  v9 = v4[1];
  v50[0] = *v4;
  v50[1] = v9;
  v10 = v4[3];
  v50[2] = v4[2];
  v50[3] = v10;
  v11 = 0;
  if (sub_1B8032DBC(v50) != 1)
  {
    v11 = v51;
  }

  if (v3)
  {
    return v11;
  }

  v13 = sub_1B8094738();
  if (v14)
  {
    v15 = v13;

    return v15;
  }

  else
  {
    v16 = v4[9];
    v46 = v4[8];
    v47 = v16;
    v17 = v4[11];
    v48 = v4[10];
    v49 = v17;
    v18 = v4[5];
    v45[4] = v4[4];
    v45[5] = v18;
    v19 = v4[7];
    v45[6] = v4[6];
    v45[7] = v19;
    v20 = v4[1];
    v45[0] = *v4;
    v45[1] = v20;
    v21 = v4[3];
    v45[2] = v4[2];
    v45[3] = v21;
    if (sub_1B8032DBC(v45) == 1 || !*(&v46 + 1))
    {
      v23 = v4[9];
      v41[8] = v4[8];
      v42 = v23;
      v24 = v4[11];
      v43 = v4[10];
      v44 = v24;
      v25 = v4[5];
      v41[4] = v4[4];
      v41[5] = v25;
      v26 = v4[7];
      v41[6] = v4[6];
      v41[7] = v26;
      v27 = v4[1];
      v41[0] = *v4;
      v41[1] = v27;
      v28 = v4[3];
      v41[2] = v4[2];
      v41[3] = v28;
      if (sub_1B8032DBC(v41) == 1)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v30 = *(&v42 + 1);
        v29 = v42;
      }

      v31 = v4[9];
      v38[8] = v4[8];
      v38[9] = v31;
      v32 = v4[11];
      v39 = v4[10];
      v40 = v32;
      v33 = v4[5];
      v38[4] = v4[4];
      v38[5] = v33;
      v34 = v4[7];
      v38[6] = v4[6];
      v38[7] = v34;
      v35 = v4[1];
      v38[0] = *v4;
      v38[1] = v35;
      v36 = v4[3];
      v38[2] = v4[2];
      v38[3] = v36;
      if (sub_1B8032DBC(v38) == 1 || !*(&v39 + 1))
      {
        if (!v30)
        {
          return v11;
        }

        return v29;
      }

      else
      {
        v37 = v39;

        return v37;
      }
    }

    else
    {
      v22 = v46;

      return v22;
    }
  }
}

uint64_t Location.fullAddress.getter()
{
  v1 = type metadata accessor for Location(0);
  v3 = *(v0 + v1[16]) - 3 < 0xFFFFFFFE && *(v0 + v1[15]) == 2;
  v4 = (v0 + v1[5]);
  v5 = v4[9];
  v62 = v4[8];
  v63 = v5;
  v6 = v4[11];
  v64 = v4[10];
  v65 = v6;
  v7 = v4[5];
  v60[4] = v4[4];
  v60[5] = v7;
  v8 = v4[7];
  v60[6] = v4[6];
  v61 = v8;
  v9 = v4[1];
  v60[0] = *v4;
  v60[1] = v9;
  v10 = v4[3];
  v60[2] = v4[2];
  v60[3] = v10;
  v11 = 0;
  if (sub_1B8032DBC(v60) != 1)
  {
    v11 = v61;
  }

  if (v3)
  {
    return v11;
  }

  v13 = sub_1B8094738();
  if (v14)
  {
    v15 = v13;

    return v15;
  }

  else
  {
    v16 = v4[9];
    v56 = v4[8];
    v57 = v16;
    v17 = v4[11];
    v58 = v4[10];
    v59 = v17;
    v18 = v4[5];
    v55[4] = v4[4];
    v55[5] = v18;
    v19 = v4[7];
    v55[6] = v4[6];
    v55[7] = v19;
    v20 = v4[1];
    v55[0] = *v4;
    v55[1] = v20;
    v21 = v4[3];
    v55[2] = v4[2];
    v55[3] = v21;
    if (sub_1B8032DBC(v55) == 1 || !*(&v56 + 1))
    {
      v23 = v4[9];
      v51[8] = v4[8];
      v52 = v23;
      v24 = v4[11];
      v53 = v4[10];
      v54 = v24;
      v25 = v4[5];
      v51[4] = v4[4];
      v51[5] = v25;
      v26 = v4[7];
      v51[6] = v4[6];
      v51[7] = v26;
      v27 = v4[1];
      v51[0] = *v4;
      v51[1] = v27;
      v28 = v4[3];
      v51[2] = v4[2];
      v51[3] = v28;
      if (sub_1B8032DBC(v51) == 1)
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v30 = *(&v52 + 1);
        v29 = v52;
      }

      v31 = v4[9];
      v48[8] = v4[8];
      v48[9] = v31;
      v32 = v4[11];
      v49 = v4[10];
      v50 = v32;
      v33 = v4[5];
      v48[4] = v4[4];
      v48[5] = v33;
      v34 = v4[7];
      v48[6] = v4[6];
      v48[7] = v34;
      v35 = v4[1];
      v48[0] = *v4;
      v48[1] = v35;
      v36 = v4[3];
      v48[2] = v4[2];
      v48[3] = v36;
      if (sub_1B8032DBC(v48) == 1)
      {
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v38 = *(&v49 + 1);
        v37 = v49;
      }

      v39 = v4[9];
      v46[8] = v4[8];
      v46[9] = v39;
      v40 = v4[11];
      v46[10] = v4[10];
      v47 = v40;
      v41 = v4[5];
      v46[4] = v4[4];
      v46[5] = v41;
      v42 = v4[7];
      v46[6] = v4[6];
      v46[7] = v42;
      v43 = v4[1];
      v46[0] = *v4;
      v46[1] = v43;
      v44 = v4[3];
      v46[2] = v4[2];
      v46[3] = v44;
      if (sub_1B8032DBC(v46) == 1 || !*(&v47 + 1))
      {
        if (v38)
        {

          return v37;
        }

        else
        {
          if (!v30)
          {
            return v11;
          }

          return v29;
        }
      }

      else
      {
        v45 = v47;

        return v45;
      }
    }

    else
    {
      v22 = v56;

      return v22;
    }
  }
}

unint64_t sub_1B8095730(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0x6564757469746C61;
      break;
    case 3:
      result = 0x76654C726F6F6C66;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x736C6562616CLL;
      break;
    case 6:
      result = 0x656475746974616CLL;
      break;
    case 7:
      result = 0x64757469676E6F6CLL;
      break;
    case 8:
      result = 0x6465657073;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6E6F697461636F6CLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B80958C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80977A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80958F8(uint64_t a1)
{
  v2 = sub_1B8097270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8095934(uint64_t a1)
{
  v2 = sub_1B8097270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA671A0, &qword_1B80DAE38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8097270();
  sub_1B80C99DC();
  v51[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  sub_1B809736C(&qword_1EBA671B0, MEMORY[0x1E699C7E0]);
  sub_1B80C97DC();
  if (!v2)
  {
    v9 = type metadata accessor for Location(0);
    v10 = (v3 + v9[5]);
    v11 = v10[9];
    v12 = v10[7];
    v47 = v10[8];
    v48 = v11;
    v13 = v10[9];
    v14 = v10[11];
    v49 = v10[10];
    v50 = v14;
    v15 = v10[5];
    v16 = v10[3];
    v43 = v10[4];
    v44 = v15;
    v17 = v10[5];
    v18 = v10[7];
    v45 = v10[6];
    v46 = v18;
    v19 = v10[1];
    v20 = v10[3];
    v41 = v10[2];
    v42 = v20;
    v21 = v10[1];
    v40[0] = *v10;
    v40[1] = v21;
    v36 = v47;
    v37 = v13;
    v22 = v10[11];
    v38 = v49;
    v39 = v22;
    v32 = v43;
    v33 = v17;
    v34 = v45;
    v35 = v12;
    v28 = v40[0];
    v29 = v19;
    v30 = v41;
    v31 = v16;
    v27 = 1;
    sub_1B7FD7BE8(v40, v26);
    sub_1B807F03C();
    sub_1B80C977C();
    v26[8] = v36;
    v26[9] = v37;
    v26[10] = v38;
    v26[11] = v39;
    v26[4] = v32;
    v26[5] = v33;
    v26[6] = v34;
    v26[7] = v35;
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    sub_1B7FB86D4(v26, &qword_1EBA65D70, &qword_1B80D1BB0);
    LOBYTE(v25) = 2;
    sub_1B80C97AC();
    LOBYTE(v25) = 3;
    sub_1B80C97BC();
    LOBYTE(v25) = 4;
    sub_1B80C97AC();
    v25 = *(v3 + v9[9]);
    HIBYTE(v24) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    sub_1B7FCA738(&qword_1ED8DBBF8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1B80C97DC();
    LOBYTE(v25) = 6;
    sub_1B80C97AC();
    LOBYTE(v25) = 7;
    sub_1B80C97AC();
    LOBYTE(v25) = 8;
    sub_1B80C97AC();
    LOBYTE(v25) = 9;
    sub_1B80C97AC();
    LOBYTE(v25) = 10;
    sub_1B80C97AC();
    LOBYTE(v25) = *(v3 + v9[15]);
    HIBYTE(v24) = 11;
    sub_1B80972C4();
    sub_1B80C97DC();
    LOBYTE(v25) = *(v3 + v9[16]);
    HIBYTE(v24) = 12;
    sub_1B8097318();
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v8, v5);
}