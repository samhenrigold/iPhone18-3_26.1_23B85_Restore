uint64_t sub_2692F0B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClockTimeSnippetModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t sub_2692F0B6C(uint64_t a1)
{
  result = type metadata accessor for ClockTimeSnippetModel(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_26932BF40();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_26932BF40();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_2692F0FE8(uint64_t a1)
{
  sub_26932BF40();
  if (v1 <= 0x3F)
  {
    sub_2692F110C();
    if (v2 <= 0x3F)
    {
      sub_2692F115C(319, &qword_2803083D8, MEMORY[0x277CC9788], MEMORY[0x277D637C8]);
      if (v3 <= 0x3F)
      {
        sub_2692F115C(319, &qword_2803083E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2692F110C()
{
  if (!qword_2803083D0)
  {
    v0 = sub_26932C140();
    if (!v1)
    {
      atomic_store(v0, &qword_2803083D0);
    }
  }
}

void sub_2692F115C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2692F11F4()
{
  result = qword_2803083E8;
  if (!qword_2803083E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803083E8);
  }

  return result;
}

unint64_t sub_2692F124C()
{
  result = qword_2803083F0;
  if (!qword_2803083F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803083F0);
  }

  return result;
}

unint64_t sub_2692F12A4()
{
  result = qword_2803083F8;
  if (!qword_2803083F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803083F8);
  }

  return result;
}

unint64_t sub_2692F12FC()
{
  result = qword_280308400;
  if (!qword_280308400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308400);
  }

  return result;
}

unint64_t sub_2692F1354()
{
  result = qword_280308408;
  if (!qword_280308408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308408);
  }

  return result;
}

unint64_t sub_2692F13AC()
{
  result = qword_280308410;
  if (!qword_280308410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308410);
  }

  return result;
}

unint64_t sub_2692F1404()
{
  result = qword_280308418;
  if (!qword_280308418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308418);
  }

  return result;
}

unint64_t sub_2692F145C()
{
  result = qword_280308420;
  if (!qword_280308420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308420);
  }

  return result;
}

unint64_t sub_2692F14B4()
{
  result = qword_280308428;
  if (!qword_280308428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308428);
  }

  return result;
}

uint64_t sub_2692F1508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26932DF00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002693360F0 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000269336110 == a2 || (sub_26932DF00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_26932DF00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 5;
  }

  else
  {
    v6 = sub_26932DF00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t HALAlarmDeviceContext.remoteExecutionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HALAlarmDeviceContext.remoteExecutionId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *HALAlarmDeviceContext.firingAlarms.getter()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v20 = *(v1 + 32);
    v21 = v20 & 0x3F;
    v9 = ((1 << v20) + 63) >> 6;
    v5 = 8 * v9;

    if (v21 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  v2 = MEMORY[0x277D84FA0];
  v38 = MEMORY[0x277D84FA0];

  v1 = sub_26932DAD0();
  v3 = sub_26932DB00();
  if (!v3)
  {
LABEL_20:

    return v2;
  }

  v4 = v3;
  v5 = sub_2692F231C();
  v6 = v4;
  while (1)
  {
    v36[2] = v6;
    swift_dynamicCast();
    v7 = v37;
    if ([v37 isFiring])
    {
      break;
    }

LABEL_5:
    v6 = sub_26932DB00();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v8 = v2[2];
  if (v2[3] <= v8)
  {
    sub_2692F1DD0(v8 + 1, &qword_280308448, &qword_26932F958);
  }

  v2 = v38;
  v9 = v37;
  v10 = sub_26932D9E0();
  v11 = v38 + 56;
  v12 = -1 << *(v38 + 32);
  v13 = v10 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~*(v38 + 56 + 8 * (v13 >> 6))) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~*(v38 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(v2[6] + 8 * v15) = v7;
    ++v2[2];
    goto LABEL_5;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = *(v11 + 8 * v14);
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v36[0] = v36;
    MEMORY[0x28223BE20](v22);
    v23 = v36 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v5);
    v5 = 0;
    v24 = 0;
    v25 = 1 << *(v1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v1 + 56);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_32:
      v32 = v29 | (v24 << 6);
      if ([*(*(v1 + 48) + 8 * v32) isFiring])
      {
        *&v23[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return sub_2692F24A4(v23, v9, v5, v1, &qword_280308448, &qword_26932F958);
        }
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        return sub_2692F24A4(v23, v9, v5, v1, &qword_280308448, &qword_26932F958);
      }

      v31 = *(v1 + 56 + 8 * v24);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_32;
      }
    }
  }

  v35 = swift_slowAlloc();
  v2 = sub_2692F23EC(v35, v9, v1, sub_2692F1BBC, 0);

  MEMORY[0x26D639280](v35, -1, -1);
  return v2;
}

void Array<A>.firingDevices()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 56;
  v4 = MEMORY[0x277D84F90];
  v18 = a1 + 56;
  do
  {
    v19 = v4;
    v5 = (v3 + 32 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;

      v11 = v7;

      v12 = HALAlarmDeviceContext.firingAlarms.getter();
      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v13 = sub_26932DAE0();

      if (v13)
      {
        goto LABEL_12;
      }

LABEL_10:

      v5 += 4;
      if (v2 == v1)
      {
        return;
      }
    }

    v14 = *(v12 + 16);

    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_12:
    v4 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2692F2690(0, *(v19 + 16) + 1, 1);
      v4 = v19;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2692F2690((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v16 + 1;
    v17 = (v4 + 32 * v16);
    v17[4] = v11;
    v17[5] = v8;
    v17[6] = v10;
    v17[7] = v9;
    v3 = v18;
  }

  while (v2 != v1);
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = a1 + 56;
  v4 = MEMORY[0x277D84F90];
  v18 = a1 + 56;
  do
  {
    v19 = v4;
    v5 = (v3 + 32 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v9 = *v5;

      v11 = v7;

      v12 = HALTimerDeviceContext.firingTimers.getter();
      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v13 = sub_26932DAE0();

      if (v13)
      {
        goto LABEL_12;
      }

LABEL_10:

      v5 += 4;
      if (v2 == v1)
      {
        return;
      }
    }

    v14 = *(v12 + 16);

    if (!v14)
    {
      goto LABEL_10;
    }

LABEL_12:
    v4 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2692F27C4(0, *(v19 + 16) + 1, 1);
      v4 = v19;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2692F27C4((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    *(v4 + 16) = v16 + 1;
    v17 = (v4 + 32 * v16);
    v17[4] = v11;
    v17[5] = v8;
    v17[6] = v10;
    v17[7] = v9;
    v3 = v18;
  }

  while (v2 != v1);
}

uint64_t sub_2692F1DD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26932DB20();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_26932D9E0();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_2692F1FF0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26932BFA0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308438, &unk_269330760);
  result = sub_26932DB20();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2692F276C();
      result = sub_26932D740();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_2692F231C()
{
  result = qword_280308430;
  if (!qword_280308430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280308430);
  }

  return result;
}

unint64_t sub_2692F2368(uint64_t a1, uint64_t a2)
{
  sub_26932D9E0();
  result = sub_26932DAC0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_2692F23EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2692F321C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_2692F24A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_26932DB40();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_26932D9E0();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_2692F2690(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2692F29D4(a1, a2, a3, *v3, &qword_2803081D0, &qword_26932F950, &type metadata for HALAlarmDeviceContext);
  *v3 = result;
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

uint64_t sub_2692F26D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2692F271C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2692F276C()
{
  result = qword_2814B2658;
  if (!qword_2814B2658)
  {
    sub_26932BFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2658);
  }

  return result;
}

char *sub_2692F27C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2692F29D4(a1, a2, a3, *v3, &qword_2803081C8, &qword_26932F940, &type metadata for HALTimerDeviceContext);
  *v3 = result;
  return result;
}

void *sub_2692F27FC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081E0, &unk_26932F960);
  v10 = *(sub_26932BF40() - 8);
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
  v15 = *(sub_26932BF40() - 8);
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

char *sub_2692F29D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t static ApplicationContext.shared.getter()
{
  if (qword_2814B2520)
  {
    v0 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v0 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v0;
  }

  return v0;
}

uint64_t ApplicationContext.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t HALTimerDeviceContext.remoteExecutionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *HALTimerDeviceContext.firingTimers.getter()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 8);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v20 = *(v1 + 32);
    v21 = v20 & 0x3F;
    v9 = ((1 << v20) + 63) >> 6;
    v5 = 8 * v9;

    if (v21 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

  v2 = MEMORY[0x277D84FA0];
  v38 = MEMORY[0x277D84FA0];

  v1 = sub_26932DAD0();
  v3 = sub_26932DB00();
  if (!v3)
  {
LABEL_20:

    return v2;
  }

  v4 = v3;
  v5 = sub_2692F31D0();
  v6 = v4;
  while (1)
  {
    v36[2] = v6;
    swift_dynamicCast();
    v7 = v37;
    if ([v37 isFiring])
    {
      break;
    }

LABEL_5:
    v6 = sub_26932DB00();
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  v8 = v2[2];
  if (v2[3] <= v8)
  {
    sub_2692F1DBC(v8 + 1);
  }

  v2 = v38;
  v9 = v37;
  v10 = sub_26932D9E0();
  v11 = v38 + 56;
  v12 = -1 << *(v38 + 32);
  v13 = v10 & ~v12;
  v14 = v13 >> 6;
  if (((-1 << v13) & ~*(v38 + 56 + 8 * (v13 >> 6))) != 0)
  {
    v15 = __clz(__rbit64((-1 << v13) & ~*(v38 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(v2[6] + 8 * v15) = v7;
    ++v2[2];
    goto LABEL_5;
  }

  v16 = 0;
  v17 = (63 - v12) >> 6;
  while (++v14 != v17 || (v16 & 1) == 0)
  {
    v18 = v14 == v17;
    if (v14 == v17)
    {
      v14 = 0;
    }

    v16 |= v18;
    v19 = *(v11 + 8 * v14);
    if (v19 != -1)
    {
      v15 = __clz(__rbit64(~v19)) + (v14 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v36[0] = v36;
    MEMORY[0x28223BE20](v22);
    v23 = v36 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v5);
    v5 = 0;
    v24 = 0;
    v25 = 1 << *(v1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v1 + 56);
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_32:
      v32 = v29 | (v24 << 6);
      if ([*(*(v1 + 48) + 8 * v32) isFiring])
      {
        *&v23[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          return sub_2692F2490(v23, v9, v5, v1);
        }
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v28)
      {
        return sub_2692F2490(v23, v9, v5, v1);
      }

      v31 = *(v1 + 56 + 8 * v24);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_32;
      }
    }
  }

  v35 = swift_slowAlloc();
  v2 = sub_2692F33BC(v35, v9, v1, sub_2692F1BBC, 0);

  MEMORY[0x26D639280](v35, -1, -1);
  return v2;
}

unint64_t sub_2692F31D0()
{
  result = qword_2814B2328;
  if (!qword_2814B2328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2328);
  }

  return result;
}

void sub_2692F3248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2692F33BC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2692F3248(result, a2, a3, a4, a5, sub_2692F2490);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_2692F3470()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308450);
  v1 = __swift_project_value_buffer(v0, qword_280308450);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NLContextUpdate.add(nluSystemDialogAct:)(uint64_t a1)
{
  v2 = sub_26932C430();
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 16))
    {
      if (qword_280307C60 != -1)
      {
        swift_once();
      }

      v4 = sub_26932D6B0();
      __swift_project_value_buffer(v4, qword_280308450);

      v5 = sub_26932D690();
      v6 = sub_26932D9A0();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v19 = v8;
        *v7 = 136315138;
        v9 = sub_26932C8C0();
        v10 = MEMORY[0x26D638530](v3, v9);
        v12 = v11;

        v13 = sub_2692DD5A8(v10, v12, &v19);

        *(v7 + 4) = v13;
        _os_log_impl(&dword_2692D8000, v5, v6, "Attempted to set additional SDA on NLContextUpdate. This is unsupported and the last-in SDA will be used. Dropping previous SDA: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x26D639280](v8, -1, -1);
        MEMORY[0x26D639280](v7, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308468, &qword_26932FA18);
  v14 = sub_26932C8C0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26932EEA0;
  (*(v15 + 16))(v17 + v16, a1, v14);

  return MEMORY[0x2821BB138](v17);
}

uint64_t NLContextUpdate.set(undoDirectInvocation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308470, &unk_26932FA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_26932C6C0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return sub_26932C450();
}

uint64_t sub_2692F38AC()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308478);
  v1 = __swift_project_value_buffer(v0, qword_280308478);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTimeCrossDeviceAnalytics.init(action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26932D640();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void SiriTimeCrossDeviceAnalytics.logSharedAnalyticsStarted(selectedDevice:)(void *a1)
{
  v44 = a1;
  v1 = sub_26932D4E0();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308490, &unk_26932FA30);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v37 - v5;
  v6 = sub_26932D640();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26932D650();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_26932BFA0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  sub_26932C2F0();
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_26932C570();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    sub_26932BF50();

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v20, v13, v14);
      (*(v15 + 16))(v18, v20, v14);
      (*(v38 + 16))(v8, v41, v39);
      v26 = sub_26932D630();
      (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
      v27 = v47;
      sub_26932D620();
      sub_26932D5C0();
      sub_26932D5B0();
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308498, &unk_26932FA40) + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_26932EA80;
      v30 = v44;
      *(v29 + 32) = v44;
      *v3 = v29;
      v3[1] = 0;
      v31 = v42;
      v32 = v27;
      v33 = v43;
      (*(v42 + 16))(v3 + v28, v32, v43);
      v35 = v45;
      v34 = v46;
      (*(v45 + 104))(v3, *MEMORY[0x277D61ED0], v46);
      v36 = v30;
      sub_26932D590();

      (*(v35 + 8))(v3, v34);
      (*(v31 + 8))(v47, v33);
      (*(v15 + 8))(v20, v14);
      return;
    }

    sub_2692DEDE4(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  if (qword_280307C68 != -1)
  {
    swift_once();
  }

  v22 = sub_26932D6B0();
  __swift_project_value_buffer(v22, qword_280308478);
  v23 = sub_26932D690();
  v24 = sub_26932D9A0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2692D8000, v23, v24, "DismissAlarm.logSharedAnalyticsStarted(selectedDevice:) returning - request UUID missing or invalid", v25, 2u);
    MEMORY[0x26D639280](v25, -1, -1);
  }
}

void SiriTimeCrossDeviceAnalytics.logSharedAnalyticsEnded(result:)(uint64_t a1)
{
  v41 = a1;
  v1 = sub_26932D4E0();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308490, &unk_26932FA30);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34 - v4;
  v5 = sub_26932D640();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26932D650();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_26932BFA0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  sub_26932C2F0();
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_26932C570();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    sub_26932BF50();

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v19, v12, v13);
      (*(v14 + 16))(v17, v19, v13);
      (*(v35 + 16))(v7, v37, v5);
      v25 = sub_26932D630();
      (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
      v26 = v38;
      sub_26932D620();
      sub_26932D5C0();
      sub_26932D5B0();
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803084A0, &unk_26932FA50) + 48);
      v29 = v39;
      v28 = v40;
      v30 = v42;
      (*(v39 + 16))(v42, v26, v40);
      v31 = sub_26932D4D0();
      (*(*(v31 - 8) + 16))(&v30[v27], v41, v31);
      v33 = v43;
      v32 = v44;
      (*(v43 + 104))(v30, *MEMORY[0x277D61EB0], v44);
      sub_26932D590();

      (*(v33 + 8))(v30, v32);
      (*(v29 + 8))(v26, v28);
      (*(v14 + 8))(v19, v13);
      return;
    }

    sub_2692DEDE4(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  if (qword_280307C68 != -1)
  {
    swift_once();
  }

  v21 = sub_26932D6B0();
  __swift_project_value_buffer(v21, qword_280308478);
  v22 = sub_26932D690();
  v23 = sub_26932D9A0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2692D8000, v22, v23, "DismissAlarm.logSharedAnalyticsEnded(result:) returning - request UUID missing or invalid", v24, 2u);
    MEMORY[0x26D639280](v24, -1, -1);
  }
}

