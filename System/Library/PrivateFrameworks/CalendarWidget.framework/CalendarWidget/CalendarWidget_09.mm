uint64_t sub_1E4861210(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1E4878F0C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1E4846C4C();

    v1 = sub_1E486A12C(&v5, (v3 + 32), v2, v1);
    sub_1E47A7300(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1E48612C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD8, &unk_1E48837E0);
  result = sub_1E487907C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      result = sub_1E487913C();
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

LABEL_33:
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
        goto LABEL_33;
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
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1E4861524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBC8, &qword_1E48837D0);
  result = sub_1E487907C();
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
      if ((v4 & 1) == 0)
      {
      }

      sub_1E487914C();
      sub_1E487820C();
      result = sub_1E487917C();
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

    if ((v4 & 1) == 0)
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

uint64_t sub_1E48617B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DayEvents(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487732C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBA0, &qword_1E4883760);
  v43 = v4;
  result = sub_1E487907C();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1E487049C(v27 + v28 * v24, v47, type metadata accessor for DayEvents);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1E48703D4(v29 + v28 * v24, v47, type metadata accessor for DayEvents);
      }

      sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      result = sub_1E4878A9C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1E487049C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for DayEvents);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

void *sub_1E4861C50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD8, &unk_1E48837E0);
  v2 = *v0;
  v3 = sub_1E487906C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4861D9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBC8, &qword_1E48837D0);
  v2 = *v0;
  v3 = sub_1E487906C();
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