uint64_t type metadata accessor for SiriTimeCrossDeviceAnalytics(uint64_t a1)
{
  result = qword_2803084A8;
  if (!qword_2803084A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2692F4648(uint64_t a1)
{
  result = sub_26932D640();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DeviceState.isPhoneOrPad.getter(uint64_t a1, uint64_t a2)
{
  if (sub_26932C330())
  {
    return 1;
  }

  return MEMORY[0x2821BABA0](a1, a2);
}

uint64_t DecideAction.PromptExpectation.hashValue.getter()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

unint64_t sub_2692F47A0()
{
  result = qword_2803084B8;
  if (!qword_2803084B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DecideAction.PromptExpectation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DecideAction.PromptExpectation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DeviceUnit.dialogType.getter()
{
  _s27SiriVirtualDeviceResolution0C4UnitC0A12TimeInternalE10isCommunalSbvg_0();
  sub_26932D570();

  return sub_26932D7B0();
}

uint64_t sub_2692F4A90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  if (v3)
  {
    sub_26932D7B0();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_26932D3E0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t PunchOutApp.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = *v1;
  if (v12 <= 1)
  {
    if (*v1)
    {
      v22 = objc_opt_self();
      v23 = sub_26932D760();
      v24 = [v22 mtURLForScheme_];

      if (v24)
      {
        sub_26932BEB0();

        v25 = sub_26932BED0();
        (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
      }

      else
      {
        v29 = sub_26932BED0();
        (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
      }

      v27 = v11;
      return sub_2692F4F0C(v27, a1);
    }
  }

  else
  {
    if (v12 == 2)
    {
      v18 = objc_opt_self();
      v19 = sub_26932D760();
      v20 = [v18 mtURLForScheme_];

      if (v20)
      {
        sub_26932BEB0();

        v21 = sub_26932BED0();
        (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
      }

      else
      {
        v26 = sub_26932BED0();
        (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
      }

      v27 = v9;
      return sub_2692F4F0C(v27, a1);
    }

    if (v12 != 3)
    {
      v13 = objc_opt_self();
      v14 = sub_26932D760();
      v15 = [v13 mtURLForScheme_];

      if (v15)
      {
        sub_26932BEB0();

        v16 = sub_26932BED0();
        (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
      }

      else
      {
        v28 = sub_26932BED0();
        (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      }

      v27 = v6;
      return sub_2692F4F0C(v27, a1);
    }
  }

  return sub_26932BEC0();
}

uint64_t sub_2692F4F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PunchOutApp.toResponseFrameworkCommandAction()@<X0>(uint64_t a1@<X8>)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26932BFA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_26932BED0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  LOBYTE(v57[0]) = *v1;
  PunchOutApp.url.getter(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2692F0730(v9);
    if (qword_2814B2530 != -1)
    {
      swift_once();
    }

    v15 = sub_26932D6B0();
    __swift_project_value_buffer(v15, qword_2814B2760);
    v16 = sub_26932D690();
    v17 = sub_26932D9A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57[0] = v19;
      *v18 = 136315138;
      LOBYTE(v56) = v14;
      v20 = sub_26932D790();
      v22 = sub_2692DD5A8(v20, v21, v57);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2692D8000, v16, v17, "Error creating URL for punchout for app %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D639280](v19, -1, -1);
      MEMORY[0x26D639280](v18, -1, -1);
    }

    goto LABEL_17;
  }

  (*(v11 + 32))(v13, v9, v10);
  v23 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v24 = sub_26932BEA0();
  [v23 setPunchOutUri_];

  v25 = v23;
  sub_26932BF90();
  sub_26932BF60();
  (*(v4 + 8))(v6, v3);
  v26 = sub_26932D760();

  [v25 setAceId_];

  v27 = [v25 dictionary];
  if (!v27)
  {
    (*(v11 + 8))(v13, v10);

LABEL_17:
    v35 = 1;
    goto LABEL_18;
  }

  v28 = v27;
  v29 = objc_opt_self();
  v57[0] = 0;
  v30 = [v29 dataWithPropertyList:v28 format:200 options:0 error:v57];
  v31 = v57[0];
  if (!v30)
  {
    v36 = v31;
    v37 = sub_26932BE90();

    swift_willThrow();
    if (qword_2814B2530 != -1)
    {
      swift_once();
    }

    v38 = sub_26932D6B0();
    __swift_project_value_buffer(v38, qword_2814B2760);
    v39 = v37;
    v40 = sub_26932D690();
    v41 = sub_26932D9A0();

    v55 = v40;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = v41;
      v43 = v42;
      v53 = swift_slowAlloc();
      v57[0] = v53;
      *v43 = 136315138;
      v56 = v37;
      v44 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
      v45 = sub_26932D790();
      v47 = sub_2692DD5A8(v45, v46, v57);

      *(v43 + 4) = v47;
      v48 = v55;
      _os_log_impl(&dword_2692D8000, v55, v54, "Error generating ACE punch out command: %s", v43, 0xCu);
      v49 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x26D639280](v49, -1, -1);
      MEMORY[0x26D639280](v43, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_17;
  }

  v32 = sub_26932BF00();
  v34 = v33;

  sub_26932BEF0();
  sub_26932D3D0();
  sub_2692F5A5C(v32, v34);

  (*(v11 + 8))(v13, v10);
  v35 = 0;
LABEL_18:
  v50 = sub_26932D3E0();
  return (*(*(v50 - 8) + 56))(a1, v35, 1, v50);
}

SiriTimeInternal::PunchOutApp_optional __swiftcall PunchOutApp.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PunchOutApp.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7065656C73;
  v3 = 0x6D72616C61;
  v4 = 0x616C417065656C73;
  if (v1 != 3)
  {
    v4 = 0x72656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B636F6C63;
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

uint64_t sub_2692F573C()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692F5814(uint64_t a1)
{
  sub_26932D7D0();
}

uint64_t sub_2692F58D8(uint64_t a1)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

void sub_2692F59B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7065656C73;
  v5 = 0xE500000000000000;
  v6 = 0x6D72616C61;
  v7 = 0xEA00000000006D72;
  v8 = 0x616C417065656C73;
  if (v2 != 3)
  {
    v8 = 0x72656D6974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6B636F6C63;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2692F5A5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2692F5AB4()
{
  result = qword_2803084C0;
  if (!qword_2803084C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084C0);
  }

  return result;
}

unint64_t sub_2692F5B0C()
{
  result = qword_2803084C8;
  if (!qword_2803084C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803084D0, &qword_26932FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084C8);
  }

  return result;
}

unint64_t sub_2692F5B80(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803084D8, &qword_26932FC68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_26932CAD0();
  v66 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803084E0, &qword_26932FC70);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_26932CA90();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v67 = &v65 - v26;
  sub_26932CAA0();
  sub_26932CC20();
  if (v70[0])
  {
    sub_26932CA80();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {

      sub_2692EB48C(v20, &qword_2803084E0, &qword_26932FC70);
      goto LABEL_4;
    }

    v32 = v67;
    (*(v22 + 32))(v67, v20, v21);
    (*(v22 + 16))(v25, v32, v21);
    v33 = (*(v22 + 88))(v25, v21);
    if (v33 == *MEMORY[0x277D5E7E0])
    {
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = 1000000000.0;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E7D8])
    {
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = 12.0;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E7F8])
    {
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = 1000.0;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E800])
    {
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = 1.0e12;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E798])
    {
      v54 = a3 * 0.5;
      v55 = a2 * 0.5;
LABEL_45:
      v56 = v55 + v54;
      MEMORY[0x26D6386C0](10.0);
      sub_26932BEE0();
      v57 = sub_26932DA10();
      sub_26932D930();
      v59 = v58;

      a2 = roundf(v56 * v59) / v59;
      (*(v22 + 8))(v32, v21);
      goto LABEL_46;
    }

    if (v33 == *MEMORY[0x277D5E7F0])
    {
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = 1000000.0;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E7C0])
    {
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = 100000.0;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E7A8])
    {
LABEL_59:
      (*(v22 + 8))(v32, v21);

      LOBYTE(v31) = 0;
      v30 = a3;
      goto LABEL_60;
    }

    if (v33 == *MEMORY[0x277D5E7D0])
    {
      v55 = a3 * a4;
      v61 = 1.0 - a4;
    }

    else
    {
      if (v33 == *MEMORY[0x277D5E7B0])
      {
        goto LABEL_59;
      }

      if (v33 == *MEMORY[0x277D5E7A0])
      {
        (*(v22 + 8))(v32, v21);

        LOBYTE(v31) = 0;
        v30 = 10000.0;
        goto LABEL_60;
      }

      if (v33 != *MEMORY[0x277D5E7C8])
      {
        if (v33 == *MEMORY[0x277D5E7E8])
        {
          (*(v22 + 8))(v67, v21);

          LOBYTE(v31) = 0;
          v30 = 100.0;
          goto LABEL_60;
        }

        v62 = v33;
        if (v33 == *MEMORY[0x277D5E790])
        {
          (*(v22 + 8))(v67, v21);

          LOBYTE(v31) = 0;
          v30 = 10000000.0;
          goto LABEL_60;
        }

        v63 = *MEMORY[0x277D5E7B8];
        v64 = *(v22 + 8);
        v64(v67, v21);

        if (v62 != v63)
        {
          v64(v25, v21);
          goto LABEL_6;
        }

LABEL_46:
        LOBYTE(v31) = 0;
        v30 = a2;
        goto LABEL_60;
      }

      v55 = a3 * a5;
      v61 = 1.0 - a5;
    }

    v54 = v61 * a2;
    goto LABEL_45;
  }

LABEL_4:
  sub_26932CB10();
  sub_26932CC20();
  if (v70[0])
  {
    v27 = sub_26932CB00();
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      LOBYTE(v31) = 0;
      v30 = v27;
      goto LABEL_60;
    }

    goto LABEL_6;
  }

  sub_26932CAF0();
  sub_26932CC20();
  if (v70[0])
  {
    sub_26932CAC0();
    v34 = v66;
    if ((*(v66 + 48))(v11, 1, v12) == 1)
    {
      sub_2692EB48C(v11, &qword_2803084D8, &qword_26932FC68);
      goto LABEL_12;
    }

    (*(v34 + 32))(v17, v11, v12);
    (*(v34 + 104))(v15, *MEMORY[0x277D5E880], v12);
    sub_2692F6798();
    sub_26932D830();
    sub_26932D830();
    if (v70[0] == v68 && v70[1] == v69)
    {
      v47 = *(v34 + 8);
      v47(v15, v12);
      v47(v17, v12);
    }

    else
    {
      v48 = sub_26932DF00();
      v49 = *(v34 + 8);
      v49(v15, v12);
      v49(v17, v12);

      if ((v48 & 1) == 0)
      {
LABEL_12:
        v35 = sub_26932CAE0();
        if (v36)
        {
          LODWORD(v70[0]) = 0;
          v37 = sub_2692F66A0(v35, v36, v70);

          if (v37)
          {
            v30 = *v70;
          }

          else
          {
            v30 = 0.0;
          }

          LOBYTE(v31) = !v37;
          goto LABEL_60;
        }

        goto LABEL_57;
      }
    }

    LOBYTE(v31) = 0;
    v30 = 0.01;
    goto LABEL_60;
  }

  sub_26932CDE0();
  sub_26932CC20();
  if (!v70[0])
  {
    sub_26932CF20();
    sub_26932CC20();
    if (!v70[0])
    {
LABEL_6:
      v30 = 0.0;
      LOBYTE(v31) = 1;
      goto LABEL_60;
    }

    if (sub_26932CF10())
    {
      if (sub_26932CF00())
      {
        v50 = sub_26932C960();
        v51 = sub_2692F5B80(v50, a2, a3, 0.1, 0.3);

        if ((v51 & 0x100000000) == 0)
        {

          v52 = sub_26932C960();

          v53 = sub_2692F5B80(v52, a2, a3, 0.1, 0.3);

          if ((v53 & 0x100000000) == 0)
          {
            LOBYTE(v31) = 0;
            v30 = *&v51 * *&v53;
            goto LABEL_60;
          }

          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    goto LABEL_57;
  }

  v38 = sub_26932CDC0();
  if (v39 & 1) != 0 || (v40 = v38, v41 = sub_26932CDD0(), (v42))
  {
    v30 = 0.0;
    v31 = 1;
    goto LABEL_24;
  }

  if (!v41)
  {
LABEL_57:

    goto LABEL_6;
  }

  v31 = 0;
  v30 = v40 / v41;
LABEL_24:
  v43 = sub_26932CDB0();
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    v46 = v30;
    if (v31)
    {
      v46 = 0.0;
    }

    v30 = v46 + v43;
    LOBYTE(v31) = 0;
  }

LABEL_60:
  LOBYTE(v70[0]) = v31 & 1;
  return LODWORD(v30) | ((v31 & 1) << 32);
}

BOOL sub_2692F66A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_26932DB60();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_2692F6798()
{
  result = qword_2803084E8;
  if (!qword_2803084E8)
  {
    sub_26932CAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803084E8);
  }

  return result;
}

_BYTE *sub_2692F67F0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2692F6870()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803084F0);
  v1 = __swift_project_value_buffer(v0, qword_2803084F0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2692F6938()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_26932D770();
  v4 = v3;

  if (v2 == 0x747365746378 && v4 == 0xE600000000000000)
  {

    v8 = 0;
  }

  else
  {
    v6 = sub_26932DF00();

    v8 = v6 ^ 1;
  }

  byte_28030CD90 = v8 & 1;
  return result;
}

uint64_t static BarbaraWalters.stopThePresses(for:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2692F8424(v3, v1, v2);
}

void sub_2692F6A50(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  if (qword_280307C70 != -1)
  {
    swift_once();
  }

  v14 = sub_26932D6B0();
  __swift_project_value_buffer(v14, qword_2803084F0);

  oslog = sub_26932D690();
  v15 = sub_26932D9B0();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315906;
    *(v16 + 4) = sub_2692DD5A8(a2, a3, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2692DD5A8(a4, a5, &v19);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_2692DD5A8(a6, a7, &v19);
    *(v16 + 32) = 1024;
    *(v16 + 34) = a1 & 1;
    _os_log_impl(&dword_2692D8000, oslog, v15, "SiriTime#%s#%s did AutoBugCapture for %s: %{BOOL}d", v16, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v17, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }
}

uint64_t static BarbaraWalters.tryReport<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[3] = a2;
  v4[4] = a3;
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_2692F6D3C;

  return v8(a1);
}

uint64_t sub_2692F6D3C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2692F6E70, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2692F6E70()
{
  v1 = v0[6];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
  v3 = sub_26932DEE0();
  v4 = v0[6];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = swift_allocError();
    *v6 = v4;
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_26932BE80();

  sub_26931B26C(v8, v7, v9, 115);

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t static BarbaraWalters.logAndReturnError<A>(context:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v22 = a6;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 16);
  v13(v12, v14, v15);
  v16 = sub_26932DEE0();
  if (v16)
  {
    v17 = v16;
    (*(v10 + 8))(v12, a4);
  }

  else
  {
    v17 = swift_allocError();
    (*(v10 + 32))(v18, v12, a4);
  }

  v19 = sub_26932BE80();

  sub_26931B26C(a1, a2, v19, 115);

  return (v13)(v22, a3, a4);
}

uint64_t ABCReport.type.getter()
{
  v1 = *(v0 + 24) >> 4;
  if (v1 <= 4)
  {
    v7 = 0x676E696D6954;
    v8 = 0x73655272656D6954;
    v9 = 0x746E496D72616C41;
    if (v1 != 3)
    {
      v9 = 0x7365526D72616C41;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (v1)
    {
      v7 = 0x746E4972656D6954;
    }

    if (*(v0 + 24) >> 4 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x614C676F6C616944;
    v3 = 0x6E65646E65706544;
    if (v1 != 9)
    {
      v3 = 0xD000000000000013;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x646E5572656D6954;
    v5 = 0x646E556D72616C41;
    if (v1 != 6)
    {
      v5 = 0x656C646E61686E55;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*(v0 + 24) >> 4 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t ABCReport.subType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = v2 >> 4;
  if (v2 >> 4 > 6)
  {
    result = 0x656C646E61686E55;
    if (v2 >> 4 > 8)
    {
      if (v3 != 9)
      {
        return result;
      }

      goto LABEL_3;
    }

    if (v3 != 7)
    {
      v4 = *(v0 + 8);
      if (!*(v0 + 8))
      {
        return 0x65736E6F70736552;
      }

      v5 = 0xD000000000000011;
      v6 = 0x726F727245656341;
      goto LABEL_5;
    }

    v8 = v2 & 0xF;
    if (v8 <= 1)
    {
      if (v8)
      {
        return 0x6465746365707845;
      }

      else
      {
        return 0x496E776F6E6B6E55;
      }
    }

    else if (v8 == 2)
    {
      return 0xD000000000000015;
    }

    else if (v8 != 3)
    {
      v10 = *(v0 + 16) | v1;
      if (v10 | *v0)
      {
        result = 0xD00000000000001BLL;
        if (*v0 != 1 || v10)
        {
          return 0xD000000000000013;
        }
      }

      else
      {
        return 0x61437463656A624FLL;
      }
    }
  }

  else
  {
    if (v3 - 1 < 6)
    {
LABEL_3:
      v4 = *(v0 + 8);
      if (!*(v0 + 8))
      {
        return 0x45726567616E614DLL;
      }

      v5 = 0xD000000000000018;
      v6 = 0x726F727245;
LABEL_5:
      if (v4 == 1)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }

    v9 = 0xD00000000000001BLL;
    if (!v1)
    {
      v9 = 0xD000000000000019;
    }

    if (v1 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

unint64_t TimingErrorSubType.typeDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t UnhandledAbortSubtype.typeDescription.getter()
{
  v1 = *(v0 + 24);
  if (v1 <= 1)
  {
    if (*(v0 + 24))
    {
      return 0x6465746365707845;
    }

    else
    {
      return 0x496E776F6E6B6E55;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000015;
  }

  else if (v1 == 3)
  {
    return 0x656C646E61686E55;
  }

  else if (*(v0 + 8) | *(v0 + 16) | *v0)
  {
    result = 0xD000000000000013;
    if (*v0 == 1 && *(v0 + 8) == 0)
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    return 0x61437463656A624FLL;
  }

  return result;
}

unint64_t DialogLayerErrorSubType.typeDescription.getter()
{
  v1 = 0xD000000000000011;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245656341;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736552;
  }
}

unint64_t ErrorSubType.typeDescription.getter()
{
  v1 = 0xD000000000000018;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x45726567616E614DLL;
  }
}

unint64_t ABCReport.context.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 24);
  v8 = v7 >> 4;
  if (v7 >> 4 > 6)
  {
    if (v7 >> 4 > 8)
    {
      if (v8 != 9)
      {
        return 0xD00000000000001DLL;
      }

      return ErrorSubType.context.getter();
    }

    if (v8 == 7)
    {
      return UnhandledAbortSubtype.context.getter();
    }

    else
    {
      return DialogLayerErrorSubType.context.getter();
    }
  }

  else
  {
    if (v8 - 1 < 6)
    {
      return ErrorSubType.context.getter();
    }

    if (v5)
    {
      if (v5 == 1)
      {
        return 0xD000000000000033;
      }

      else
      {
        sub_26932DB80();
        MEMORY[0x26D6384C0](0xD000000000000037, 0x8000000269336320);
        MEMORY[0x26D6384C0](v6, v5);
        return 0;
      }
    }

    else
    {
      return 0xD000000000000037;
    }
  }
}

unint64_t TimingErrorSubType.context.getter()
{
  result = 0xD000000000000037;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000033;
    }

    else
    {
      v3 = *v0;
      sub_26932DB80();
      MEMORY[0x26D6384C0](0xD000000000000037, 0x8000000269336320);
      MEMORY[0x26D6384C0](v3, v2);
      return 0;
    }
  }

  return result;
}

unint64_t UnhandledAbortSubtype.context.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 24);
  if (v3 > 1)
  {
    if (v3 == 2)
    {

      return v2;
    }

    v4 = v0[2];
    if (v3 != 3)
    {
      return 0xD000000000000034;
    }

    v5 = [v0[2] underlyingErrors];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
    v7 = sub_26932D860();

    v8 = *(v7 + 16);

    sub_26932DB80();

    if (v8)
    {
      v9 = [v4 domain];
      v10 = sub_26932D770();
      v12 = v11;

      MEMORY[0x26D6384C0](v10, v12);

      MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
      [v4 code];
      v13 = sub_26932DDD0();
      MEMORY[0x26D6384C0](v13);

      MEMORY[0x26D6384C0](0xD000000000000016, 0x80000002693363E0);
      v14 = [v4 underlyingErrors];
      v15 = sub_26932D860();

      v16 = MEMORY[0x26D638530](v15, v6);
      v18 = v17;

      MEMORY[0x26D6384C0](v16, v18);
    }

    else
    {
      v21 = [v4 domain];
      v22 = sub_26932D770();
      v24 = v23;

      MEMORY[0x26D6384C0](v22, v24);

      MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
      [v4 code];
      v25 = sub_26932DDD0();
      MEMORY[0x26D6384C0](v25);
    }

    sub_26932DB80();

    v26 = 0xD000000000000011;
    MEMORY[0x26D6384C0](v2, v1);
    MEMORY[0x26D6384C0](0x6520687469772022, 0xEE002220726F7272);
    MEMORY[0x26D6384C0](0x206E69616D6F44, 0xE700000000000000);
    goto LABEL_13;
  }

  if (!*(v0 + 24))
  {
    sub_26932DB80();

    v26 = 0xD000000000000019;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308508, &qword_26932FC90);
    v19 = sub_26932D790();
    MEMORY[0x26D6384C0](v19);
LABEL_13:

    goto LABEL_14;
  }

  v26 = 0;
  sub_26932DB80();
  MEMORY[0x26D6384C0](0xD000000000000033, 0x80000002693364A0);
  MEMORY[0x26D6384C0](v2, v1);
LABEL_14:
  MEMORY[0x26D6384C0](34, 0xE100000000000000);
  return v26;
}

uint64_t sub_2692F7ED0(void (*a1)(void, uint64_t), void (*a2)(void *, uint64_t))
{
  v4 = *v2;
  v5 = *(v2 + 8);
  a1(*v2, v5);
  v6 = [v4 underlyingErrors];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308148, &unk_26932EBF0);
  v8 = sub_26932D860();

  v9 = *(v8 + 16);

  sub_26932DB80();

  if (v9)
  {
    v10 = [v4 domain];
    v11 = sub_26932D770();
    v13 = v12;

    MEMORY[0x26D6384C0](v11, v13);

    MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
    [v4 code];
    v14 = sub_26932DDD0();
    MEMORY[0x26D6384C0](v14);

    MEMORY[0x26D6384C0](0xD000000000000016, 0x80000002693363E0);
    v15 = [v4 underlyingErrors];
    a2(v4, v5);
    v16 = sub_26932D860();

    v17 = MEMORY[0x26D638530](v16, v7);
    v19 = v18;

    MEMORY[0x26D6384C0](v17, v19);
  }

  else
  {
    v20 = [v4 domain];
    v21 = sub_26932D770();
    v23 = v22;

    MEMORY[0x26D6384C0](v21, v23);

    MEMORY[0x26D6384C0](0x2065646F43202CLL, 0xE700000000000000);
    [v4 code];
    a2(v4, v5);
    v24 = sub_26932DDD0();
    MEMORY[0x26D6384C0](v24);
  }

  return 0x206E69616D6F44;
}