char *sub_1E4861EF8()
{
  v1 = v0;
  v2 = type metadata accessor for DayEvents(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E487732C();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBA0, &qword_1E4883760);
  v5 = *v0;
  v6 = sub_1E487906C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1E48703D4(*(v5 + 56) + v26, v35, type metadata accessor for DayEvents);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1E487049C(v25, *(v27 + 56) + v26, type metadata accessor for DayEvents);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1E4862224(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E487914C();
  sub_1E4878C0C();
  v8 = sub_1E487917C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1E48790EC() & 1) != 0)
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

    sub_1E4864514(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E4862374(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v33 = a2;
  v11 = sub_1E4878A9C();
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
      sub_1E486CD08(&qword_1EE2B59F8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v21 = sub_1E4878AFC();
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
    sub_1E4864694(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E4862654(uint64_t a1, void *a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for Event(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  v10 = sub_1E487917C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1E48703D4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Event);
      v15 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1E487043C(v8, type metadata accessor for Event);
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

    sub_1E487043C(a2, type metadata accessor for Event);
    sub_1E48703D4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for Event);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E48703D4(a2, v8, type metadata accessor for Event);
    v20 = *v3;
    sub_1E4864938(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_1E487049C(a2, v17, type metadata accessor for Event);
    return 1;
  }
}

uint64_t sub_1E48628B0(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E487914C();
  sub_1E487820C();
  v6 = sub_1E487917C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = sub_1E48781DC();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;

    sub_1E4864B98(v12, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1E48629F0(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v5 = *(EventContentView - 8);
  v6 = MEMORY[0x1EEE9AC00](EventContentView);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v32 - v9;
  v33 = v2;
  v10 = *v2;
  sub_1E487914C();
  sub_1E487736C();
  sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4878AAC();
  v11 = *(EventContentView + 20);
  sub_1E487719C();
  sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  v36 = *(a2 + *(EventContentView + 24));
  sub_1E487916C();
  v12 = sub_1E487917C();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    v35 = v17;
    do
    {
      v18 = v17 * v15;
      sub_1E48703D4(*(v10 + 48) + v17 * v15, v8, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      if (sub_1E487734C() & 1) != 0 && (sub_1E487715C())
      {
        v19 = *(EventContentView + 24);
        v20 = v16;
        v21 = v13;
        v22 = a2;
        v23 = v10;
        v24 = EventContentView;
        v25 = v11;
        v26 = v8[v19];
        sub_1E487043C(v8, type metadata accessor for InlineNextEventContentViewModel.TextOption);
        v27 = v36 == v26;
        v11 = v25;
        EventContentView = v24;
        v10 = v23;
        a2 = v22;
        v13 = v21;
        v16 = v20;
        v17 = v35;
        if (v27)
        {
          sub_1E487043C(a2, type metadata accessor for InlineNextEventContentViewModel.TextOption);
          sub_1E48703D4(*(v10 + 48) + v18, v34, type metadata accessor for InlineNextEventContentViewModel.TextOption);
          return 0;
        }
      }

      else
      {
        sub_1E487043C(v8, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  v29 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v32;
  sub_1E48703D4(a2, v32, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  v37 = *v29;
  sub_1E4864D08(v31, v15, isUniquelyReferenced_nonNull_native);
  *v29 = v37;
  sub_1E487049C(a2, v34, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  return 1;
}

uint64_t sub_1E4862D90(uint64_t *a1, void *a2)
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

    v9 = sub_1E4878F1C();

    if (v9)
    {

      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1E4878F0C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1E4862FC8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1E4864268(v20 + 1);
    }

    v18 = v8;
    sub_1E4864490(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v11 = sub_1E4878E2C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1E486503C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1E4878E3C();

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

uint64_t sub_1E4862FC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
    v2 = sub_1E4878F6C();
    v15 = v2;
    sub_1E4878EFC();
    if (sub_1E4878F2C())
    {
      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1E4864268(v9 + 1);
        }

        v2 = v15;
        result = sub_1E4878E2C();
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

      while (sub_1E4878F2C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1E48631B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB0, &qword_1E4883770);
  result = sub_1E4878F5C();
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
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1E487914C();
      sub_1E4878C0C();
      result = sub_1E487917C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E4863418(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1E487732C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB80, &qword_1E4883740);
  result = sub_1E4878F5C();
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
      sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      result = sub_1E4878A9C();
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

uint64_t sub_1E4863774(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for Event(0);
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  result = sub_1E4878F5C();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v1;
    v42 = v6;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    v44 = v5;
    v45 = v9;
    v43 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v23 = *(v9 + 48);
      v47 = *(v46 + 72);
      sub_1E487049C(v23 + v47 * (v20 | (v12 << 6)), v8, type metadata accessor for Event);
      sub_1E487914C();
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_1E4773850(&v8[*(v6 + 44)], v5, &unk_1ECF7B688, &qword_1E487C160);
      v24 = sub_1E487725C();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v5, 1, v24) == 1)
      {
        sub_1E47738B8(v5, &unk_1ECF7B688, &qword_1E487C160);
        v26 = 0;
        v27 = 0xE000000000000000;
      }

      else
      {
        v28 = sub_1E487723C();
        v29 = v5;
        v26 = v28;
        v27 = v30;
        (*(v25 + 8))(v29, v24);
      }

      MEMORY[0x1E69192D0](v26, v27);

      MEMORY[0x1E69192D0](45, 0xE100000000000000);
      v6 = v42;
      if (v8[*(v42 + 52)])
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v8[*(v42 + 52)])
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1E69192D0](v31, v32);

      sub_1E4878C0C();

      result = sub_1E487917C();
      v11 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      v9 = v45;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v5 = v44;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v5 = v44;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1E487049C(v8, *(v11 + 48) + v19 * v47, type metadata accessor for Event);
      ++*(v11 + 16);
      v16 = v48;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        v48 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v40 = 1 << *(v9 + 32);
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    v2 = v41;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1E4863C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD0, &qword_1E48837D8);
  result = sub_1E4878F5C();
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
      sub_1E487914C();
      sub_1E487820C();
      result = sub_1E487917C();
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

uint64_t sub_1E4863EA0(uint64_t a1)
{
  v2 = v1;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v31 = *(EventContentView - 8);
  v32 = EventContentView;
  MEMORY[0x1EEE9AC00](EventContentView);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB98, &qword_1E4883758);
  result = sub_1E4878F5C();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
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
      v33 = *(v31 + 72);
      sub_1E487049C(v20 + v33 * (v17 | (v9 << 6)), v5, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      sub_1E487914C();
      sub_1E487736C();
      sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1E4878AAC();
      sub_1E487719C();
      sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E4878AAC();
      sub_1E487916C();
      result = sub_1E487917C();
      v21 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1E487049C(v5, *(v8 + 48) + v16 * v33, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      ++*(v8 + 16);
      v6 = v30;
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

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero(v10, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v29;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1E4864268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  result = sub_1E4878F5C();
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
      result = sub_1E4878E2C();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1E4864490(uint64_t a1, uint64_t a2)
{
  sub_1E4878E2C();
  result = sub_1E4878EEC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1E4864514(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E48631B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1E48651AC();
      goto LABEL_16;
    }

    sub_1E4865BF8(v8 + 1);
  }

  v10 = *v4;
  sub_1E487914C();
  sub_1E4878C0C();
  v11 = sub_1E487917C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1E48790EC() & 1) != 0)
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
  *v17 = result;
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
  sub_1E487911C();
  __break(1u);
}

uint64_t sub_1E4864694(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1E4863418(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E4865308();
      goto LABEL_12;
    }

    sub_1E4865E30(v10 + 1);
  }

  v12 = *v3;
  sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v13 = sub_1E4878A9C();
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
      sub_1E486CD08(&qword_1EE2B59F8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v21 = sub_1E4878AFC();
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
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864938(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Event(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1E4863774(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1E4865540();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1E486614C(v13 + 1);
  }

  v15 = *v4;
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  v16 = sub_1E487917C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1E48703D4(*(v15 + 48) + v19 * a2, v12, type metadata accessor for Event);
      v20 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1E487043C(v12, type metadata accessor for Event);
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
  result = sub_1E487049C(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for Event);
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
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864B98(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4863C50(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E486574C();
      goto LABEL_12;
    }

    sub_1E48665F8(v6 + 1);
  }

  v8 = *v3;
  sub_1E487914C();
  sub_1E487820C();
  result = sub_1E487917C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {

      v11 = sub_1E48781DC();

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E487911C();
  __break(1u);
  return result;
}

uint64_t sub_1E4864D08(uint64_t a1, unint64_t a2, char a3)
{
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v24 = *(EventContentView - 8);
  MEMORY[0x1EEE9AC00](EventContentView);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v23 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1E4863EA0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E486589C();
      goto LABEL_16;
    }

    sub_1E4866820(v10 + 1);
  }

  v12 = *v3;
  sub_1E487914C();
  sub_1E487736C();
  sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E4878AAC();
  sub_1E487719C();
  sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4878AAC();
  v25 = *(a1 + *(EventContentView + 24));
  sub_1E487916C();
  v13 = sub_1E487917C();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v24 + 72);
    do
    {
      sub_1E48703D4(*(v12 + 48) + v16 * a2, v9, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      if (sub_1E487734C() & 1) != 0 && (sub_1E487715C())
      {
        v17 = v9[*(EventContentView + 24)];
        sub_1E487043C(v9, type metadata accessor for InlineNextEventContentViewModel.TextOption);
        if (v25 == v17)
        {
          sub_1E487911C();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_1E487043C(v9, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E487049C(a1, *(v18 + 48) + *(v24 + 72) * a2, type metadata accessor for InlineNextEventContentViewModel.TextOption);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1E486503C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4864268(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1E4865AA8();
      goto LABEL_12;
    }

    sub_1E4866BBC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1E4878E2C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1E4878E3C();

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
  sub_1E487911C();
  __break(1u);
}

void sub_1E48651AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB0, &qword_1E4883770);
  v2 = *v0;
  v3 = sub_1E4878F4C();
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

void *sub_1E4865308()
{
  v1 = v0;
  v2 = sub_1E487732C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB80, &qword_1E4883740);
  v6 = *v0;
  v7 = sub_1E4878F4C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1E4865540()
{
  v1 = v0;
  v2 = type metadata accessor for Event(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  v6 = *v0;
  v7 = sub_1E4878F4C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1E48703D4(*(v6 + 48) + v21, v5, type metadata accessor for Event);
        result = sub_1E487049C(v5, *(v8 + 48) + v21, type metadata accessor for Event);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1E486574C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD0, &qword_1E48837D8);
  v2 = *v0;
  v3 = sub_1E4878F4C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1E486589C()
{
  v1 = v0;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v3 = *(EventContentView - 8);
  MEMORY[0x1EEE9AC00](EventContentView - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB98, &qword_1E4883758);
  v6 = *v0;
  v7 = sub_1E4878F4C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1E48703D4(*(v6 + 48) + v21, v5, type metadata accessor for InlineNextEventContentViewModel.TextOption);
        result = sub_1E487049C(v5, *(v8 + 48) + v21, type metadata accessor for InlineNextEventContentViewModel.TextOption);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

id sub_1E4865AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  v2 = *v0;
  v3 = sub_1E4878F4C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_1E4865BF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBB0, &qword_1E4883770);
  result = sub_1E4878F5C();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E487914C();

      sub_1E4878C0C();
      result = sub_1E487917C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_1E4865E30(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E487732C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB80, &qword_1E4883740);
  v7 = sub_1E4878F5C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1E486CD08(&qword_1EE2B5A08, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      result = sub_1E4878A9C();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1E486614C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for Event(0);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  result = sub_1E4878F5C();
  v11 = result;
  if (*(v9 + 16))
  {
    v40 = v1;
    v41 = result;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    v43 = v9;
    v44 = v5;
    v42 = v6;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v47 = (v16 - 1) & v16;
LABEL_15:
      v23 = *(v9 + 48);
      v46 = *(v45 + 72);
      sub_1E48703D4(v23 + v46 * (v20 | (v12 << 6)), v8, type metadata accessor for Event);
      sub_1E487914C();
      v48 = 0;
      v49 = 0xE000000000000000;
      v24 = v8;
      sub_1E4773850(&v8[*(v6 + 44)], v5, &unk_1ECF7B688, &qword_1E487C160);
      v25 = sub_1E487725C();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25) == 1)
      {
        sub_1E47738B8(v5, &unk_1ECF7B688, &qword_1E487C160);
        v27 = 0;
        v28 = 0xE000000000000000;
      }

      else
      {
        v27 = sub_1E487723C();
        v29 = v5;
        v28 = v30;
        (*(v26 + 8))(v29, v25);
      }

      MEMORY[0x1E69192D0](v27, v28);

      MEMORY[0x1E69192D0](45, 0xE100000000000000);
      v6 = v42;
      v8 = v24;
      if (v24[*(v42 + 52)])
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (v24[*(v42 + 52)])
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1E69192D0](v31, v32);

      sub_1E4878C0C();

      result = sub_1E487917C();
      v11 = v41;
      v33 = -1 << *(v41 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v9 = v43;
        v5 = v44;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_37;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v9 = v43;
      v5 = v44;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1E487049C(v8, *(v11 + 48) + v19 * v46, type metadata accessor for Event);
      ++*(v11 + 16);
      v16 = v47;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v40;
        goto LABEL_35;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1E48665F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBD0, &qword_1E48837D8);
  result = sub_1E4878F5C();
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
      sub_1E487914C();

      sub_1E487820C();
      result = sub_1E487917C();
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

uint64_t sub_1E4866820(uint64_t a1)
{
  v2 = v1;
  EventContentView = type metadata accessor for InlineNextEventContentViewModel.TextOption(0);
  v30 = *(EventContentView - 8);
  v31 = EventContentView;
  MEMORY[0x1EEE9AC00](EventContentView);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB98, &qword_1E4883758);
  result = sub_1E4878F5C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v29 = v6;
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
      v32 = *(v30 + 72);
      sub_1E48703D4(v20 + v32 * (v17 | (v9 << 6)), v5, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      sub_1E487914C();
      sub_1E487736C();
      sub_1E486CD08(&qword_1EE2B4658, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1E4878AAC();
      sub_1E487719C();
      sub_1E486CD08(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E4878AAC();
      sub_1E487916C();
      result = sub_1E487917C();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        v6 = v29;
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
      v6 = v29;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1E487049C(v5, *(v8 + 48) + v16 * v32, type metadata accessor for InlineNextEventContentViewModel.TextOption);
      ++*(v8 + 16);
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

        v2 = v28;
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

uint64_t sub_1E4866BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  result = sub_1E4878F5C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      result = sub_1E4878E2C();
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

        v2 = v24;
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

uint64_t sub_1E4866E80(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4878F0C();
  }

  return sub_1E4878FBC();
}

unint64_t sub_1E4866EE4(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1E4860B84(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1E4866FB8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1E4866FB8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (a3 < 1)
  {
    return sub_1E47738B8(a4, &qword_1ECF7DBC0, &qword_1E48837C8);
  }

  result = sub_1E47A1524(a4, v10);
  if (a3 == 1)
  {
    return sub_1E47738B8(a4, &qword_1ECF7DBC0, &qword_1E48837C8);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1E48670D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Event(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1E48703D4(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for Event);
      sub_1E486857C(v9, v5);
      sub_1E487043C(v9, type metadata accessor for Event);
      sub_1E47738B8(v5, &qword_1ECF7B950, &unk_1E487AE90);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1E48672DC(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_1E4878F0C())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4878EFC();
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    sub_1E486CD68();
    sub_1E4878D8C();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_1E47A7300(a1);
      return;
    }

    while (1)
    {
      v17 = sub_1E48687CC(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1E4878F2C())
      {
        sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1E48674FC(char *a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - v7;
  v75 = type metadata accessor for Event(0);
  v9 = *(v75 - 8);
  v10 = MEMORY[0x1EEE9AC00](v75);
  v78 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v62 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v76 = (&v62 - v15);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v17 = (a1 + 56);
  v16 = *(a1 + 7);
  v18 = -1 << a1[32];
  v74 = ~v18;
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v67 = (63 - v18) >> 6;
  v73 = (v9 + 56);
  v72 = (v9 + 48);
  v77 = (a2 + 56);

  v22 = 0;
  v71 = a1;
  v70 = (a1 + 56);
  v63 = v8;
  for (i = v9; ; v9 = i)
  {
    v23 = v20;
    v24 = v22;
    v64 = v20;
    if (v20)
    {
LABEL_15:
      v20 = (v23 - 1) & v23;
      sub_1E48703D4(*(a1 + 6) + *(v9 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v8, type metadata accessor for Event);
      v28 = 0;
      v26 = v24;
    }

    else
    {
      v25 = v67 <= (v22 + 1) ? v22 + 1 : v67;
      v26 = v25 - 1;
      v27 = v22;
      while (1)
      {
        v24 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_57;
        }

        if (v24 >= v67)
        {
          break;
        }

        v23 = *(v17 + 8 * v24);
        ++v27;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      v20 = 0;
      v28 = 1;
    }

    v29 = v75;
    v69 = *v73;
    v69(v8, v28, 1, v75);
    v79 = a1;
    v80 = v17;
    v81 = v74;
    v82 = v26;
    v83 = v20;
    v68 = *v72;
    if (v68(v8, 1, v29) == 1)
    {
      sub_1E47738B8(v8, &qword_1ECF7B950, &unk_1E487AE90);
      v57 = a1;
      goto LABEL_52;
    }

    sub_1E487049C(v8, v76, type metadata accessor for Event);
    sub_1E487914C();
    sub_1E47CDCB4();
    sub_1E4878C0C();

    v30 = sub_1E487917C();
    v31 = -1 << *(a2 + 32);
    v22 = v30 & ~v31;
    v9 = v22 >> 6;
    v8 = 1 << v22;
    if (((1 << v22) & v77[v22 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1E487043C(v76, type metadata accessor for Event);
    v22 = v26;
    a1 = v71;
    v17 = v70;
    v8 = v63;
  }

  v32 = ~v31;
  v24 = *(i + 72);
  v17 = a2;
  while (1)
  {
    sub_1E48703D4(*(a2 + 48) + v24 * v22, v14, type metadata accessor for Event);
    v33 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v14, v76);
    sub_1E487043C(v14, type metadata accessor for Event);
    if (v33)
    {
      break;
    }

    v22 = (v22 + 1) & v32;
    v9 = v22 >> 6;
    v8 = 1 << v22;
    a2 = v17;
    if (((1 << v22) & v77[v22 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v34 = sub_1E487043C(v76, type metadata accessor for Event);
  a2 = v17;
  v35 = *(v17 + 32);
  v63 = ((1 << v35) + 63) >> 6;
  v21 = (8 * v63);
  a1 = v66;
  if ((v35 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x1EEE9AC00](v34);
    v37 = &v62 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v37, v77, v36);
    v38 = *&v37[8 * v9] & ~v8;
    v39 = *(a2 + 16);
    v76 = v37;
    *&v37[8 * v9] = v38;
    v40 = v39 - 1;
    v22 = v71;
    v9 = v70;
    v41 = v67;
LABEL_25:
    i = v40;
    while (v20)
    {
      v42 = v26;
LABEL_37:
      v45 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      sub_1E48703D4(*(v22 + 48) + (v45 | (v42 << 6)) * v24, a1, type metadata accessor for Event);
      v46 = 0;
LABEL_38:
      v47 = v75;
      v69(a1, v46, 1, v75);
      v79 = v22;
      v80 = v9;
      v81 = v74;
      v82 = v26;
      v83 = v20;
      if (v68(a1, 1, v47) == 1)
      {
        sub_1E47738B8(a1, &qword_1ECF7B950, &unk_1E487AE90);
        a2 = sub_1E48690A0(v76, v63, i, a2);
        goto LABEL_51;
      }

      sub_1E487049C(a1, v78, type metadata accessor for Event);
      sub_1E487914C();
      sub_1E47CDCB4();
      sub_1E4878C0C();

      v48 = sub_1E487917C();
      v49 = -1 << *(a2 + 32);
      v50 = v48 & ~v49;
      v8 = v50 >> 6;
      v51 = 1 << v50;
      if (((1 << v50) & v77[v50 >> 6]) != 0)
      {
        sub_1E48703D4(*(v17 + 48) + v50 * v24, v14, type metadata accessor for Event);
        v52 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v14, v78);
        sub_1E487043C(v14, type metadata accessor for Event);
        if ((v52 & 1) == 0)
        {
          v53 = ~v49;
          do
          {
            v50 = (v50 + 1) & v53;
            v8 = v50 >> 6;
            v51 = 1 << v50;
            if (((1 << v50) & v77[v50 >> 6]) == 0)
            {
              goto LABEL_26;
            }

            sub_1E48703D4(*(v17 + 48) + v50 * v24, v14, type metadata accessor for Event);
            v54 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v14, v78);
            sub_1E487043C(v14, type metadata accessor for Event);
          }

          while ((v54 & 1) == 0);
        }

        sub_1E487043C(v78, type metadata accessor for Event);
        v55 = v76[v8];
        v76[v8] = v55 & ~v51;
        v56 = (v55 & v51) == 0;
        a2 = v17;
        v22 = v71;
        a1 = v66;
        v9 = v70;
        v41 = v67;
        if (!v56)
        {
          v40 = i - 1;
          if (__OFSUB__(i, 1))
          {
            __break(1u);
          }

          if (i == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_51;
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_26:
        sub_1E487043C(v78, type metadata accessor for Event);
        a2 = v17;
        v22 = v71;
        a1 = v66;
        v9 = v70;
        v41 = v67;
      }
    }

    if (v41 <= (v26 + 1))
    {
      v43 = v26 + 1;
    }

    else
    {
      v43 = v41;
    }

    v44 = v43 - 1;
    while (1)
    {
      v42 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v42 >= v41)
      {
        v20 = 0;
        v46 = 1;
        v26 = v44;
        goto LABEL_38;
      }

      v20 = *(v9 + 8 * v42);
      ++v26;
      if (v20)
      {
        v26 = v42;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v76 = v21;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = v76;
  v60 = swift_slowAlloc();
  memcpy(v60, v77, v59);
  v61 = sub_1E4868964(v60, v63, a2, v22, &v79);

  MEMORY[0x1E6919FE0](v60, -1, -1);
  a2 = v61;
LABEL_51:
  v57 = v79;
LABEL_52:
  sub_1E47A7300(v57);
  return a2;
}

uint64_t sub_1E4867EFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v84 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4878EFC();
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    sub_1E486CD68();
    sub_1E4878D8C();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = (v3 + 56);
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_1E4878F2C();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = sub_1E4878E2C();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v27 = *(*(v3 + 48) + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = sub_1E4878E3C();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = *(v3 + 16);
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = sub_1E4878F2C();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_1E4878E2C();
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(*(v45 + 48) + 8 * v47);
          v51 = sub_1E4878E3C();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1E486952C(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_1E4868E04(v58, v62, v3, v8, &v74);
  v60 = v59;

  MEMORY[0x1E6919FE0](v58, -1, -1);
  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_1E47A7300(v54);
  return v3;
}

uint64_t sub_1E486857C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Event(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1E487914C();
  sub_1E47CDCB4();
  sub_1E4878C0C();

  v10 = sub_1E487917C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1E48703D4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Event);
      v15 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_1E487043C(v8, type metadata accessor for Event);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E4865540();
      v19 = v24;
    }

    a2 = v23;
    sub_1E487049C(*(v19 + 48) + v14 * v12, v23, type metadata accessor for Event);
    sub_1E4869888(v12);
    v16 = 0;
    *v17 = v24;
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1E48687CC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1E4878F3C();

    if (v6)
    {
      v7 = sub_1E4869720(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v10 = sub_1E4878E2C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1E4878E3C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E4865AA8();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1E4869CE8(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1E4868964(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B950, &unk_1E487AE90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v45 - v10;
  v52 = type metadata accessor for Event(0);
  v11 = MEMORY[0x1EEE9AC00](v52);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v11);
  v48 = a1;
  v49 = (&v45 - v15);
  v16 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v17 = v16 - 1;
  v50 = (v18 + 48);
  v51 = (v18 + 56);
  v56 = a3;
  v54 = v18;
  v55 = a3 + 56;
  while (2)
  {
    v47 = v17;
    do
    {
      while (1)
      {
        v19 = *a5;
        v20 = a5[1];
        v22 = a5[2];
        v21 = a5[3];
        v23 = a5[4];
        if (!v23)
        {
          v25 = (v22 + 64) >> 6;
          if (v25 <= v21 + 1)
          {
            v26 = v21 + 1;
          }

          else
          {
            v26 = (v22 + 64) >> 6;
          }

          v27 = v26 - 1;
          while (1)
          {
            v24 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v24 >= v25)
            {
              v28 = 0;
              v30 = 1;
              v29 = v53;
              goto LABEL_14;
            }

            v23 = *(v20 + 8 * v24);
            ++v21;
            if (v23)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v24 = a5[3];
LABEL_13:
        v28 = (v23 - 1) & v23;
        v29 = v53;
        sub_1E48703D4(*(v19 + 48) + *(v54 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v53, type metadata accessor for Event);
        v30 = 0;
        v27 = v24;
LABEL_14:
        v31 = v52;
        (*v51)(v29, v30, 1, v52);
        *a5 = v19;
        a5[1] = v20;
        a5[2] = v22;
        a5[3] = v27;
        a5[4] = v28;
        if ((*v50)(v29, 1, v31) == 1)
        {
          sub_1E47738B8(v29, &qword_1ECF7B950, &unk_1E487AE90);
          v44 = v56;

          return sub_1E48690A0(v48, v46, v47, v44);
        }

        v32 = v49;
        sub_1E487049C(v29, v49, type metadata accessor for Event);
        v33 = v56;
        sub_1E487914C();
        sub_1E47CDCB4();
        sub_1E4878C0C();

        v34 = sub_1E487917C();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v55 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_1E487043C(v32, type metadata accessor for Event);
      }

      v39 = *(v54 + 72);
      sub_1E48703D4(*(v56 + 48) + v39 * v36, v13, type metadata accessor for Event);
      v40 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v13, v32);
      sub_1E487043C(v13, type metadata accessor for Event);
      if ((v40 & 1) == 0)
      {
        v41 = ~v35;
        do
        {
          v36 = (v36 + 1) & v41;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v55 + 8 * (v36 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_1E48703D4(*(v56 + 48) + v39 * v36, v13, type metadata accessor for Event);
          v42 = _s14CalendarWidget22EventListCellViewModelV2eeoiySbAC_ACtFZ_0(v13, v32);
          sub_1E487043C(v13, type metadata accessor for Event);
        }

        while ((v42 & 1) == 0);
      }

      result = sub_1E487043C(v32, type metadata accessor for Event);
      v43 = v48[v37];
      v48[v37] = v43 & ~v38;
    }

    while ((v43 & v38) == 0);
    v17 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v47 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

void sub_1E4868E04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1E4878F2C())
          {
            goto LABEL_30;
          }

          sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1E486952C(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1E4878E2C();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1E4878E3C();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1E4878E3C();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1E48690A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Event(0);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB88, &qword_1E4883748);
  result = sub_1E4878F7C();
  v14 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 56;
  v44 = v10;
  v45 = a4;
  v42 = v13;
  v43 = v11;
  v41 = result;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_16:
    v22 = *(a4 + 48);
    v48 = *(v46 + 72);
    sub_1E48703D4(v22 + v48 * (v19 | (v17 << 6)), v13, type metadata accessor for Event);
    sub_1E487914C();
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1E4773850(&v13[*(v11 + 44)], v10, &unk_1ECF7B688, &qword_1E487C160);
    v23 = sub_1E487725C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {
      sub_1E47738B8(v10, &unk_1ECF7B688, &qword_1E487C160);
      v25 = 0;
      v26 = 0xE000000000000000;
    }

    else
    {
      v27 = sub_1E487723C();
      v28 = v10;
      v25 = v27;
      v26 = v29;
      (*(v24 + 8))(v28, v23);
    }

    MEMORY[0x1E69192D0](v25, v26);

    MEMORY[0x1E69192D0](45, 0xE100000000000000);
    v13 = v42;
    v11 = v43;
    if (v42[*(v43 + 52)])
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v42[*(v43 + 52)])
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    MEMORY[0x1E69192D0](v30, v31);

    sub_1E4878C0C();

    result = sub_1E487917C();
    v14 = v41;
    v32 = -1 << *(v41 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      v10 = v44;
      a4 = v45;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v18 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_35;
        }
      }

      goto LABEL_40;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v10 = v44;
    a4 = v45;
LABEL_35:
    *(v18 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    result = sub_1E487049C(v13, *(v14 + 48) + v35 * v48, type metadata accessor for Event);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_41;
    }

    v16 = v47;
    if (!a3)
    {
LABEL_37:

      return v14;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      goto LABEL_37;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v47 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E486952C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB60, &qword_1E4883720);
  result = sub_1E4878F7C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1E4878E2C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1E4869720(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1E4878F0C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1E4862FC8(v5, v4);
  v15 = v6;

  v7 = sub_1E4878E2C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1E4878E3C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1E4869CE8(v9);
  result = sub_1E4878E3C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4869888(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v35 - v4;
  v41 = type metadata accessor for Event(0);
  v5 = *(v41 - 8);
  result = MEMORY[0x1EEE9AC00](v41);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = sub_1E4878EDC();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v37 = (v14 + 1) & v13;
      v38 = v13;
      v15 = *(v5 + 72);
      v16 = v41;
      v39 = v10;
      v36 = v15;
      while (1)
      {
        v17 = a1;
        v18 = v15 * v12;
        sub_1E48703D4(*(v9 + 48) + v15 * v12, v8, type metadata accessor for Event);
        v19 = v9;
        sub_1E487914C();
        v42 = 0;
        v43 = 0xE000000000000000;
        v20 = v40;
        sub_1E4773850(&v8[*(v16 + 44)], v40, &unk_1ECF7B688, &qword_1E487C160);
        v21 = sub_1E487725C();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v20, 1, v21) == 1)
        {
          sub_1E47738B8(v20, &unk_1ECF7B688, &qword_1E487C160);
          v23 = 0;
          v24 = 0xE000000000000000;
        }

        else
        {
          v23 = sub_1E487723C();
          v24 = v25;
          (*(v22 + 8))(v20, v21);
        }

        MEMORY[0x1E69192D0](v23, v24);

        MEMORY[0x1E69192D0](45, 0xE100000000000000);
        v16 = v41;
        v26 = v8[*(v41 + 52)] ? 1702195828 : 0x65736C6166;
        v27 = v8[*(v41 + 52)] ? 0xE400000000000000 : 0xE500000000000000;
        MEMORY[0x1E69192D0](v26, v27);

        sub_1E4878C0C();

        v28 = sub_1E487917C();
        sub_1E487043C(v8, type metadata accessor for Event);
        v29 = v28 & v38;
        v30 = v38;
        a1 = v17;
        v9 = v19;
        if (v17 >= v37)
        {
          break;
        }

        v10 = v39;
        v15 = v36;
        if (v29 < v37)
        {
          goto LABEL_20;
        }

LABEL_21:
        v31 = v15 * a1;
        if (v15 * a1 < v18 || *(v19 + 48) + v15 * a1 >= (*(v19 + 48) + v18 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v12;
          if (v31 == v18)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v12;
LABEL_6:
        v12 = (v12 + 1) & v30;
        if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v10 = v39;
      v15 = v36;
      if (v29 < v37)
      {
        goto LABEL_6;
      }

LABEL_20:
      if (a1 < v29)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_25:

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v9 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v34;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_1E4869CE8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4878EDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1E4878E2C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E4869E88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1E487732C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E486A12C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1E4878EFC();
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  sub_1E486CD68();
  result = sub_1E4878D8C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1E4878F2C())
      {
        goto LABEL_30;
      }

      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1E486A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  if (sub_1E487767C() == 3)
  {
    v7 = 4;
    goto LABEL_36;
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    if ((v8 = sub_1E487771C(), (v9 & 1) == 0) && !v8 || (v10 = sub_1E487771C(), (v11 & 1) == 0) && v10 == 1)
    {
      v7 = 1;
      goto LABEL_36;
    }
  }

  __swift_project_boxed_opaque_existential_0(v67, v68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = sub_1E4878E5C();
  v60 = &v58;
  v13 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v15 = &v58 - v14;
  sub_1E487769C();
  v16 = *(AssociatedTypeWitness - 8);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v15, v59);
  }

  else
  {
    v65 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v64);
    (*(v16 + 32))();
    v17 = sub_1E48775AC();
    __swift_destroy_boxed_opaque_existential_1(v64);
    if (v17)
    {
LABEL_17:
      v7 = 2;
      goto LABEL_36;
    }
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    v18 = sub_1E487771C();
    if ((v19 & 1) == 0 && v18 == 4)
    {
      goto LABEL_17;
    }
  }

  if (sub_1E487770C())
  {
    v20 = sub_1E487771C();
    if ((v21 & 1) == 0 && v20 == 3)
    {
      v7 = 3;
      goto LABEL_36;
    }
  }

  if (sub_1E48776CC())
  {
LABEL_23:
    v7 = 5;
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_0(v67, v68);
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1E4878E5C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58 - v25;
  sub_1E487761C();
  v27 = *(v22 - 8);
  if ((*(v27 + 48))(v26, 1, v22) == 1)
  {
    (*(v24 + 8))(v26, v23);
    __swift_project_boxed_opaque_existential_0(v67, v68);
    v28 = swift_getAssociatedTypeWitness();
    v29 = sub_1E4878E5C();
    v30 = *(v29 - 8);
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v58 - v31;
    sub_1E487769C();
    v33 = *(v28 - 8);
    if ((*(v33 + 48))(v32, 1, v28) != 1)
    {
      v62 = v28;
      v63 = swift_getAssociatedConformanceWitness();
      v35 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(v33 + 32))(v35, v32, v28);
      __swift_project_boxed_opaque_existential_0(&v61, v62);
      v36 = swift_getAssociatedTypeWitness();
      v37 = sub_1E4878E5C();
      v38 = *(v37 - 8);
      MEMORY[0x1EEE9AC00](v37);
      v40 = &v58 - v39;
      sub_1E48775DC();
      v41 = *(v36 - 8);
      if ((*(v41 + 48))(v40, 1, v36) == 1)
      {
        (*(v38 + 8))(v40, v37);
        __swift_destroy_boxed_opaque_existential_1(&v61);
LABEL_33:
        sub_1E4878BDC();
        goto LABEL_34;
      }

      v65 = v36;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0(v64);
      (*(v41 + 32))();
      v43 = sub_1E48779EC();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_1(v64);
      __swift_destroy_boxed_opaque_existential_1(&v61);
      v46 = sub_1E4878BDC();
      if (!v45)
      {
        goto LABEL_34;
      }

      if (v43 == v46 && v45 == v47)
      {
      }

      else
      {
        v48 = sub_1E48790EC();

        if ((v48 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      __swift_project_boxed_opaque_existential_0(v67, v68);
      v49 = swift_getAssociatedTypeWitness();
      v29 = sub_1E4878E5C();
      v30 = *(v29 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v58 - v50;
      sub_1E487769C();
      v51 = *(v49 - 8);
      if ((*(v51 + 48))(v32, 1, v49) != 1)
      {
        v65 = v49;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(v64);
        (*(v51 + 32))();
        v52 = sub_1E48775BC();
        v54 = v53;
        __swift_destroy_boxed_opaque_existential_1(v64);
        v55 = sub_1E4878BDC();
        if (v54)
        {
          if (v52 == v55 && v54 == v56)
          {

            v7 = 5;
            goto LABEL_36;
          }

          v57 = sub_1E48790EC();

          if (v57)
          {
            goto LABEL_23;
          }

LABEL_35:
          v7 = 0;
          goto LABEL_36;
        }

LABEL_34:

        goto LABEL_35;
      }
    }

    (*(v30 + 8))(v32, v29);
    goto LABEL_33;
  }

  v62 = v22;
  v63 = swift_getAssociatedConformanceWitness();
  v34 = __swift_allocate_boxed_opaque_existential_0(&v61);
  (*(v27 + 32))(v34, v26, v22);
  sub_1E47B488C(&v61, v64);
  __swift_project_boxed_opaque_existential_0(v64, v65);
  if (sub_1E4877A2C())
  {
    v7 = 6;
  }

  else
  {
    v7 = 7;
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1(v67);
  return v7;
}

uint64_t sub_1E486AE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v54 = a2;
  v67 = type metadata accessor for Utils.EventWithColor(0);
  v63 = *(v67 - 8);
  v4 = MEMORY[0x1EEE9AC00](v67);
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - v6;
  v60 = type metadata accessor for ColorBarView.Styling(0);
  v8 = *(v60 - 8);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  v17 = type metadata accessor for Event(0) - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E7CC0];
  v59 = *(a1 + 16);
  if (v59)
  {
    v22 = 0;
    v23 = *(v18 + 80);
    v56 = *(v18 + 72);
    v57 = a1 + ((v23 + 32) & ~v23);
    v24 = MEMORY[0x1E69E7CC0];
    v55 = v16;
    v58 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v65 = v22;
      sub_1E48703D4(v57 + v56 * v22, v20, type metadata accessor for Event);
      v25 = sub_1E4770A7C(v20, v61);
      sub_1E487735C();
      v16[48] = 1;
      v66 = v25;
      *v16 = v25;
      *(v16 + 1) = 0;
      v16[16] = 1;
      *(v16 + 4) = 0;
      *(v16 + 5) = 0;
      *(v16 + 3) = 3;
      v26 = *(v24 + 16);
      v64 = v24;
      if (v26)
      {
        v27 = v24;
        v68 = v21;
        sub_1E485809C(0, v26, 0);
        v28 = v68;
        v29 = v27 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v30 = *(v63 + 72);
        do
        {
          sub_1E48703D4(v29, v7, type metadata accessor for Utils.EventWithColor);
          sub_1E48703D4(&v7[*(v67 + 20)], v11, type metadata accessor for ColorBarView.Styling);
          sub_1E487043C(v7, type metadata accessor for Utils.EventWithColor);
          v68 = v28;
          v32 = *(v28 + 16);
          v31 = *(v28 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1E485809C((v31 > 1), v32 + 1, 1);
            v28 = v68;
          }

          *(v28 + 16) = v32 + 1;
          sub_1E487049C(v11, v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, type metadata accessor for ColorBarView.Styling);
          v29 += v30;
          --v26;
        }

        while (v26);
        v16 = v55;
      }

      else
      {
        v28 = v21;
      }

      v33 = 0;
      v22 = v65 + 1;
      v34 = *(v28 + 16);
      while (v34 != v33)
      {
        sub_1E48703D4(v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v33++, v14, type metadata accessor for ColorBarView.Styling);
        v35 = sub_1E487862C();
        sub_1E487043C(v14, type metadata accessor for ColorBarView.Styling);
        if (v35)
        {

          sub_1E487043C(v16, type metadata accessor for ColorBarView.Styling);
          v20 = v58;
          sub_1E487043C(v58, type metadata accessor for Event);
          v21 = MEMORY[0x1E69E7CC0];
          v24 = v64;
          goto LABEL_4;
        }
      }

      v20 = v58;
      v36 = v62;
      sub_1E48703D4(v58, v62, type metadata accessor for Event);
      sub_1E48703D4(v16, v36 + *(v67 + 20), type metadata accessor for ColorBarView.Styling);
      v37 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1E4860CF4(0, v37[2] + 1, 1, v37, &qword_1ECF7DBA8, &qword_1E4883768, type metadata accessor for Utils.EventWithColor);
      }

      v39 = v37[2];
      v38 = v37[3];
      v40 = v37;
      if (v39 >= v38 >> 1)
      {
        v40 = sub_1E4860CF4((v38 > 1), v39 + 1, 1, v37, &qword_1ECF7DBA8, &qword_1E4883768, type metadata accessor for Utils.EventWithColor);
      }

      sub_1E487043C(v16, type metadata accessor for ColorBarView.Styling);
      sub_1E487043C(v20, type metadata accessor for Event);
      v40[2] = v39 + 1;
      v24 = v40;
      sub_1E487049C(v62, v40 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v39, type metadata accessor for Utils.EventWithColor);
      v21 = MEMORY[0x1E69E7CC0];
LABEL_4:
      ;
    }

    while (v22 != v59);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v44 = sub_1E47F8C3C(v54, v24);
  if ((v43 & 1) == 0)
  {
    goto LABEL_22;
  }

  v47 = v43;
  v48 = v42;
  v49 = v41;
  sub_1E487910C();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = MEMORY[0x1E69E7CC0];
  }

  v51 = *(v50 + 16);

  if (__OFSUB__(v47 >> 1, v48))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v51 != (v47 >> 1) - v48)
  {
LABEL_32:
    swift_unknownObjectRelease();
    v43 = v47;
    v42 = v48;
    v41 = v49;
LABEL_22:
    sub_1E486106C(v44, v41, v42, v43, &qword_1ECF7DBA8, &qword_1E4883768, type metadata accessor for Utils.EventWithColor);
    v46 = v45;
LABEL_29:
    swift_unknownObjectRelease();
    return v46;
  }

  v46 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v46)
  {
    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  return v46;
}

uint64_t sub_1E486B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Utils.EventWithColor(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ColorBarView.Styling(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E486AE54(a1, a2, a3);
  v15 = *(v14 + 16);
  if (v15)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1E485809C(0, v15, 0);
    v16 = v24;
    v17 = *(v7 + 80);
    v23 = v14;
    v18 = v14 + ((v17 + 32) & ~v17);
    v19 = *(v7 + 72);
    do
    {
      sub_1E48703D4(v18, v9, type metadata accessor for Utils.EventWithColor);
      sub_1E48703D4(&v9[*(v6 + 20)], v13, type metadata accessor for ColorBarView.Styling);
      sub_1E487043C(v9, type metadata accessor for Utils.EventWithColor);
      v24 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E485809C((v20 > 1), v21 + 1, 1);
        v16 = v24;
      }

      *(v16 + 16) = v21 + 1;
      sub_1E487049C(v13, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, type metadata accessor for ColorBarView.Styling);
      v18 += v19;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1E486B81C(uint64_t a1)
{
  v2 = sub_1E487751C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB50, &qword_1E4883718);
    v9 = sub_1E4878F7C();
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
      sub_1E486CD08(&qword_1EE2B59E8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1E4878A9C();
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
          sub_1E486CD08(&qword_1EE2B59E0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1E4878AFC();
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

uint64_t sub_1E486BB3C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4878F0C())
  {
    v4 = sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    v5 = sub_1E486CD68();
    result = MEMORY[0x1E6919410](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6919650](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1E4862D90(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1E4878F0C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1E486BC7C(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_1E4878F0C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6919650](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 isEqual_];

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1E486BD74(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1E486BC7C(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1E4878F0C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1E4878F0C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6919650](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 isEqual_];

    if ((v13 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6919650](v8, v5);
          v15 = MEMORY[0x1E6919650](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_45;
          }

          if (v9 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v5 + 32 + 8 * v9);
          v14 = *(v5 + 32 + 8 * v8);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1E4866E80(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = sub_1E4866E80(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v9;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v24 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1E4878F0C();
}

uint64_t sub_1E486BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1E4878F0C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4878F0C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E486C0E4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1E4878F0C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1E4878F0C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1E48478C8(result, 1);

  return sub_1E486BFD4(v5, v3, 0);
}

void sub_1E486C1BC(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69669B8]);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E48609C4;
  aBlock[3] = &block_descriptor_4;
  v3 = _Block_copy(aBlock);

  v4 = [v2 initWithEventStore:a1 visibilityChangedCallback:v3 queue:0];
  _Block_release(v3);
  v5 = [v4 visibleCalendars];
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v6 = sub_1E4878CAC();

  aBlock[0] = v6;
  v7 = objc_opt_self();
  v8 = [v7 unselectedCalendarsForFocusModeInEventStore_];
  if (v8)
  {
    v9 = v8;
    sub_1E486CD68();
    v10 = sub_1E4878D5C();

    v11 = sub_1E486BB3C(v6);

    v12 = sub_1E485F4DC(v10, v11);

    v13 = sub_1E4861210(v12);

    aBlock[0] = v13;
  }

  v14 = [objc_opt_self() isReminderAppLocked];
  v15 = [v7 reminderCalendarInEventStore_];
  v16 = v15;
  if (v14)
  {
    v17 = v15;
    v18 = sub_1E486BD74(aBlock, v16);

    if (aBlock[0] >> 62)
    {
      v19 = sub_1E4878F0C();
      if (v19 >= v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v18)
      {
LABEL_6:
        sub_1E486C0E4(v18, v19);

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1E486C438(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1E487773C();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1E48776CC();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if (sub_1E48776AC())
  {
    return sub_1E4878BDC();
  }

  else
  {
    return 0;
  }
}

void *sub_1E486C514(char a1, uint64_t a2, void *a3)
{
  v63 = type metadata accessor for DayEvents(0);
  v6 = *(v63 - 8);
  v7 = MEMORY[0x1EEE9AC00](v63);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v55 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v55 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  v23 = sub_1E487753C();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {

    return a3;
  }

  v57 = v25;
  v58 = v24;
  sub_1E4877A7C();
  v28 = a3[2];
  if (!v28)
  {
    a3 = MEMORY[0x1E69E7CC0];
    v48 = v59;
    v47 = v60;
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v29 = v6;
  v30 = 0;
  v66 = 0;
  v68 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = a3 + v68;
  v56 = v29;
  v67 = *(v29 + 72);
  a3 = MEMORY[0x1E69E7CC0];
  v64 = v13;
  v65 = a2;
  do
  {
    sub_1E48703D4(v31, v22, type metadata accessor for DayEvents);
    if (sub_1E48774CC())
    {
      v32 = sub_1E487732C();
      (*(*(v32 - 8) + 16))(v20, v22, v32);
      v33 = v63;
      v34 = *&v22[*(v63 + 24)];
      *&v20[*(v63 + 20)] = *&v22[*(v63 + 20)];
      *&v20[*(v33 + 24)] = v34;
      v30 = 1;
      v20[*(v33 + 28)] = 1;
    }

    else
    {
      v35 = sub_1E48772CC();
      if (v66 & 1 | ((v35 & 1) == 0))
      {
        v30 |= v35;
        sub_1E48703D4(v22, v20, type metadata accessor for DayEvents);
        goto LABEL_14;
      }

      v36 = sub_1E487732C();
      v37 = v61;
      (*(*(v36 - 8) + 16))(v61, a2, v36);
      v38 = v62;
      v39 = v63;
      v40 = MEMORY[0x1E69E7CC0];
      *(v37 + *(v63 + 20)) = MEMORY[0x1E69E7CC0];
      *(v37 + *(v39 + 24)) = v40;
      *(v37 + *(v39 + 28)) = 1;
      sub_1E48703D4(v37, v38, type metadata accessor for DayEvents);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_1E4860CF4(0, a3[2] + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v42 = a3[2];
      v41 = a3[3];
      if (v42 >= v41 >> 1)
      {
        a3 = sub_1E4860CF4((v41 > 1), v42 + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      sub_1E487043C(v61, type metadata accessor for DayEvents);
      a3[2] = v42 + 1;
      sub_1E487049C(v62, a3 + v68 + v42 * v67, type metadata accessor for DayEvents);
      sub_1E48703D4(v22, v20, type metadata accessor for DayEvents);
      v30 = 1;
    }

    v66 = 1;
LABEL_14:
    sub_1E48703D4(v20, v13, type metadata accessor for DayEvents);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_1E4860CF4(0, a3[2] + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
    }

    v44 = a3[2];
    v43 = a3[3];
    if (v44 >= v43 >> 1)
    {
      a3 = sub_1E4860CF4((v43 > 1), v44 + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
    }

    sub_1E487043C(v20, type metadata accessor for DayEvents);
    sub_1E487043C(v22, type metadata accessor for DayEvents);
    a3[2] = v44 + 1;
    v45 = v67;
    v46 = a3 + v68 + v44 * v67;
    v13 = v64;
    sub_1E487049C(v64, v46, type metadata accessor for DayEvents);
    v31 += v45;
    --v28;
    a2 = v65;
  }

  while (v28);
  v48 = v59;
  v47 = v60;
  if (v30)
  {
    (*(v57 + 8))(v27, v58);
    return a3;
  }

  v6 = v56;
  v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v50 = sub_1E487732C();
  (*(*(v50 - 8) + 16))(v48, a2, v50);
  v51 = v63;
  *(v48 + *(v63 + 20)) = v49;
  *(v48 + *(v51 + 24)) = v49;
  *(v48 + *(v51 + 28)) = 1;
  sub_1E48703D4(v48, v47, type metadata accessor for DayEvents);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a3 = sub_1E4860CF4(0, a3[2] + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
  }

  v53 = a3[2];
  v52 = a3[3];
  if (v53 >= v52 >> 1)
  {
    a3 = sub_1E4860CF4((v52 > 1), v53 + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
  }

  sub_1E487043C(v48, type metadata accessor for DayEvents);
  (*(v57 + 8))(v27, v58);
  a3[2] = v53 + 1;
  sub_1E487049C(v47, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v53, type metadata accessor for DayEvents);
  return a3;
}

uint64_t sub_1E486CD08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E486CD68()
{
  result = qword_1ECF7DB58;
  if (!qword_1ECF7DB58)
  {
    sub_1E48493B4(255, &qword_1EE2B46D0, 0x1E6966990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DB58);
  }

  return result;
}

uint64_t sub_1E486CDD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1 && a2 >= 1)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v2 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  if (qword_1EE2B4848 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1E487A7E0;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  v6 = sub_1E4878BAC();

  return v6;
}

unint64_t sub_1E486CF9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E486D088(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1E4860B84(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1E486CF9C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1E486D148(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v114 = a3;
  v111 = a2;
  v116 = a1;
  v4 = sub_1E487751C();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1E487744C();
  v117 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v109 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v100 - v12;
  v110 = sub_1E487757C();
  v14 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v107 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v100 - v23;
  v25 = sub_1E487732C();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v106 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v108 = &v100 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v100 - v31;
  sub_1E4773850(v111, v24, &unk_1ECF7C880, &qword_1E4882710);
  v111 = *(v26 + 48);
  v33 = v111(v24, 1, v25);
  v115 = v26;
  if (v33 == 1)
  {
    sub_1E47738B8(v24, &unk_1ECF7C880, &qword_1E4882710);
    v34 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v35 = sub_1E487748C();
    [v34 setCalendar_];

    sub_1E487750C();
    v36 = sub_1E487756C();
    (*(v14 + 8))(v16, v110);
    [v34 setTimeZone_];

    v37 = v109;
    sub_1E48774EC();
    v38 = *(v117 + 48);
    v39 = v112;
    if (v38(v37, 1, v112) == 1)
    {
      v40 = 0;
    }

    else
    {
      v49 = v109;
      v40 = sub_1E48773DC();
      (*(v117 + 8))(v49, v39);
    }

    [v34 setLocale_];

    sub_1E4773850(v114, v20, &unk_1ECF7C880, &qword_1E4882710);
    if (v111(v20, 1, v25) == 1)
    {
      sub_1E47738B8(v20, &unk_1ECF7C880, &qword_1E4882710);
LABEL_20:
      [v34 setFormattingContext_];
      v77 = sub_1E4878B9C();
      [v34 setLocalizedDateFormatFromTemplate_];

      v78 = sub_1E48772BC();
      v79 = [v34 stringFromDate_];

      v80 = sub_1E4878BDC();
      return v80;
    }

    v63 = v115;
    v64 = v106;
    (*(v115 + 32))(v106, v20, v25);
    if ((sub_1E48774CC() & 1) == 0)
    {
      (*(v63 + 8))(v64, v25);
      goto LABEL_20;
    }

    v65 = v63;
    v66 = v101;
    sub_1E48774EC();
    if (v38(v66, 1, v39) == 1)
    {
      v67 = v102;
      sub_1E48773EC();
      v68 = v38(v66, 1, v39);
      v69 = v39;
      v70 = v117;
      if (v68 != 1)
      {
        sub_1E47738B8(v66, &qword_1ECF7BE58, &unk_1E487DDB0);
      }
    }

    else
    {
      v70 = v117;
      v67 = v102;
      (*(v117 + 32))(v102, v66, v39);
      v69 = v39;
    }

    sub_1E485F184();
    (*(v70 + 8))(v67, v69);
    v95 = v103;
    v94 = v104;
    v96 = v105;
    (*(v104 + 104))(v103, *MEMORY[0x1E6969A88], v105);
    sub_1E487752C();
    (*(v94 + 8))(v95, v96);
    [v34 setFormattingContext_];
    v97 = sub_1E4878B9C();

    [v34 setLocalizedDateFormatFromTemplate_];

    v98 = sub_1E48772BC();
    v99 = [v34 stringFromDate_];

    v80 = sub_1E4878BDC();
    (*(v65 + 8))(v106, v25);
  }

  else
  {
    v41 = *(v26 + 32);
    v109 = v32;
    v106 = v41;
    (v41)(v32, v24, v25);
    v42 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v43 = sub_1E487748C();
    [v42 setCalendar_];

    sub_1E487750C();
    v44 = sub_1E487756C();
    (*(v14 + 8))(v16, v110);
    [v42 setTimeZone_];

    sub_1E48774EC();
    v45 = v117;
    v46 = v112;
    v47 = v25;
    if ((*(v117 + 48))(v13, 1, v112) == 1)
    {
      v48 = 0;
    }

    else
    {
      v50 = sub_1E48773DC();
      v51 = v46;
      v48 = v50;
      (*(v45 + 8))(v13, v51);
    }

    v52 = v107;
    [v42 setLocale_];

    [v42 setDateStyle_];
    [v42 setTimeStyle_];
    [v42 setFormattingContext_];
    sub_1E4773850(v114, v52, &unk_1ECF7C880, &qword_1E4882710);
    if (v111(v52, 1, v25) == 1)
    {
      sub_1E47738B8(v52, &unk_1ECF7C880, &qword_1E4882710);
      [v42 setDateStyle_];
      [v42 setTimeStyle_];
      v53 = sub_1E48772BC();
      v54 = [v42 stringFromDate_];

      v55 = sub_1E4878BDC();
      v57 = v56;

      v58 = sub_1E48772BC();
      v59 = [v42 stringFromDate_];

      v60 = sub_1E4878BDC();
      v62 = v61;
    }

    else
    {
      (v106)(v108, v52);
      v71 = sub_1E48774CC();
      v72 = sub_1E48774CC();
      if (v71)
      {
        v73 = sub_1E48772BC();
        v74 = [v42 stringFromDate_];

        v55 = sub_1E4878BDC();
        v57 = v75;

        if ((v72 & 1) == 0)
        {
          v76 = sub_1E4878B9C();
          [v42 setLocalizedDateFormatFromTemplate_];
        }
      }

      else
      {
        v81 = sub_1E4878B9C();
        [v42 setLocalizedDateFormatFromTemplate_];

        v82 = sub_1E48772BC();
        v83 = [v42 stringFromDate_];

        v55 = sub_1E4878BDC();
        v57 = v84;

        if (v72)
        {
          [v42 setDateStyle_];
          [v42 setTimeStyle_];
        }
      }

      v85 = sub_1E48772BC();
      v86 = [v42 stringFromDate_];

      v60 = sub_1E4878BDC();
      v62 = v87;

      (*(v115 + 8))(v108, v25);
    }

    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1E487A7F0;
    v89 = MEMORY[0x1E69E6158];
    *(v88 + 56) = MEMORY[0x1E69E6158];
    v92 = sub_1E478B950(v88, v90, v91);
    *(v88 + 32) = v55;
    *(v88 + 40) = v57;
    *(v88 + 96) = v89;
    *(v88 + 104) = v92;
    *(v88 + 64) = v92;
    *(v88 + 72) = v60;
    *(v88 + 80) = v62;
    v80 = sub_1E4878BAC();

    (*(v115 + 8))(v109, v47);
  }

  return v80;
}

id sub_1E486DF20(double a1)
{
  result = [objc_opt_self() localizedStringForInterval:2 withOptions:a1];
  if (result)
  {
    v2 = result;
    v3 = sub_1E4878BDC();
    v5 = v4;

    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E487A7E0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1E478B950(v6, v7, v8);
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v9 = sub_1E4878BAC();

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E486E1D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for Event(0);
  return a2(a1 + *(v6 + 20), v5) & 1;
}

uint64_t sub_1E486E22C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v34 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  if (!a2 || !a1 && a2 == 0xE000000000000000 || (sub_1E48790EC() & 1) != 0)
  {
    return 0;
  }

  v19 = objc_opt_self();
  v20 = sub_1E4878B9C();
  v21 = sub_1E487756C();
  v22 = [v19 overlayCalendarForCalendarIdentifier:v20 timezone:v21];

  if (v22)
  {
    sub_1E487749C();

    v23 = sub_1E487753C();
    (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  }

  else
  {
    v24 = sub_1E487753C();
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  }

  sub_1E477372C(v15, v17, &qword_1ECF7CFA8, &qword_1E487FBA0);
  v25 = sub_1E48772BC();
  if (a3)
  {
    sub_1E4773850(v17, v12, &qword_1ECF7CFA8, &qword_1E487FBA0);
    v26 = sub_1E487753C();
    v27 = *(v26 - 8);
    v28 = 0;
    if ((*(v27 + 48))(v12, 1, v26) != 1)
    {
      v28 = sub_1E487748C();
      (*(v27 + 8))(v12, v26);
    }

    v29 = [objc_opt_self() overlayDayNumberStringForDate:v25 inCalendar:v28];
  }

  else
  {
    sub_1E4773850(v17, v9, &qword_1ECF7CFA8, &qword_1E487FBA0);
    v30 = sub_1E487753C();
    v31 = *(v30 - 8);
    v28 = 0;
    if ((*(v31 + 48))(v9, 1, v30) != 1)
    {
      v28 = sub_1E487748C();
      (*(v31 + 8))(v9, v30);
    }

    v29 = [objc_opt_self() monthDayStringForDate:v25 inCalendar:v28];
  }

  v32 = v29;

  if (v32)
  {
    v33 = sub_1E4878BDC();
  }

  else
  {
    v33 = 0;
  }

  sub_1E47738B8(v17, &qword_1ECF7CFA8, &qword_1E487FBA0);
  return v33;
}

double sub_1E486E640(char a1, char a2)
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v21 = sub_1E48771EC();
  v23 = v3;
  v4 = sub_1E48771EC();
  v6 = v5;
  v20 = sub_1E48771EC();
  v8 = v7;
  v9 = sub_1E48771EC();
  v11 = v10;
  v12 = sub_1E48771EC();
  v14 = v13;
  v15 = sub_1E48771EC();
  v17 = v16;
  if ((a1 & 1) == 0)
  {

    if (a2)
    {
      v15 = v20;
      v17 = v8;
    }

    goto LABEL_8;
  }

  if ((a2 & 1) == 0)
  {
LABEL_8:
    v9 = v4;
    v11 = v6;
    v6 = v23;
    v4 = v21;
    goto LABEL_9;
  }

  v15 = v12;
  v17 = v14;
LABEL_9:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  v18 = swift_allocObject();
  *&result = 3;
  *(v18 + 16) = xmmword_1E487AC40;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v9;
  *(v18 + 56) = v11;
  *(v18 + 64) = v4;
  *(v18 + 72) = v6;
  return result;
}

void *sub_1E486E95C(uint64_t a1, uint64_t a2)
{
  v184 = a1;
  v161 = type metadata accessor for Location(0);
  v170 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v157 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v159 = &v156 - v5;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C800, &qword_1E487E578);
  MEMORY[0x1EEE9AC00](v158);
  v162 = &v156 - v6;
  v188 = sub_1E487725C();
  v169 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v168 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v185 = &v156 - v9;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C808, &qword_1E487E580);
  MEMORY[0x1EEE9AC00](v182);
  v195 = &v156 - v10;
  v11 = type metadata accessor for Event(0);
  v199 = *(v11 - 1);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v156 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v156 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v156 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v166 = &v156 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v165 = &v156 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v156 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v178 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v187 = &v156 - v28;
  v189 = sub_1E487732C();
  v29 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v200 = (&v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = type metadata accessor for DayEvents(0);
  v31 = MEMORY[0x1EEE9AC00](v183);
  v177 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v175 = &v156 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v179 = &v156 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v193 = &v156 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v156 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v192 = &v156 - v43;
  v44 = *(a2 + 16);
  v181 = v42;
  if (!v44)
  {
    v194 = MEMORY[0x1E69E7CC8];
LABEL_15:
    v176 = *(v184 + 16);
    if (!v176)
    {
      v190 = MEMORY[0x1E69E7CC0];
LABEL_118:

      return v190;
    }

    v69 = 0;
    v171 = (*(v181 + 80) + 32) & ~*(v181 + 80);
    v174 = v184 + v171;
    v186 = *(v181 + 72);
    v173 = (v181 + 56);
    v172 = (v181 + 48);
    v181 = v169 + 48;
    v163 = (v169 + 32);
    v167 = (v169 + 8);
    v164 = (v29 + 16);
    v190 = MEMORY[0x1E69E7CC0];
    v70 = v166;
    v71 = v165;
    v72 = v198;
    v73 = v178;
    v74 = v183;
    v160 = (v170 + 48);
    v180 = v11;
LABEL_19:
    v184 = v69;
    v76 = v193;
    sub_1E48703D4(v174 + v186 * v69, v193, type metadata accessor for DayEvents);
    v77 = v194;
    if (v194[2] && (v78 = sub_1E481DD74(v76), (v79 & 1) != 0))
    {
      sub_1E48703D4(v77[7] + v78 * v186, v187, type metadata accessor for DayEvents);
      v80 = 0;
    }

    else
    {
      v80 = 1;
    }

    v81 = v187;
    (*v173)(v187, v80, 1, v74);
    sub_1E4773850(v81, v73, &qword_1ECF7C380, &qword_1E4882C20);
    if ((*v172)(v73, 1, v74) == 1)
    {
      sub_1E47738B8(v73, &qword_1ECF7C380, &qword_1E4882C20);
      sub_1E48703D4(v193, v177, type metadata accessor for DayEvents);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v190 = sub_1E4860CF4(0, v190[2] + 1, 1, v190, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v83 = v190[2];
      v82 = v190[3];
      v73 = v178;
      if (v83 >= v82 >> 1)
      {
        v190 = sub_1E4860CF4((v82 > 1), v83 + 1, 1, v190, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      sub_1E47738B8(v187, &qword_1ECF7C380, &qword_1E4882C20);
      sub_1E487043C(v193, type metadata accessor for DayEvents);
      v75 = v190;
      v190[2] = v83 + 1;
      sub_1E487049C(v177, v75 + v171 + v83 * v186, type metadata accessor for DayEvents);
      goto LABEL_18;
    }

    sub_1E487049C(v73, v179, type metadata accessor for DayEvents);
    v84 = MEMORY[0x1E69E7CD0];
    v204 = MEMORY[0x1E69E7CD0];
    v85 = *(v74 + 20);
    v86 = *(v193 + v85);
    v87 = *(v86 + 16);
    v196 = v86;
    v200 = v87;
    if (v87)
    {
      v88 = v86 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
      v89 = *(v199 + 72);
      v90 = v87;
      do
      {
        sub_1E48703D4(v88, v72, type metadata accessor for Event);
        sub_1E4862654(v71, v72);
        sub_1E487043C(v71, type metadata accessor for Event);
        v88 += v89;
        --v90;
      }

      while (v90);
      v85 = *(v183 + 20);
      v84 = MEMORY[0x1E69E7CD0];
    }

    v203 = v84;
    v91 = *(v179 + v85);
    v92 = *(v91 + 16);
    if (v92)
    {
      v93 = v91 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
      v94 = *(v199 + 72);
      do
      {
        sub_1E48703D4(v93, v70, type metadata accessor for Event);
        sub_1E4862654(v71, v70);
        sub_1E487043C(v71, type metadata accessor for Event);
        v93 += v94;
        --v92;
      }

      while (v92);
      v95 = v203;
    }

    else
    {
      v95 = v84;
    }

    v96 = *(v95 + 16);
    v97 = *(v204 + 16);
    v169 = v95;
    if (v96 > v97 >> 3)
    {
      v98 = sub_1E48674FC(v95, v204);
    }

    else
    {
      v201 = v204;
      sub_1E48670D4(v95);
      v98 = v201;
    }

    v99 = v196;
    if (!v200)
    {
      v170 = MEMORY[0x1E69E7CC0];
      goto LABEL_112;
    }

    v100 = 0;
    v101 = v98 + 56;
    v170 = MEMORY[0x1E69E7CC0];
LABEL_42:
    if (v100 >= v99[2])
    {
      __break(1u);
      goto LABEL_120;
    }

    v197 = (*(v199 + 80) + 32) & ~*(v199 + 80);
    v102 = *(v199 + 72);
    sub_1E48703D4(v99 + v197 + v102 * v100, v19, type metadata accessor for Event);
    if (!*(v98 + 16) || (sub_1E487914C(), sub_1E47CDCB4(), sub_1E4878C0C(), , v103 = sub_1E487917C(), v99 = v196, v104 = -1 << *(v98 + 32), v105 = v103 & ~v104, ((*(v101 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0))
    {
LABEL_103:
      sub_1E487043C(v19, type metadata accessor for Event);
      v72 = v198;
      goto LABEL_104;
    }

    v106 = ~v104;
    while (1)
    {
      sub_1E48703D4(*(v98 + 48) + v105 * v102, v16, type metadata accessor for Event);
      v107 = *v16 == *v19 && v16[1] == v19[1];
      if (!v107 && (sub_1E48790EC() & 1) == 0 || (sub_1E48772EC() & 1) == 0 || (sub_1E48772EC() & 1) == 0 || *(v16 + v11[7]) != *(v19 + v11[7]) || *(v16 + v11[8]) != *(v19 + v11[8]) || (sub_1E487862C() & 1) == 0)
      {
        goto LABEL_48;
      }

      v108 = v11[10];
      v109 = (v16 + v108);
      v110 = *(v16 + v108 + 8);
      v111 = (v19 + v108);
      v112 = v111[1];
      if (v110)
      {
        if (!v112 || (*v109 != *v111 || v110 != v112) && (sub_1E48790EC() & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v112)
      {
        goto LABEL_48;
      }

      v191 = v100;
      v113 = v11[11];
      v114 = *(v182 + 48);
      v115 = v195;
      sub_1E4773850(v16 + v113, v195, &unk_1ECF7B688, &qword_1E487C160);
      v192 = v114;
      sub_1E4773850(v19 + v113, v115 + v114, &unk_1ECF7B688, &qword_1E487C160);
      v116 = *v181;
      v117 = v115;
      v118 = v188;
      if ((*v181)(v117, 1, v188) == 1)
      {
        v119 = v116(v195 + v192, 1, v118);
        v99 = v196;
        v11 = v180;
        v100 = v191;
        if (v119 != 1)
        {
          goto LABEL_47;
        }

        sub_1E47738B8(v195, &unk_1ECF7B688, &qword_1E487C160);
      }

      else
      {
        v120 = v195;
        sub_1E4773850(v195, v185, &unk_1ECF7B688, &qword_1E487C160);
        v121 = v120 + v192;
        v122 = v188;
        if (v116(v121, 1, v188) == 1)
        {
          (*v167)(v185, v122);
          v99 = v196;
          v11 = v180;
          v100 = v191;
LABEL_47:
          sub_1E47738B8(v195, &qword_1ECF7C808, &qword_1E487E580);
          goto LABEL_48;
        }

        (*v163)(v168, v195 + v192, v122);
        sub_1E486CD08(&qword_1EE2B4668, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        LODWORD(v192) = sub_1E4878AFC();
        v123 = *v167;
        (*v167)(v168, v122);
        v123(v185, v122);
        sub_1E47738B8(v195, &unk_1ECF7B688, &qword_1E487C160);
        v99 = v196;
        v11 = v180;
        v100 = v191;
        if ((v192 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (*(v16 + v11[12]) != *(v19 + v11[12]) || *(v16 + v11[13]) != *(v19 + v11[13]) || *(v16 + v11[14]) != *(v19 + v11[14]))
      {
        goto LABEL_48;
      }

      v191 = v11[15];
      v192 = *(v158 + 48);
      v124 = v162;
      sub_1E4773850(v16 + v191, v162, &qword_1ECF7C048, &qword_1E487C5F0);
      sub_1E4773850(v19 + v191, v124 + v192, &qword_1ECF7C048, &qword_1E487C5F0);
      v191 = *v160;
      if ((v191)(v124, 1, v161) == 1)
      {
        v125 = v162;
        v107 = (v191)(v162 + v192, 1, v161) == 1;
        v126 = v125;
        if (!v107)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v132 = v162;
        sub_1E4773850(v162, v159, &qword_1ECF7C048, &qword_1E487C5F0);
        v133 = v132 + v192;
        v134 = v192;
        if ((v191)(v133, 1, v161) == 1)
        {
          sub_1E487043C(v159, type metadata accessor for Location);
          v126 = v162;
LABEL_86:
          v135 = &qword_1ECF7C800;
          v136 = &qword_1E487E578;
LABEL_95:
          sub_1E47738B8(v126, v135, v136);
          v99 = v196;
          goto LABEL_48;
        }

        sub_1E487049C(v162 + v134, v157, type metadata accessor for Location);
        if ((sub_1E487715C() & 1) == 0)
        {
          goto LABEL_94;
        }

        v137 = *(v161 + 20);
        v138 = v159;
        v139 = (v159 + v137);
        v140 = *(v159 + v137 + 8);
        v141 = (v157 + v137);
        v142 = v141[1];
        if (!v140)
        {
          v191 = type metadata accessor for Location;
          v192 = v142;
          sub_1E487043C(v157, type metadata accessor for Location);
          sub_1E487043C(v138, v191);
          sub_1E47738B8(v162, &qword_1ECF7C048, &qword_1E487C5F0);
          v99 = v196;
          if (v192)
          {
            goto LABEL_48;
          }

          goto LABEL_78;
        }

        if (!v142 || (*v139 != *v141 || v140 != v142) && (sub_1E48790EC() & 1) == 0)
        {
LABEL_94:
          sub_1E487043C(v157, type metadata accessor for Location);
          sub_1E487043C(v159, type metadata accessor for Location);
          v126 = v162;
          v135 = &qword_1ECF7C048;
          v136 = &qword_1E487C5F0;
          goto LABEL_95;
        }

        sub_1E487043C(v157, type metadata accessor for Location);
        sub_1E487043C(v159, type metadata accessor for Location);
        v126 = v162;
      }

      sub_1E47738B8(v126, &qword_1ECF7C048, &qword_1E487C5F0);
      v99 = v196;
LABEL_78:
      v127 = v11[16];
      v128 = (v16 + v127);
      v129 = *(v16 + v127 + 8);
      v130 = (v19 + v127);
      v131 = v130[1];
      if (v129)
      {
        if (!v131 || (*v128 != *v130 || v129 != v131) && (sub_1E48790EC() & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v131)
      {
        goto LABEL_48;
      }

      if (*(v16 + v11[17]) == *(v19 + v11[17]) && *(v16 + v11[18]) == *(v19 + v11[18]) && *(v16 + v11[19]) == *(v19 + v11[19]))
      {
        sub_1E487043C(v16, type metadata accessor for Event);
        sub_1E487049C(v19, v156, type metadata accessor for Event);
        v143 = v170;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v143;
        v202 = v143;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v143 + 16) + 1, 1);
          v99 = v196;
          v145 = v202;
        }

        v72 = v198;
        v146 = v145;
        v148 = *(v145 + 16);
        v147 = *(v145 + 24);
        v149 = v148 + 1;
        if (v148 >= v147 >> 1)
        {
          v192 = v148 + 1;
          sub_1E4858038((v147 > 1), v148 + 1, 1);
          v149 = v192;
          v99 = v196;
          v146 = v202;
        }

        *(v146 + 16) = v149;
        v170 = v146;
        sub_1E487049C(v156, v146 + v197 + v148 * v102, type metadata accessor for Event);
LABEL_104:
        if (++v100 == v200)
        {
LABEL_112:

          v150 = v175;
          (*v164)(v175, v193, v189);
          v151 = v183;
          *(v150 + *(v183 + 20)) = v170;
          *(v150 + *(v151 + 24)) = MEMORY[0x1E69E7CC0];
          *(v150 + *(v151 + 28)) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v190 = sub_1E4860CF4(0, v190[2] + 1, 1, v190, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
          }

          v70 = v166;
          v71 = v165;
          v153 = v190[2];
          v152 = v190[3];
          if (v153 >= v152 >> 1)
          {
            v190 = sub_1E4860CF4((v152 > 1), v153 + 1, 1, v190, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
          }

          sub_1E47738B8(v187, &qword_1ECF7C380, &qword_1E4882C20);
          sub_1E487043C(v179, type metadata accessor for DayEvents);
          sub_1E487043C(v193, type metadata accessor for DayEvents);
          v154 = v190;
          v190[2] = v153 + 1;
          sub_1E487049C(v175, v154 + v171 + v153 * v186, type metadata accessor for DayEvents);
          v73 = v178;
LABEL_18:
          v69 = v184 + 1;
          v74 = v183;
          if (v184 + 1 == v176)
          {
            goto LABEL_118;
          }

          goto LABEL_19;
        }

        goto LABEL_42;
      }

LABEL_48:
      sub_1E487043C(v16, type metadata accessor for Event);
      v105 = (v105 + 1) & v106;
      if (((*(v101 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
      {
        goto LABEL_103;
      }
    }
  }

  v45 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  v46 = *(v42 + 72);
  v196 = (v29 + 16);
  v186 = (v29 + 8);
  v194 = MEMORY[0x1E69E7CC8];
  v191 = v29;
  v190 = v46;
  while (1)
  {
    v197 = v44;
    v49 = v192;
    sub_1E48703D4(v45, v192, type metadata accessor for DayEvents);
    v50 = *v196;
    v51 = v200;
    (*v196)(v200, v49, v189);
    v52 = v41;
    sub_1E487049C(v49, v41, type metadata accessor for DayEvents);
    v53 = v194;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v201 = v53;
    v56 = sub_1E481DD74(v51);
    v57 = v53[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      if ((v54 & 1) == 0)
      {
        sub_1E4861EF8();
      }
    }

    else
    {
      sub_1E48617B0(v59, v54);
      v61 = sub_1E481DD74(v200);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_122;
      }

      v56 = v61;
    }

    v194 = v201;
    if (v60)
    {
      v47 = v190;
      v48 = *(v201 + 56) + v56 * v190;
      v41 = v52;
      sub_1E4870324(v52, v48);
      (*v186)(v200, v189);
      v29 = v191;
    }

    else
    {
      *(v201 + 8 * (v56 >> 6) + 64) |= 1 << v56;
      v29 = v191;
      v63 = v200;
      v64 = v189;
      v50(v194[6] + *(v191 + 72) * v56, v200, v189);
      v47 = v190;
      v65 = v194[7] + v56 * v190;
      v41 = v52;
      sub_1E487049C(v52, v65, type metadata accessor for DayEvents);
      (*(v29 + 1))(v63, v64);
      v66 = v194[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_121;
      }

      v194[2] = v68;
    }

    v45 += v47;
    v44 = v197 - 1;
    if (v197 == 1)
    {
      goto LABEL_15;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_1E487912C();
  __break(1u);
  return result;
}

uint64_t sub_1E4870324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayEvents(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Utils.EventWithColor(uint64_t a1)
{
  result = qword_1EE2B1910;
  if (!qword_1EE2B1910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48703D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E487043C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E487049C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_1E4870504(uint64_t a1)
{
  v2 = type metadata accessor for Event(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E487732C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 1;
  }

  v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v13 = *(v7 + 16);
  v14 = v12 + *(v2 + 24);
  v20 = v8;
  v13(v10, v14, v8);
  v15 = 0;
  do
  {
    v16 = v11 == v15;
    if (v11 == v15)
    {
      break;
    }

    sub_1E48703D4(v12 + *(v3 + 72) * v15++, v5, type metadata accessor for Event);
    v17 = sub_1E48772EC();
    sub_1E487043C(v5, type metadata accessor for Event);
  }

  while ((v17 & 1) != 0);
  (*(v7 + 8))(v10, v20);
  return v16;
}

uint64_t sub_1E4870734(uint64_t a1)
{
  result = type metadata accessor for Event(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ColorBarView.Styling(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4870800(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1E487757C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    return sub_1E48771EC();
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v13 = sub_1E487748C();
    [v12 setCalendar_];

    sub_1E487750C();
    v14 = sub_1E487756C();
    (*(v8 + 8))(v10, v7);
    [v12 setTimeZone_];

    sub_1E48774EC();
    v15 = sub_1E487744C();
    v16 = *(v15 - 8);
    v17 = 0;
    if ((*(v16 + 48))(v6, 1, v15) != 1)
    {
      v17 = sub_1E48773DC();
      (*(v16 + 8))(v6, v15);
    }

    [v12 setLocale_];

    [v12 setDateStyle_];
    [v12 setTimeStyle_];
    [v12 setFormattingContext_];
    if ((sub_1E48774CC() & 1) == 0)
    {
      v18 = sub_1E4878B9C();
      [v12 setLocalizedDateFormatFromTemplate_];
    }

    v19 = sub_1E48772BC();
    v20 = [v12 stringFromDate_];

    v21 = sub_1E4878BDC();
    v23 = v22;

    v24 = sub_1E48772BC();
    v25 = [v12 stringFromDate_];

    v26 = sub_1E4878BDC();
    v28 = v27;

    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E487A7F0;
    v30 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1E478B950(v29, v31, v32);
    *(v29 + 32) = v21;
    *(v29 + 40) = v23;
    *(v29 + 96) = v30;
    *(v29 + 104) = v33;
    *(v29 + 64) = v33;
    *(v29 + 72) = v26;
    *(v29 + 80) = v28;
    v34 = sub_1E4878BAC();

    return v34;
  }
}

uint64_t sub_1E4870D68@<X0>(uint64_t a2@<X8>)
{
  v37 = a2;
  v2 = sub_1E487751C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1E487732C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v33 = &v30 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v34 = &v30 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v35 = sub_1E487753C();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  sub_1E487745C();
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A48], v2);
  v24 = v21;
  sub_1E48774BC();
  (*(v3 + 8))(v5, v2);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v19;
    sub_1E487745C();
    v26 = *(v10 + 8);
    v26(v8, v9);
    v27 = *(v10 + 16);
    v28 = v33;
    v27(v33, v19, v9);
    v29 = v34;
    sub_1E487728C();
    v27(v28, v24, v9);
    v27(v36, v29, v9);
    sub_1E487702C();
    v26(v29, v9);
    v26(v31, v9);
    v26(v24, v9);
    return (*(v32 + 8))(v23, v35);
  }

  return result;
}

void sub_1E48711A4(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = sub_1E487751C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = sub_1E487732C();
  v9 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E487753C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  type metadata accessor for Utils();
  sub_1E4871798(a1, v11);
  sub_1E487729C();
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_21;
  }

  v18 = (v16 % a2);
  if (vcvtd_n_f64_s64(a2, 1uLL) > v18)
  {
    if (v18 < 9.22337204e18)
    {
      if (v18 > -9.22337204e18)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v19 = a2 - v18;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 < 9.22337204e18)
  {
LABEL_16:
    (*(v6 + 104))(v8, *MEMORY[0x1E6969A98], v5);
    sub_1E48774BC();
    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v20[0]);
    (*(v13 + 8))(v15, v12);
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_1E4871510()
{
  v0 = sub_1E487753C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E48774FC();
  v5 = sub_1E487748C();
  (*(v1 + 8))(v3, v0);
  [v4 setCalendar_];

  v6 = sub_1E4878B9C();
  [v4 setDateFormat_];

  qword_1EE2B1888 = v4;
}

void sub_1E4871654()
{
  v0 = sub_1E487753C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E48774FC();
  v5 = sub_1E487748C();
  (*(v1 + 8))(v3, v0);
  [v4 setCalendar_];

  v6 = sub_1E4878B9C();
  [v4 setDateFormat_];

  qword_1EE2B1870 = v4;
}

uint64_t sub_1E4871798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v21 - v3;
  v4 = sub_1E48770FC();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487753C();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v10 = sub_1E487751C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E48837F0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E6969A50], v10);
  v16(v15 + v12, *MEMORY[0x1E6969A68], v10);
  v16(v15 + 2 * v12, *MEMORY[0x1E6969A78], v10);
  v17 = v27;
  v16(v15 + 3 * v12, *MEMORY[0x1E6969A48], v10);
  v16(v15 + 4 * v12, *MEMORY[0x1E6969A58], v10);
  sub_1E486B81C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E487747C();

  sub_1E48774AC();
  v18 = sub_1E487732C();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 8))(v6, v25);
    (*(v22 + 8))(v9, v23);
    return (*(v19 + 32))(v26, v17, v18);
  }

  return result;
}

id sub_1E4871B7C()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1E487732C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E487753C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  v8 = sub_1E487748C();
  (*(v5 + 8))(v7, v4);
  v21[0] = 0.0;
  v9 = sub_1E48772BC();
  v20 = 0;
  v10 = [v8 rangeOfUnit:16 startDate:&v20 interval:v21 forDate:v9];

  if (v10)
  {
    v11 = v20 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v12 = v21[0] + 60.0;
    v13 = v20;
    v14 = [v13 dateByAddingTimeInterval_];
    sub_1E48772FC();

    v15 = sub_1E48772BC();
    v16 = sub_1E48772BC();
    v17 = [v8 isDate:v15 inSameDayAsDate:v16];

    (*(v1 + 8))(v3, v0);
    v8 = v13;
  }

  return v17;
}

uint64_t type metadata accessor for TextStringThatFits(uint64_t a1)
{
  result = qword_1EE2B31C8;
  if (!qword_1EE2B31C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4871E9C(uint64_t a1)
{
  sub_1E4871F9C(319, &qword_1EE2B0E08, MEMORY[0x1E6968848], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E4871F9C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4871F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E487201C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16) || (result = sub_1E481DCC4(a1), (v3 & 1) == 0))
  {
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD000000000000020, 0x80000001E48AAB30);
    sub_1E487902C();
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

double sub_1E4872114@<D0>(void *a1@<X8>)
{
  if (qword_1EE2B4610 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE2BAF38;

  return result;
}

void *sub_1E4872184(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

double sub_1E48721E0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1E48721EC(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

void *sub_1E487222C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

void sub_1E4872280(void *a2@<X8>)
{
  sub_1E4877BEC();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1E48722AC()
{
  v0 = sub_1E487719C();
  __swift_allocate_value_buffer(v0, qword_1EE2BAEB0);
  __swift_project_value_buffer(v0, qword_1EE2BAEB0);
  return sub_1E487712C();
}

uint64_t sub_1E4872300@<X0>(void *a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TextStringThatFits(0);
  sub_1E4873690(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4877CCC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1E4878DDC();
    v14 = sub_1E48780FC();
    sub_1E4877AAC(v13, &dword_1E475C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E48724F0@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v87 = a3;
  v72 = sub_1E487719C();
  v5 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBE8, &qword_1E4883920);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v70 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF0, &qword_1E4883928);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v70 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF8, &qword_1E4883930);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v76 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v70 - v13;
  v14 = type metadata accessor for TextStringThatFits(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC00, &unk_1E4883938);
  v77 = *(v81 - 8);
  v17 = MEMORY[0x1EEE9AC00](v81);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v70 - v19;
  sub_1E4878D2C();
  v73 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *a1;
  *&v96 = sub_1E4872EB4(1uLL, *a1);
  *(&v96 + 1) = v21;
  *&v97 = v22;
  *(&v97 + 1) = v23;
  swift_getKeyPath();
  v74 = a1;
  sub_1E4873448(a1, &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v15 + 80) + 17) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2 & 1;
  sub_1E4851394(&v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC08, &qword_1E4883968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC10, &qword_1E4883970);
  sub_1E4773680(&qword_1EE2B0D20, &qword_1ECF7DC08, &qword_1E4883968, MEMORY[0x1E69E6970]);
  sub_1E4873530(&qword_1EE2B4678, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DC18, &qword_1E4883978);
  v27 = sub_1E4873578();
  *&v89 = v26;
  *(&v89 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  result = sub_1E487885C();
  if (a2)
  {
    if (qword_1EE2B31D8 != -1)
    {
      swift_once();
    }

    v29 = v72;
    v30 = __swift_project_value_buffer(v72, qword_1EE2BAEB0);
    goto LABEL_9;
  }

  v31 = *(v20 + 16);
  if (v31)
  {
    v30 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v31 - 1);
    v29 = v72;
LABEL_9:
    (*(v5 + 16))(v71, v30, v29);
    v32 = sub_1E487847C();
    v34 = v33;
    v36 = v35;
    v37 = sub_1E48783EC();
    v39 = v38;
    v41 = v40;
    sub_1E477A3C8(v32, v34, v36 & 1);

    v42 = sub_1E487842C();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_1E477A3C8(v37, v39, v41 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v39) = sub_1E487813C();
    sub_1E4877B0C();
    v105 = v46 & 1;
    v104 = 0;
    v103 = 0;
    *&v89 = v42;
    *(&v89 + 1) = v44;
    LOBYTE(v90) = v46 & 1;
    *(&v90 + 1) = v48;
    *&v91 = KeyPath;
    *(&v91 + 1) = 1;
    LOBYTE(v92) = 0;
    BYTE8(v92) = v39;
    *&v93 = v50;
    *(&v93 + 1) = v51;
    *&v94 = v52;
    *(&v94 + 1) = v53;
    v95 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC20, &qword_1E4883980);
    sub_1E4873604();
    v54 = v82;
    sub_1E48784FC();
    v99 = v92;
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v96 = v89;
    v97 = v90;
    v98 = v91;
    sub_1E47738B8(&v96, &qword_1ECF7DC20, &qword_1E4883980);
    v55 = v80;
    (*(v83 + 32))(v80, v54, v85);
    *&v55[*(v79 + 36)] = 256;
    v56 = swift_getKeyPath();
    v57 = v55;
    v58 = v76;
    sub_1E477372C(v57, v76, &qword_1ECF7DBF0, &qword_1E4883928);
    v59 = (v58 + *(v78 + 36));
    *v59 = v56;
    v59[1] = 0x3FD999999999999ALL;
    v60 = v84;
    sub_1E477372C(v58, v84, &qword_1ECF7DBF8, &qword_1E4883930);
    v61 = v77;
    v62 = *(v77 + 16);
    v63 = v75;
    v64 = v88;
    v65 = v81;
    v62(v75, v88, v81);
    v66 = v86;
    sub_1E476DAA4(v60, v86);
    v67 = v87;
    v62(v87, v63, v65);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC28, &qword_1E48839E8);
    sub_1E476DAA4(v66, &v67[*(v68 + 48)]);
    sub_1E476DB14(v60);
    v69 = *(v61 + 8);
    v69(v64, v65);
    sub_1E476DB14(v66);
    v69(v63, v65);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4872EB4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_1E487719C();
    return a2;
  }

  return result;
}

uint64_t sub_1E4872F48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  v33[1] = a4;
  v6 = sub_1E487719C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v33[2] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    if (qword_1EE2B31D8 != -1)
    {
      swift_once();
    }

    a1 = __swift_project_value_buffer(v6, qword_1EE2BAEB0);
  }

  (*(v7 + 16))(v9, a1, v6);
  v10 = sub_1E487847C();
  v12 = v11;
  v14 = v13;
  v15 = sub_1E48783EC();
  v17 = v16;
  v19 = v18;
  sub_1E477A3C8(v10, v12, v14 & 1);

  v20 = sub_1E487842C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1E477A3C8(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v15) = sub_1E487813C();
  sub_1E4877B0C();
  v44 = v24 & 1;
  v43 = 0;
  v42 = 0;
  *&v34 = v20;
  *(&v34 + 1) = v22;
  LOBYTE(v35) = v24 & 1;
  *(&v35 + 1) = v26;
  *&v36 = KeyPath;
  *(&v36 + 1) = 1;
  LOBYTE(v37) = 0;
  BYTE8(v37) = v15;
  *&v38 = v28;
  *(&v38 + 1) = v29;
  *v39 = v30;
  *&v39[8] = v31;
  v39[16] = 0;
  *&v39[17] = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC18, &qword_1E4883978);
  sub_1E4873578();
  sub_1E48784FC();
  v40[3] = v37;
  v40[4] = v38;
  *v41 = *v39;
  *&v41[15] = *&v39[15];
  v40[0] = v34;
  v40[1] = v35;
  v40[2] = v36;
  sub_1E47738B8(v40, &qword_1ECF7DC18, &qword_1E4883978);
}

uint64_t sub_1E48732B8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877CCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1E4872300((&v15 - v9));
  sub_1E4877CAC();
  sub_1E4873530(&qword_1EE2B5A60, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v11 = sub_1E4878EAC();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  *a1 = sub_1E487810C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBE0, &qword_1E4883918);
  return sub_1E48724F0(v2, v11 & 1, &a1[*(v13 + 44)]);
}

uint64_t sub_1E4873448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextStringThatFits(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48734AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TextStringThatFits(0);
  v5 = *(v2 + 16);

  return sub_1E4872F48(a1, v5, a2);
}

uint64_t sub_1E4873530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4873578()
{
  result = qword_1EE2B1320;
  if (!qword_1EE2B1320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DC18, &qword_1E4883978);
    sub_1E4873604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1320);
  }

  return result;
}

unint64_t sub_1E4873604()
{
  result = qword_1EE2B4730;
  if (!qword_1EE2B4730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DC20, &qword_1E4883980);
    sub_1E477A490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4730);
  }

  return result;
}

uint64_t sub_1E4873690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E4873728()
{
  v1 = [*v0 mirrorCalendarApp];

  return v1;
}

uint64_t sub_1E4873760()
{
  v1 = [*v0 calendars];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for EKUICalendar();
  v3 = sub_1E4878CAC();

  return v3;
}

id sub_1E48737C4()
{
  v1 = [*v0 hideAllDayEvents];

  return v1;
}

id EKUICalendarsIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKUICalendarsIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EKUICalendarsIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id EKUICalendarsIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EKUICalendarsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EKUICalendarsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4878B9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id EKUICalendarsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4878B9C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for EKUICalendarsIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id EKUICalendarsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id EKUICalendarsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for EKUICalendarsIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_1E4873E5C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E487463C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1E4873E90(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 calendars];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for EKUICalendar();
    v5 = sub_1E4878CAC();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1E4873F00(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for EKUICalendar();
    v3 = sub_1E4878C9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCalendars_];
}

uint64_t sub_1E4873FC0()
{
  v1 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *EKUICalendarsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *EKUICalendarsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id EKUICalendarsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EKUICalendarsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EKUICalendarsIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id EKUICalendarsIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E48743E0(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id EKUICalendarsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id EKUICalendarsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4874604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E487463C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E4874674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7DC40;
  if (!qword_1ECF7DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DC40);
  }

  return result;
}

id NextEventComplicationConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NextEventComplicationConfigurationIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id NextEventComplicationConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NextEventComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4878B9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id NextEventComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4878B9C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id NextEventComplicationConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id NextEventComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_1E4874DF8()
{
  v1 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *NextEventComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *NextEventComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id NextEventComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NextEventComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4875218(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_1E487543C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E487549C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7DC50;
  if (!qword_1ECF7DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DC50);
  }

  return result;
}

void sub_1E4875554(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 overlayCalendarID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4878BDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1E48755BC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1E4878B9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setOverlayCalendarID_];
}

id LunarDateComplicationConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LunarDateComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LunarDateComplicationConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LunarDateComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4878B9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LunarDateComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4878B9C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id LunarDateComplicationConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id LunarDateComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_1E4875CD4()
{
  v1 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *LunarDateComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *LunarDateComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id LunarDateComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LunarDateComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E48760F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id LunarDateComplicationConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4876318(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E4876378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF7DC60;
  if (!qword_1ECF7DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DC60);
  }

  return result;
}

void sub_1E487643C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 acAccountIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4878BDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1E48764A4(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1E4878B9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAcAccountIdentifier_];
}

id EKUICalendar.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1E4878B9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E4878B9C();

  if (a6)
  {
    v10 = sub_1E4878B9C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id EKUICalendar.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1E4878B9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E4878B9C();

  if (a6)
  {
    v10 = sub_1E4878B9C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for EKUICalendar();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id EKUICalendar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EKUICalendar.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendar();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E48768CC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_1E4876980(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4876A78();

    sub_1E487904C();
  }

  else
  {

    sub_1E48790FC();
    sub_1E4876A78();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E4876A78();
  v2 = sub_1E4878C9C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_1E4876A78()
{
  result = qword_1ECF7DC68;
  if (!qword_1ECF7DC68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7DC68);
  }

  return result;
}

id sub_1E4876B30(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id EKUICalendarResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1E4878A7C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id EKUICalendarResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_1E4878A7C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_1E4876F20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}