unint64_t sub_2692F81CC()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  if (v1 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t sub_2692F8228()
{
  v1 = 0xD000000000000018;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x45726567616E614DLL;
  }
}

uint64_t sub_2692F8290()
{
  v1 = *(v0 + 24);
  if (v1 <= 1)
  {
    if (*(v0 + 24))
    {
      return 0x6465746365707845;
    }

    else
    {
      return 0x496E776F6E6B6E55;
    }
  }

  else if (v1 == 2)
  {
    return 0xD000000000000015;
  }

  else if (v1 == 3)
  {
    return 0x656C646E61686E55;
  }

  else if (*(v0 + 8) | *(v0 + 16) | *v0)
  {
    result = 0xD000000000000013;
    if (*v0 == 1 && *(v0 + 8) == 0)
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    return 0x61437463656A624FLL;
  }

  return result;
}

unint64_t sub_2692F83B4()
{
  v1 = 0xD000000000000011;
  if (*(v0 + 8) != 1)
  {
    v1 = 0x726F727245656341;
  }

  if (*(v0 + 8))
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736552;
  }
}

uint64_t sub_2692F8424(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  if (qword_280307C78 != -1)
  {
    swift_once();
  }

  if (byte_28030CD90 == 1)
  {
    v24 = v5;
    if (qword_280307C70 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2803084F0);
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2692D8000, v9, v10, "SiriTime initiating AutoBugCapture report...", v11, 2u);
      MEMORY[0x26D639280](v11, -1, -1);
    }

    v12 = a3[1](a2, a3);
    v14 = v13;
    v15 = a3[2](a2, a3);
    v17 = v16;
    v18 = a3[3](a2, a3);
    v20 = v19;
    sub_26932D370();
    swift_allocObject();
    sub_26932D360();
    v21 = swift_allocObject();
    v21[2] = v12;
    v21[3] = v14;
    v21[4] = v15;
    v21[5] = v17;
    v21[6] = v18;
    v21[7] = v20;

    sub_26932D350();

    v5 = v24;
  }

  return (*(v5 + 8))(v7, a2);
}

uint64_t get_enum_tag_for_layout_string_16SiriTimeInternal18TimingErrorSubTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriTimeInternal21UnhandledAbortSubtypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriTimeInternal9ABCReportO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 0x9F)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2692F8834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x16 && *(a1 + 25))
  {
    return (*a1 + 22);
  }

  v3 = ((*(a1 + 24) >> 4) & 0xFFFFFFEF | (16 * ((*(a1 + 24) >> 3) & 1))) ^ 0x1F;
  if (v3 >= 0x15)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2692F8888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x15)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 22;
    if (a3 >= 0x16)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x16)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_2692F88F4(uint64_t result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    *(result + 24) = *(result + 24) & 7 | (16 * a2);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 10;
    *(result + 24) = -96;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2692F8940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2692F8994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2692F89F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
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

uint64_t sub_2692F8A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2692F8A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2692F8AD4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2692F8B00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2692F8B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

Swift::String __swiftcall String.labelCapitalization()()
{
  v2 = v1;
  v3 = v0;

  sub_2692ED890(1, v3, v2, v4);

  v5 = sub_26932DA50();
  v7 = v6;

  sub_2692ED92C(1uLL, v3, v2, v8);

  sub_2692ED9DC();
  sub_26932D7F0();

  v9 = v5;
  v10 = v7;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

id String.toINSpeakableString.getter(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v3 = sub_26932D760();
  v4 = [v2 initWithSpokenPhrase_];

  return v4;
}

uint64_t DateTime.asDate()@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - v2;
  v4 = sub_26932C0B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308528, &qword_269330488);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_26932BE70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateTime.dateComponentsIn24HourClock(shouldUseInferredMeridiem:)(1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2692EB48C(v10, &qword_280308528, &qword_269330488);
    v15 = sub_26932BF40();
    return (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_280307C50 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v1, qword_28030CD78);
    sub_2692E3B90(v17, v3, &qword_280308218, &qword_26932EEC8);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_2692EB48C(v3, &qword_280308218, &qword_26932EEC8);
      sub_26932C050();
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
    }

    sub_26932C060();
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_2692F90B8()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308510);
  v1 = __swift_project_value_buffer(v0, qword_280308510);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UsoEntity_common_DateTime.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26932CB40();
  if (!sub_26932D2E0())
  {
    v5 = sub_26932D240();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    goto LABEL_6;
  }

  sub_26932D250();

  v4 = sub_26932D240();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
LABEL_6:
    sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
    return v3;
  }

  sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v3;
}

uint64_t UsoEntity_common_RecurringDateTime.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26932CF60();
  if (!sub_26932D2E0())
  {
    v5 = sub_26932D240();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    goto LABEL_6;
  }

  sub_26932D250();

  v4 = sub_26932D240();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
LABEL_6:
    sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
    return v3;
  }

  sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v3;
}

uint64_t TerminalElement.DateTimeValue.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26932C980();
  if (!sub_26932D2E0())
  {
    v5 = sub_26932D240();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    goto LABEL_6;
  }

  sub_26932D250();

  v4 = sub_26932D240();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
LABEL_6:
    sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
    return v3;
  }

  sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v3;
}

uint64_t TerminalElement.Time.toDateTimeWithMeridiemSetByUser()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_2692F9758();
  if (!v3)
  {
    return v3;
  }

  if (!sub_26932D2E0())
  {
    v5 = sub_26932D240();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    goto LABEL_7;
  }

  sub_26932D250();

  v4 = sub_26932D240();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
LABEL_7:
    sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
    return v3;
  }

  sub_2692EB48C(v2, &qword_280308530, &qword_269330490);
  if (sub_26932D2E0())
  {
    sub_26932D1F0();
  }

  return v3;
}

uint64_t sub_2692F9758()
{
  v95 = sub_26932BE70();
  v92 = *(v95 - 8);
  v1 = MEMORY[0x28223BE20](v95);
  v85[0] = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v94 = v85 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  MEMORY[0x28223BE20](v89);
  v90 = v85 - v4;
  v93 = sub_26932BF40();
  v5 = *(v93 - 8);
  v6 = MEMORY[0x28223BE20](v93);
  v86 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = v85 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v87);
  v88 = v85 - v9;
  v10 = sub_26932C0B0();
  v99 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v100 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26932C9A0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v85 - v17;
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v19 = sub_26932D6B0();
  v20 = __swift_project_value_buffer(v19, qword_280308510);
  v21 = *(v13 + 16);
  v85[1] = v0;
  v21(v18, v0, v12);
  v91 = v20;
  v22 = sub_26932D690();
  v23 = sub_26932D9B0();
  v24 = os_log_type_enabled(v22, v23);
  v98 = v5;
  v96 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v101 = v26;
    *v25 = 136315138;
    v21(v16, v18, v12);
    v27 = sub_26932D790();
    v29 = v28;
    (*(v13 + 8))(v18, v12);
    v30 = sub_2692DD5A8(v27, v29, &v101);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_2692D8000, v22, v23, "TerminalElement.Time converting to DateTime: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D639280](v26, -1, -1);
    v31 = v25;
    v10 = v96;
    v5 = v98;
    MEMORY[0x26D639280](v31, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v18, v12);
  }

  v33 = v93;
  v32 = v94;
  v34 = v97;
  v35 = v99;
  v36 = v88;
  if (qword_280307C50 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v87, qword_28030CD78);
  sub_2692E3B90(v37, v36, &qword_280308218, &qword_26932EEC8);
  if ((*(v35 + 48))(v36, 1, v10) == 1)
  {
    sub_2692EB48C(v36, &qword_280308218, &qword_26932EEC8);
    sub_26932C050();
  }

  else
  {
    (*(v35 + 32))(v100, v36, v10);
  }

  v38 = v90;
  if (qword_280307C48 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v89, qword_28030CD60);
  sub_2692E3B90(v39, v38, &qword_280308210, &qword_26932EEC0);
  if ((*(v5 + 48))(v38, 1, v33) == 1)
  {
    sub_2692EB48C(v38, &qword_280308210, &qword_26932EEC0);
    sub_26932BF30();
  }

  else
  {
    (*(v5 + 32))(v34, v38, v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308558, &unk_2693304A0);
  v40 = sub_26932C0A0();
  v41 = *(v40 - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26932EF40;
  v45 = v44 + v43;
  v46 = *(v41 + 104);
  v46(v45, *MEMORY[0x277CC9988], v40);
  v46(v45 + v42, *MEMORY[0x277CC9998], v40);
  v46(v45 + 2 * v42, *MEMORY[0x277CC9968], v40);
  sub_26931493C(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26932C020();

  sub_26932BD80();
  if (v47 & 1) != 0 || (sub_26932BDF0(), (v48) || (v49 = sub_26932BDD0(), (v50))
  {
    v51 = v98;
    v52 = v86;
    (*(v98 + 16))(v86, v34, v33);
    v53 = sub_26932D690();
    v54 = sub_26932D9A0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v51;
      v57 = swift_slowAlloc();
      v101 = v57;
      *v55 = 136315138;
      sub_2692FC79C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v58 = sub_26932DDD0();
      v59 = v52;
      v61 = v60;
      v62 = *(v56 + 8);
      v62(v59, v33);
      v63 = sub_2692DD5A8(v58, v61, &v101);

      *(v55 + 4) = v63;
      _os_log_impl(&dword_2692D8000, v53, v54, "Unable to parse date from defaultAnchorDate: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x26D639280](v57, -1, -1);
      MEMORY[0x26D639280](v55, -1, -1);

      (*(v92 + 8))(v32, v95);
      v62(v97, v33);
    }

    else
    {

      v64 = *(v51 + 8);
      v64(v52, v33);
      (*(v92 + 8))(v32, v95);
      v64(v34, v33);
    }

    (*(v99 + 8))(v100, v96);
    return 0;
  }

  else
  {
    v66 = v49;
    v67 = v92;
    v68 = v85[0];
    v69 = v95;
    (*(v92 + 16))(v85[0], v32, v95);
    v70 = sub_26932D690();
    v71 = sub_26932D9B0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v91 = v66;
      v73 = v72;
      v74 = swift_slowAlloc();
      LODWORD(v90) = v71;
      v75 = v68;
      v76 = v74;
      v101 = v74;
      *v73 = 136315138;
      sub_2692FC79C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v77 = sub_26932DDD0();
      v79 = v78;
      v80 = *(v67 + 8);
      v80(v75, v95);
      v81 = sub_2692DD5A8(v77, v79, &v101);
      v34 = v97;
      v69 = v95;

      *(v73 + 4) = v81;
      _os_log_impl(&dword_2692D8000, v70, v90, "Extracted date components from anchor: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x26D639280](v76, -1, -1);
      MEMORY[0x26D639280](v73, -1, -1);
    }

    else
    {

      v80 = *(v67 + 8);
      v80(v68, v69);
    }

    v82 = v98;
    v83 = v96;
    sub_26932D1C0();
    swift_allocObject();
    sub_26932D1B0();
    sub_26932C990();
    sub_26932D2F0();
    swift_allocObject();
    v84 = sub_26932D170();
    v80(v94, v69);
    (*(v82 + 8))(v34, v93);
    (*(v99 + 8))(v100, v83);
    return v84;
  }
}

INDateComponentsRange_optional __swiftcall DateTime.asTimePoint(shouldUseInferredMeridiem:insertToEndTime:)(Swift::Bool shouldUseInferredMeridiem, Swift::Bool insertToEndTime)
{
  v3 = v2;
  v61 = insertToEndTime;
  v62 = shouldUseInferredMeridiem;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308528, &qword_269330488);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = sub_26932BE70();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.super.isa = DateTime.asDateComponentsRange()().super.isa;
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v15 = sub_26932D6B0();
  v16 = __swift_project_value_buffer(v15, qword_280308510);
  v17 = v14.super.isa;
  v63 = v16;
  v18 = sub_26932D690();
  v19 = sub_26932D9B0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v60 = v3;
    v21 = v9;
    v22 = v13;
    v23 = v7;
    v24 = v11;
    v25 = v10;
    v26 = v20;
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v17;
    *v27 = v17;
    v28 = v17;
    _os_log_impl(&dword_2692D8000, v18, v19, "Got inferred dateTime.asDateComponentsRange(): %@", v26, 0xCu);
    sub_2692EB48C(v27, &qword_280308540, &unk_269330740);
    MEMORY[0x26D639280](v27, -1, -1);
    v29 = v26;
    v10 = v25;
    v11 = v24;
    v7 = v23;
    v13 = v22;
    v9 = v21;
    v3 = v60;
    MEMORY[0x26D639280](v29, -1, -1);
  }

  v30 = [(objc_class *)v17 allDay];
  if (v30)
  {
    v31 = v30;
    sub_2692ED65C();
    v32 = sub_26932D9D0();
    v33 = sub_26932D9F0();

    if (v33)
    {
      v34 = sub_26932D690();
      v35 = sub_26932D9B0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2692D8000, v34, v35, "User didn't mention a time point, mentioned a day.", v36, 2u);
        MEMORY[0x26D639280](v36, -1, -1);
      }

      goto LABEL_19;
    }
  }

  v37 = [(objc_class *)v17 startDateComponents];
  if (!v37)
  {

    v42 = sub_26932D690();
    v43 = sub_26932D9B0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v3;
      v65 = v45;
      *v44 = 136315138;
      sub_26932D2F0();
      sub_2692FC79C(&qword_280308538, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
      v46 = sub_26932DDD0();
      v48 = sub_2692DD5A8(v46, v47, &v65);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_2692D8000, v42, v43, "Failed to get startDateComponents from inferred dateTime: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x26D639280](v45, -1, -1);
      MEMORY[0x26D639280](v44, -1, -1);
    }

    goto LABEL_19;
  }

  v38 = v37;
  sub_26932BD70();

  if ((sub_2692FAE84(v3, v62) & 1) == 0)
  {
    (*(v11 + 8))(v13, v10);
LABEL_19:

    v50 = 0;
    goto LABEL_25;
  }

  v59 = v11;
  if (v61)
  {
    v39 = *(v11 + 56);
    v39(v9, 1, 1, v10);
    (*(v11 + 16))(v7, v13, v10);
    v40 = v7;
    v41 = 0;
  }

  else
  {
    (*(v11 + 16))(v9, v13, v10);
    v39 = *(v11 + 56);
    v39(v9, 0, 1, v10);
    v40 = v7;
    v41 = 1;
  }

  v39(v40, v41, 1, v10);
  v51 = [(objc_class *)v17 recurrenceRule];
  v52 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v53 = sub_2692FC638(v9, v7, v51);
  v54 = v53;
  v55 = sub_26932D690();
  v56 = sub_26932D9B0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    *(v57 + 4) = v54;
    *v58 = v53;
    _os_log_impl(&dword_2692D8000, v55, v56, "Transformed in asTimePoint() to 24 Hour date time: %@", v57, 0xCu);
    sub_2692EB48C(v58, &qword_280308540, &unk_269330740);
    MEMORY[0x26D639280](v58, -1, -1);
    MEMORY[0x26D639280](v57, -1, -1);
    v54 = v17;
  }

  else
  {

    v55 = v17;
  }

  (*(v59 + 8))(v13, v10);
  v50 = v53;
LABEL_25:
  result.value.super.isa = v50;
  result.is_nil = v49;
  return result;
}

INDateComponentsRange __swiftcall DateTime.asDateComponentsRange()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  MEMORY[0x28223BE20](v0 - 8);
  v26 = &v22 - v1;
  v2 = sub_26932C0D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26932C0B0();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26932BFF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v27 = v2;
  if (qword_2814B2520)
  {
    v14 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v14 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v14;
  }

  sub_2692EB3E4(v14 + 16, v28);

  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_26932C310();
  sub_26932BFD0();
  v15 = *(v8 + 8);
  v15(v13, v7);
  __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_26932C310();
  v16 = v26;
  sub_26932BFE0();
  v15(v11, v7);
  v17 = *(v3 + 48);
  v18 = v27;
  if (v17(v16, 1, v27) == 1)
  {
    v19 = v24;
    sub_26932C0C0();
    if (v17(v16, 1, v18) != 1)
    {
      sub_2692EB48C(v16, &qword_280308220, &unk_26932EED0);
    }
  }

  else
  {
    v19 = v24;
    (*(v3 + 32))(v24, v16, v18);
  }

  v20 = sub_26932D2C0();
  (*(v3 + 8))(v19, v18);
  (*(v23 + 8))(v6, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v20;
}

uint64_t sub_2692FAE84(uint64_t a1, char a2)
{
  if (!sub_26932D2E0())
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_280308510);
    v10 = sub_26932D690();
    v11 = sub_26932D9B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2692D8000, v10, v11, "adjustHour(in:inferMeridiem:) Can not find time in inferred dateTime.", v12, 2u);
      MEMORY[0x26D639280](v12, -1, -1);
    }

    return 0;
  }

  v3 = sub_2692FC378(a2 & 1);
  if (v4)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v5 = sub_26932D6B0();
    __swift_project_value_buffer(v5, qword_280308510);
    v6 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2692D8000, v6, v7, "adjustHour(in:inferMeridiem:) Can not find hour in inferred dateTime.", v8, 2u);
      MEMORY[0x26D639280](v8, -1, -1);
    }

    return 0;
  }

  v14 = v3;
  sub_26932BDC0();
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v15 = sub_26932D6B0();
  __swift_project_value_buffer(v15, qword_280308510);

  v16 = sub_26932D690();
  v17 = sub_26932D9B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136315394;
    sub_26932D210();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308550, &qword_269330498);
    v20 = sub_26932D790();
    v22 = sub_2692DD5A8(v20, v21, &v23);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&dword_2692D8000, v16, v17, "adjustHour(in:inferMeridiem:), original hour = %s, fixed hour = %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D639280](v19, -1, -1);
    MEMORY[0x26D639280](v18, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t DateTime.dateComponentsIn24HourClock(shouldUseInferredMeridiem:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v98 = a2;
  v3 = sub_26932D240();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v86 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = v86 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = v86 - v12;
  v13 = sub_26932BE70();
  v99 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  v17 = MEMORY[0x28223BE20](v16);
  v92 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v86 - v19;
  v97 = v2;
  v21 = sub_26932D2E0();
  if (!v21)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v35 = sub_26932D6B0();
    __swift_project_value_buffer(v35, qword_280308510);
    v36 = sub_26932D690();
    v37 = sub_26932D9B0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2692D8000, v36, v37, "dateComponentsIn24HourClock: Can NOT get time from inferred dateTime.", v38, 2u);
      MEMORY[0x26D639280](v38, -1, -1);
    }

    goto LABEL_20;
  }

  v22 = v21;
  v23 = sub_26932D220();
  v90 = v8;
  if (v24)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v25 = sub_26932D6B0();
    __swift_project_value_buffer(v25, qword_280308510);
    v26 = sub_26932D690();
    v27 = sub_26932D9B0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v93 = v22;
      v29 = v4;
      v30 = v3;
      v31 = v15;
      v32 = v13;
      v33 = v28;
      *v28 = 0;
      _os_log_impl(&dword_2692D8000, v26, v27, "dateComponentsIn24HourClock: Inferring 0 for undefined minutes", v28, 2u);
      v34 = v33;
      v13 = v32;
      v15 = v31;
      v3 = v30;
      v4 = v29;
      MEMORY[0x26D639280](v34, -1, -1);
    }

    v93 = 0;
  }

  else
  {
    v93 = v23;
  }

  v39 = sub_26932D210();
  if (v40)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v41 = sub_26932D6B0();
    __swift_project_value_buffer(v41, qword_280308510);
    v42 = sub_26932D690();
    v43 = sub_26932D9A0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2692D8000, v42, v43, "dateComponentsIn24HourClock: Can't parse inferred dateTime, inferred dateTime has no valid hour/minute.", v44, 2u);
      MEMORY[0x26D639280](v44, -1, -1);
    }

LABEL_20:
    v45 = v98;
    v46 = *(v99 + 56);

    return v46(v45, 1, 1, v13);
  }

  v48 = v39;
  v88 = v13;
  v89 = v15;
  if (qword_280307C80 != -1)
  {
    swift_once();
  }

  v49 = sub_26932D6B0();
  v50 = __swift_project_value_buffer(v49, qword_280308510);
  swift_retain_n();
  v51 = sub_26932D690();
  v52 = sub_26932D9B0();
  v53 = os_log_type_enabled(v51, v52);
  v87 = v4;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v86[1] = v50;
    v55 = v54;
    v56 = v48;
    v57 = swift_slowAlloc();
    v101[0] = v57;
    *v55 = 134218754;
    *(v55 + 4) = v56;
    *(v55 + 12) = 2048;
    *(v55 + 14) = v93;
    *(v55 + 22) = 2080;
    sub_26932D250();
    v58 = sub_26932DA30();
    v60 = v59;
    sub_2692EB48C(v20, &qword_280308530, &qword_269330490);
    v61 = sub_2692DD5A8(v58, v60, v101);

    *(v55 + 24) = v61;
    *(v55 + 32) = 1024;
    LOBYTE(v61) = sub_26932D1E0();

    *(v55 + 34) = v61 & 1;

    _os_log_impl(&dword_2692D8000, v51, v52, "dateComponentsIn24HourClock: Hour = %ld, minute = %ld, meridiem = %s, meridiemSetByUser = %{BOOL}d", v55, 0x26u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    v62 = v57;
    v48 = v56;
    MEMORY[0x26D639280](v62, -1, -1);
    MEMORY[0x26D639280](v55, -1, -1);
  }

  else
  {
  }

  v63 = sub_26932C0B0();
  (*(*(v63 - 8) + 56))(v95, 1, 1, v63);
  v64 = sub_26932C0D0();
  (*(*(v64 - 8) + 56))(v96, 1, 1, v64);
  v65 = v89;
  sub_26932BE60();
  v66 = sub_26932D2D0();
  v67 = v98;
  if (v66)
  {
    sub_26932D1A0();
    if ((v68 & 1) == 0)
    {
      sub_26932BE00();
    }

    sub_26932D180();
    if ((v69 & 1) == 0)
    {
      sub_26932BD90();
    }

    sub_26932D190();
    if ((v70 & 1) == 0)
    {
      sub_26932BDE0();
    }
  }

  sub_26932BE10();
  if ((sub_26932D1E0() & 1) != 0 || (v94) && v48 && (v48 - 13) > 0xA && v48 != 24)
  {
    v79 = v92;
    sub_26932D250();
    v80 = v79;
    v81 = v87;
    if ((*(v87 + 48))(v80, 1, v3) != 1)
    {
      v82 = v48;
      (*(v81 + 32))(v90, v80, v3);
      v83 = v91;
      (*(v81 + 104))(v91, *MEMORY[0x277D562A0], v3);
      sub_2692FC79C(&qword_280308548, MEMORY[0x277D562A8], MEMORY[0x277D562B0]);
      sub_26932D830();
      sub_26932D830();
      v84 = *(v81 + 8);
      v84(v83, v3);
      if (v101[0] == v100 && v48 != 12)
      {
        result = v48 + 12;
        v85 = v90;
        if (__OFADD__(v82, 12))
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v85 = v90;
      }

      sub_26932BDC0();
      v84(v85, v3);
      goto LABEL_39;
    }

    sub_2692EB48C(v80, &qword_280308530, &qword_269330490);
  }

  sub_26932BDC0();
LABEL_39:
  v71 = sub_26932D690();
  v72 = sub_26932D9B0();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v101[0] = v74;
    *v73 = 136315138;
    swift_beginAccess();
    sub_2692FC79C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v75 = v88;
    v76 = sub_26932DDD0();
    v78 = sub_2692DD5A8(v76, v77, v101);

    *(v73 + 4) = v78;
    _os_log_impl(&dword_2692D8000, v71, v72, "dateComponentsIn24HourClock: Got dateComponents: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x26D639280](v74, -1, -1);
    MEMORY[0x26D639280](v73, -1, -1);
  }

  else
  {

    v75 = v88;
  }

  swift_beginAccess();
  (*(v99 + 16))(v67, v65, v75);
  (*(v99 + 56))(v67, 0, 1, v75);
  return (*(v99 + 8))(v65, v75);
}

INDateComponentsRange_optional __swiftcall DateTime.toINAlarmSearchDateTime(isTimeRange:)(Swift::Bool isTimeRange)
{
  if (isTimeRange)
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v1 = sub_26932D6B0();
    __swift_project_value_buffer(v1, qword_280308510);

    v2 = sub_26932D690();
    v3 = sub_26932D9B0();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136315138;
      if (sub_26932D2A0())
      {
        v6 = sub_26932D270();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xE000000000000000;
      }

      v17 = sub_2692DD5A8(v6, v8, &v20);

      *(v4 + 4) = v17;
      _os_log_impl(&dword_2692D8000, v2, v3, "Found time range info from SiriInference: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D639280](v5, -1, -1);
      MEMORY[0x26D639280](v4, -1, -1);
    }

    v18.value = DateTime.asDateComponentsRange()();
  }

  else
  {
    if (qword_280307C80 != -1)
    {
      swift_once();
    }

    v9 = sub_26932D6B0();
    __swift_project_value_buffer(v9, qword_280308510);

    v10 = sub_26932D690();
    v11 = sub_26932D9B0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      if (sub_26932D2E0())
      {
        v14 = sub_26932D1D0();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      v19 = sub_2692DD5A8(v14, v16, &v20);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_2692D8000, v10, v11, "Found time point info from SiriInference: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D639280](v13, -1, -1);
      MEMORY[0x26D639280](v12, -1, -1);
    }

    return DateTime.asTimePoint(shouldUseInferredMeridiem:insertToEndTime:)(0, 0);
  }

  return v18;
}

Swift::Bool __swiftcall DateTime.isValidForReformationFromTimer()()
{
  if (sub_26932D2E0())
  {
    sub_26932D210();
    v1 = v0;

    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t DateTime.Time.dateComponents()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26932C0B0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_26932C0D0();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_2692FC378(0);
  sub_26932D220();
  sub_26932D230();
  return sub_26932BE60();
}

uint64_t sub_2692FC378(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308530, &qword_269330490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = sub_26932D240();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  result = sub_26932D210();
  if ((v13 & 1) == 0)
  {
    v14 = result;
    if (((sub_26932D1E0() | a1) & 1) == 0)
    {
      return v14;
    }

    result = v14;
    if (v14)
    {
      if ((v14 - 24) <= 0xFFFFFFFFFFFFFFF4)
      {
        if (v14 == 24)
        {
          return 0;
        }

        sub_26932D250();
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_2692EB48C(v4, &qword_280308530, &qword_269330490);
          return v14;
        }

        (*(v6 + 32))(v11, v4, v5);
        (*(v6 + 104))(v9, *MEMORY[0x277D562A0], v5);
        sub_2692FC79C(&qword_280308548, MEMORY[0x277D562A8], MEMORY[0x277D562B0]);
        sub_26932D830();
        sub_26932D830();
        v15 = *(v6 + 8);
        v15(v9, v5);
        v15(v11, v5);
        if (v16[1] == v16[0])
        {
          result = v14;
          if (v14 == 12)
          {
            return result;
          }

          result = v14 + 12;
          if (!__OFADD__(v14, 12))
          {
            return result;
          }

          __break(1u);
        }

        if (v14 == 12)
        {
          return 0;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  return result;
}

id sub_2692FC638(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_26932BE70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_26932BD60();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_26932BD60();
    (*(v9 + 8))(a2, v8);
  }

  v13 = [v4 initWithStartDateComponents:v11 endDateComponents:v12 recurrenceRule:a3];

  return v13;
}

uint64_t sub_2692FC79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2692FC7E4()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308560);
  v1 = __swift_project_value_buffer(v0, qword_280308560);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t YesNoSearchWindowStrategy.__allocating_init(manifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:nlv3ActionForInput:nlv3ParseConfirmation:promptPatternExecutionProducer:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v20 = sub_26932C610();
  (*(*(v20 - 8) + 32))(v18 + v19, a1, v20);
  sub_2692DB324(a2, v18 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator);
  v21 = (v18 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v18 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer);
  *v22 = a5;
  v22[1] = a6;
  v23 = (v18 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput);
  *v23 = a7;
  v23[1] = a8;
  v24 = (v18 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation);
  *v24 = a9;
  v24[1] = a10;
  v25 = (v18 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer);
  *v25 = a11;
  v25[1] = a12;
  return v18;
}

uint64_t YesNoSearchWindowStrategy.init(manifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:nlv3ActionForInput:nlv3ParseConfirmation:promptPatternExecutionProducer:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v20 = sub_26932C610();
  (*(*(v20 - 8) + 32))(v12 + v19, a1, v20);
  sub_2692DB324(a2, v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator);
  v21 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer);
  *v22 = a5;
  v22[1] = a6;
  v23 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput);
  *v23 = a7;
  v23[1] = a8;
  v24 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation);
  *v24 = a9;
  v24[1] = a10;
  v25 = (v12 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer);
  *v25 = a11;
  v25[1] = a12;
  return v12;
}

uint64_t YesNoSearchWindowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FCB48, 0, 0);
}

uint64_t sub_2692FCB48()
{
  v3 = (*(*(v0 + 24) + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer) + **(*(v0 + 24) + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2692FCC40;

  return v3();
}

uint64_t sub_2692FCC40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2692FCD74, 0, 0);
  }
}

uint64_t sub_2692FCD74()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 24);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator), v2);
  v4 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2692FCE54;
  v6 = v0[5];
  v7 = v0[2];

  return MEMORY[0x2821BB480](v7, v6, v1 + v4, v2, v3);
}

uint64_t sub_2692FCE54()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2692FCFCC;
  }

  else
  {
    v2 = sub_2692FCF68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2692FCF68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2692FCFCC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t YesNoSearchWindowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v1 = sub_26932C6C0();
  v109 = *(v1 - 8);
  v110 = v1;
  MEMORY[0x28223BE20](v1);
  v108 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_26932C800();
  v115 = *(v101 - 8);
  v3 = MEMORY[0x28223BE20](v101);
  v107 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v111 = &v96 - v6;
  MEMORY[0x28223BE20](v5);
  v113 = &v96 - v7;
  v102 = sub_26932C740();
  v106 = *(v102 - 8);
  v8 = MEMORY[0x28223BE20](v102);
  v98 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v99 = &v96 - v11;
  MEMORY[0x28223BE20](v10);
  v100 = &v96 - v12;
  v13 = sub_26932C700();
  v103 = *(v13 - 8);
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  v105 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26932C6D0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v112 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v96 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v96 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v96 - v28;
  v30 = sub_26932D090();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932C670();
  v34 = (*(v16 + 88))(v29, v15);
  if (v34 == *MEMORY[0x277D5C128])
  {
    (*(v16 + 16))(v19, v29, v15);
    (*(v16 + 96))(v19, v15);
LABEL_5:
    (*(v31 + 32))(v33, v19, v30);
    (*(v16 + 8))(v29, v15);
    (*(v114 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ActionForInput))(v33);
    return (*(v31 + 8))(v33, v30);
  }

  if (v34 == *MEMORY[0x277D5C158])
  {
    (*(v16 + 16))(v19, v29, v15);
    (*(v16 + 96))(v19, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803085B0, &qword_2693304B8);

    goto LABEL_5;
  }

  if (v34 == *MEMORY[0x277D5C150])
  {
    v36 = v112;
    (*(v16 + 16))(v112, v29, v15);
    v97 = v16;
    v37 = *(v16 + 96);
    v114 = v15;
    v37(v36, v15);
    v39 = v108;
    v38 = v109;
    v40 = v110;
    (*(v109 + 16))(v108, v36, v110);
    v41 = sub_26932C6A0();
    v43 = v42;
    v44 = sub_26932C270();
    v45 = [v44 identifier];

    v46 = sub_26932D770();
    v48 = v47;

    if (v41 == v46 && v43 == v48)
    {

LABEL_14:
      sub_26932C3C0();
      v50 = *(v38 + 8);
      v50(v39, v40);
      v50(v112, v40);
      return (*(v97 + 8))(v29, v114);
    }

    v49 = sub_26932DF00();

    if (v49)
    {
      goto LABEL_14;
    }

    v115 = v29;
    v61 = *(v38 + 8);
    v61(v39, v40);
    v62 = sub_26932C6A0();
    v64 = v63;
    v65 = sub_26932C290();
    v66 = [v65 identifier];

    v67 = sub_26932D770();
    v69 = v68;

    if (v62 == v67 && v64 == v69)
    {

LABEL_33:
      v61(v112, v40);
LABEL_34:
      v29 = v115;
      goto LABEL_35;
    }

    v77 = sub_26932DF00();

    if (v77)
    {
      goto LABEL_33;
    }

    v86 = v112;
    v87 = sub_26932C6A0();
    v89 = v88;
    v61(v86, v40);
    v90 = sub_26932C280();
    v91 = [v90 identifier];

    v92 = sub_26932D770();
    v94 = v93;

    if (v87 == v92 && v89 == v94)
    {

      goto LABEL_34;
    }

    v95 = sub_26932DF00();

    v29 = v115;
    if (v95)
    {
      goto LABEL_35;
    }

LABEL_48:
    sub_26932C3E0();
    return (*(v97 + 8))(v29, v114);
  }

  if (v34 == *MEMORY[0x277D5C130])
  {
    (*(v16 + 16))(v24, v29, v15);
    (*(v16 + 96))(v24, v15);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_26932C3C0();
      swift_unknownObjectRelease();
      return (*(v16 + 8))(v29, v15);
    }

    v114 = v15;
    v97 = v16;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
LABEL_35:
      (*(v97 + 8))(v29, v114);
      return sub_26932C3D0();
    }

    objc_opt_self();
    v78 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    if (v78)
    {
      goto LABEL_35;
    }

    goto LABEL_48;
  }

  v114 = v15;
  v97 = v16;
  if (v34 != *MEMORY[0x277D5C160])
  {
    goto LABEL_48;
  }

  v51 = v97;
  v52 = v114;
  (*(v97 + 16))(v27, v29, v114);
  (*(v51 + 96))(v27, v52);
  (*(v103 + 32))(v105, v27, v104);
  v53 = v100;
  sub_26932C6F0();
  v54 = sub_26932C730();
  v112 = *(v106 + 8);
  v106 += 8;
  result = (v112)(v53, v102);
  v55 = 0;
  v56 = *(v54 + 16);
  v57 = v101;
  while (1)
  {
    if (v56 == v55)
    {

      v70 = v99;
      sub_26932C6F0();
      v71 = sub_26932C730();
      result = (v112)(v70, v102);
      v72 = 0;
      v73 = *(v71 + 16);
      while (v73 != v72)
      {
        if (v72 >= *(v71 + 16))
        {
          goto LABEL_51;
        }

        v74 = v115;
        v75 = v111;
        (*(v115 + 2))(v111, v71 + ((v74[80] + 32) & ~v74[80]) + *(v115 + 9) * v72++, v57);
        v76 = sub_26932C7A0();
        result = (*(v74 + 1))(v75, v57);
        if (v76)
        {
          goto LABEL_30;
        }
      }

      v79 = v98;
      sub_26932C6F0();
      v80 = sub_26932C730();
      result = (v112)(v79, v102);
      v81 = 0;
      v82 = *(v80 + 16);
      v83 = v115;
      while (v82 != v81)
      {
        if (v81 >= *(v80 + 16))
        {
          goto LABEL_52;
        }

        v84 = v107;
        (*(v83 + 2))(v107, v80 + ((v83[80] + 32) & ~v83[80]) + *(v83 + 9) * v81++, v57);
        v85 = sub_26932C7B0();
        result = (*(v83 + 1))(v84, v57);
        if (v85)
        {

          sub_26932C3C0();
          goto LABEL_31;
        }
      }

      sub_26932C3E0();
      goto LABEL_31;
    }

    if (v55 >= *(v54 + 16))
    {
      break;
    }

    v58 = v115;
    v59 = v113;
    (*(v115 + 2))(v113, v54 + ((v58[80] + 32) & ~v58[80]) + *(v115 + 9) * v55++, v57);
    v60 = sub_26932C790();
    result = (*(v58 + 1))(v59, v57);
    if (v60)
    {
LABEL_30:

      sub_26932C3D0();
LABEL_31:
      (*(v103 + 8))(v105, v104);
      return (*(v97 + 8))(v29, v114);
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t YesNoSearchWindowStrategy.parseConfirmationResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26932C6C0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803085B8, &qword_2693304C8);
  v3[9] = swift_task_alloc();
  v5 = sub_26932C800();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_26932C740();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = sub_26932C700();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = sub_26932C6D0();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v9 = sub_26932D090();
  v3[28] = v9;
  v3[29] = *(v9 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692FE028, 0, 0);
}

uint64_t sub_2692FE028(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[21];
  v4 = v1[22];
  sub_26932C670();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x277D5C128])
  {
    v7 = v1[22];
    v6 = v1[23];
    v8 = v1[21];
    (*(v7 + 16))(v6, v1[27], v8);
    (*(v7 + 96))(v6, v8);
LABEL_5:
    v12 = v1[27];
    v13 = v1[22];
    v14 = v1[21];
    v15 = v1[4];
    (*(v1[29] + 32))(v1[30], v1[23], v1[28]);
    (*(v13 + 8))(v12, v14);
    v131 = (*(v15 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation) + **(v15 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_nlv3ParseConfirmation));
    v16 = swift_task_alloc();
    v1[31] = v16;
    *v16 = v1;
    v16[1] = sub_2692FEDF8;
    v17 = v1[30];
    v18 = v1[2];

    return v131(v18, v17);
  }

  if (v5 == *MEMORY[0x277D5C158])
  {
    v10 = v1[22];
    v9 = v1[23];
    v11 = v1[21];
    (*(v10 + 16))(v9, v1[27], v11);
    (*(v10 + 96))(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803085B0, &qword_2693304B8);

    goto LABEL_5;
  }

  if (v5 != *MEMORY[0x277D5C150])
  {
    if (v5 == *MEMORY[0x277D5C130])
    {
      v34 = v1[25];
      v35 = v1[21];
      v36 = v1[22];
      (*(v36 + 16))(v34, v1[27], v35);
      (*(v36 + 96))(v34, v35);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v37 = v1[27];
        v38 = v1[21];
        v39 = v1[22];
        v40 = v1[9];
        v41 = MEMORY[0x277D5BED8];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
          goto LABEL_46;
        }

        v37 = v1[27];
        v38 = v1[21];
        v39 = v1[22];
        v40 = v1[9];
        v41 = MEMORY[0x277D5BED0];
      }

      v86 = *v41;
      v87 = sub_26932C540();
      v88 = *(v87 - 8);
      (*(v88 + 104))(v40, v86, v87);
      (*(v88 + 56))(v40, 0, 1, v87);
      sub_26932C660();
      swift_unknownObjectRelease();
    }

    else
    {
      if (v5 != *MEMORY[0x277D5C160])
      {
        goto LABEL_46;
      }

      v52 = v1[26];
      v53 = v1[21];
      v54 = v1[22];
      v56 = v1[19];
      v55 = v1[20];
      v58 = v1[17];
      v57 = v1[18];
      v59 = v1[15];
      v133 = v1[14];
      v60 = v1[11];
      (*(v54 + 16))(v52, v1[27], v53);
      (*(v54 + 96))(v52, v53);
      (*(v56 + 32))(v55, v52, v57);
      sub_26932C6F0();
      v61 = sub_26932C730();
      v129 = *(v59 + 8);
      v129(v58, v133);
      v62 = 0;
      v63 = *(v61 + 16);
      while (v63 != v62)
      {
        if (v62 >= *(v61 + 16))
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v64 = v1[13];
        v65 = v1[10];
        (*(v60 + 16))(v64, v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v62++, v65);
        v66 = sub_26932C790();
        (*(v60 + 8))(v64, v65);
        if (v66)
        {
          v67 = v1[22];
          v130 = v1[21];
          v134 = v1[27];
          v68 = v1[19];
          v69 = v1[20];
          v70 = v1[18];
          v71 = v1[9];

          v72 = MEMORY[0x277D5BED8];
LABEL_36:
          v97 = *v72;
          v98 = sub_26932C540();
          v99 = *(v98 - 8);
          (*(v99 + 104))(v71, v97, v98);
          (*(v99 + 56))(v71, 0, 1, v98);
          sub_26932C660();
          (*(v68 + 8))(v69, v70);
          (*(v67 + 8))(v134, v130);
          goto LABEL_50;
        }
      }

      v89 = v1[16];
      v90 = v1[14];

      sub_26932C6F0();
      v91 = sub_26932C730();
      v129(v89, v90);
      v92 = 0;
      v93 = *(v91 + 16);
      while (v93 != v92)
      {
        if (v92 >= *(v91 + 16))
        {
          goto LABEL_54;
        }

        v94 = v1[12];
        v95 = v1[10];
        (*(v60 + 16))(v94, v91 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v92++, v95);
        v96 = sub_26932C7A0();
        (*(v60 + 8))(v94, v95);
        if (v96)
        {
          v67 = v1[22];
          v130 = v1[21];
          v134 = v1[27];
          v68 = v1[19];
          v69 = v1[20];
          v70 = v1[18];
          v71 = v1[9];

          v72 = MEMORY[0x277D5BED0];
          goto LABEL_36;
        }
      }

      if (qword_280307C88 != -1)
      {
        swift_once();
      }

      v107 = sub_26932D6B0();
      __swift_project_value_buffer(v107, qword_280308560);
      v108 = sub_26932D690();
      v109 = sub_26932D990();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_2692D8000, v108, v109, "Unable to parse a confirmation response from the given USO parse", v110, 2u);
        MEMORY[0x26D639280](v110, -1, -1);
      }

      v37 = v1[27];
      v38 = v1[21];
      v39 = v1[22];
      v112 = v1[19];
      v111 = v1[20];
      v113 = v1[18];
      v114 = v1[9];

      v115 = sub_26932C540();
      (*(*(v115 - 8) + 56))(v114, 1, 1, v115);
      sub_26932C660();
      (*(v112 + 8))(v111, v113);
    }

    (*(v39 + 8))(v37, v38);
    goto LABEL_50;
  }

  v20 = v1[24];
  v21 = v1[21];
  v22 = v1[22];
  v23 = v1[8];
  v24 = v1[5];
  v25 = v1[6];
  (*(v22 + 16))(v20, v1[27], v21);
  (*(v22 + 96))(v20, v21);
  (*(v25 + 16))(v23, v20, v24);
  v26 = sub_26932C6A0();
  v28 = v27;
  v29 = sub_26932C290();
  v30 = [v29 identifier];

  v31 = sub_26932D770();
  v33 = v32;

  if (v26 != v31 || v28 != v33)
  {
    v42 = sub_26932DF00();

    if (v42)
    {
      goto LABEL_16;
    }

    v73 = v1[24];
    v74 = v1[7];
    v75 = v1[5];
    v76 = v1[6];
    v77 = *(v76 + 8);
    v77(v1[8], v75);
    (*(v76 + 32))(v74, v73, v75);
    v78 = sub_26932C6A0();
    v80 = v79;
    v81 = sub_26932C280();
    v82 = [v81 identifier];

    v83 = sub_26932D770();
    v85 = v84;

    if (v78 == v83 && v80 == v85)
    {

LABEL_38:
      v43 = v1[22];
      v128 = v1[21];
      v132 = v1[27];
      v101 = v1[9];
      v127 = v1[7];
      v102 = v1[5];
      v103 = v77;
      v104 = *MEMORY[0x277D5BED0];
      v105 = sub_26932C540();
      v106 = *(v105 - 8);
      (*(v106 + 104))(v101, v104, v105);
      (*(v106 + 56))(v101, 0, 1, v105);
      sub_26932C660();
      v103(v127, v102);
      goto LABEL_17;
    }

    v100 = sub_26932DF00();

    if (v100)
    {
      goto LABEL_38;
    }

    v77(v1[7], v1[5]);
LABEL_46:
    if (qword_280307C88 != -1)
    {
LABEL_55:
      swift_once();
    }

    v116 = sub_26932D6B0();
    __swift_project_value_buffer(v116, qword_280308560);
    v117 = sub_26932D690();
    v118 = sub_26932D990();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_2692D8000, v117, v118, "Unable to parse a confirmation response from the given parse", v119, 2u);
      MEMORY[0x26D639280](v119, -1, -1);
    }

    v120 = v1[27];
    v121 = v1[21];
    v122 = v1[22];
    v123 = v1[9];

    v124 = sub_26932C540();
    (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
    sub_26932C660();
    (*(v122 + 8))(v120, v121);
    goto LABEL_50;
  }

LABEL_16:
  v126 = v1[24];
  v43 = v1[22];
  v128 = v1[21];
  v132 = v1[27];
  v45 = v1[8];
  v44 = v1[9];
  v47 = v1[5];
  v46 = v1[6];
  v48 = *MEMORY[0x277D5BED8];
  v49 = sub_26932C540();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v44, v48, v49);
  (*(v50 + 56))(v44, 0, 1, v49);
  sub_26932C660();
  v51 = *(v46 + 8);
  v51(v45, v47);
  v51(v126, v47);
LABEL_17:
  (*(v43 + 8))(v132, v128);
LABEL_50:

  v125 = v1[1];

  return v125();
}

uint64_t sub_2692FEDF8()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  *(*v1 + 256) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2692FF07C;
  }

  else
  {
    v5 = sub_2692FEF68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2692FEF68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2692FF07C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t YesNoSearchWindowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF1B0, 0, 0);
}

uint64_t sub_2692FF1B0()
{
  v4 = (*(v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer) + **(v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_rejectionOutputProducer));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_269300264;
  v2 = v0[2];

  return v4(v2);
}

uint64_t YesNoSearchWindowStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF2D0, 0, 0);
}

uint64_t sub_2692FF2D0()
{
  v4 = (*(v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer) + **(v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_269300264;
  v2 = v0[2];

  return v4(v2);
}

uint64_t YesNoSearchWindowStrategy.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v2 = sub_26932C610();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator));

  return v0;
}

uint64_t YesNoSearchWindowStrategy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v2 = sub_26932C610();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator));

  return swift_deallocClassInstance();
}

uint64_t sub_2692FF5B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF5D4, 0, 0);
}

uint64_t sub_2692FF5D4()
{
  v3 = (*(*(v0 + 24) + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer) + **(*(v0 + 24) + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_promptPatternExecutionProducer));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2692FF6CC;

  return v3();
}

uint64_t sub_2692FF6CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2692FF800, 0, 0);
  }
}

uint64_t sub_2692FF800()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 24);
  v3 = *(v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_responseGenerator), v2);
  v4 = OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_manifest;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2692FF8E0;
  v6 = v0[5];
  v7 = v0[2];

  return MEMORY[0x2821BB480](v7, v6, v1 + v4, v2, v3);
}

uint64_t sub_2692FF8E0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26930026C;
  }

  else
  {
    v2 = sub_269300270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2692FF9F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269300268;

  return YesNoSearchWindowStrategy.parseConfirmationResponse(input:)(a1, a2);
}

uint64_t sub_2692FFAA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_269300220(&qword_2803085D8, &protocol conformance descriptor for YesNoSearchWindowStrategy);
  *v5 = v2;
  v5[1] = sub_2692DDD10;

  return MEMORY[0x2821B9C20](a1, v4, v6);
}

uint64_t sub_2692FFB94(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_269300220(&qword_2803085D8, &protocol conformance descriptor for YesNoSearchWindowStrategy);
  *v5 = v2;
  v5[1] = sub_269300268;

  return MEMORY[0x2821B9C28](a1, v4, v6);
}

uint64_t sub_2692FFC88(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_269300220(&qword_2803085D8, &protocol conformance descriptor for YesNoSearchWindowStrategy);
  *v5 = v2;
  v5[1] = sub_269300268;

  return MEMORY[0x2821B9C30](a1, v4, v6);
}

uint64_t sub_2692FFD7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FF1B0, 0, 0);
}

uint64_t sub_2692FFD9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2692FFDBC, 0, 0);
}

uint64_t sub_2692FFDBC()
{
  v4 = (*(v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer) + **(v0[3] + OBJC_IVAR____TtC16SiriTimeInternal25YesNoSearchWindowStrategy_cancellationOutputProducer));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2692FFEBC;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_2692FFEBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2692FFFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_269300268;

  return MEMORY[0x2821BA038](a1, a2, v9, a4);
}

uint64_t type metadata accessor for YesNoSearchWindowStrategy(uint64_t a1)
{
  result = qword_2803085C8;
  if (!qword_2803085C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26930012C(uint64_t a1)
{
  result = sub_26932C610();
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

uint64_t sub_269300220(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for YesNoSearchWindowStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269300274()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803085E0);
  v1 = __swift_project_value_buffer(v0, qword_2803085E0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static ResponseDisambigUtils.windowingResponse(for:)(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_280307C90 != -1)
    {
      swift_once();
    }

    v1 = sub_26932D6B0();
    __swift_project_value_buffer(v1, qword_2803085E0);
    v2 = sub_26932D690();
    v3 = sub_26932D9B0();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "ResponseDisambigUtils.windowingResponse(userDialogAct:) User accepted the task, will reprompt.";
LABEL_6:
    _os_log_impl(&dword_2692D8000, v2, v3, v5, v4, 2u);
    MEMORY[0x26D639280](v4, -1, -1);
LABEL_7:

    return sub_26932C630();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (qword_280307C90 != -1)
    {
      swift_once();
    }

    v7 = sub_26932D6B0();
    __swift_project_value_buffer(v7, qword_2803085E0);
    v8 = sub_26932D690();
    v9 = sub_26932D9B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2692D8000, v8, v9, "ResponseDisambigUtils.windowingResponse(userDialogAct:) User rejected the task, will go to next page.", v10, 2u);
      MEMORY[0x26D639280](v10, -1, -1);
    }

    return sub_26932C620();
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v15 = sub_26932D6B0();
      __swift_project_value_buffer(v15, qword_2803085E0);
      v2 = sub_26932D690();
      v3 = sub_26932D9B0();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_7;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "ResponseDisambigUtils.windowingResponse(userDialogAct:) User made no confirmation choice – continue the task.";
      goto LABEL_6;
    }

    if (qword_280307C90 != -1)
    {
      swift_once();
    }

    v11 = sub_26932D6B0();
    __swift_project_value_buffer(v11, qword_2803085E0);
    v12 = sub_26932D690();
    v13 = sub_26932D9B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2692D8000, v12, v13, "ResponseDisambigUtils.windowingResponse(userDialogAct:) User cancelled the task.", v14, 2u);
      MEMORY[0x26D639280](v14, -1, -1);
    }

    return sub_26932C640();
  }
}

uint64_t static ResponseDisambigUtils.windowingResponse(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a2;
  v3 = sub_26932C800();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v35[0] = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  while (v13 != v12)
  {
    (*(v4 + 16))(v11, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12++, v3);
    v14 = sub_26932C790();
    (*(v4 + 8))(v11, v3);
    if (v14)
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v15 = sub_26932D6B0();
      __swift_project_value_buffer(v15, qword_2803085E0);
      v16 = sub_26932D690();
      v17 = sub_26932D9B0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "ResponseDisambigUtils.windowingResponse(usoParse:) User accepted the task, will reprompt.";
LABEL_28:
        _os_log_impl(&dword_2692D8000, v16, v17, v19, v18, 2u);
        MEMORY[0x26D639280](v18, -1, -1);
      }

      goto LABEL_29;
    }
  }

  v20 = 0;
  while (v13 != v20)
  {
    (*(v4 + 16))(v9, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20++, v3);
    v21 = sub_26932C7A0();
    (*(v4 + 8))(v9, v3);
    if (v21)
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v22 = sub_26932D6B0();
      __swift_project_value_buffer(v22, qword_2803085E0);
      v23 = sub_26932D690();
      v24 = sub_26932D9B0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2692D8000, v23, v24, "ResponseDisambigUtils.windowingResponse(usoParse:) User rejected the task, will go to next page.", v25, 2u);
        MEMORY[0x26D639280](v25, -1, -1);
      }

      return sub_26932C620();
    }
  }

  v27 = 0;
  v28 = v35[0];
  while (v13 != v27)
  {
    (*(v4 + 16))(v28, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27++, v3);
    v29 = sub_26932C7B0();
    (*(v4 + 8))(v28, v3);
    if (v29)
    {
      if (qword_280307C90 != -1)
      {
        swift_once();
      }

      v30 = sub_26932D6B0();
      __swift_project_value_buffer(v30, qword_2803085E0);
      v31 = sub_26932D690();
      v32 = sub_26932D9B0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2692D8000, v31, v32, "ResponseDisambigUtils.windowingResponse(usoParse:) User cancelled/rejected the task, will cancel the request.", v33, 2u);
        MEMORY[0x26D639280](v33, -1, -1);
      }

      return sub_26932C640();
    }
  }

  if (qword_280307C90 != -1)
  {
    swift_once();
  }

  v34 = sub_26932D6B0();
  __swift_project_value_buffer(v34, qword_2803085E0);
  v16 = sub_26932D690();
  v17 = sub_26932D9B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "ResponseDisambigUtils.windowingResponse(usoParse:) User made no confirmation choice – continue the task.";
    goto LABEL_28;
  }

LABEL_29:

  return sub_26932C630();
}

uint64_t static ResponseDisambigUtils.parseWindowActionFromInput<A>(input:windowInputType:items:choiceSelector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_26932C650();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v9 = sub_26932C680();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269300D04, 0, 0);
}

uint64_t sub_269300D04()
{
  v49 = v0;
  if (qword_280307C90 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[6];
  v5 = sub_26932D6B0();
  v0[19] = __swift_project_value_buffer(v5, qword_2803085E0);
  (*(v1 + 16))(v2, v4, v3);
  v6 = sub_26932D690();
  v7 = sub_26932D9B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v12 = 136315138;
    sub_269301AF4(&qword_280308600, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v13 = sub_26932DDD0();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_2692DD5A8(v13, v15, &v48);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2692D8000, v6, v7, "ResponseDisambigUtils.parseWindowActionFromInput(input:items:): %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26D639280](v46, -1, -1);
    MEMORY[0x26D639280](v12, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[13];
  (*(v19 + 16))(v0[15], v0[7], v18);
  sub_26932C630();
  sub_269301AF4(&qword_2803085F8, MEMORY[0x277D5C0C0], MEMORY[0x277D5C0C8]);
  v20 = sub_26932D750();
  v21 = *(v19 + 8);
  v21(v17, v18);
  if ((v20 & 1) == 0)
  {
    v26 = v0[14];
    v27 = v0[12];
    sub_26932C620();
    v28 = sub_26932D750();
    v21(v26, v27);
    v29 = v0[15];
    if (v28)
    {
      v21(v0[15], v0[12]);
      v30 = sub_26932D690();
      v31 = sub_26932D9B0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2692D8000, v30, v31, "ResponseDisambigUtils.parseWindowActionFromInput: determineInputType(input:) returned .proceedWithNextWindow", v32, 2u);
        MEMORY[0x26D639280](v32, -1, -1);
      }

      sub_26932D8C0();
      sub_26932C4B0();
    }

    else
    {
      v37 = v0[14];
      v38 = v0[12];
      sub_26932C640();
      v39 = sub_26932D750();
      v21(v37, v38);
      v21(v29, v38);
      v40 = sub_26932D690();
      v41 = sub_26932D9B0();
      v42 = os_log_type_enabled(v40, v41);
      if (v39)
      {
        if (v42)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2692D8000, v40, v41, "ResponseDisambigUtils.parseWindowActionFromInput: determineInputType(input:) returned .cancel", v43, 2u);
          MEMORY[0x26D639280](v43, -1, -1);
        }

        sub_26932D8C0();
        sub_26932C4D0();
      }

      else
      {
        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_2692D8000, v40, v41, "ResponseDisambigUtils.parseWindowActionFromInput: determineInputType(input:) returned unknown or .unsupported – .repeatWindow", v44, 2u);
          MEMORY[0x26D639280](v44, -1, -1);
        }

        sub_26932D8C0();
        sub_26932C4A0();
      }
    }

    goto LABEL_25;
  }

  v21(v0[15], v0[12]);
  if (sub_26932D8B0() == 1)
  {
    v22 = sub_26932D690();
    v23 = sub_26932D9B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2692D8000, v22, v23, "ResponseDisambigUtils.parseWindowActionFromInput: Only single item and user indicated positive response – .complete", v24, 2u);
      MEMORY[0x26D639280](v24, -1, -1);
    }

    v25 = v0[8];

    v0[4] = v25;
    sub_26932D8C0();
    sub_26932C4C0();
LABEL_25:

    v45 = v0[1];

    return v45();
  }

  v47 = (v0[9] + *v0[9]);
  v33 = swift_task_alloc();
  v0[20] = v33;
  *v33 = v0;
  v33[1] = sub_2693013F0;
  v34 = v0[8];
  v35 = v0[6];

  return v47(v35, v34);
}

uint64_t sub_2693013F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_2693017F0;
  }

  else
  {
    v4 = sub_269301504;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269301504(uint64_t a1)
{
  v2 = v1[21];
  if (!v2)
  {
    goto LABEL_4;
  }

  v1[2] = v2;
  sub_26932D8C0();
  swift_getWitnessTable();
  if (sub_26932D960())
  {

LABEL_4:
    v3 = sub_26932D690();
    v4 = sub_26932D9B0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2692D8000, v3, v4, "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned empty results – .repeatWindow", v5, 2u);
      MEMORY[0x26D639280](v5, -1, -1);
    }

    sub_26932D8C0();
    goto LABEL_18;
  }

  v6 = sub_26932D8B0();
  if (v6 != 1)
  {
    if (v6)
    {

      v7 = sub_26932D690();
      v8 = sub_26932D9B0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned multiple results – .repeatWindow";
        goto LABEL_16;
      }
    }

    else
    {

      v7 = sub_26932D690();
      v8 = sub_26932D9A0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned empty result. This shouldn't be a possible codepath to execute.";
LABEL_16:
        _os_log_impl(&dword_2692D8000, v7, v8, v10, v9, 2u);
        MEMORY[0x26D639280](v9, -1, -1);
      }
    }

LABEL_18:
    sub_26932C4A0();
    goto LABEL_19;
  }

  v11 = sub_26932D690();
  v12 = sub_26932D9B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2692D8000, v11, v12, "ResponseDisambigUtils.parseWindowActionFromInput: TimerSearch returned single result – .complete", v13, 2u);
    MEMORY[0x26D639280](v13, -1, -1);
  }

  v14 = v1[21];

  v1[3] = v14;
  sub_26932C4C0();

LABEL_19:

  v15 = v1[1];

  return v15();
}

uint64_t sub_2693017F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ResponseDisambigUtils.calculateWindow<A>(windowItems:allItems:windowSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26932DA40();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
    return 0;
  }

  v21 = v15;
  v22 = a5;
  v20 = a3;
  v24 = a2;
  sub_26932D8C0();
  swift_getWitnessTable();
  if (sub_26932D960())
  {
    return 0;
  }

  v24 = a1;
  sub_26932D950();
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v21 + 8))(v13, v10);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v13, a4);
    v23 = a2;
    sub_26932D970();
    if (v25 == 1)
    {
      (*(v14 + 8))(v17, a4);
      return 0;
    }

    else
    {
      v19 = v24;
      (*(v14 + 8))(v17, a4);
      return v19 / v20;
    }
  }
}

uint64_t sub_269301AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269301B4C(void *a1, unint64_t a2, uint64_t (*a3)(id *))
{
  v6 = DeviceUnit.isRemote.getter();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v21 = a1;
  MEMORY[0x28223BE20](v6);
  v20[2] = &v21;
  if (sub_2692E088C(a3, v20, a2))
  {
    return 0;
  }

  if (qword_280307C28 != -1)
  {
    swift_once();
  }

  v8 = sub_26932D6B0();
  __swift_project_value_buffer(v8, qword_280308160);
  v9 = a1;
  v10 = sub_26932D690();
  v11 = sub_26932D9B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    v14 = sub_26932D550();
    v16 = sub_2692DD5A8(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_26932D560();
    v19 = sub_2692DD5A8(v17, v18, &v21);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_2692D8000, v10, v11, "Remote device %s doesn't support intent handling. Will send ace command to remote assistant %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v13, -1, -1);
    MEMORY[0x26D639280](v12, -1, -1);
  }

  return sub_26932D560();
}

uint64_t sub_269301D50()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B23C0);
  v1 = __swift_project_value_buffer(v0, qword_2814B23C0);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTimeDeviceContextProvider.fetchAlarmContexts()()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v2 = sub_26932BFA0();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269301F30, 0, 0);
}

uint64_t sub_269301F30()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308608, &qword_269330660);
  *v3 = v0;
  v3[1] = sub_269302038;

  return MEMORY[0x2822007B8](v0 + 12, 0, 0, 0xD000000000000014, 0x8000000269336640, sub_269302F00, v2, v4);
}

uint64_t sub_269302038()
{

  return MEMORY[0x2822009F8](sub_269302150, 0, 0);
}

uint64_t sub_269302150()
{
  v1 = v0[12];
  v0[24] = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[25] = v2; v2; v0[25] = v2)
  {
    v3 = 0;
    v4 = v0[20];
    v49 = v1 & 0xFFFFFFFFFFFFFF8;
    v50 = v1 & 0xC000000000000001;
    v46 = (v4 + 56);
    v5 = (v4 + 48);
    v6 = MEMORY[0x277D84F90];
    v44 = v4;
    v45 = (v4 + 32);
    v47 = v2;
    v48 = v1;
    while (v50)
    {
      v7 = MEMORY[0x26D638850](v3);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v9 = v7;
      v10 = [v9 identifier];
      if (v10)
      {
        v11 = v10;
        sub_26932BF80();

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v14 = v0[18];
      v13 = v0[19];
      v16 = v0[16];
      v15 = v0[17];
      (*v46)(v16, v12, 1, v13);
      sub_269302F40(v16, v15);
      sub_269302F40(v15, v14);

      if ((*v5)(v14, 1, v13) == 1)
      {
        sub_2692EB48C(v0[18], &qword_280308110, &qword_26932EBD0);
      }

      else
      {
        v17 = *v45;
        (*v45)(v0[21], v0[18], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2692E30A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_2692E30A8((v18 > 1), v19 + 1, 1, v6);
        }

        v20 = v0[21];
        v21 = v0[19];
        *(v6 + 2) = v19 + 1;
        v17(&v6[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v19], v20, v21);
      }

      v1 = v48;
      ++v3;
      if (v8 == v47)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *(v49 + 16))
    {
      goto LABEL_21;
    }

    v7 = *(v1 + 8 * v3 + 32);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = v1;
    v2 = sub_26932DAE0();
    v1 = v22;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  v0[26] = v6;
  v23 = sub_26932D5C0();
  v0[27] = v23;
  v24 = sub_26932D5A0();
  v25 = MEMORY[0x277D61F10];
  v0[5] = v23;
  v0[6] = v25;
  v0[2] = v24;
  if (*(v6 + 2))
  {
    v26 = swift_task_alloc();
    v0[28] = v26;
    *(v26 + 16) = v0 + 2;
    *(v26 + 24) = v6;
    v27 = swift_task_alloc();
    v0[29] = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308610, &qword_269330668);
    *v27 = v0;
    v27[1] = sub_269302720;
    v29 = sub_269306A60;
    v30 = v0 + 13;
    v31 = 0x8000000269336660;
    v32 = 0xD000000000000017;
LABEL_28:

    return MEMORY[0x2822007B8](v30, 0, 0, v32, v31, v29, v26, v28);
  }

  v33 = sub_2692ED6A8(MEMORY[0x277D84F90]);
  v0[30] = v33;
  sub_269306A68((v0 + 2));
  if (*(v33 + 16))
  {
    v34 = v0[27];
    v35 = sub_26932D5A0();
    v0[10] = v34;
    v0[11] = v25;
    v0[7] = v35;
    v26 = swift_task_alloc();
    v0[31] = v26;
    *(v26 + 16) = v0 + 7;
    v36 = swift_task_alloc();
    v0[32] = v36;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v36 = v0;
    v36[1] = sub_269302AA4;
    v29 = sub_269306ABC;
    v30 = v0 + 14;
    v32 = 0xD00000000000001ELL;
    v31 = 0x8000000269336680;
    goto LABEL_28;
  }

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v37 = sub_26932D6B0();
  __swift_project_value_buffer(v37, qword_2814B23C0);
  v38 = sub_26932D690();
  v39 = sub_26932D9A0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2692D8000, v38, v39, "Failed to fetch device units for alarm contexts", v40, 2u);
    MEMORY[0x26D639280](v40, -1, -1);
  }

  v41 = v0[1];
  v42 = MEMORY[0x277D84F90];

  return v41(v42);
}

uint64_t sub_269302720()
{

  return MEMORY[0x2822009F8](sub_269302838, 0, 0);
}

uint64_t sub_269302838()
{
  v1 = v0[13];
  v0[30] = v1;
  sub_269306A68((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = sub_26932D5A0();
    v4 = MEMORY[0x277D61F10];
    v0[10] = v2;
    v0[11] = v4;
    v0[7] = v3;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *(v5 + 16) = v0 + 7;
    v6 = swift_task_alloc();
    v0[32] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v6 = v0;
    v6[1] = sub_269302AA4;

    return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD00000000000001ELL, 0x8000000269336680, sub_269306ABC, v5, v7);
  }

  else
  {

    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B23C0);
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2692D8000, v9, v10, "Failed to fetch device units for alarm contexts", v11, 2u);
      MEMORY[0x26D639280](v11, -1, -1);
    }

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_269302AA4()
{

  return MEMORY[0x2822009F8](sub_269302BBC, 0, 0);
}

uint64_t sub_269302BBC()
{
  v34 = v0;
  v1 = v0[25];
  v29 = v0[14];
  sub_269306A68((v0 + 7));
  if (v1)
  {
    v2 = 0;
    v3 = v0[24];
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = v3 & 0xC000000000000001;
    v26 = v3 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28)
      {
        v5 = MEMORY[0x26D638850](v2, v0[24]);
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v26 + 8 * v2);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = v0[30];
      v30 = v5;
      sub_269302FB0(&v30, v8, v29, &v31);

      v9 = v31;
      v11 = v32;
      v10 = v33;
      if (v31)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2692E308C(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        v14 = v4;
        if (v13 >= v12 >> 1)
        {
          v14 = sub_2692E308C((v12 > 1), v13 + 1, 1, v4);
        }

        *(v14 + 2) = v13 + 1;
        v4 = v14;
        v15 = &v14[32 * v13];
        *(v15 + 2) = v9;
        *(v15 + 6) = v11;
        *(v15 + 7) = v10;
      }

      else
      {
        sub_269308434(0, *(&v31 + 1), v32, v33);
      }

      ++v2;
      if (v7 == v0[25])
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_17:

  if (qword_2814B23B8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v16 = sub_26932D6B0();
  __swift_project_value_buffer(v16, qword_2814B23C0);

  v17 = sub_26932D690();
  v18 = sub_26932D9B0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v31 = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x26D638530](v4, &type metadata for HALAlarmDeviceContext);
    v23 = sub_2692DD5A8(v21, v22, &v31);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2692D8000, v17, v18, "fetchAlarmContexts() got firing alarms context: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D639280](v20, -1, -1);
    MEMORY[0x26D639280](v19, -1, -1);
  }

  v24 = v0[1];

  return v24(v4);
}

uint64_t sub_269302F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269302FB0(void **a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v116 = a3;
  v7 = sub_26932BFA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v118 = &v110[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v110[-v11];
  v13 = *a1;
  v14 = [v13 identifier];
  if (!v14)
  {
    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v80 = sub_26932D6B0();
    __swift_project_value_buffer(v80, qword_2814B23C0);
    v81 = v13;
    v82 = sub_26932D690();
    v83 = sub_26932D9A0();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = a4;
      v86 = swift_slowAlloc();
      v119[0] = v86;
      *v84 = 136315138;
      v87 = v81;
      v88 = [v87 description];
      v89 = sub_26932D770();
      v91 = v90;

      v92 = sub_2692DD5A8(v89, v91, v119);

      *(v84 + 4) = v92;
      _os_log_impl(&dword_2692D8000, v82, v83, "Device had invalid UUID for fetched alarms: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      v93 = v86;
      a4 = v85;
      MEMORY[0x26D639280](v93, -1, -1);
      MEMORY[0x26D639280](v84, -1, -1);
    }

    goto LABEL_24;
  }

  v117 = a2;
  v15 = v14;
  sub_26932BF80();

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v16 = sub_26932D6B0();
  __swift_project_value_buffer(v16, qword_2814B23C0);
  v17 = v13;
  v18 = sub_26932D690();
  v19 = sub_26932D9B0();

  v20 = os_log_type_enabled(v18, v19);
  v115 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v112 = v21;
    v113 = swift_slowAlloc();
    v119[0] = v113;
    *v21 = 136315138;
    v22 = v17;
    v114 = v8;
    v23 = v22;
    v24 = [v22 description];
    v111 = v19;
    v25 = v12;
    v26 = a4;
    v27 = v7;
    v28 = v24;
    v29 = sub_26932D770();
    v31 = v30;

    v8 = v114;
    v7 = v27;
    a4 = v26;
    v12 = v25;
    v32 = sub_2692DD5A8(v29, v31, v119);

    v33 = v112;
    *(v112 + 1) = v32;
    _os_log_impl(&dword_2692D8000, v18, v111, "Searching alarm from device context %s", v33, 0xCu);
    v34 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x26D639280](v34, -1, -1);
    MEMORY[0x26D639280](v33, -1, -1);
  }

  v35 = v117;
  if (!v117[2] || (v36 = sub_2693241C0(v12), (v37 & 1) == 0))
  {
    v67 = v118;
    (*(v8 + 2))(v118, v12, v7);
    v68 = sub_26932D690();
    v69 = sub_26932D9A0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v117 = a4;
      v72 = v71;
      v119[0] = v71;
      *v70 = 136315138;
      sub_269308954(&qword_280308630, MEMORY[0x277CC9628]);
      v73 = sub_26932DDD0();
      v74 = v67;
      v76 = v75;
      v114 = v12;
      v77 = *(v8 + 1);
      v77(v74, v7);
      v78 = sub_2692DD5A8(v73, v76, v119);

      *(v70 + 4) = v78;
      _os_log_impl(&dword_2692D8000, v68, v69, "Unable to find device for fetched alarms: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      v79 = v72;
      a4 = v117;
      MEMORY[0x26D639280](v79, -1, -1);
      MEMORY[0x26D639280](v70, -1, -1);

      v77(v114, v7);
    }

    else
    {

      v94 = *(v8 + 1);
      v94(v67, v7);
      v94(v12, v7);
    }

LABEL_24:
    *a4 = 0u;
    a4[1] = 0u;
    return;
  }

  v38 = *(v35[7] + 8 * v36);
  v39 = v115;
  v40 = [v115 serializedContextByKey];
  if (v40)
  {
    v41 = v40;
    v117 = a4;
    v118 = v38;
    v42 = sub_26932D720();

    v43 = sub_26932D770();
    if (*(v42 + 16))
    {
      v45 = sub_269324148(v43, v44);
      v47 = v46;

      if (v47)
      {
        v114 = v12;
        sub_2692DDEB4(*(v42 + 56) + 32 * v45, v119);

        v48 = objc_allocWithZone(MEMORY[0x277CEF1F0]);
        __swift_project_boxed_opaque_existential_1(v119, v119[3]);
        v49 = [v48 initWithSerializedBackingStore_];
        swift_unknownObjectRelease();
        v50 = v49;
        v51 = sub_26932D690();
        v52 = sub_26932D9B0();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          *(v53 + 4) = v50;
          *v54 = v50;
          v55 = v50;
          _os_log_impl(&dword_2692D8000, v51, v52, "fetchAlarmContexts() alarmSnapshot = %@", v53, 0xCu);
          sub_2692EB48C(v54, &qword_280308540, &unk_269330740);
          MEMORY[0x26D639280](v54, -1, -1);
          MEMORY[0x26D639280](v53, -1, -1);
        }

        v56 = [v50 alarmsByID];
        if (v56)
        {
          v57 = v56;
          sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
          sub_269308954(&qword_2814B2658, MEMORY[0x277CC9600]);
          v58 = sub_26932D720();

          if (*(v58 + 16))
          {

            sub_269303A90(v59, &qword_280308430, 0x277CEF1E8, &qword_280308640, sub_269306AC4);
            v61 = v60;
            v62 = v118;
            v63 = sub_269301B4C(v62, v116, sub_269308D0C);
            v65 = v64;

            __swift_destroy_boxed_opaque_existential_1Tm(v119);
            (*(v8 + 1))(v114, v7);
            v66 = v117;
            *v117 = v62;
            v66[1] = v61;
            v66[2] = v63;
            v66[3] = v65;
            return;
          }
        }

        v104 = v115;
        v105 = sub_26932D690();
        v106 = sub_26932D9B0();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v107 = 138412290;
          *(v107 + 4) = v104;
          *v108 = v104;
          v109 = v104;
          _os_log_impl(&dword_2692D8000, v105, v106, "Didn't find any alarms on device: %@", v107, 0xCu);
          sub_2692EB48C(v108, &qword_280308540, &unk_269330740);
          MEMORY[0x26D639280](v108, -1, -1);
          MEMORY[0x26D639280](v107, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        (*(v8 + 1))(v114, v7);
        v103 = 0uLL;
        v102 = v117;
        goto LABEL_35;
      }

      v39 = v115;
    }

    else
    {
    }

    v95 = v39;
    v96 = sub_26932D690();
    v97 = sub_26932D9A0();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v98 = 138412290;
      *(v98 + 4) = v95;
      *v99 = v95;
      v100 = v95;
      _os_log_impl(&dword_2692D8000, v96, v97, "Failed to get snapshot data from %@", v98, 0xCu);
      sub_2692EB48C(v99, &qword_280308540, &unk_269330740);
      MEMORY[0x26D639280](v99, -1, -1);
      MEMORY[0x26D639280](v98, -1, -1);
      v101 = v118;
    }

    else
    {
      v101 = v96;
      v96 = v118;
    }

    v102 = v117;

    (*(v8 + 1))(v12, v7);
    v103 = 0uLL;
LABEL_35:
    *v102 = v103;
    v102[1] = v103;
    return;
  }

  __break(1u);
}

void sub_269303A90(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = *(a1 + 16);
  v11 = sub_269308AA4(0, a2, a3);
  v12 = sub_2693089B8(a4, a2, a3);
  v13 = 0;
  v20[1] = MEMORY[0x26D638600](v10, v11, v12);
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    a5(v20, *(*(a1 + 56) + ((v18 << 9) | (8 * v19))));
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t SiriTimeDeviceContextProvider.fetchTimerContexts()()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v2 = sub_26932BFA0();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269303CDC, 0, 0);
}

uint64_t sub_269303CDC()
{
  v1 = v0[15];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308608, &qword_269330660);
  *v3 = v0;
  v3[1] = sub_269303DE4;

  return MEMORY[0x2822007B8](v0 + 12, 0, 0, 0xD000000000000014, 0x80000002693366A0, sub_2693083F4, v2, v4);
}

uint64_t sub_269303DE4()
{

  return MEMORY[0x2822009F8](sub_269303EFC, 0, 0);
}

uint64_t sub_269303EFC()
{
  v1 = v0[12];
  v0[24] = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[25] = v2; v2; v0[25] = v2)
  {
    v3 = 0;
    v4 = v0[20];
    v49 = v1 & 0xFFFFFFFFFFFFFF8;
    v50 = v1 & 0xC000000000000001;
    v46 = (v4 + 56);
    v5 = (v4 + 48);
    v6 = MEMORY[0x277D84F90];
    v44 = v4;
    v45 = (v4 + 32);
    v47 = v2;
    v48 = v1;
    while (v50)
    {
      v7 = MEMORY[0x26D638850](v3);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v9 = v7;
      v10 = [v9 identifier];
      if (v10)
      {
        v11 = v10;
        sub_26932BF80();

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v14 = v0[18];
      v13 = v0[19];
      v16 = v0[16];
      v15 = v0[17];
      (*v46)(v16, v12, 1, v13);
      sub_269302F40(v16, v15);
      sub_269302F40(v15, v14);

      if ((*v5)(v14, 1, v13) == 1)
      {
        sub_2692EB48C(v0[18], &qword_280308110, &qword_26932EBD0);
      }

      else
      {
        v17 = *v45;
        (*v45)(v0[21], v0[18], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2692E30A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_2692E30A8((v18 > 1), v19 + 1, 1, v6);
        }

        v20 = v0[21];
        v21 = v0[19];
        *(v6 + 2) = v19 + 1;
        v17(&v6[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v19], v20, v21);
      }

      v1 = v48;
      ++v3;
      if (v8 == v47)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *(v49 + 16))
    {
      goto LABEL_21;
    }

    v7 = *(v1 + 8 * v3 + 32);
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = v1;
    v2 = sub_26932DAE0();
    v1 = v22;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  v0[26] = v6;
  v23 = sub_26932D5C0();
  v0[27] = v23;
  v24 = sub_26932D5A0();
  v25 = MEMORY[0x277D61F10];
  v0[5] = v23;
  v0[6] = v25;
  v0[2] = v24;
  if (*(v6 + 2))
  {
    v26 = swift_task_alloc();
    v0[28] = v26;
    *(v26 + 16) = v0 + 2;
    *(v26 + 24) = v6;
    v27 = swift_task_alloc();
    v0[29] = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308610, &qword_269330668);
    *v27 = v0;
    v27[1] = sub_2693044CC;
    v29 = sub_269308D2C;
    v30 = v0 + 13;
    v31 = 0x8000000269336660;
    v32 = 0xD000000000000017;
LABEL_28:

    return MEMORY[0x2822007B8](v30, 0, 0, v32, v31, v29, v26, v28);
  }

  v33 = sub_2692ED6A8(MEMORY[0x277D84F90]);
  v0[30] = v33;
  sub_269306A68((v0 + 2));
  if (*(v33 + 16))
  {
    v34 = v0[27];
    v35 = sub_26932D5A0();
    v0[10] = v34;
    v0[11] = v25;
    v0[7] = v35;
    v26 = swift_task_alloc();
    v0[31] = v26;
    *(v26 + 16) = v0 + 7;
    v36 = swift_task_alloc();
    v0[32] = v36;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v36 = v0;
    v36[1] = sub_269304850;
    v29 = sub_269308D30;
    v30 = v0 + 14;
    v32 = 0xD00000000000001ELL;
    v31 = 0x8000000269336680;
    goto LABEL_28;
  }

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v37 = sub_26932D6B0();
  __swift_project_value_buffer(v37, qword_2814B23C0);
  v38 = sub_26932D690();
  v39 = sub_26932D9A0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2692D8000, v38, v39, "Failed to fetch device units for alarm contexts", v40, 2u);
    MEMORY[0x26D639280](v40, -1, -1);
  }

  v41 = v0[1];
  v42 = MEMORY[0x277D84F90];

  return v41(v42);
}

uint64_t sub_2693044CC()
{

  return MEMORY[0x2822009F8](sub_2693045E4, 0, 0);
}

uint64_t sub_2693045E4()
{
  v1 = v0[13];
  v0[30] = v1;
  sub_269306A68((v0 + 2));
  if (*(v1 + 16))
  {
    v2 = v0[27];
    v3 = sub_26932D5A0();
    v4 = MEMORY[0x277D61F10];
    v0[10] = v2;
    v0[11] = v4;
    v0[7] = v3;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *(v5 + 16) = v0 + 7;
    v6 = swift_task_alloc();
    v0[32] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308618, &qword_269330670);
    *v6 = v0;
    v6[1] = sub_269304850;

    return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD00000000000001ELL, 0x8000000269336680, sub_269308D30, v5, v7);
  }

  else
  {

    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B23C0);
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2692D8000, v9, v10, "Failed to fetch device units for alarm contexts", v11, 2u);
      MEMORY[0x26D639280](v11, -1, -1);
    }

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_269304850()
{

  return MEMORY[0x2822009F8](sub_269304968, 0, 0);
}

uint64_t sub_269304968()
{
  v34 = v0;
  v1 = v0[25];
  v29 = v0[14];
  sub_269306A68((v0 + 7));
  if (v1)
  {
    v2 = 0;
    v3 = v0[24];
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = v3 & 0xC000000000000001;
    v26 = v3 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28)
      {
        v5 = MEMORY[0x26D638850](v2, v0[24]);
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_24;
        }

        v5 = *(v26 + 8 * v2);
      }

      v6 = v5;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = v0[30];
      v30 = v5;
      sub_2693050F4(&v30, v8, v29, &v31);

      v9 = v31;
      v11 = v32;
      v10 = v33;
      if (v31)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2692E32AC(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        v14 = v4;
        if (v13 >= v12 >> 1)
        {
          v14 = sub_2692E32AC((v12 > 1), v13 + 1, 1, v4);
        }

        *(v14 + 2) = v13 + 1;
        v4 = v14;
        v15 = &v14[32 * v13];
        *(v15 + 2) = v9;
        *(v15 + 6) = v11;
        *(v15 + 7) = v10;
      }

      else
      {
        sub_269308434(0, *(&v31 + 1), v32, v33);
      }

      ++v2;
      if (v7 == v0[25])
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_17:

  if (qword_2814B23B8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v16 = sub_26932D6B0();
  __swift_project_value_buffer(v16, qword_2814B23C0);

  v17 = sub_26932D690();
  v18 = sub_26932D9B0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v31 = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x26D638530](v4, &type metadata for HALTimerDeviceContext);
    v23 = sub_2692DD5A8(v21, v22, &v31);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2692D8000, v17, v18, "fetchTimerContexts() got firing timers context: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D639280](v20, -1, -1);
    MEMORY[0x26D639280](v19, -1, -1);
  }

  v24 = v0[1];

  return v24(v4);
}

uint64_t sub_269304CAC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v17[2] = a4;
  v17[3] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308638, &unk_269330750);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = a2[3];
  v17[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308628, &qword_269330738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EEA0;
  *(inited + 32) = sub_26932D770();
  *(inited + 40) = v13;
  sub_269314CA4(inited);
  swift_setDeallocating();
  sub_269308884(inited + 32);
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  sub_26932D480();
}

uint64_t sub_269304E84(unint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  if (a1)
  {
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      v13 = a3;
      v14 = a4;
      v15 = sub_26932DAE0();
      a4 = v14;
      a3 = v13;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = a3;
      v7 = qword_2814B23B8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = sub_26932D6B0();
      __swift_project_value_buffer(v8, qword_2814B23C0);

      v9 = sub_26932D690();
      v10 = sub_26932D9B0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        if (v5)
        {
          v12 = sub_26932DAE0();
        }

        else
        {
          v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v11 + 4) = v12;

        _os_log_impl(&dword_2692D8000, v9, v10, v6, v11, 0xCu);
        MEMORY[0x26D639280](v11, -1, -1);
      }

      else
      {
      }

      goto LABEL_18;
    }
  }

  v16 = a4;
  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v17 = sub_26932D6B0();
  __swift_project_value_buffer(v17, qword_2814B23C0);
  v18 = sub_26932D690();
  v19 = sub_26932D9A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2692D8000, v18, v19, v16, v20, 2u);
    MEMORY[0x26D639280](v20, -1, -1);
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308638, &unk_269330750);
  return sub_26932D8E0();
}

void sub_2693050F4(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v121 = a2;
  v123 = a4;
  v8 = sub_26932BFA0();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v114 - v13;
  v15 = *a1;
  v16 = [v15 identifier];
  if (!v16)
  {
    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v39 = sub_26932D6B0();
    __swift_project_value_buffer(v39, qword_2814B23C0);
    v40 = v15;
    v41 = sub_26932D690();
    v42 = sub_26932D9A0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v122[0] = v44;
      *v43 = 136315138;
      v45 = v40;
      v46 = [v45 description];
      v47 = sub_26932D770();
      v49 = v48;

      v50 = sub_2692DD5A8(v47, v49, v122);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_2692D8000, v41, v42, "Device had invalid UUID for fetched timers: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x26D639280](v44, -1, -1);
      MEMORY[0x26D639280](v43, -1, -1);
    }

    goto LABEL_24;
  }

  v117 = a3;
  v17 = v16;
  sub_26932BF80();

  if (qword_2814B23B8 != -1)
  {
    swift_once();
  }

  v18 = sub_26932D6B0();
  v19 = __swift_project_value_buffer(v18, qword_2814B23C0);
  v20 = v15;
  v21 = sub_26932D690();
  v22 = sub_26932D9B0();

  v23 = os_log_type_enabled(v21, v22);
  v118 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v115 = v12;
    v25 = v24;
    v114 = swift_slowAlloc();
    v122[0] = v114;
    *v25 = 136315138;
    v26 = v20;
    v119 = v9;
    v27 = v26;
    v28 = [v26 description];
    v120 = v14;
    v29 = v28;
    v30 = v8;
    v31 = sub_26932D770();
    v116 = v19;
    v32 = v22;
    v34 = v33;

    v9 = v119;
    v35 = v31;
    v8 = v30;
    v5 = v4;
    v36 = sub_2692DD5A8(v35, v34, v122);

    *(v25 + 4) = v36;
    v14 = v120;
    _os_log_impl(&dword_2692D8000, v21, v32, "Searching timer from device context %s", v25, 0xCu);
    v37 = v114;
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x26D639280](v37, -1, -1);
    v38 = v25;
    v12 = v115;
    MEMORY[0x26D639280](v38, -1, -1);
  }

  v51 = v121;
  if (!*(v121 + 16) || (v52 = sub_2693241C0(v14), (v53 & 1) == 0))
  {
    v121 = v5;
    (v9[2])(v12, v14, v8);
    v84 = sub_26932D690();
    v85 = sub_26932D9A0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v8;
      v87 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v122[0] = v119;
      *v87 = 136315138;
      sub_269308954(&qword_280308630, MEMORY[0x277CC9628]);
      v88 = sub_26932DDD0();
      v120 = v14;
      v90 = v89;
      v91 = v9[1];
      v91(v12, v86);
      v92 = sub_2692DD5A8(v88, v90, v122);

      *(v87 + 4) = v92;
      _os_log_impl(&dword_2692D8000, v84, v85, "Unable to find device for fetched timers: %s", v87, 0xCu);
      v93 = v119;
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      MEMORY[0x26D639280](v93, -1, -1);
      MEMORY[0x26D639280](v87, -1, -1);

      v91(v120, v86);
    }

    else
    {

      v94 = v9[1];
      v94(v12, v8);
      v94(v14, v8);
    }

LABEL_24:
    v95 = v123;
    *v123 = 0u;
    v95[1] = 0u;
    return;
  }

  v119 = v9;
  v54 = *(*(v51 + 56) + 8 * v52);
  v55 = [v118 serializedContextByKey];
  if (!v55)
  {
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = sub_26932D720();

  v58 = sub_26932D770();
  if (!*(v57 + 16))
  {

LABEL_27:
    v96 = v54;
    v97 = sub_26932D690();
    v98 = sub_26932D9A0();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = v14;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      *(v100 + 4) = v96;
      *v101 = v96;
      v102 = v96;
      _os_log_impl(&dword_2692D8000, v97, v98, "Failed to get timer snapshot data from %@", v100, 0xCu);
      sub_2692EB48C(v101, &qword_280308540, &unk_269330740);
      MEMORY[0x26D639280](v101, -1, -1);
      v103 = v100;
      v14 = v99;
      MEMORY[0x26D639280](v103, -1, -1);
    }

    else
    {
      v102 = v97;
      v97 = v96;
    }

    v104 = v123;

    (v119[1])(v14, v8);
    *v104 = 0u;
    v104[1] = 0u;
    return;
  }

  v120 = v54;
  v60 = sub_269324148(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0)
  {

    v54 = v120;
    goto LABEL_27;
  }

  v118 = v8;
  v121 = v5;
  sub_2692DDEB4(*(v57 + 56) + 32 * v60, v122);

  v63 = objc_allocWithZone(MEMORY[0x277CEF208]);
  __swift_project_boxed_opaque_existential_1(v122, v122[3]);
  v64 = [v63 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  v65 = v64;
  v66 = sub_26932D690();
  v67 = sub_26932D9B0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138412290;
    *(v68 + 4) = v65;
    *v69 = v65;
    v70 = v65;
    _os_log_impl(&dword_2692D8000, v66, v67, "fetchTimerContexts() timerSnapshot = %@", v68, 0xCu);
    sub_2692EB48C(v69, &qword_280308540, &unk_269330740);
    MEMORY[0x26D639280](v69, -1, -1);
    MEMORY[0x26D639280](v68, -1, -1);
  }

  v71 = [v65 timersByID];
  if (v71)
  {
    v72 = v71;
    sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
    sub_269308954(&qword_2814B2658, MEMORY[0x277CC9600]);
    v73 = v118;
    v74 = sub_26932D720();

    if (*(v74 + 16))
    {

      sub_269303A90(v75, &qword_2814B2328, 0x277CEF200, &qword_2814B2320, sub_269306CFC);
      v77 = v76;
      v78 = v120;
      v79 = sub_269301B4C(v78, v117, sub_269308998);
      v80 = v14;
      v82 = v81;

      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      (v119[1])(v80, v73);
      v83 = v123;
      *v123 = v78;
      v83[1] = v77;
      v83[2] = v79;
      v83[3] = v82;
      return;
    }
  }

  v105 = v120;
  v106 = sub_26932D690();
  v107 = sub_26932D9B0();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = v14;
    v110 = swift_slowAlloc();
    *v108 = 138412290;
    *(v108 + 4) = v105;
    *v110 = v105;
    v111 = v105;
    _os_log_impl(&dword_2692D8000, v106, v107, "Didn't find any timers on device: %@", v108, 0xCu);
    sub_2692EB48C(v110, &qword_280308540, &unk_269330740);
    v112 = v110;
    v14 = v109;
    MEMORY[0x26D639280](v112, -1, -1);
    MEMORY[0x26D639280](v108, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v122);
  (v119[1])(v14, v118);
  v113 = v123;
  *v123 = 0u;
  v113[1] = 0u;
}

uint64_t sub_269305C30()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_269305D28;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000010, 0x80000002693366C0, sub_269308480, v2, v4);
}

uint64_t sub_269305D28()
{

  return MEMORY[0x2822009F8](sub_269305E40, 0, 0);
}

uint64_t sub_269305E58(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = a2[3];
  v14[1] = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308628, &qword_269330738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EEA0;
  *(inited + 32) = sub_26932D770();
  *(inited + 40) = v10;
  sub_269314CA4(inited);
  swift_setDeallocating();
  sub_269308884(inited + 32);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  sub_26932D480();
}

void sub_269306044(unint64_t a1)
{
  if (!a1)
  {
    if (qword_2814B23B8 != -1)
    {
      swift_once();
    }

    v8 = sub_26932D6B0();
    __swift_project_value_buffer(v8, qword_2814B23C0);
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_40;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "SharedContextProvider#fetchDeviceContexts Got nil context array, returning nil...";
    goto LABEL_39;
  }

  if (qword_2814B23B8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v2 = sub_26932D6B0();
  __swift_project_value_buffer(v2, qword_2814B23C0);

  v3 = sub_26932D690();
  v4 = sub_26932D9B0();
  v5 = a1 >> 62;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5)
    {
      v7 = sub_26932DAE0();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_2692D8000, v3, v4, "SharedContextProvider#fetchDeviceContexts Got media context for %ld devices...", v6, 0xCu);
    MEMORY[0x26D639280](v6, -1, -1);
  }

  else
  {
  }

  if (v5)
  {
    v13 = sub_26932DAE0();
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_37:
    v9 = sub_26932D690();
    v10 = sub_26932D9A0();
    if (!os_log_type_enabled(v9, v10))
    {
LABEL_40:

      LOBYTE(v37[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
      sub_26932D8E0();
      return;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Not found primary device in deviceContexts";
LABEL_39:
    _os_log_impl(&dword_2692D8000, v9, v10, v12, v11, 2u);
    MEMORY[0x26D639280](v11, -1, -1);
    goto LABEL_40;
  }

LABEL_14:
  v14 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D638850](v14, a1);
    }

    else
    {
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v15 proximity] == 4000)
    {
      break;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_37;
    }
  }

  v18 = [v16 serializedContextByKey];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = sub_26932D720();

  v21 = sub_26932D770();
  if (*(v20 + 16))
  {
    v23 = sub_269324148(v21, v22);
    v25 = v24;

    if (v25)
    {
      sub_2692DDEB4(*(v20 + 56) + 32 * v23, v37);

      v26 = objc_allocWithZone(MEMORY[0x277CEF2F0]);
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v27 = [v26 initWithSerializedBackingStore_];
      swift_unknownObjectRelease();
      v28 = v27;
      v29 = sub_26932D690();
      v30 = sub_26932D990();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_2692D8000, v29, v30, "SharedContextProvider#fetchDeviceContexts serializedContextSnapshots: %@", v31, 0xCu);
        sub_2692EB48C(v32, &qword_280308540, &unk_269330740);
        MEMORY[0x26D639280](v32, -1, -1);
        MEMORY[0x26D639280](v31, -1, -1);
      }

      [v28 playbackState];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
      sub_26932D8E0();

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      return;
    }
  }

  else
  {
  }

  v34 = sub_26932D690();
  v35 = sub_26932D9B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2692D8000, v34, v35, "SharedContextProvider#fetchDeviceContexts no playback state found for media context", v36, 2u);
    MEMORY[0x26D639280](v36, -1, -1);
  }

  LOBYTE(v37[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308620, "<i");
  sub_26932D8E0();
}

uint64_t sub_26930661C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2693066A8;

  return SiriTimeDeviceContextProvider.fetchAlarmContexts()();
}

uint64_t sub_2693066A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2693067A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_269308D28;

  return SiriTimeDeviceContextProvider.fetchTimerContexts()();
}

uint64_t sub_269306850()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_269306948;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000010, 0x80000002693366C0, sub_269308D34, v2, v4);
}

uint64_t sub_269306948()
{

  return MEMORY[0x2822009F8](sub_269308D38, 0, 0);
}

uint64_t sub_269306AC4(uint64_t *a1, void *a2)
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

    v9 = sub_26932DAF0();

    if (v9)
    {

      sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_26932DAE0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2693071EC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2692F1DA8(v20 + 1);
    }

    v18 = v8;
    sub_2692F2AE0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
  v11 = sub_26932D9E0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2693075CC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_26932D9F0();

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

uint64_t sub_269306CFC(uint64_t *a1, void *a2)
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

    v9 = sub_26932DAF0();

    if (v9)
    {

      sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_26932DAE0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2693073DC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2692F1DBC(v20 + 1);
    }

    v18 = v8;
    sub_2692F2AE0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
  v11 = sub_26932D9E0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_26930775C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_26932D9F0();

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

uint64_t sub_269306F34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26932BFA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_269308954(&qword_2814B2658, MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_26932D740();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_269308954(&qword_2814B2650, MEMORY[0x277CC9610]);
      v21 = sub_26932D750();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2693078EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2693071EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308448, &qword_26932F958);
    v2 = sub_26932DB30();
    v15 = v2;
    sub_26932DAD0();
    if (sub_26932DB00())
    {
      sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2692F1DA8(v9 + 1);
        }

        v2 = v15;
        result = sub_26932D9E0();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26932DB00());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2693073DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308440, &qword_26932F948);
    v2 = sub_26932DB30();
    v15 = v2;
    sub_26932DAD0();
    if (sub_26932DB00())
    {
      sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2692F1DBC(v9 + 1);
        }

        v2 = v15;
        result = sub_26932D9E0();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26932DB00());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_2693075CC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2692F1DA8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_269307B68(&qword_280308448, &qword_26932F958);
      goto LABEL_12;
    }

    sub_269307EE0(v6 + 1, &qword_280308448, &qword_26932F958);
  }

  v8 = *v3;
  v9 = sub_26932D9E0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_269308AA4(0, &qword_280308430, 0x277CEF1E8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_26932D9F0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26932DF30();
  __break(1u);
}

void sub_26930775C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2692F1DBC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_269307B68(&qword_280308440, &qword_26932F948);
      goto LABEL_12;
    }

    sub_269307EE0(v6 + 1, &qword_280308440, &qword_26932F948);
  }

  v8 = *v3;
  v9 = sub_26932D9E0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_269308AA4(0, &qword_2814B2328, 0x277CEF200);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_26932D9F0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26932DF30();
  __break(1u);
}

uint64_t sub_2693078EC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26932BFA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2692F1FF0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_269307CA8();
      goto LABEL_12;
    }

    sub_2693080EC(v10 + 1);
  }

  v12 = *v3;
  sub_269308954(&qword_2814B2658, MEMORY[0x277CC9600]);
  v13 = sub_26932D740();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_269308954(&qword_2814B2650, MEMORY[0x277CC9610]);
      v21 = sub_26932D750();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26932DF30();
  __break(1u);
  return result;
}