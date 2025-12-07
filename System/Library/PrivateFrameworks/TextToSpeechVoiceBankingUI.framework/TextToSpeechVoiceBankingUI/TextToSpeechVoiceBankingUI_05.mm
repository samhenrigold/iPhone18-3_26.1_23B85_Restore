uint64_t sub_26EE91D24(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26EF37F1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v33 = a2;
  v11 = sub_26EF3B04C();
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
      sub_26EE9429C(&qword_2806C8640, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v21 = sub_26EF3B0AC();
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
    sub_26EE92710(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26EE92004(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26EF3B87C();
  sub_26EF3B16C();
  v8 = sub_26EF3B8CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26EF3B82C() & 1) != 0)
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

    sub_26EE929B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_26EE92154(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26EF37F1C();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8658, &qword_26EF40778);
  v6 = sub_26EF3B6DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      v21 = sub_26EF3B04C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_26EE924B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
  v4 = sub_26EF3B6DC();
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
      sub_26EF3B87C();
      sub_26EF3B16C();
      v21 = sub_26EF3B8CC();
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

uint64_t sub_26EE92710(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26EF37F1C();
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
    sub_26EE92154(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26EE92B34();
      goto LABEL_12;
    }

    sub_26EE92EC8(v10 + 1);
  }

  v12 = *v3;
  sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
  v13 = sub_26EF3B04C();
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
      sub_26EE9429C(&qword_2806C8640, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v21 = sub_26EF3B0AC();
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
  result = sub_26EF3B85C();
  __break(1u);
  return result;
}

void sub_26EE929B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26EE924B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_26EE92D6C();
      goto LABEL_16;
    }

    sub_26EE931E4(v8 + 1);
  }

  v10 = *v4;
  sub_26EF3B87C();
  sub_26EF3B16C();
  v11 = sub_26EF3B8CC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_26EF3B82C() & 1) != 0)
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
  sub_26EF3B85C();
  __break(1u);
}

void sub_26EE92B34()
{
  v1 = v0;
  v2 = sub_26EF37F1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8658, &qword_26EF40778);
  v6 = *v0;
  v7 = sub_26EF3B6CC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
}

void sub_26EE92D6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
  v2 = *v0;
  v3 = sub_26EF3B6CC();
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

void sub_26EE92EC8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_26EF37F1C();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8658, &qword_26EF40778);
  v7 = sub_26EF3B6DC();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640], MEMORY[0x277CC9650]);
      v21 = sub_26EF3B04C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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
    *v2 = v7;
  }
}

void sub_26EE931E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
  v4 = sub_26EF3B6DC();
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
      sub_26EF3B87C();

      sub_26EF3B16C();
      v20 = sub_26EF3B8CC();
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

uint64_t sub_26EE93444(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PickerGroupWithChildren(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_26EE936C8(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for PickerGroupWithChildren);
      v24 = v23;
      v25 = v31;
      sub_26EE93734(v24, v31, type metadata accessor for PickerGroupWithChildren);
      sub_26EE93734(v25, a2, type metadata accessor for PickerGroupWithChildren);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26EE936C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE93734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE9379C()
{
  v2 = *(type metadata accessor for VoiceList(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE89B78(v4, v5, v0 + v3);
}

uint64_t sub_26EE93864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8490, &qword_26EF402D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE938D4()
{
  type metadata accessor for VoiceList(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8460, &qword_26EF40280);
  sub_26EF3AAFC();
  sub_26EE8A3A0(v3);
  v1 = v0;

  sub_26EE86C68(v1);
  sub_26EF3AEAC();
  sub_26EF3992C();
}

unint64_t sub_26EE939E8()
{
  result = qword_2806C84A8;
  if (!qword_2806C84A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8490, &qword_26EF402D8);
    sub_26EE93AA0();
    sub_26EE154C8(&qword_2806C8518, &qword_2806C8520, &qword_26EF40360, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C84A8);
  }

  return result;
}

unint64_t sub_26EE93AA0()
{
  result = qword_2806C84B0;
  if (!qword_2806C84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84B8, &qword_26EF40328);
    sub_26EE93BA4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8508, &qword_26EF40358);
    sub_26EE154C8(&qword_2806C8510, &qword_2806C8508, &qword_26EF40358, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C84B0);
  }

  return result;
}

unint64_t sub_26EE93BA4()
{
  result = qword_2806C84C0;
  if (!qword_2806C84C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84C8, &qword_26EF40330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84D0, &qword_26EF40338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84D8, &qword_26EF40340);
    sub_26EE154C8(&qword_2806C84E0, &qword_2806C84D0, &qword_26EF40338, MEMORY[0x277CDE5A0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84E8, &qword_26EF40348);
    sub_26EE154C8(&qword_2806C84F0, &qword_2806C84E8, &qword_26EF40348, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C84F8, &qword_2806C8500, &qword_26EF40350, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C84C0);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for VoiceList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_26EF37FEC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  __swift_destroy_boxed_opaque_existential_1((v5 + v1[7]));

  v9 = v5 + v1[14];
  v10 = sub_26EF3AE0C();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);

  sub_26EE54224(*(v5 + v1[15]), *(v5 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_26EE93FC0()
{
  v1 = *(type metadata accessor for VoiceList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EE8B3C0(v2);
}

unint64_t sub_26EE94020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8538;
  if (!qword_2806C8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8538);
  }

  return result;
}

uint64_t sub_26EE94074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_26EE940E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_26EE9414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26EE941BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE9422C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_23Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26EE9429C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26EE942E4()
{
  result = qword_2806C8580;
  if (!qword_2806C8580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8550, &qword_26EF40390);
    sub_26EE9429C(&qword_2806C8570, type metadata accessor for VoicePickerPickableView, &protocol conformance descriptor for VoicePickerPickableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8580);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = (type metadata accessor for PickerGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(type metadata accessor for VoicePickerGroup(0) + 24);
  v6 = sub_26EF37FEC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  type metadata accessor for PickerGroupWithChildren(0);

  sub_26EE54224(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE944E8()
{
  v1 = *(type metadata accessor for PickerGroupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EE8E500(v2);
}

uint64_t sub_26EE94558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_26EE94618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8588;
  if (!qword_2806C8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8588);
  }

  return result;
}

uint64_t sub_26EE94680(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26EE947D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EE9490C(uint64_t a1)
{
  sub_26EE9552C(319, &qword_2806C8590, &qword_2806C8428, &qword_26EF40248, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_26EE94C38(319, &qword_2806C8598, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26EE94BD4();
      if (v3 <= 0x3F)
      {
        sub_26EE95288(319, &qword_2806C85A8, &type metadata for VoiceList.ExtraOption, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26EE9552C(319, &qword_2806C85B0, &qword_2806C8438, &qword_26EF40258, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_26EE95288(319, &qword_2806C85B8, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
            if (v6 <= 0x3F)
            {
              sub_26EE9552C(319, &qword_2806C85C0, &qword_2806C84A0, &qword_26EF40320, MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_26EE9552C(319, &qword_2806C85C8, &qword_2806C8458, &qword_26EF40278, MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  sub_26EE94C38(319, &qword_2806C85D0, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_26EE95288(319, &qword_2806C85D8, &type metadata for TTSPickerMode, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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
}

unint64_t sub_26EE94BD4()
{
  result = qword_2806C85A0;
  if (!qword_2806C85A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2806C85A0);
  }

  return result;
}

void sub_26EE94C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EE94CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EE94D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EE94E40(uint64_t a1)
{
  sub_26EE9552C(319, &qword_2806C85E0, &qword_2806C78E0, &qword_26EF40680, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_26EE94C38(319, &qword_2806C8598, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26EE94BD4();
      if (v3 <= 0x3F)
      {
        sub_26EE95288(319, &qword_2806C85A8, &type metadata for VoiceList.ExtraOption, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26EE9552C(319, &qword_2806C85C0, &qword_2806C84A0, &qword_26EF40320, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26EE94FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickerGroupWithChildren(0);
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

uint64_t sub_26EE950A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PickerGroupWithChildren(0);
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

void sub_26EE9515C(uint64_t a1)
{
  type metadata accessor for PickerGroupWithChildren(319);
  if (v1 <= 0x3F)
  {
    sub_26EE9552C(319, &qword_2806C8590, &qword_2806C8428, &qword_26EF40248, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_26EE95288(319, &qword_2806C85D8, &type metadata for TTSPickerMode, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26EE95288(319, &qword_2806C7350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26EE95288(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26EE952EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VoicePickerGroup(0);
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

uint64_t sub_26EE953BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VoicePickerGroup(0);
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

void sub_26EE95474(uint64_t a1)
{
  type metadata accessor for VoicePickerGroup(319);
  if (v1 <= 0x3F)
  {
    sub_26EE9552C(319, &qword_2806C85E8, &qword_2806C7EC8, &qword_26EF3F8B0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EE9552C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26EE955C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8480, &qword_26EF402C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8488, &qword_26EF402D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84A0, &qword_26EF40320);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8490, &qword_26EF402D8);
  sub_26EE939E8();
  swift_getOpaqueTypeConformance2();
  sub_26EE154C8(&qword_2806C8528, &qword_2806C84A0, &qword_26EF40320, MEMORY[0x277D83B60]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE95708()
{
  result = qword_2806C85F0;
  if (!qword_2806C85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8540, &qword_26EF40378);
    sub_26EE9429C(&qword_2806C85F8, type metadata accessor for VoiceList, &protocol conformance descriptor for VoiceList);
    sub_26EE154C8(&qword_2806C8600, &qword_2806C8608, &qword_26EF40720, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C85F0);
  }

  return result;
}

unint64_t sub_26EE957F4()
{
  result = qword_2806C8610;
  if (!qword_2806C8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8618, &qword_26EF40728);
    sub_26EE154C8(&qword_2806C8578, &qword_2806C8560, &qword_26EF403A0, MEMORY[0x277CDD9E8]);
    sub_26EE942E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8610);
  }

  return result;
}

uint64_t sub_26EE958AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PickerGroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EE8DE00(a1, v6, a2);
}

uint64_t sub_26EE9592C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x274383430](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26EE92004(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26EE959C4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for VoiceList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
  v7 = sub_26EF37FEC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  __swift_destroy_boxed_opaque_existential_1((v5 + v1[7]));

  v9 = v5 + v1[14];
  v10 = sub_26EF3AE0C();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);

  sub_26EE54224(*(v5 + v1[15]), *(v5 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE95CCC()
{
  v2 = *(type metadata accessor for VoiceList(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE8B5A0(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EE95DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26EE95E28@<X0>(uint64_t *a1@<X8>)
{
  v8[1] = *(v1 + 32);
  v9 = *(v1 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](v8, v3);
  v4 = sub_26EE8D1A8(v8[0]);
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26EE95EF8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  result = sub_26EF3AC3C();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26EF3C6B0;
    *(inited + 32) = v2;
    *(inited + 40) = v1;

    sub_26EE96344(inited);
    swift_setDeallocating();
    sub_26EE95A18(inited + 32);
    sub_26EF3AC3C();
  }

  return result;
}

unint64_t sub_26EE9604C()
{
  result = qword_2806C8688;
  if (!qword_2806C8688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78E0, &qword_26EF40680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8688);
  }

  return result;
}

uint64_t sub_26EE960D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VoiceList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EE87D78(a1, v6, a2);
}

unint64_t sub_26EE96154()
{
  result = qword_2806C86D8;
  if (!qword_2806C86D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C86C8, &qword_26EF40800);
    sub_26EE96220(&qword_2806C86E0, &qword_2806C86E8, &qword_26EF40808, MEMORY[0x277CE0BC8]);
    sub_26EE96220(&qword_2806C86F8, &qword_2806C8700, &qword_26EF40810, MEMORY[0x277CE1410]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C86D8);
  }

  return result;
}

uint64_t sub_26EE96220(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26EE9429C(&qword_2806C86F0, type metadata accessor for PickerGroupView, &unk_26EF404A4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE962D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8730;
  if (!qword_2806C8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8730);
  }

  return result;
}

uint64_t sub_26EE96344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
    v3 = sub_26EF3B6EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26EF3B87C();

      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_26EF3B82C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_26EE9658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26EF37E9C();
  v6 = sub_26EF3B0BC();
  (*(a4 + 16))(a4, v5, v6);
}

id VBManagerViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VBManagerViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VBManagerViewBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VBManagerViewBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VBManagerViewBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s26TextToSpeechVoiceBankingUI19VBManagerViewBridgeC04makegH10Controller22authenticationCallbackSo06UIViewK0Cy10Foundation4UUIDV_SStc_tFZ_0(uint64_t a1, uint64_t a2)
{

  VBManagerView.init(authenticationCallback:)(a1, a2, &v11);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8740, &unk_26EF40870));
  v5 = sub_26EF39F8C();
  v6 = sub_26EE17094();
  v7._object = 0x800000026EF45FA0;
  v8 = v6 & 1;
  v7._countAndFlagsBits = 0xD000000000000018;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v8, 0);
  v9 = sub_26EF3B0BC();

  [v5 setTitle_];

  return v5;
}

uint64_t sub_26EE967E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_26EE96828()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

double sub_26EE9689C@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26EE9691C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t sub_26EE96998()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

void sub_26EE96A0C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v3;
}

uint64_t sub_26EE96A8C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t sub_26EE96B08(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_26EE96B48(a1);
  return v2;
}

uint64_t sub_26EE96B48(uint64_t a1)
{
  v2 = v1;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8750, &qword_26EF40918);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x28223BE20](v3);
  v49 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C20, &qword_26EF40920);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8758, &qword_26EF40928);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  MEMORY[0x28223BE20](v9);
  v46 = v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8748, &qword_26EF408C8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v41 - v18;
  v20 = sub_26EED2EB8();
  v21 = *v20;
  *(v2 + 16) = *v20;
  v22 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioLevel;
  v52 = 0;
  v23 = v21;
  sub_26EF394EC();
  (*(v17 + 32))(v2 + v22, v19, v16);
  v24 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioMagnitudes;
  v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66F0, &qword_26EF3C9C0);
  sub_26EF394EC();
  (*(v13 + 32))(v2 + v24, v15, v12);
  v25 = (v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
  v27 = sub_26EF37E7C();
  (*(*(v27 - 8) + 56))(v2 + v26, 1, 1, v27);
  *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_cancellables) = MEMORY[0x277D84FA0];
  v28 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioService;
  v29 = *(*v20 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v30 = sub_26EF388BC();

  *(v2 + v28) = v30;
  v31 = v30;
  sub_26EF3905C();

  v45 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioService;
  v52 = sub_26EF3900C();
  sub_26EE972DC();
  v32 = sub_26EF3B54C();
  v53 = v32;
  v33 = sub_26EF3B52C();
  v34 = *(v33 - 8);
  v43 = *(v34 + 56);
  v44 = v34 + 56;
  v43(v8, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8760, &qword_26EF40930);
  v42 = MEMORY[0x277CBCD90];
  sub_26EE154C8(&qword_2806C8768, &qword_2806C8760, &qword_26EF40930, MEMORY[0x277CBCD90]);
  v41[1] = sub_26EE97328();
  v35 = v46;
  sub_26EF3955C();
  sub_26EE14578(v8, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_weakInit();
  v41[0] = MEMORY[0x277CBCD60];
  sub_26EE154C8(&qword_2806C8778, &qword_2806C8758, &qword_26EF40928, MEMORY[0x277CBCD60]);

  v36 = v47;
  sub_26EF3956C();

  (*(v48 + 8))(v35, v36);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  v52 = sub_26EF3906C();
  v37 = sub_26EF3B54C();
  v53 = v37;
  v43(v8, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8780, &qword_26EF40938);
  sub_26EE154C8(&qword_2806C8788, &qword_2806C8780, &qword_26EF40938, v42);
  v38 = v49;
  sub_26EF3955C();
  sub_26EE14578(v8, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_weakInit();

  sub_26EE154C8(&qword_2806C8790, &qword_2806C8750, &qword_26EF40918, v41[0]);
  v39 = v50;
  sub_26EF3956C();

  (*(v51 + 8))(v38, v39);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  return v2;
}

unint64_t sub_26EE972DC()
{
  result = qword_2806C9C40;
  if (!qword_2806C9C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806C9C40);
  }

  return result;
}

unint64_t sub_26EE97328()
{
  result = qword_2806C8770;
  if (!qword_2806C8770)
  {
    sub_26EE972DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8770);
  }

  return result;
}

uint64_t sub_26EE97380()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EE973B8(double *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v35[-v7];
  v9 = sub_26EF37E7C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v35[-v14];
  v16 = *a1;
  sub_26EF3926C();
  if (v16 < v17)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
      v20 = Strong;
      swift_beginAccess();
      sub_26EE97D40(v20 + v19, v8);

      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        (*(v10 + 32))(v15, v8, v9);
        sub_26EF37E6C();
        sub_26EF37E2C();
        if (fmod(v21, 60.0) < 3.0)
        {
          v22 = *(v10 + 8);
          v22(v13, v9);
          return (v22)(v15, v9);
        }

        swift_beginAccess();
        v32 = swift_weakLoadStrong();
        v33 = *(v10 + 8);
        v33(v13, v9);
        v33(v15, v9);
        if (v32)
        {
          (*(v10 + 56))(v6, 1, 1, v9);
          v34 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
          swift_beginAccess();
          sub_26EE97CD0(v6, v32 + v34);
          swift_endAccess();
          goto LABEL_8;
        }

        goto LABEL_11;
      }
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    sub_26EE14578(v8, &qword_2806C8798, &qword_26EF40940);
    goto LABEL_11;
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = v24;
    sub_26EF37E6C();
    (*(v10 + 56))(v6, 0, 1, v9);
    v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
    swift_beginAccess();
    sub_26EE97CD0(v6, v25 + v26);
    swift_endAccess();
LABEL_8:
  }

LABEL_11:
  swift_beginAccess();
  v27 = swift_weakLoadStrong();
  if (v27)
  {
    v28 = v27 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback;
    swift_beginAccess();
    v29 = *v28;
    if (*v28)
    {
      v30 = *(v28 + 8);
      sub_26EE21114(v29, v30);

      v29(v31, v16);
      sub_26EE18828(v29, v30);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v16;
    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EE9785C(uint64_t *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EE978F0()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioLevel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8748, &qword_26EF408C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioMagnitudes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26EE18828(*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback), *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback + 8));
  sub_26EE14578(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel, &qword_2806C8798, &qword_26EF40940);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for VoiceBankingAudioFeedbackViewModel(uint64_t a1)
{
  result = qword_2806CC9A0;
  if (!qword_2806CC9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EE97A94(uint64_t a1)
{
  sub_26EE97BC4();
  if (v1 <= 0x3F)
  {
    sub_26EE97C14(319);
    if (v2 <= 0x3F)
    {
      sub_26EE97C78(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26EE97BC4()
{
  if (!qword_2806C87A0)
  {
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C87A0);
    }
  }
}

void sub_26EE97C14(uint64_t a1)
{
  if (!qword_2806C66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C66F0, &qword_26EF3C9C0);
    v1 = sub_26EF3954C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C66E8);
    }
  }
}

void sub_26EE97C78(uint64_t a1)
{
  if (!qword_2806C87A8)
  {
    sub_26EF37E7C();
    v1 = sub_26EF3B5CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C87A8);
    }
  }
}

uint64_t sub_26EE97CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE97D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE97DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_26EE97E34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for VoiceBankingAudioFeedbackViewModel(0);
  sub_26EE97DB0(&qword_2806C87B0, type metadata accessor for VoiceBankingAudioFeedbackViewModel, &unk_26EF40948);
  sub_26EF3976C();
  v6 = sub_26EE96998();

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v6 + 4 * v5 + 32);

  if (*a2)
  {
    v8 = *a2;
    v9 = sub_26EF0F498();

    v10 = 5.0;
    if (v9)
    {
      v11 = fmin(v7 * 50.0, 50.0);
      if (v11 >= 6.0)
      {
        v10 = v11;
      }
    }

    sub_26EF3976C();
    v12 = sub_26EE96998();

    if (v5 < *(v12 + 16))
    {
      v13 = *(v12 + 4 * v5 + 32);

      v14 = sub_26EE981AC(v13);
      v15 = *(a2 + 40);

      v16 = sub_26EE17094();
      v17 = sub_26EF07B2C();
      result = sub_26EF07B34(v14, v15, v16 & 1, v20, 5.0, v10, v17);
      v19 = v20[1];
      *a3 = v20[0];
      a3[1] = v19;
      a3[2] = v20[2];
      return result;
    }

    goto LABEL_11;
  }

LABEL_12:
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE97DB0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE98084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C87C0, &unk_26EF40A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26EE98158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C87C8;
  if (!qword_2806C87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87C8);
  }

  return result;
}

uint64_t sub_26EE981AC(float a1)
{
  if (!*v1)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE97DB0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
    return result;
  }

  v3 = *v1;
  if ((sub_26EF0F498() & 1) == 0)
  {
  }

  v4 = sub_26EF0F498();

  if ((v4 & 1) == 0)
  {
  }

  v5 = a1 * 50.0;
  if (v5 < 50.0 && (v5 < 6.0 || v5 == 5.0))
  {
  }

  type metadata accessor for VoiceBankingAudioFeedbackViewModel(0);
  sub_26EE97DB0(&qword_2806C87B0, type metadata accessor for VoiceBankingAudioFeedbackViewModel, &unk_26EF40948);
  sub_26EF3976C();
  v7 = sub_26EE96828();

  sub_26EF3926C();
  v9 = v8;
  v10 = objc_opt_self();
  if (v9 <= v7)
  {
    v11 = [v10 systemRedColor];
  }

  else
  {
    v11 = [v10 systemBlueColor];
  }

  v13 = v11;

  return sub_26EF3AA5C();
}

uint64_t sub_26EE98378@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE97DB0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  v2 = sub_26EF39C1C();
  v4 = v3;
  v5 = [objc_opt_self() systemGray3Color];
  result = sub_26EF3AA5C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = sub_26EE97DF8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

double sub_26EE98454@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 32);
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C87B8, &unk_26EF409D8);
  type metadata accessor for VoiceBankingAudioFeedbackViewModel(0);
  sub_26EE97DB0(&qword_2806C87B0, type metadata accessor for VoiceBankingAudioFeedbackViewModel, &unk_26EF40948);
  sub_26EF3976C();
  v9 = sub_26EE96998();

  v10 = *(v9 + 16);

  *&v19 = 0;
  *(&v19 + 1) = v10;
  swift_getKeyPath();
  v22 = *v3;
  v23 = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = *v3;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *(v11 + 48) = v8;
  *(v11 + 49) = *(v3 + 33);
  *(v11 + 52) = *(v3 + 36);
  *(v11 + 56) = v7;
  sub_26EE98084(&v22, v18);
  sub_26EE980F4();
  sub_26EE980FC(&v23, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
  v12 = sub_26EE275F0();
  sub_26EE98158(v12, v13, v14);
  sub_26EF3ACEC();
  sub_26EF3AE4C();
  sub_26EF3984C();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C87D0, qword_26EF40A10) + 36));
  v16 = v20;
  *v15 = v19;
  v15[1] = v16;
  result = *&v21;
  v15[2] = v21;
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

uint64_t sub_26EE986A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE986F0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_26EE98750()
{
  result = qword_2806C87D8;
  if (!qword_2806C87D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C87D0, qword_26EF40A10);
    sub_26EE987DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87D8);
  }

  return result;
}

unint64_t sub_26EE987DC()
{
  result = qword_2806C87E0;
  if (!qword_2806C87E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C87E8, &qword_26EF40B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87E0);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  sub_26EE05CA8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t VBNavigationItem.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_26EF40CD0[v1];
  }

  else
  {
    MEMORY[0x274383950](8);
  }

  return MEMORY[0x274383950](v1);
}

uint64_t VBNavigationItem.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26EF3B87C();
  if (v2)
  {
    v1 = qword_26EF40CD0[v1];
  }

  else
  {
    MEMORY[0x274383950](8);
  }

  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE9895C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26EF3B87C();
  if (v3)
  {
    v2 = qword_26EF40CD0[v2];
  }

  else
  {
    MEMORY[0x274383950](8);
  }

  MEMORY[0x274383950](v2);
  return sub_26EF3B8CC();
}

void VBNavigationItem.id.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void sub_26EE989DC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void *sub_26EE989F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26EE98A0C()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE98A80(uint64_t a1)
{
  v2 = *v1;
  sub_26EF3B87C();
  MEMORY[0x274383950](v2);
  return sub_26EF3B8CC();
}

BOOL _s26TextToSpeechVoiceBankingUI16VBNavigationItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (v3 != 2)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 != 3)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (v2)
    {
      if (v3 != 1)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 > 5)
  {
    if (v2 == 6)
    {
      if (v3 != 6)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 7)
      {
        if (v3 != 7)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 <= 7)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 != 5)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_26EE98BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C87F0;
  if (!qword_2806C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87F0);
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

uint64_t getEnumTagSinglePayload for VBNavigationItem(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VBNavigationItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26EE98CB8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EE98CD4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_26EE98D08()
{
  result = qword_2806C87F8;
  if (!qword_2806C87F8)
  {
    type metadata accessor for TTSVBSiriTTSTrainerTaskMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87F8);
  }

  return result;
}

uint64_t sub_26EE98D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE98DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  *a7 = a2;
  a7[1] = a3;
  v10 = type metadata accessor for VBCapsuleButton(0, a5, a6, a4);
  sub_26EE98D60(a1, a7 + *(v10 + 40));

  a4(v11);

  return sub_26EE98E84(a1);
}

uint64_t sub_26EE98E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE98EEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 16);
  v47 = *(v6 + 24);
  v48 = v8;
  v9 = sub_26EF3AB8C();
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = &v39 - v10;
  WitnessTable = swift_getWitnessTable();
  KeyPath = v9;
  v57 = WitnessTable;
  v12 = WitnessTable;
  v41 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v13 = v9;
  v45 = v9;
  v14 = sub_26EF3A07C();
  v44 = v14;
  v50 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = &v39 - v15;
  KeyPath = v13;
  v57 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v12;
  v16 = swift_getWitnessTable();
  v43 = v16;
  v42 = sub_26EE993F8(v16, v17, v18);
  KeyPath = v14;
  v57 = &type metadata for CapsuleButtonStyle;
  v58 = v16;
  v59 = v42;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v39 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v40 = &v39 - v23;
  v24 = v4;
  (*(v4 + 16))(v7, v2, a1);
  v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v26 = swift_allocObject();
  v27 = v47;
  v28 = v48;
  *(v26 + 16) = v48;
  *(v26 + 24) = v27;
  (*(v24 + 32))(v26 + v25, v7, a1);
  v53 = v28;
  v54 = v27;
  v55 = v2;
  v29 = v49;
  sub_26EF3AB4C();
  v30 = v2 + *(a1 + 40);
  v31 = v45;
  v32 = v46;
  sub_26EE99730(v30, v45, v41, v46);
  (*(v51 + 8))(v29, v31);
  KeyPath = swift_getKeyPath();
  LOBYTE(v57) = 0;
  v33 = v39;
  v34 = v44;
  sub_26EF3A66C();

  (*(v50 + 8))(v32, v34);
  v35 = *(v20 + 16);
  v36 = v40;
  v35(v40, v33, OpaqueTypeMetadata2);
  v37 = *(v20 + 8);
  v37(v33, OpaqueTypeMetadata2);
  v35(v52, v36, OpaqueTypeMetadata2);
  return (v37)(v36, OpaqueTypeMetadata2);
}

unint64_t sub_26EE993F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8808;
  if (!qword_2806C8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8808);
  }

  return result;
}

uint64_t sub_26EE9944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for VBCapsuleButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);
  v10 = v6[12];
  v11 = sub_26EF398FC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v8 + v10, v11);
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_26EE99618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VBCapsuleButton(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_26EE99730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v46 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - v9;
  v54 = v10;
  v55 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_26EF398FC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26EF3A07C();
  v51 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v50 = &v40 - v25;
  sub_26EE98D60(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_26EE98E84(v19);
    v26 = v46;
    v27 = *(v46 + 16);
    v28 = v44;
    v27(v44, v49, a2);
    v29 = v47;
    v27(v47, v28, a2);
    v54 = a2;
    v55 = a3;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v50;
    sub_26EE83440(v29, OpaqueTypeMetadata2, a2, OpaqueTypeConformance2, a3);
    v32 = *(v26 + 8);
    v32(v29, a2);
    v32(v28, a2);
  }

  else
  {
    v33 = *(v21 + 32);
    v41 = v23;
    v42 = v20;
    v33(v23, v19, v20);
    sub_26EF3994C();
    sub_26EF3A76C();
    v54 = a2;
    v55 = a3;
    v47 = swift_getOpaqueTypeConformance2();
    v49 = v24;
    v34 = v45;
    v35 = *(v45 + 16);
    v36 = v43;
    v35(v43, v15, OpaqueTypeMetadata2);
    v37 = *(v34 + 8);
    v37(v15, OpaqueTypeMetadata2);
    v35(v15, v36, OpaqueTypeMetadata2);
    v24 = v49;
    v31 = v50;
    sub_26EE83348(v15, OpaqueTypeMetadata2, a2, v47, a3);
    v37(v15, OpaqueTypeMetadata2);
    v37(v36, OpaqueTypeMetadata2);
    (*(v21 + 8))(v41, v42);
  }

  v54 = a2;
  v55 = a3;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = a3;
  swift_getWitnessTable();
  v38 = v51;
  (*(v51 + 16))(v48, v31, v24);
  return (*(v38 + 8))(v31, v24);
}

uint64_t sub_26EE99CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v75 = a2;
  v78 = a4;
  v67 = sub_26EF39DDC();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_26EF3A25C();
  v6 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8810, &unk_26EF43190);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8818, &qword_26EF40D60);
  MEMORY[0x28223BE20](v70);
  v13 = &v64 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8820, &qword_26EF40D68);
  MEMORY[0x28223BE20](v71);
  v74 = &v64 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8828, &unk_26EF40D70);
  MEMORY[0x28223BE20](v73);
  v76 = a1;
  v77 = &v64 - v15;
  sub_26EF3A26C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8200, &qword_26EF3FEA0);
  inited = swift_initStackObject();
  v68 = xmmword_26EF3D070;
  *(inited + 16) = xmmword_26EF3D070;
  v17 = sub_26EF3A3CC();
  *(inited + 32) = v17;
  v18 = sub_26EF3A3DC();
  *(inited + 33) = v18;
  v19 = sub_26EF3A3FC();
  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v17)
  {
    v19 = sub_26EF3A3FC();
  }

  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v18)
  {
    v19 = sub_26EF3A3FC();
  }

  v20 = v74;
  sub_26EF3962C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v6 + 32))(v11, v8, v69);
  v29 = &v11[*(v9 + 36)];
  *v29 = v19;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = swift_initStackObject();
  *(v30 + 16) = v68;
  v31 = sub_26EF3A3EC();
  *(v30 + 32) = v31;
  v32 = sub_26EF3A40C();
  *(v30 + 33) = v32;
  v33 = sub_26EF3A3FC();
  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v31)
  {
    v33 = sub_26EF3A3FC();
  }

  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v32)
  {
    v33 = sub_26EF3A3FC();
  }

  v35 = v75;
  v34 = v76;
  sub_26EF3962C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_26EE14D98(v11, v13, &qword_2806C8810, &unk_26EF43190);
  v44 = &v13[*(v70 + 36)];
  *v44 = v33;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = v72;
  v46 = sub_26EE9A3FC(v34, v35, v72 & 1);
  v47 = sub_26EF3A3BC();
  sub_26EE14D98(v13, v20, &qword_2806C8818, &qword_26EF40D60);
  v48 = v20 + *(v71 + 36);
  *v48 = v46;
  *(v48 + 8) = v47;
  if (v45)
  {
    if ((v35 & 1) == 0)
    {
LABEL_11:
      v79 = sub_26EF3A9EC();
      sub_26EE9A5D8(v79, v49, v50);
      v51 = sub_26EF3AA6C();
      goto LABEL_16;
    }
  }

  else
  {

    sub_26EF3B46C();
    v52 = sub_26EF3A36C();
    sub_26EF3880C();

    v53 = v65;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v35, 0);
    (*(v66 + 8))(v53, v67);
    if (v79 != 1)
    {
      goto LABEL_11;
    }
  }

  if (sub_26EF3A27C())
  {
    v54 = [objc_opt_self() whiteColor];
    v55 = [v54 colorWithAlphaComponent_];

    v51 = sub_26EF3AA5C();
  }

  else
  {
    v51 = sub_26EF3A9EC();
  }

LABEL_16:
  v56 = v51;
  v57 = v77;
  sub_26EE14D98(v20, v77, &qword_2806C8820, &qword_26EF40D68);
  *(v57 + *(v73 + 36)) = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8838, &qword_26EF40D80);
  v59 = v78;
  v60 = v78 + *(v58 + 36);
  v61 = *MEMORY[0x277CE0118];
  v62 = sub_26EF39ECC();
  (*(*(v62 - 8) + 104))(v60, v61, v62);
  *(v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8840, &qword_26EF40D88) + 36)) = 256;
  return sub_26EE14D98(v57, v59, &qword_2806C8828, &unk_26EF40D70);
}

uint64_t sub_26EE9A3FC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_26EF39DDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v9 = [objc_opt_self() lightGrayColor];
      return sub_26EF3AA5C();
    }
  }

  else
  {

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(a2, 0);
    (*(v6 + 8))(v8, v5);
    if (v15[15] != 1)
    {
      goto LABEL_3;
    }
  }

  v11 = sub_26EF3A27C();
  v12 = [objc_opt_self() systemBlueColor];
  if (v11)
  {
    v13 = v12;
    [v12 colorWithAlphaComponent_];
  }

  return sub_26EF3AA5C();
}

unint64_t sub_26EE9A5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8830;
  if (!qword_2806C8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8830);
  }

  return result;
}

void sub_26EE9A6A0(uint64_t a1)
{
  sub_26EE3FF38();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_26EE9AD30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26EE9A740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_26EF398FC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v18 = v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v22 < 2)
    {
LABEL_33:
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (a1 + v14 + 16) & ~v14;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = (*(v9 + 48))((v25 + v15 + v16) & ~v16);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_33;
  }

LABEL_22:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v13 + (v18 | v23) + 1;
}

void sub_26EE9A9DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_26EF398FC() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + v18;
  if (a3 <= v20)
  {
    goto LABEL_23;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v20 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v10 = 4;
      if (v20 >= a2)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_23:
    if (v20 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v10 = 1;
  if (v20 >= a2)
  {
LABEL_33:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v21] = 0;
    }

    else if (v10)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if ((v19 & 0x80000000) != 0)
    {
      v27 = &a1[v15 + 16] & ~v15;
      if (v9 == v20)
      {
        v28 = *(v31 + 56);

        v28(v27, a2, v9, v7);
      }

      else
      {
        v29 = *(v12 + 56);
        v30 = (v27 + v16 + v17) & ~v17;

        v29(v30, (a2 + 1));
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *a1 = (a2 - 1);
    }

    return;
  }

LABEL_24:
  v24 = ~v20 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v10 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_54:
    if (v10 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_54;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v10 > 1)
    {
LABEL_58:
      if (v10 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v10 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v10)
  {
    a1[v21] = v25;
  }
}

void sub_26EE9AD30(uint64_t a1)
{
  if (!qword_2806C8848)
  {
    sub_26EF398FC();
    v1 = sub_26EF3B5CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8848);
    }
  }
}

uint64_t sub_26EE9AD94(uint64_t a1, unsigned int a2)
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

uint64_t sub_26EE9ADDC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26EE9AE30()
{
  sub_26EF3AB8C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26EF3A07C();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  sub_26EE993F8(WitnessTable, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE9AF40()
{
  result = qword_2806C8850;
  if (!qword_2806C8850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8838, &qword_26EF40D80);
    sub_26EE9AFF8();
    sub_26EE154C8(&qword_2806C8878, &qword_2806C8840, &qword_26EF40D88, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8850);
  }

  return result;
}

unint64_t sub_26EE9AFF8()
{
  result = qword_2806C8858;
  if (!qword_2806C8858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8828, &unk_26EF40D70);
    sub_26EE9B0B0();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8858);
  }

  return result;
}

unint64_t sub_26EE9B0B0()
{
  result = qword_2806C8860;
  if (!qword_2806C8860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8820, &qword_26EF40D68);
    sub_26EE9B1C4(&qword_2806C8868, &qword_2806C8818, &qword_26EF40D60, sub_26EE9B194);
    sub_26EE154C8(&qword_2806C83A0, &qword_2806C83A8, &unk_26EF40130, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8860);
  }

  return result;
}

uint64_t sub_26EE9B1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE9B248()
{
  result = qword_2806C8398;
  if (!qword_2806C8398)
  {
    sub_26EF3A25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8398);
  }

  return result;
}

id sub_26EE9B2A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(sub_26EF3914C()) init];
    swift_allocObject();
    swift_weakInit();

    v4 = v0;
    sub_26EF390CC();

    v5 = *(v0 + 16);
    *(v4 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

double sub_26EE9B368(char a1, uint64_t a2)
{
  v4 = sub_26EF3AF7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF3AFAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE972DC();
  v12 = sub_26EF3B54C();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  aBlock[4] = sub_26EE9C114;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26EE1DD80;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_26EF3AF8C();
  v16[1] = MEMORY[0x277D84F90];
  sub_26EE9C240(&unk_2806C9E30, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
  sub_26EE9C1DC();
  sub_26EF3B68C();
  MEMORY[0x274383620](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);

  return result;
}

uint64_t VBCloudSyncModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = sub_26EE9B2A0();
  sub_26EF3913C();

  return v0;
}

uint64_t VBCloudSyncModel.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = sub_26EE9B2A0();
  sub_26EF3913C();

  return v1;
}

uint64_t sub_26EE9B6E0(uint64_t a1)
{
  v2 = sub_26EF38A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - v7;
  v8 = sub_26EF3883C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  sub_26EE7B7C8(a1, &v35 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v37;
    (*(v3 + 32))(v37, v17, v2);
    v19 = sub_26EE27DAC();
    (*(v9 + 16))(v12, v19, v8);
    (*(v3 + 16))(v6, v18, v2);
    v20 = sub_26EF3881C();
    v21 = sub_26EF3B45C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v22 = 136315138;
      v36 = v8;
      v23 = sub_26EF389AC();
      v25 = v24;
      v26 = *(v3 + 8);
      v26(v6);
      v27 = sub_26EE40670(v23, v25, &v38);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_26EE01000, v20, v21, "Error occurred when monitoring for account changes: %s", v22, 0xCu);
      v28 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x2743842A0](v28, -1, -1);
      MEMORY[0x2743842A0](v22, -1, -1);

      (*(v9 + 8))(v12, v36);
      return (v26)(v37, v2);
    }

    else
    {

      v34 = *(v3 + 8);
      v34(v6, v2);
      (*(v9 + 8))(v12, v8);
      return (v34)(v37, v2);
    }
  }

  else
  {
    v30 = sub_26EE27DAC();
    (*(v9 + 16))(v14, v30, v8);
    v31 = sub_26EF3881C();
    v32 = sub_26EF3B47C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26EE01000, v31, v32, "Did successfully start monitoring for account changes", v33, 2u);
      MEMORY[0x2743842A0](v33, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    return sub_26EE7B838(v17);
  }
}

uint64_t VBCloudSyncModel.hasDevicePasscode.getter()
{
  v0 = sub_26EE9B2A0();
  v1 = sub_26EF390EC();

  return v1 & 1;
}

uint64_t sub_26EE9BB94()
{
  v1 = v0;
  sub_26EF3B2DC();

  v2 = sub_26EF3B2CC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v0;

  v5 = sub_26EF3B2CC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  sub_26EF3AC7C();
  return v8;
}

void sub_26EE9BC88(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_26EE9B2A0();
  sub_26EF390FC();

  v5 = sub_26EF391AC();
  v7 = v6;
  if (v5 == sub_26EF391AC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_26EF3B82C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v12 = *(v3 + 16);
  v11 = sub_26EF3910C();

LABEL_9:
  *a1 = v11 & 1;
}

uint64_t objectdestroyTm_11()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26EE9BDA8(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = sub_26EE9B2A0();
  sub_26EF390FC();

  v4 = sub_26EF391AC();
  v6 = v5;
  if (v4 != sub_26EF391AC() || v6 != v7)
  {
    v9 = sub_26EF3B82C();

    if (v9)
    {
      return;
    }

    v10 = sub_26EF391AC();
    v12 = v11;
    if (v10 == sub_26EF391AC() && v12 == v13)
    {
    }

    else
    {
      v14 = sub_26EF3B82C();

      if ((v14 & 1) == 0)
      {
LABEL_17:
        v20 = *(v2 + 16);
        sub_26EF3911C();

        return;
      }
    }

    v15 = sub_26EF391AC();
    v17 = v16;
    if (v15 != sub_26EF391AC() || v17 != v18)
    {
      v19 = sub_26EF3B82C();

      if (v19)
      {
        return;
      }

      goto LABEL_17;
    }
  }
}

uint64_t sub_26EE9BFBC()
{
  v0 = sub_26EE9B2A0();
  v1 = sub_26EF3910C();

  return v1 & 1;
}

uint64_t VBCloudSyncModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26EE9C098()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EE9C0DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

double sub_26EE9C114()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for VBCloudSyncModel();
    sub_26EE9C240(&qword_2806C7C18, v1, type metadata accessor for VBCloudSyncModel, &protocol conformance descriptor for VBCloudSyncModel);
    sub_26EF394BC();
    sub_26EF394DC();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26EE9C1DC()
{
  result = qword_2806C9E40;
  if (!qword_2806C9E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6DF0, &qword_26EF3D550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9E40);
  }

  return result;
}

uint64_t sub_26EE9C240(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_26EE9C28C(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 5u:
      return a2 == 5;
    case 4u:
      return a2 == 4;
    case 3u:
      return a2 == 3;
  }

  if (a2 - 3 < 3)
  {
    return 0;
  }

  return a1 == a2;
}

BOOL sub_26EE9C2FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_26EE9C368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8880;
  if (!qword_2806C8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VBConfigurationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VBConfigurationStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26EE9C514(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26EE9C528(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_26EE9C558()
{
  v0 = sub_26EF3A34C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoiceBankingNavigationModel(0);
  v3 = sub_26EE43684();
  sub_26EE43690();
  return VoiceBankingNavigationModel.__allocating_init(itemPath:columnVisibility:)(v3, v2);
}

uint64_t sub_26EE9C5EC()
{
  sub_26EF355C4();
}

uint64_t type metadata accessor for VoiceManagementView(uint64_t a1)
{
  result = qword_2806CD160;
  if (!qword_2806CD160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoiceManagementView.init(voiceID:dismissCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *sub_26EED2EB8();
  type metadata accessor for VoiceBankingSession(0);
  v9 = v8;
  sub_26EF3AAEC();
  *a4 = v13;
  *(a4 + 8) = v14;
  sub_26EEB4378();
  type metadata accessor for VoiceBankingCompatibilityModel(0);

  sub_26EF3AAEC();
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = sub_26EE5D020;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = sub_26EE9C558;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = sub_26EE5CFC8;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = sub_26EE9C5EC;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  sub_26EF3AAEC();
  *(a4 + 128) = v13;
  *(a4 + 136) = v14;
  v10 = *(type metadata accessor for VoiceManagementView(0) + 48);
  v11 = sub_26EF37EDC();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a1, v11);
  *(a4 + 144) = a2;
  *(a4 + 152) = a3;
  return result;
}

uint64_t VoiceManagementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v133 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v103 - v4;
  v5 = type metadata accessor for VoiceManagementView(0);
  v150 = *(v5 - 8);
  refreshed = *(v150 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF39B0C();
  v146 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8888, &qword_26EF41018);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v103 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8890, &qword_26EF41020);
  MEMORY[0x28223BE20](v135);
  v15 = &v103 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8898, &qword_26EF41028);
  v111 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v136 = &v103 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88A0, &qword_26EF41030);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v148 = &v103 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88A8, &qword_26EF41038);
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v113 = &v103 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88B0, &qword_26EF41040);
  MEMORY[0x28223BE20](v112);
  v117 = &v103 - v19;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88B8, &qword_26EF41048);
  MEMORY[0x28223BE20](v121);
  v119 = &v103 - v20;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88C0, &qword_26EF41050);
  v125 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = &v103 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88C8, &qword_26EF41058);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v103 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88D0, &qword_26EF41060);
  MEMORY[0x28223BE20](v120);
  v129 = &v103 - v23;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88D8, &qword_26EF41068);
  MEMORY[0x28223BE20](v127);
  v131 = &v103 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88E0, &qword_26EF41070);
  MEMORY[0x28223BE20](v130);
  v132 = &v103 - v25;
  v152 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88E8, &qword_26EF41078);
  sub_26EE154C8(&qword_2806C88F0, &qword_2806C88E8, &qword_26EF41078, MEMORY[0x277CE14C0]);
  sub_26EF3A4EC();
  sub_26EF3AECC();
  sub_26EE154C8(&qword_2806C88F8, &qword_2806C8888, &qword_26EF41018, MEMORY[0x277CDE580]);
  sub_26EEA200C(&qword_2806C7798, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  sub_26EF3A93C();
  (*(v146 + 8))(v9, v7);
  (*(v11 + 8))(v13, v10);
  v26 = *(v2 + 8);
  v109 = *v2;
  v153 = v109;
  v154 = v26;
  v108 = v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  v27 = v157;
  v28 = VoiceBankingSession.dataStoreEventPublisher.getter();

  v29 = v149;
  sub_26EEA1EDC(v2, v149, type metadata accessor for VoiceManagementView);
  v30 = *(v150 + 80);
  v31 = (v30 + 16) & ~v30;
  v150 = v31 + refreshed;
  v32 = swift_allocObject();
  v134 = type metadata accessor for VoiceManagementView;
  sub_26EEA1FA4(v29, v32 + v31, type metadata accessor for VoiceManagementView);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8900, &qword_26EF41088);
  v34 = v15;
  *&v15[*(v33 + 52)] = v28;
  v35 = &v15[*(v33 + 56)];
  *v35 = sub_26EE9F64C;
  v35[1] = v32;
  v36 = *(v2 + 64);
  v140 = *(v2 + 56);
  v139 = v36;
  v138 = *(v2 + 72);
  v141 = type metadata accessor for VoiceBankingNavigationModel(0);
  v137 = sub_26EEA200C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  sub_26EF3976C();
  v37 = v135;
  v104 = v34;
  VoiceBankingNavigationModel.$presentVoiceRootView.getter();

  sub_26EEA1EDC(v2, v29, type metadata accessor for VoiceManagementView);
  v38 = swift_allocObject();
  sub_26EEA1FA4(v29, v38 + v31, v134);
  v39 = &v34[*(v37 + 56)];
  *v39 = sub_26EE9FFD0;
  v39[1] = v38;
  v40 = *(v2 + 40);
  v146 = *(v2 + 32);
  v144 = v40;
  v143 = *(v2 + 48);
  v103 = v2;
  refreshed = type metadata accessor for VoiceRefreshViewModel(0);
  v142 = sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v41 = sub_26EEA6568();

  v153 = v41;
  sub_26EEA1EDC(v2, v29, type metadata accessor for VoiceManagementView);
  v105 = v30;
  v42 = swift_allocObject();
  v106 = v31;
  sub_26EEA1FA4(v29, v42 + v31, v134);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  v44 = sub_26EE154C8(&qword_2806C8910, &qword_2806C8890, &qword_26EF41020, MEMORY[0x277CDDB50]);
  v45 = sub_26EEA01CC();
  v46 = v135;
  v47 = v104;
  sub_26EF3A90C();

  sub_26EE14578(v47, &qword_2806C8890, &qword_26EF41020);
  sub_26EF3977C();
  swift_getKeyPath();
  v48 = v103;
  sub_26EF399BC();

  v49 = type metadata accessor for RootView(0);
  v153 = v46;
  v154 = v43;
  v155 = v44;
  v156 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_26EEA200C(&qword_2806C7B40, type metadata accessor for RootView, &unk_26EF3D4B8);
  v52 = v145;
  v53 = v136;
  sub_26EF3A8BC();

  (*(v111 + 8))(v53, v52);
  sub_26EF3976C();
  v54 = sub_26EEA652C();

  v151 = v48;
  v55 = v110;
  sub_26EE61DE8(sub_26EEA0724, v54, v110);

  v56 = sub_26EF38AAC();
  v57 = *(v56 - 8);
  v58 = v55;
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {
    sub_26EE14578(v55, &qword_2806C7080, &unk_26EF3DBF0);
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  else
  {
    v59 = sub_26EF38A7C();
    v60 = v61;
    (*(v57 + 8))(v58, v56);
  }

  v157 = v59;
  v158 = v60;
  v153 = v145;
  v154 = v49;
  v155 = OpaqueTypeConformance2;
  v156 = v51;
  v62 = swift_getOpaqueTypeConformance2();
  sub_26EE12538(v62, v63, v64);
  v65 = v113;
  v66 = v115;
  v67 = v148;
  sub_26EF3A75C();

  (*(v114 + 8))(v67, v66);
  v68 = v149;
  sub_26EEA1EDC(v48, v149, type metadata accessor for VoiceManagementView);
  v69 = swift_allocObject();
  v70 = v106;
  sub_26EEA1FA4(v68, v69 + v106, type metadata accessor for VoiceManagementView);
  v71 = v117;
  (*(v116 + 32))(v117, v65, v118);
  v72 = (v71 + *(v112 + 36));
  *v72 = sub_26EEA0768;
  v72[1] = v69;
  v72[2] = 0;
  v72[3] = 0;
  sub_26EEA1EDC(v48, v68, type metadata accessor for VoiceManagementView);
  v73 = swift_allocObject();
  sub_26EEA1FA4(v68, v73 + v70, type metadata accessor for VoiceManagementView);
  v74 = v119;
  sub_26EE14D98(v71, v119, &qword_2806C88B0, &qword_26EF41040);
  v75 = v121;
  v76 = (v74 + *(v121 + 36));
  *v76 = 0;
  v76[1] = 0;
  v76[2] = sub_26EEA0908;
  v76[3] = v73;
  v153 = v109;
  v154 = v108;
  sub_26EF3AAFC();
  v77 = v157;
  v78 = type metadata accessor for VoiceBankingSession(0);
  v79 = sub_26EEA0968();
  v80 = sub_26EEA200C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  v81 = v123;
  sub_26EF3A67C();

  sub_26EE14578(v74, &qword_2806C88B8, &qword_26EF41048);
  v82 = *(v48 + 24);
  v153 = *(v48 + 16);
  v154 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
  sub_26EF3AAFC();
  type metadata accessor for VoiceBankingCompatibilityModel(0);
  v153 = v75;
  v154 = v78;
  v155 = v79;
  v156 = v80;
  swift_getOpaqueTypeConformance2();
  sub_26EEA200C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
  v83 = v122;
  v84 = v128;
  sub_26EF3A67C();

  (*(v125 + 8))(v81, v84);
  v85 = sub_26EF3976C();
  v86 = sub_26EF394AC();
  v87 = v129;
  (*(v124 + 32))(v129, v83, v126);
  v88 = (v87 + *(v120 + 36));
  *v88 = v86;
  v88[1] = v85;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EEA200C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  v89 = sub_26EF3976C();
  v90 = sub_26EF394AC();
  v91 = v131;
  sub_26EE14D98(v87, v131, &qword_2806C88D0, &qword_26EF41060);
  v92 = (v91 + *(v127 + 36));
  *v92 = v90;
  v92[1] = v89;
  type metadata accessor for VoiceBankingBatteryMonitor(0);
  sub_26EEA200C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
  v93 = sub_26EF3976C();
  v94 = sub_26EF394AC();
  v95 = v132;
  sub_26EE14D98(v91, v132, &qword_2806C88D8, &qword_26EF41068);
  v96 = (v95 + *(v130 + 36));
  *v96 = v94;
  v96[1] = v93;
  v97 = sub_26EF3976C();
  v98 = sub_26EF394AC();
  v99 = v95;
  v100 = v133;
  sub_26EE14D98(v99, v133, &qword_2806C88E0, &qword_26EF41070);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8948, &qword_26EF410C8);
  v102 = (v100 + *(result + 36));
  *v102 = v98;
  v102[1] = v97;
  return result;
}

uint64_t sub_26EE9DC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v129 = type metadata accessor for _InternalSection(0);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v121 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89B0, &qword_26EF41170);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v142 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v139 = &v114 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89B8, &unk_26EF41178);
  v130 = *(v141 - 8);
  v8 = MEMORY[0x28223BE20](v141);
  v140 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v114 - v10;
  v11 = type metadata accessor for CompatibilitySection(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v149 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v146 = &v114 - v14;
  v15 = type metadata accessor for ExportDataSection(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v148 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v145 = &v114 - v18;
  v19 = type metadata accessor for RecordingSection(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v138 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v114 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v114 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v118 = &v114 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v120 = &v114 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v116 = &v114 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v122 = &v114 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v123 = &v114 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v115 = &v114 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v114 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v114 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v119 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v125 = &v114 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v134 = &v114 - v49;
  MEMORY[0x28223BE20](v48);
  v51 = &v114 - v50;
  v52 = type metadata accessor for VoiceInformationSection(0);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v137 = &v114 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v143 = &v114 - v55;
  v56 = *(a1 + 32);
  v57 = *(a1 + 40);
  v58 = *(a1 + 48);
  refreshed = type metadata accessor for VoiceRefreshViewModel(0);
  v60 = sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  v136 = v56;
  v127 = v57;
  LODWORD(v135) = v58;
  v126 = refreshed;
  v124 = v60;
  sub_26EF3976C();
  v61 = sub_26EEA652C();

  v150 = a1;
  sub_26EE61DE8(sub_26EEA2080, v61, v51);

  sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v40);
  v62 = sub_26EF38DBC();
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  v65 = v63 + 48;
  LODWORD(v61) = v64(v40, 1, v62);
  sub_26EE14578(v40, &qword_2806C7088, &unk_26EF3E330);
  v133 = v65;
  v132 = v62;
  if (v61 == 1)
  {
    v66 = v115;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v115);
    v67 = v64(v66, 1, v62);
    sub_26EE14578(v66, &qword_2806C7088, &unk_26EF3E330);
    if (v67 == 1)
    {
      v68 = MEMORY[0x277D70648];
    }

    else
    {
      v68 = MEMORY[0x277D70640];
    }
  }

  else
  {
    v68 = MEMORY[0x277D70638];
  }

  sub_26EEA0C14(sub_26EEA2064, v68, v42);
  sub_26EE5A140(v51, v42, v143);
  sub_26EF3976C();
  v69 = sub_26EEA652C();

  MEMORY[0x28223BE20](v70);
  *(&v114 - 2) = a1;
  sub_26EE61DE8(sub_26EEA2080, v69, v134);
  v126 = 0;

  v71 = v122;
  sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v122);
  v72 = v132;
  LODWORD(v69) = v64(v71, 1, v132);
  sub_26EE14578(v71, &qword_2806C7088, &unk_26EF3E330);
  v117 = v64;
  if (v69 == 1)
  {
    v73 = v116;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v116);
    v74 = v64(v73, 1, v72);
    sub_26EE14578(v73, &qword_2806C7088, &unk_26EF3E330);
    if (v74 == 1)
    {
      v75 = MEMORY[0x277D70648];
    }

    else
    {
      v75 = MEMORY[0x277D70640];
    }

    v76 = v123;
    sub_26EEA0C14(sub_26EEA2064, v75, v123);
  }

  else
  {
    v76 = v123;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v123);
  }

  sub_26EF0DFD8(v134, v76, v144);
  sub_26EF3976C();
  v77 = sub_26EEA6568();

  MEMORY[0x28223BE20](v78);
  *(&v114 - 2) = a1;
  sub_26EE65474(sub_26EEA2064, (&v114 - 4), v77);
  CGSizeMake();
  v135 = v79;
  sub_26EF3976C();
  v80 = sub_26EEA652C();

  MEMORY[0x28223BE20](v81);
  *(&v114 - 2) = a1;
  v82 = v125;
  sub_26EE61DE8(sub_26EEA2080, v80, v125);

  sub_26EEA46F0(v82, v145);
  sub_26EF3976C();
  v83 = sub_26EEA652C();

  MEMORY[0x28223BE20](v84);
  *(&v114 - 2) = a1;
  sub_26EE61DE8(sub_26EEA2080, v83, v82);

  sub_26EF3976C();
  v85 = sub_26EEA6568();

  MEMORY[0x28223BE20](v86);
  *(&v114 - 2) = a1;
  v87 = sub_26EE65474(sub_26EEA2064, (&v114 - 4), v85);
  v88 = sub_26EEAF184(v82, v87, v146);
  MEMORY[0x28223BE20](v88);
  *(&v114 - 2) = a1;
  type metadata accessor for DeleteVoiceButton(0);
  sub_26EEA200C(&qword_2806C89C0, type metadata accessor for DeleteVoiceButton, &unk_26EF3E380);
  sub_26EF3AD6C();
  if (TTSVBIsInternalUIBuild())
  {
    sub_26EF3976C();
    v89 = sub_26EEA652C();

    MEMORY[0x28223BE20](v90);
    *(&v114 - 2) = a1;
    v91 = v119;
    sub_26EE61DE8(sub_26EEA2080, v89, v119);

    v92 = v118;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v118);
    v93 = v132;
    v94 = v117;
    LODWORD(v89) = v117(v92, 1, v132);
    sub_26EE14578(v92, &qword_2806C7088, &unk_26EF3E330);
    if (v89 == 1)
    {
      v95 = v114;
      sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v114);
      v96 = v94(v95, 1, v93);
      sub_26EE14578(v95, &qword_2806C7088, &unk_26EF3E330);
      v97 = v120;
      if (v96 == 1)
      {
        v98 = MEMORY[0x277D70648];
      }

      else
      {
        v98 = MEMORY[0x277D70640];
      }

      v101 = v98;
    }

    else
    {
      v101 = MEMORY[0x277D70638];
      v97 = v120;
    }

    sub_26EEA0C14(sub_26EEA2064, v101, v97);
    v100 = v139;
    v102 = v121;
    sub_26EE2D9BC(v91, v97, v121);
    sub_26EEA1FA4(v102, v100, type metadata accessor for _InternalSection);
    v99 = 0;
  }

  else
  {
    v99 = 1;
    v100 = v139;
  }

  (*(v128 + 56))(v100, v99, 1, v129);
  v103 = v137;
  sub_26EEA1EDC(v143, v137, type metadata accessor for VoiceInformationSection);
  v104 = v138;
  sub_26EEA1EDC(v144, v138, type metadata accessor for RecordingSection);
  sub_26EEA1EDC(v145, v148, type metadata accessor for ExportDataSection);
  sub_26EEA1EDC(v146, v149, type metadata accessor for CompatibilitySection);
  v105 = v130;
  v106 = *(v130 + 16);
  v106(v140, v147, v141);
  sub_26EE13B88(v100, v142, &qword_2806C89B0, &qword_26EF41170);
  v107 = v131;
  sub_26EEA1EDC(v103, v131, type metadata accessor for VoiceInformationSection);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89C8, &qword_26EF41188);
  sub_26EEA1EDC(v104, v107 + v108[12], type metadata accessor for RecordingSection);
  *(v107 + v108[16]) = v135;
  sub_26EEA1EDC(v148, v107 + v108[20], type metadata accessor for ExportDataSection);
  sub_26EEA1EDC(v149, v107 + v108[24], type metadata accessor for CompatibilitySection);
  v110 = v140;
  v109 = v141;
  v106((v107 + v108[28]), v140, v141);
  v111 = v142;
  sub_26EE13B88(v142, v107 + v108[32], &qword_2806C89B0, &qword_26EF41170);

  sub_26EE14578(v139, &qword_2806C89B0, &qword_26EF41170);
  v112 = *(v105 + 8);
  v112(v147, v109);
  sub_26EEA1F44(v146, type metadata accessor for CompatibilitySection);
  sub_26EEA1F44(v145, type metadata accessor for ExportDataSection);
  sub_26EEA1F44(v144, type metadata accessor for RecordingSection);
  sub_26EEA1F44(v143, type metadata accessor for VoiceInformationSection);
  sub_26EE14578(v111, &qword_2806C89B0, &qword_26EF41170);
  v112(v110, v109);
  sub_26EEA1F44(v149, type metadata accessor for CompatibilitySection);
  sub_26EEA1F44(v148, type metadata accessor for ExportDataSection);

  sub_26EEA1F44(v138, type metadata accessor for RecordingSection);
  return sub_26EEA1F44(v137, type metadata accessor for VoiceInformationSection);
}

uint64_t sub_26EE9EF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v15 = sub_26EEA652C();

  v25 = a1;
  sub_26EE61DE8(sub_26EEA2080, v15, v14);

  sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v9);
  v16 = sub_26EF38DBC();
  v17 = *(*(v16 - 8) + 48);
  LODWORD(v15) = v17(v9, 1, v16);
  sub_26EE14578(v9, &qword_2806C7088, &unk_26EF3E330);
  if (v15 == 1)
  {
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v6);
    v18 = v17(v6, 1, v16);
    sub_26EE14578(v6, &qword_2806C7088, &unk_26EF3E330);
    if (v18 == 1)
    {
      v19 = MEMORY[0x277D70648];
    }

    else
    {
      v19 = MEMORY[0x277D70640];
    }
  }

  else
  {
    v19 = MEMORY[0x277D70638];
  }

  sub_26EEA0C14(sub_26EEA2064, v19, v11);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);

  return sub_26EE3F898(v14, v11, v20, v21, v24);
}

double sub_26EE9F314(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VoiceManagementView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_26EF3883C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26EF3915C())
  {
    v15 = sub_26EE27DAC();
    (*(v11 + 16))(v13, v15, v10);
    v16 = sub_26EF3881C();
    v17 = sub_26EF3B43C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = a2;
      v19 = v4;
      v20 = v18;
      *v18 = 0;
      _os_log_impl(&dword_26EE01000, v16, v17, "VoiceManagementView: Got db event, voices did change. Will refresh voices and models", v18, 2u);
      v21 = v20;
      v4 = v19;
      a2 = v28;
      MEMORY[0x2743842A0](v21, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v22 = sub_26EF3B30C();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_26EEA1EDC(a2, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceManagementView);
    sub_26EF3B2DC();
    v23 = sub_26EF3B2CC();
    v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    sub_26EEA1FA4(v6, v25 + v24, type metadata accessor for VoiceManagementView);
    sub_26EE2C388(0, 0, v9, &unk_26EF41160, v25);
  }

  return result;
}

double sub_26EE9F64C(uint64_t a1)
{
  v3 = *(type metadata accessor for VoiceManagementView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EE9F314(a1, v4);
}

uint64_t sub_26EE9F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_26EF3883C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v4[9] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[10] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](sub_26EE9F7E8, v7, v6);
}

uint64_t sub_26EE9F7E8()
{
  v1 = *(v0 + 40);
  *(v0 + 104) = *(v1 + 32);
  *(v0 + 112) = *(v1 + 40);
  *(v0 + 152) = *(v1 + 48);
  *(v0 + 120) = type metadata accessor for VoiceRefreshViewModel(0);
  *(v0 + 128) = sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  *(v0 + 136) = sub_26EF3976C();
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26EE9F904;

  return sub_26EEA69C4();
}

uint64_t sub_26EE9F904()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26EE9FA48, v3, v2);
}

uint64_t sub_26EE9FA48()
{
  v1 = v0[9];
  v2 = v0[5];

  sub_26EF3976C();
  v3 = sub_26EEA652C();

  *(swift_task_alloc() + 16) = v2;
  sub_26EE61DE8(sub_26EEA2080, v3, v1);

  v4 = sub_26EF38AAC();
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_26EE14578(v1, &qword_2806C7080, &unk_26EF3DBF0);
  if (v5 == 1)
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v9 = sub_26EE27DAC();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_26EF3881C();
    v11 = sub_26EF3B47C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26EE01000, v10, v11, "VoiceManagementView: Voice was deleted by other device or process. Dismissing view.", v12, 2u);
      MEMORY[0x2743842A0](v12, -1, -1);
    }

    v14 = v0[7];
    v13 = v0[8];
    v16 = v0[5];
    v15 = v0[6];

    (*(v14 + 8))(v13, v15);
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EEA200C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF3976C();
    VoiceBankingNavigationModel.dismissSheet()();

    (*(v16 + 144))(v17);
  }

  else
  {
    v18 = v0[5];
    v19 = *(v18 + 24);
    v0[2] = *(v18 + 16);
    v0[3] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
    sub_26EF3AAFC();
    v20 = v0[4];
    v26 = *(type metadata accessor for VoiceManagementView(0) + 48);
    sub_26EF3976C();
    v21 = sub_26EEA6568();

    v22 = swift_task_alloc();
    *(v22 + 16) = v18;
    v23 = sub_26EE65474(sub_26EEA2064, v22, v21);

    (*(*v20 + 152))(v18 + v26, v23);
  }

  v24 = v0[1];

  return v24();
}

double sub_26EE9FDEC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_26EF3883C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_26EE27DAC();
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B43C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_26EE01000, v9, v10, "VoiceManagementView: onChange presentVoiceRootView=%{BOOL}d. Will update timer.", v11, 8u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  sub_26EEA7B10(v7 ^ 1);

  return result;
}

double sub_26EE9FFD0(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for VoiceManagementView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EE9FDEC(a1, v4);
}

double sub_26EEA0040()
{
  v1 = (type metadata accessor for VoiceManagementView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = *(v2 + 24);
  v9[0] = *(v2 + 16);
  v9[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
  sub_26EF3AAFC();
  v4 = v9[5];
  v5 = v1[14];
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v6 = sub_26EEA6568();

  v9[2] = v2;
  v7 = sub_26EE65474(sub_26EEA2064, v9, v6);
  (*(*v4 + 152))(v2 + v5, v7);

  return result;
}

unint64_t sub_26EEA01CC()
{
  result = qword_2806C8918;
  if (!qword_2806C8918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8908, &qword_26EF41090);
    sub_26EEA200C(&qword_2806C8920, MEMORY[0x277D705D8], MEMORY[0x277D705E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8918);
  }

  return result;
}

uint64_t sub_26EEA0280(uint64_t a1)
{
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EE27DAC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B47C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26EE01000, v7, v8, "VoiceManagementView: Updating timer state to active", v9, 2u);
    MEMORY[0x2743842A0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  sub_26EEA7B10(1);

  v10 = *(a1 + 24);
  v17[2] = *(a1 + 16);
  v17[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
  sub_26EF3AAFC();
  v11 = v17[1];
  v12 = *(type metadata accessor for VoiceManagementView(0) + 48);
  sub_26EF3976C();
  v13 = sub_26EEA6568();

  MEMORY[0x28223BE20](v14);
  v17[-2] = a1;
  v15 = sub_26EE65474(sub_26EEA1AA8, &v17[-4], v13);
  (*(*v11 + 152))(a1 + v12, v15);
}

double sub_26EEA0554(uint64_t a1)
{
  v1 = sub_26EF3883C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EE27DAC();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B47C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "VoiceManagementView: Updating timer state to inactive", v8, 2u);
    MEMORY[0x2743842A0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  sub_26EEA7B10(0);

  return result;
}

uint64_t sub_26EEA0768()
{
  v1 = *(type metadata accessor for VoiceManagementView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEA0280(v2);
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for VoiceManagementView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_26EE05CA8(*(v5 + 32), *(v5 + 40));
  sub_26EE05CA8(*(v5 + 56), *(v5 + 64));
  sub_26EE60C70(*(v5 + 80), *(v5 + 88), *(v5 + 96));
  sub_26EE05CA8(*(v5 + 104), *(v5 + 112));

  v6 = v1[14];
  v7 = sub_26EF37EDC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_26EEA0908()
{
  v1 = *(type metadata accessor for VoiceManagementView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEA0554(v2);
}

unint64_t sub_26EEA0968()
{
  result = qword_2806C8928;
  if (!qword_2806C8928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88B8, &qword_26EF41048);
    sub_26EEA09F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8928);
  }

  return result;
}

unint64_t sub_26EEA09F4()
{
  result = qword_2806C8930;
  if (!qword_2806C8930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88B0, &qword_26EF41040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88A0, &qword_26EF41030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8898, &qword_26EF41028);
    type metadata accessor for RootView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8890, &qword_26EF41020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8908, &qword_26EF41090);
    sub_26EE154C8(&qword_2806C8910, &qword_2806C8890, &qword_26EF41020, MEMORY[0x277CDDB50]);
    sub_26EEA01CC();
    swift_getOpaqueTypeConformance2();
    sub_26EEA200C(&qword_2806C7B40, type metadata accessor for RootView, &unk_26EF3D4B8);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26EE12538(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8930);
  }

  return result;
}

uint64_t sub_26EEA0C14@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v24 = a3;
  v5 = sub_26EF391EC();
  v25 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v31 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v24 - v8;
  v9 = sub_26EF38DBC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v13 = sub_26EEA6568();

  v33 = v3;
  result = sub_26EE65474(a1, v32, v13);
  v26 = *(result + 16);
  if (v26)
  {
    v15 = 0;
    v27 = v10 + 16;
    v28 = result;
    v16 = v25 + 1;
    v25 = (v10 + 8);
    while (v15 < *(result + 16))
    {
      (*(v10 + 16))(v12, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v15, v9);
      v17 = sub_26EF38D1C();
      v29(v17);
      sub_26EEA200C(&qword_2806C7A60, MEMORY[0x277D70650], MEMORY[0x277D70668]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v36 == v34 && v37 == v35)
      {
        v23 = *v16;
        (*v16)(v31, v5);
        v23(v30, v5);

LABEL_10:

        v22 = v24;
        (*(v10 + 32))(v24, v12, v9);
        v21 = 0;
        return (*(v10 + 56))(v22, v21, 1, v9);
      }

      v18 = sub_26EF3B82C();
      v19 = v9;
      v20 = *v16;
      (*v16)(v31, v5);
      v20(v30, v5);
      v9 = v19;

      if (v18)
      {
        goto LABEL_10;
      }

      ++v15;
      (*v25)(v12, v19);
      result = v28;
      if (v26 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v21 = 1;
    v22 = v24;
    return (*(v10 + 56))(v22, v21, 1, v9);
  }

  return result;
}

uint64_t sub_26EEA103C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_26EF37EDC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v6);
  type metadata accessor for VoiceManagementView(0);
  LOBYTE(a3) = sub_26EF37EAC();
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_26EEA114C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26EF37EDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_26EEA120C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF37EDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEA12B0(uint64_t a1)
{
  sub_26EEA1414(319, &qword_2806C8950, type metadata accessor for VoiceBankingSession);
  if (v1 <= 0x3F)
  {
    sub_26EEA1414(319, &qword_2806C8958, type metadata accessor for VoiceBankingCompatibilityModel);
    if (v2 <= 0x3F)
    {
      sub_26EEA1468(319);
      if (v3 <= 0x3F)
      {
        sub_26EEA14FC(319);
        if (v4 <= 0x3F)
        {
          sub_26EEA1590(319);
          if (v5 <= 0x3F)
          {
            sub_26EEA1624(319);
            if (v6 <= 0x3F)
            {
              sub_26EE38E90();
              if (v7 <= 0x3F)
              {
                sub_26EE3FF38();
                if (v8 <= 0x3F)
                {
                  sub_26EF37EDC();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_26EEA1414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3AB2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26EEA1468(uint64_t a1)
{
  if (!qword_2806C8960)
  {
    type metadata accessor for VoiceRefreshViewModel(255);
    sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8960);
    }
  }
}

void sub_26EEA14FC(uint64_t a1)
{
  if (!qword_2806C8968)
  {
    type metadata accessor for VoiceBankingNavigationModel(255);
    sub_26EEA200C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8968);
    }
  }
}

void sub_26EEA1590(uint64_t a1)
{
  if (!qword_2806C8970)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(255);
    sub_26EEA200C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8970);
    }
  }
}

void sub_26EEA1624(uint64_t a1)
{
  if (!qword_2806C8978)
  {
    type metadata accessor for VoiceBankingBatteryMonitor(255);
    sub_26EEA200C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8978);
    }
  }
}

unint64_t sub_26EEA16BC()
{
  result = qword_2806C8980;
  if (!qword_2806C8980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8948, &qword_26EF410C8);
    sub_26EEA1774();
    sub_26EE154C8(&qword_2806C7D78, &qword_2806C7D80, &qword_26EF41150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8980);
  }

  return result;
}

unint64_t sub_26EEA1774()
{
  result = qword_2806C8988;
  if (!qword_2806C8988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88E0, &qword_26EF41070);
    sub_26EEA182C();
    sub_26EE154C8(&qword_2806C89A0, &qword_2806C89A8, &qword_26EF41148, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8988);
  }

  return result;
}

unint64_t sub_26EEA182C()
{
  result = qword_2806C8990;
  if (!qword_2806C8990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88D8, &qword_26EF41068);
    sub_26EEA18E4();
    sub_26EE154C8(&qword_2806C7C80, &qword_2806C7C88, &qword_26EF3F410, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8990);
  }

  return result;
}

unint64_t sub_26EEA18E4()
{
  result = qword_2806C8998;
  if (!qword_2806C8998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88D0, &qword_26EF41060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88C0, &qword_26EF41050);
    type metadata accessor for VoiceBankingCompatibilityModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88B8, &qword_26EF41048);
    type metadata accessor for VoiceBankingSession(255);
    sub_26EEA0968();
    sub_26EEA200C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
    swift_getOpaqueTypeConformance2();
    sub_26EEA200C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C7C70, &qword_2806C7C78, &qword_26EF3F408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8998);
  }

  return result;
}

void *sub_26EEA1AEC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CD0, &unk_26EF3F440);
  v10 = *(sub_26EF38DBC() - 8);
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
  v15 = *(sub_26EF38DBC() - 8);
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

uint64_t sub_26EEA1CC4()
{
  v1 = (type metadata accessor for VoiceManagementView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_26EE05CA8(*(v5 + 32), *(v5 + 40));
  sub_26EE05CA8(*(v5 + 56), *(v5 + 64));
  sub_26EE60C70(*(v5 + 80), *(v5 + 88), *(v5 + 96));
  sub_26EE05CA8(*(v5 + 104), *(v5 + 112));

  v6 = v1[14];
  v7 = sub_26EF37EDC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEA1E0C()
{
  v2 = *(type metadata accessor for VoiceManagementView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE9F6BC(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEA1EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EEA1F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26EEA1FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EEA200C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ExportDataSection(uint64_t a1)
{
  result = qword_2806CD1F0;
  if (!qword_2806CD1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEA20E8(uint64_t a1)
{
  v2 = type metadata accessor for ExportDataSection(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89D8, qword_26EF411A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  *v8 = sub_26EF39E4C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A08, &qword_26EF41220);
  sub_26EEA2340(&v8[*(v9 + 44)]);
  v10 = (a1 + *(v3 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  v17 = v11;
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  v17 = v16[15];
  sub_26EEA5048(a1, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_26EEA5294(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  sub_26EE154C8(&qword_2806C89E0, &qword_2806C89D8, qword_26EF411A0, MEMORY[0x277CE1138]);
  sub_26EF3A8FC();

  return sub_26EE14578(v8, &qword_2806C89D8, qword_26EF411A0);
}

uint64_t sub_26EEA2340@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A10, &qword_26EF41228);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_26EEA2530(&v16 - v12);
  sub_26EEA28A8(v7);
  sub_26EE13B88(v13, v11, &qword_2806C8A18, &qword_26EF41230);
  sub_26EE13B88(v7, v5, &qword_2806C8A10, &qword_26EF41228);
  sub_26EE13B88(v11, a1, &qword_2806C8A18, &qword_26EF41230);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A20, &qword_26EF41238);
  sub_26EE13B88(v5, a1 + *(v14 + 48), &qword_2806C8A10, &qword_26EF41228);
  sub_26EE14578(v7, &qword_2806C8A10, &qword_26EF41228);
  sub_26EE14578(v13, &qword_2806C8A18, &qword_26EF41230);
  sub_26EE14578(v5, &qword_2806C8A10, &qword_26EF41228);
  return sub_26EE14578(v11, &qword_2806C8A18, &qword_26EF41230);
}

uint64_t sub_26EEA2530@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_26EF3A2BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = *(v1 + 24);
  v25 = *(v1 + 16);
  v26 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v24 == 1)
  {
    sub_26EF397DC();
    sub_26EF3A2AC();
    sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660, MEMORY[0x277CDD7F8]);
    sub_26EEA5A08(&qword_2806C7A78, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    sub_26EF3A63C();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    v15 = &v13[*(v10 + 36)];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
    v17 = *MEMORY[0x277CDF440];
    v18 = sub_26EF396EC();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    v19 = v23;
    sub_26EEA5A50(v13, v23);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v21 = v23;
  }

  return (*(v11 + 56))(v21, v20, 1, v10);
}

uint64_t sub_26EEA28A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = v65 - v4;
  v5 = type metadata accessor for ExportDataSection(0);
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v74 = v6;
  v75 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = v65 - v8;
  v9 = sub_26EF3873C();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v76 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  MEMORY[0x28223BE20](v82);
  v81 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A28, &qword_26EF41240);
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v65 - v15;
  v17 = sub_26EF38AAC();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v65 - v20;
  v79 = v5;
  v22 = *(v5 + 32);
  v24 = v23;
  v71 = v1;
  sub_26EE13B88(v1 + v22, v16, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v24 + 48))(v16, 1, v17) == 1)
  {
    sub_26EE14578(v16, &qword_2806C7080, &unk_26EF3DBF0);
    v25 = 1;
    v26 = v85;
  }

  else
  {
    v69 = v12;
    v70 = a1;
    v66 = *(v24 + 32);
    v66(v21, v16, v17);
    v27 = sub_26EE17094();
    v28._object = 0x800000026EF46140;
    v29 = v27 & 1;
    v28._countAndFlagsBits = 0xD000000000000014;
    v30 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v28, v29, 0);
    v65[3] = v30._countAndFlagsBits;
    v65[2] = v30._object;
    v31 = sub_26EE17094();
    v32._countAndFlagsBits = 0xD000000000000015;
    v32._object = 0x800000026EF46120;
    v33 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v32, v31 & 1, 0);
    v65[1] = v33._countAndFlagsBits;
    v65[0] = v33._object;
    v34 = sub_26EF3961C();
    (*(*(v34 - 8) + 56))(v84, 1, 1, v34);
    v35 = v71;
    v36 = v75;
    sub_26EEA5048(v71, v75);
    v68 = v24;
    v37 = *(v24 + 16);
    v38 = v72;
    v67 = v21;
    v37(v72, v21, v17);
    v39 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v40 = (v74 + *(v24 + 80) + v39) & ~*(v24 + 80);
    v41 = swift_allocObject();
    v42 = v36;
    v43 = 1;
    sub_26EEA5294(v42, v41 + v39);
    v66((v41 + v40), v38, v17);
    v44 = v76;
    sub_26EF3874C();
    v45 = v35;
    v46 = *(v35 + 24);
    LOBYTE(v87) = *(v35 + 16);
    v88 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
    sub_26EF3AAFC();
    v47 = v17;
    if ((v86 & 1) == 0)
    {
      v48 = v35 + *(v79 + 28);
      v49 = *v48;
      v50 = *(v48 + 8);
      LOBYTE(v87) = v49;
      v88 = v50;
      sub_26EF3AAFC();
      v43 = v86;
    }

    KeyPath = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    v53 = v81;
    (*(v77 + 32))(v81, v44, v78);
    v54 = v82;
    v55 = (v53 + *(v82 + 36));
    *v55 = KeyPath;
    v55[1] = sub_26EE274EC;
    v55[2] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
    v56 = v83;
    sub_26EF3AAFC();
    v57 = sub_26EF37DCC();
    v58 = (*(*(v57 - 8) + 48))(v56, 1, v57) != 1;
    v59 = sub_26EE14578(v56, &qword_2806C6840, &qword_26EF3CD50);
    MEMORY[0x28223BE20](v59);
    v65[-2] = v45;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A30, &qword_26EF41278);
    v61 = sub_26EE63944();
    v87 = v54;
    v88 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = v80;
    sub_26EE82FB8(v58, sub_26EEA5684, &v65[-4], v54, v60, v61, OpaqueTypeConformance2, v80);
    sub_26EE14578(v53, &qword_2806C7C08, &qword_26EF3F0C8);
    (*(v68 + 8))(v67, v47);
    v26 = v85;
    v12 = v69;
    a1 = v70;
    (*(v85 + 32))(v70, v63, v69);
    v25 = 0;
  }

  return (*(v26 + 56))(a1, v25, 1, v12);
}

uint64_t sub_26EEA3134()
{
  v1 = sub_26EF38A2C();
  v2 = *(v1 - 8);
  v46 = v1;
  v47 = v2;
  MEMORY[0x28223BE20](v1);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26EF3883C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF39DDC();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF37DCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  type metadata accessor for ExportDataSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
  sub_26EF3AAFC();
  if ((*(v11 + 48))(v16, 1, v10))
  {
    return sub_26EE14578(v16, &qword_2806C6840, &qword_26EF3CD50);
  }

  v39 = v9;
  v40 = v7;
  v18 = v46;
  v41 = v6;
  (*(v11 + 16))(v13, v16, v10);
  sub_26EE14578(v16, &qword_2806C6840, &qword_26EF3CD50);
  v19 = sub_26EF37D9C();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v22 = *v0;
  if (*(v0 + 8) == 1)
  {
    v23 = v22;
  }

  else
  {

    sub_26EF3B46C();
    v24 = sub_26EF3A36C();
    sub_26EF3880C();

    v25 = v39;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v22, 0);
    (*(v43 + 8))(v25, v40);
    v23 = v48;
  }

  v26 = v18;
  v27 = v47;
  v28._countAndFlagsBits = v19;
  v28._object = v21;
  VoiceBankingSession.deleteTrainingDataArchive(atPath:)(v28);
  if (v29)
  {

    v30 = v41;
    sub_26EF3934C();
    v31 = v29;
    v32 = sub_26EF3881C();
    v33 = sub_26EF3B45C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v42;
      (*(v27 + 104))(v42, *MEMORY[0x277D704D8], v26);
      sub_26EF38A4C();
      sub_26EEA5A08(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
      swift_allocError();
      sub_26EF389BC();
      (*(v27 + 8))(v36, v26);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_26EE01000, v32, v33, "%@", v34, 0xCu);
      sub_26EE14578(v35, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v35, -1, -1);
      MEMORY[0x2743842A0](v34, -1, -1);
    }

    else
    {
    }

    return (*(v44 + 8))(v30, v45);
  }

  else
  {
  }
}

uint64_t sub_26EEA371C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF46120;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD000000000000015;
  v5 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  sub_26EE12538(v5._countAndFlagsBits, v5._object, v6);
  result = sub_26EF3A5DC();
  *a1 = result;
  a1[1] = v8;
  a1[2] = v9 & 1;
  a1[3] = v10;
  return result;
}

double sub_26EEA379C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ExportDataSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_26EF3B30C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_26EEA5048(a1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_26EF3B2DC();
  v16 = sub_26EF3B2CC();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_26EEA5294(v11, v19 + v17);
  (*(v5 + 32))(v19 + v18, v7, v4);
  sub_26EE2C388(0, 0, v14, &unk_26EF41288, v19);

  return result;
}

uint64_t sub_26EEA3A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_26EF38A2C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = sub_26EF37EDC();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = sub_26EF39DDC();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[26] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[27] = v11;
  v5[28] = v10;

  return MEMORY[0x2822009F8](sub_26EEA3C88, v11, v10);
}

uint64_t sub_26EEA3C88()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  *(v0 + 275) = v2;
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 232) = v3;
  *(v0 + 24) = v3;
  *(v0 + 272) = 1;

  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  v4 = *v1;
  if (*(v1 + 8) == 1)
  {
    v5 = v4;
  }

  else
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = *(v0 + 64);
  }

  *(v0 + 248) = v5;
  MEMORY[0x274380B50]();
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_26EEA3E4C;
  v11 = *(v0 + 200);
  v12 = *(v0 + 152);

  return VoiceBankingSession.exportTrainingData(forVoiceID:)(v11, v12);
}

uint64_t sub_26EEA3E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  *(*v1 + 264) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 224);
  v8 = *(v2 + 216);
  if (v0)
  {
    v9 = sub_26EEA424C;
  }

  else
  {
    v9 = sub_26EEA4004;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EEA4004()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  v4 = sub_26EF37DCC();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1, 0, 1, v4);
  v13 = type metadata accessor for ExportDataSection(0);
  sub_26EE13B88(v1, v3, &qword_2806C6840, &qword_26EF3CD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
  sub_26EF3AB0C();
  sub_26EE14578(v1, &qword_2806C6840, &qword_26EF3CD50);
  sub_26EF3AAFC();
  v6 = (*(v5 + 48))(v2, 1, v4);
  sub_26EE14578(v2, &qword_2806C6840, &qword_26EF3CD50);
  if (v6 != 1)
  {
    v7 = (*(v0 + 72) + *(v13 + 28));
    v8 = *v7;
    v9 = *(v7 + 1);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;
    *(v0 + 274) = 1;
    sub_26EF3AB0C();
  }

  v10 = *(v0 + 232);
  *(v0 + 32) = *(v0 + 275);
  *(v0 + 40) = v10;
  *(v0 + 273) = 0;
  sub_26EF3AB0C();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26EEA424C()
{
  v1 = *(v0 + 264);

  sub_26EF3934C();
  v2 = v1;
  v3 = sub_26EF3881C();
  v4 = sub_26EF3B45C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  if (v5)
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    (*(v8 + 104))(v7, *MEMORY[0x277D704D8], v9);
    sub_26EF38A4C();
    sub_26EEA5A08(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v8 + 8))(v7, v9);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_26EE01000, v3, v4, "%@", v10, 0xCu);
    sub_26EE14578(v11, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v11, -1, -1);
    MEMORY[0x2743842A0](v10, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v13 = *(v0 + 232);
  *(v0 + 32) = *(v0 + 275);
  *(v0 + 40) = v13;
  *(v0 + 273) = 0;
  sub_26EF3AB0C();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EEA4500(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  v6 = (a2 + *(type metadata accessor for ExportDataSection(0) + 28));
  v7 = *v6;
  v8 = *(v6 + 1);
  v12[32] = v7;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
  sub_26EF3AAFC();
  v9 = sub_26EF37DCC();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v5, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
    sub_26EE63944();
    sub_26EF3A6EC();

    return (*(v10 + 8))(v5, v9);
  }

  return result;
}

uint64_t sub_26EEA46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  type metadata accessor for VoiceBankingSession(0);
  sub_26EEA5A08(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a2 = sub_26EF3973C();
  *(a2 + 8) = v10 & 1;
  v18 = 0;
  sub_26EF3AAEC();
  v11 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v11;
  v12 = type metadata accessor for ExportDataSection(0);
  v13 = sub_26EF37DCC();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_26EE13B88(v9, v7, &qword_2806C6840, &qword_26EF3CD50);
  sub_26EF3AAEC();
  sub_26EE14578(v9, &qword_2806C6840, &qword_26EF3CD50);
  v14 = a2 + *(v12 + 28);
  v18 = 0;
  sub_26EF3AAEC();
  v15 = v20;
  *v14 = v19;
  *(v14 + 8) = v15;
  return sub_26EEA4904(a1, a2 + *(v12 + 32));
}

uint64_t sub_26EEA4904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA4990()
{
  v1 = sub_26EF387DC();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 104))(&v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CE76B8]);
  v9 = v0;
  v8 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89D0, &unk_26EF41190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C89D8, qword_26EF411A0);
  v5 = sub_26EE154C8(&qword_2806C89E0, &qword_2806C89D8, qword_26EF411A0, MEMORY[0x277CE1138]);
  v10 = v4;
  v11 = MEMORY[0x277D839B0];
  v12 = v5;
  v13 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_26EE3C584();
  return sub_26EF3878C();
}

uint64_t sub_26EEA4B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EEA4CE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EEA4E24(uint64_t a1)
{
  sub_26EEA4FA0(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE38E90();
    if (v2 <= 0x3F)
    {
      sub_26EEA4F3C(319);
      if (v3 <= 0x3F)
      {
        sub_26EEA4FA0(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26EEA4F3C(uint64_t a1)
{
  if (!qword_2806C89F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6840, &qword_26EF3CD50);
    v1 = sub_26EF3AB2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C89F0);
    }
  }
}

void sub_26EEA4FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EEA5048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportDataSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA50AC()
{
  v1 = type metadata accessor for ExportDataSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));

  v6 = v0 + v4 + *(v1 + 24);
  v7 = sub_26EF37DCC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);

  v9 = *(v1 + 32);
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EEA5294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportDataSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA52F8(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for ExportDataSection(0) - 8;
  if ((*a2 & 1) == 0)
  {
    return sub_26EEA3134();
  }

  return result;
}

uint64_t sub_26EEA5360()
{
  v1 = type metadata accessor for ExportDataSection(0);
  v2 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));

  v7 = v6 + *(v1 + 24);
  v8 = sub_26EF37DCC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);

  v10 = *(v1 + 32);
  v11 = (*(v4 + 48))(v6 + v10, 1, v3);
  v12 = *(v4 + 8);
  if (!v11)
  {
    v12(v6 + v10, v3);
  }

  v13 = (((v2 + 16) & ~v2) + v16 + v5) & ~v5;
  v12(v0 + v13, v3);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v2 | v5 | 7);
}

double sub_26EEA55A8()
{
  v1 = *(type metadata accessor for ExportDataSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26EF38AAC() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26EEA379C(v0 + v2, v5);
}

uint64_t sub_26EEA568C()
{
  v1 = type metadata accessor for ExportDataSection(0);
  v2 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));

  v7 = v6 + *(v1 + 24);
  v8 = sub_26EF37DCC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);

  v10 = *(v1 + 32);
  v11 = (*(v4 + 48))(v6 + v10, 1, v3);
  v12 = *(v4 + 8);
  if (!v11)
  {
    v12(v6 + v10, v3);
  }

  v13 = (((v2 + 32) & ~v2) + v16 + v5) & ~v5;
  v12(v0 + v13, v3);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v2 | v5 | 7);
}

uint64_t sub_26EEA58DC()
{
  v2 = *(type metadata accessor for ExportDataSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EEA3A30(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EEA5A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEA5A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA5AE8()
{
  type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  result = sub_26EF37F2C();
  if (!v1)
  {
    return sub_26EF37EFC();
  }

  return result;
}

uint64_t sub_26EEA5B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_26EEA5D44(&qword_2806C8A80, MEMORY[0x277D70530], MEMORY[0x277D70540]);
    v21 = sub_26EF3B0AC();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EEA5D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEA5D8C()
{
  v1 = sub_26EF38AAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3B87C();
  v13 = v0;
  v5 = *v0;
  MEMORY[0x274383950](*(*v0 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);
    do
    {
      v8(v4, v10, v1);
      sub_26EEA5D44(&qword_2806C8A38, MEMORY[0x277D70530], MEMORY[0x277D70538]);
      sub_26EF3B05C();
      (*(v7 - 8))(v4, v1);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  sub_26EF37FEC();
  sub_26EEA5D44(&qword_2806C7048, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_26EF3B05C();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEA5F84(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2;
  v7 = *v2;
  MEMORY[0x274383950](*(*v2 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v9 = v11;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    do
    {
      v9(v6, v12, v3);
      sub_26EEA5D44(&qword_2806C8A38, MEMORY[0x277D70530], MEMORY[0x277D70538]);
      sub_26EF3B05C();
      (*(v10 - 8))(v6, v3);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  sub_26EF37FEC();
  sub_26EEA5D44(&qword_2806C7048, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  return sub_26EF3B05C();
}

uint64_t sub_26EEA6164(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3B87C();
  v16 = v2;
  v7 = *v2;
  MEMORY[0x274383950](*(*v2 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v3);
      sub_26EEA5D44(&qword_2806C8A38, MEMORY[0x277D70530], MEMORY[0x277D70538]);
      sub_26EF3B05C();
      (*(v9 - 8))(v6, v3);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  sub_26EF37FEC();
  sub_26EEA5D44(&qword_2806C7048, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_26EF3B05C();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEA635C(uint64_t *a1, uint64_t *a2)
{
  if (sub_26EEA5B30(*a1, *a2))
  {

    JUMPOUT(0x274380060);
  }

  return 0;
}

BOOL sub_26EEA63CC(_BYTE *a1, _BYTE *a2)
{
  v2 = 30.0;
  if (*a1)
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 30.0;
  }

  if (*a2)
  {
    v2 = 5.0;
  }

  return v3 == v2;
}

uint64_t sub_26EEA6400(char a1)
{
  sub_26EF3B87C();
  if (a1)
  {
    v2 = 0x4014000000000000;
  }

  else
  {
    v2 = 0x403E000000000000;
  }

  MEMORY[0x274383980](v2);
  return sub_26EF3B8CC();
}

uint64_t sub_26EEA6454()
{
  if (*v0)
  {
    v1 = 0x4014000000000000;
  }

  else
  {
    v1 = 0x403E000000000000;
  }

  return MEMORY[0x274383980](v1);
}

uint64_t sub_26EEA6498(uint64_t a1, char a2)
{
  sub_26EF3B87C();
  if (a2)
  {
    v3 = 0x4014000000000000;
  }

  else
  {
    v3 = 0x403E000000000000;
  }

  MEMORY[0x274383980](v3);
  return sub_26EF3B8CC();
}

double *sub_26EEA64E8@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 5.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 30.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_26EEA6510(double *a1@<X8>)
{
  v2 = 30.0;
  if (*v1)
  {
    v2 = 5.0;
  }

  *a1 = v2;
}

void sub_26EEA65A4()
{
  v0 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = (&v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_26EF37FEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v6 = sub_26EEAA9E4(v34);
  v27 = 0;

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6[8];
  v10 = (v7 + 63) >> 6;
  v28 = (v4 + 8);
  v29 = (v4 + 16);

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v30 = v3;
  if (v9)
  {
    while (1)
    {
      v13 = v2;
LABEL_9:
      v15 = (v6[6] + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = *v15;
      v16 = v15[1];
      swift_bridgeObjectRetain_n();
      sub_26EF37EEC();
      if (v6[2])
      {
        v18 = sub_26EE1FCF4(v17, v16);
        v20 = v19;

        v21 = MEMORY[0x277D84F90];
        if (v20)
        {
          v21 = *(v6[7] + 8 * v18);
        }
      }

      else
      {

        v21 = MEMORY[0x277D84F90];
      }

      v2 = v13;
      v22 = v13 + *(v32 + 20);
      v23 = v30;
      (*v29)(v22, v33, v30);
      *v2 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_26EEA8DDC(0, v12[2] + 1, 1, v12, &qword_2806C8A70, &unk_26EF41580, type metadata accessor for TTSVBVoicesByLocaleContainer);
      }

      v25 = v12[2];
      v24 = v12[3];
      if (v25 >= v24 >> 1)
      {
        v12 = sub_26EEA8DDC((v24 > 1), v25 + 1, 1, v12, &qword_2806C8A70, &unk_26EF41580, type metadata accessor for TTSVBVoicesByLocaleContainer);
      }

      v9 &= v9 - 1;
      (*v28)(v33, v23);
      v12[2] = v25 + 1;
      sub_26EEAADA0(v2, v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = v6[v14 + 8];
    ++v11;
    if (v9)
    {
      v13 = v2;
      v11 = v14;
      goto LABEL_9;
    }
  }

  v34 = v12;

  v9 = v27;
  sub_26EEA9260(&v34);
  if (!v9)
  {

    return;
  }

LABEL_22:

  __break(1u);
}

uint64_t sub_26EEA69C4()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_26EF38A2C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v1[12] = swift_task_alloc();
  v3 = sub_26EF38DBC();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_26EF3883C();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_26EF3B2DC();
  v1[23] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v1[24] = v6;
  v1[25] = v5;

  return MEMORY[0x2822009F8](sub_26EEA6BF8, v6, v5);
}

uint64_t sub_26EEA6BF8()
{
  v0[26] = *(v0[7] + 16);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_26EEA6C94;

  return VoiceBankingSession.fetchVoices()();
}

uint64_t sub_26EEA6C94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_26EEA75D8;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_26EEA6DBC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26EEA6DBC()
{
  v1 = v0[29];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_26EF3953C();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_26EEA6EAC;

  return VoiceBankingSession.refreshModels()();
}

uint64_t sub_26EEA6EAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_26EEA7874;
  }

  else
  {
    v4[32] = a1;
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_26EEA6FD4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void sub_26EEA6FD4()
{
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[17];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v1;

  sub_26EF3953C();
  v35 = sub_26EE27ED0();
  v36 = *(v3 + 16);
  v36(v2);
  swift_retain_n();
  v4 = sub_26EF3881C();
  v5 = sub_26EF3B43C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v7 = *(v0[5] + 16);

    *(v6 + 4) = v7;

    *(v6 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v8 = *(v0[6] + 16);

    *(v6 + 14) = v8;

    _os_log_impl(&dword_26EE01000, v4, v5, "VoiceRefreshViewModel: Did finish refresh. voices=%ld models=%ld", v6, 0x16u);
    MEMORY[0x2743842A0](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[14];
  v34 = *(v0[17] + 8);
  v34(v0[21], v0[16]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v10 = 0;
  v11 = v0[4];
  v12 = *(v11 + 16);
  while (v12 != v10)
  {
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v13 = v0[15];
    v14 = v0[13];
    (*(v9 + 16))(v13, v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v10++, v14);
    v15 = sub_26EF38CFC();
    (*(v9 + 8))(v13, v14);
    if (v15)
    {
      v16 = v0[7];

      v17 = (v16 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval);
      if (*(v16 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval))
      {
        goto LABEL_18;
      }

      v18 = v0 + 19;
      (v36)(v0[19], v35, v0[16]);
      v19 = sub_26EF3881C();
      v20 = sub_26EF3B43C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = 1;
        v22 = "VoiceRefreshViewModel: Found voice that is training. Updating timer refresh rate.";
LABEL_14:
        v24 = *v18;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_26EE01000, v19, v20, v22, v25, 2u);
        MEMORY[0x2743842A0](v25, -1, -1);
        goto LABEL_17;
      }

      v24 = *v18;
      v21 = 1;
      goto LABEL_17;
    }
  }

  v23 = v0[7];

  v17 = (v23 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval);
  if ((*(v23 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval) & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = v0 + 20;
  (v36)(v0[20], v35, v0[16]);
  v19 = sub_26EF3881C();
  v20 = sub_26EF3B43C();
  v21 = 0;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = "VoiceRefreshViewModel: No actively training models. Resetting timer.";
    goto LABEL_14;
  }

  v24 = *v18;
LABEL_17:
  v26 = v0[16];
  v27 = v0[12];
  v28 = v0[7];

  v34(v24, v26);
  *v17 = v21;
  sub_26EEA7B10(0);
  v29 = sub_26EF3B30C();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);

  v30 = sub_26EF3B2CC();
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = v28;
  sub_26EE2C388(0, 0, v27, &unk_26EF41390, v31);

LABEL_18:
  sub_26EEA5D44(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF394BC();
  sub_26EF394DC();

  v33 = v0[1];

  v33();
}

uint64_t sub_26EEA75D8()
{

  v1 = v0[28];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = sub_26EE27ED0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B45C();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    (*(v10 + 104))(v9, *MEMORY[0x277D704D8], v11);
    sub_26EF38A4C();
    sub_26EEA5D44(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v10 + 8))(v9, v11);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26EE01000, v7, v8, "%@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26EEA7874()
{

  v1 = v0[31];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = sub_26EE27ED0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B45C();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    (*(v10 + 104))(v9, *MEMORY[0x277D704D8], v11);
    sub_26EF38A4C();
    sub_26EEA5D44(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v10 + 8))(v9, v11);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26EE01000, v7, v8, "%@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  v15 = v0[1];

  return v15();
}

void sub_26EEA7B10(char a1)
{
  v2 = v1;
  v4 = sub_26EF3883C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  if (a1)
  {
    v11 = sub_26EF3B30C();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_26EF3B2DC();

    v12 = sub_26EF3B2CC();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v2;
    sub_26EE2C388(0, 0, v10, &unk_26EF41398, v13);
  }

  else
  {
    v15 = sub_26EE27ED0();
    (*(v5 + 16))(v7, v15, v4);
    v16 = sub_26EF3881C();
    v17 = sub_26EF3B43C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26EE01000, v16, v17, "VoiceRefreshViewModel: Will cancel refresh timer.", v18, 2u);
      MEMORY[0x2743842A0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer;
    v20 = *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer);
    if (v20)
    {
      [v20 invalidate];
      v21 = *(v2 + v19);
    }

    else
    {
      v21 = 0;
    }

    *(v2 + v19) = 0;
  }
}

uint64_t sub_26EEA7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3883C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[6] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_26EEA7E94, v7, v6);
}

uint64_t sub_26EEA7E94()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_26EE27ED0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "VoiceRefreshViewModel: Creating new timer. Will refresh voices and models", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_26EEA7FE0;

  return sub_26EEA69C4();
}

uint64_t sub_26EEA7FE0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EEA8100, v3, v2);
}

uint64_t sub_26EEA8100()
{

  sub_26EEA8170();

  v1 = *(v0 + 8);

  return v1();
}

void sub_26EEA8170()
{
  v1 = sub_26EF3883C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer;
  if (*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer))
  {
    v12 = sub_26EE27ED0();
    (*(v2 + 16))(v5, v12, v1);
    v13 = sub_26EF3881C();
    v14 = sub_26EF3B47C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26EE01000, v13, v14, "VoiceRefreshViewModel: Attempted to create a new timer but it was already active. Bailing.", v15, 2u);
      MEMORY[0x2743842A0](v15, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval;
    if (*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval))
    {
      v17 = 5.0;
    }

    else
    {
      v17 = 30.0;
    }

    v18 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_timerFired selector:0 userInfo:1 repeats:v17];
    v19 = *(v0 + v11);
    *(v0 + v11) = v18;
    v20 = v18;

    v21 = sub_26EE27ED0();
    v22 = *(v2 + 16);
    if (v20)
    {
      v22(v10, v21, v1);

      v23 = v0;
      v24 = sub_26EF3881C();
      v25 = sub_26EF3B43C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = v26;
        v28 = *(v23 + v16);
        *v26 = 134217984;
        v29 = 30.0;
        if (v28)
        {
          v29 = 5.0;
        }

        *(v26 + 4) = v29;
        _os_log_impl(&dword_26EE01000, v24, v25, "VoiceRefreshViewModel: Successfully created timer with %f second sequence for voice and model refresh.", v26, 0xCu);
        MEMORY[0x2743842A0](v27, -1, -1);
      }

      (*(v2 + 8))(v10, v1);
      v30 = [objc_opt_self() mainRunLoop];
      [v30 addTimer:v20 forMode:*MEMORY[0x277CBE738]];
    }

    else
    {
      v22(v8, v21, v1);
      v31 = sub_26EF3881C();
      v32 = sub_26EF3B45C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26EE01000, v31, v32, "VoiceRefreshViewModel: Unable to initialize timer", v33, 2u);
        MEMORY[0x2743842A0](v33, -1, -1);
      }

      (*(v2 + 8))(v8, v1);
    }
  }
}

uint64_t sub_26EEA8554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3883C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[6] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_26EEA8648, v7, v6);
}

uint64_t sub_26EEA8648()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_26EE27ED0();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = v8;
    *v8 = 134217984;
    v10 = 30.0;
    if (*(v7 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval))
    {
      v10 = 5.0;
    }

    *(v8 + 4) = v10;
    _os_log_impl(&dword_26EE01000, v5, v6, "VoiceRefreshViewModel: Refresh timer fired. Will refresh voices and models. Interval: %f", v8, 0xCu);
    MEMORY[0x2743842A0](v9, -1, -1);
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_26EEA87D0;

  return sub_26EEA69C4();
}

uint64_t sub_26EEA87D0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EEA88F0, v3, v2);
}

uint64_t sub_26EEA88F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEA8A88()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__voices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A40, &qword_26EF41320);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__models;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A48, &unk_26EF41370);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_26EEA8B94()
{
  v0 = swift_allocObject();
  sub_26EEA8BCC();
  return v0;
}

uint64_t sub_26EEA8BCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A48, &unk_26EF41370);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A40, &qword_26EF41320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = sub_26EED2EB8();
  v10 = *v9;
  *(v0 + 16) = *v9;
  v11 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__voices;
  v12 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D20, &qword_26EF412D0);
  sub_26EF394EC();
  (*(v6 + 32))(v0 + v11, v8, v5);
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__models;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  sub_26EF394EC();
  (*(v2 + 32))(v0 + v14, v4, v1);
  *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer) = 0;
  *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval) = 0;
  return v0;
}

void *sub_26EEA8DDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void sub_26EEA8FB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A78, &qword_26EF41590);
  v35 = v4;
  v6 = sub_26EF3B7BC();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_26EF3B87C();
      sub_26EF3B16C();
      v25 = sub_26EF3B8CC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
}

uint64_t sub_26EEA9260(uint64_t *a1)
{
  v2 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EEAA7F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EEA9308(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EEA9308(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TTSVBVoicesByLocaleContainer(0);
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EEA96C0(v8, v9, a1, v4);
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
    return sub_26EEA9434(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EEA9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v8 = MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v41 = -v18;
    v42 = v17;
    v20 = a1 - a3;
    v35 = v18;
    v21 = v17 + v18 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v22 = v19;
    while (1)
    {
      sub_26EEAB378(v21, v16);
      sub_26EEAB378(v22, v12);
      v23 = sub_26EF37F2C();
      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xE000000000000000;
      }

      v27 = sub_26EF37F2C();
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0xE000000000000000;
      }

      if (v27 == v25 && v29 == v26)
      {

        sub_26EEAB3DC(v12);
        result = sub_26EEAB3DC(v16);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v31 = sub_26EF3B82C();

      sub_26EEAB3DC(v12);
      result = sub_26EEAB3DC(v16);
      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      sub_26EEAADA0(v21, v43);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_26EEAADA0(v32, v22);
      v22 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EEA96C0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v156 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v8 = *(v156 - 1);
  v9 = MEMORY[0x28223BE20](v156);
  v145 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v154 = &v132 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v151 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v150 = &v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v132 - v20;
  result = MEMORY[0x28223BE20](v19);
  v139 = &v132 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_138:
    v29 = *v140;
    if (!*v140)
    {
      goto LABEL_178;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_140;
    }

    goto LABEL_172;
  }

  v133 = v23;
  v155 = v22;
  v134 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v141 = a3;
  v135 = v8;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v142 = v26;
    if (v26 + 1 < v25)
    {
      v146 = v25;
      v30 = *a3;
      v31 = *(v8 + 72);
      v148 = v26 + 1;
      sub_26EEAB378(v30 + v31 * v29, v139);
      v149 = v31;
      v32 = v136;
      sub_26EEAB378(v30 + v31 * v28, v136);
      a3 = v156;
      v33 = sub_26EF37F2C();
      if (v34)
      {
        v29 = v33;
      }

      else
      {
        v29 = 0;
      }

      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0xE000000000000000;
      }

      v36 = sub_26EF37F2C();
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0xE000000000000000;
      }

      if (v36 == v29 && v38 == v35)
      {
        LODWORD(v147) = 0;
      }

      else
      {
        LODWORD(v147) = sub_26EF3B82C();
      }

      v40 = v148;
      v41 = v139;
      if (v5)
      {
        sub_26EEAB3DC(v32);
        sub_26EEAB3DC(v41);
      }

      v137 = v27;
      v138 = 0;
      sub_26EEAB3DC(v32);
      result = sub_26EEAB3DC(v41);
      v42 = v142 + 2;
      v43 = v149 * (v142 + 2);
      v44 = v30 + v43;
      v45 = v149 * v40;
      v46 = v30 + v149 * v40;
      do
      {
        v48 = v42;
        v8 = v40;
        v5 = v45;
        v27 = v43;
        if (v42 >= v146)
        {
          break;
        }

        v152 = v40;
        v153 = v42;
        sub_26EEAB378(v44, v150);
        sub_26EEAB378(v46, v151);
        v50 = sub_26EF37F2C();
        v52 = v51 ? v50 : 0;
        v29 = v51 ? v51 : 0xE000000000000000;
        v53 = sub_26EF37F2C();
        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v53 = 0;
          v55 = 0xE000000000000000;
        }

        v56 = v53 == v52 && v55 == v29;
        v47 = v56 ? 0 : sub_26EF3B82C();
        v8 = v152;
        v48 = v153;

        sub_26EEAB3DC(v151);
        result = sub_26EEAB3DC(v150);
        v49 = v147 ^ v47;
        v42 = v48 + 1;
        v44 += v149;
        v46 += v149;
        v40 = v8 + 1;
        v45 = v5 + v149;
        v43 = &v27[v149];
        a3 = v156;
      }

      while ((v49 & 1) == 0);
      if (v147)
      {
        v28 = v142;
        if (v48 < v142)
        {
          goto LABEL_171;
        }

        if (v142 >= v48)
        {
          v29 = v48;
          v27 = v137;
          v5 = v138;
          a3 = v141;
          goto LABEL_55;
        }

        v57 = v142;
        v58 = v142 * v149;
        do
        {
          if (v57 != v8)
          {
            v60 = *v141;
            if (!*v141)
            {
              goto LABEL_175;
            }

            sub_26EEAADA0(v60 + v58, v145);
            if (v58 < v5 || v60 + v58 >= &v27[v60])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_26EEAADA0(v145, v60 + v5);
          }

          ++v57;
          v5 -= v149;
          v27 -= v149;
          v58 += v149;
        }

        while (v57 < v8--);
      }

      v29 = v48;
      v27 = v137;
      v5 = v138;
      a3 = v141;
      v28 = v142;
LABEL_55:
      v8 = v135;
    }

    v61 = a3[1];
    if (v29 < v61)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_168;
      }

      if (v29 - v28 < v134)
      {
        break;
      }
    }

LABEL_87:
    if (v29 < v28)
    {
      goto LABEL_167;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v27 + 2) + 1, 1, v27);
      v27 = result;
    }

    v83 = *(v27 + 2);
    v82 = *(v27 + 3);
    v84 = v83 + 1;
    if (v83 >= v82 >> 1)
    {
      result = sub_26EE12E30((v82 > 1), v83 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v84;
    v85 = &v27[16 * v83];
    *(v85 + 4) = v142;
    *(v85 + 5) = v29;
    v86 = *v140;
    if (!*v140)
    {
      goto LABEL_177;
    }

    v148 = v29;
    if (v83)
    {
      while (1)
      {
        v29 = v84 - 1;
        if (v84 >= 4)
        {
          break;
        }

        if (v84 == 3)
        {
          v87 = *(v27 + 4);
          v88 = *(v27 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_107:
          if (v90)
          {
            goto LABEL_156;
          }

          v103 = &v27[16 * v84];
          v105 = *v103;
          v104 = *(v103 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_159;
          }

          v109 = &v27[16 * v29 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_162;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_163;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              v29 = v84 - 2;
            }

            goto LABEL_128;
          }

          goto LABEL_121;
        }

        v113 = &v27[16 * v84];
        v115 = *v113;
        v114 = *(v113 + 1);
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_121:
        if (v108)
        {
          goto LABEL_158;
        }

        v116 = &v27[16 * v29];
        v118 = *(v116 + 4);
        v117 = *(v116 + 5);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_161;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_128:
        v124 = v29 - 1;
        if (v29 - 1 >= v84)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (!*a3)
        {
          goto LABEL_174;
        }

        v125 = *&v27[16 * v124 + 32];
        v126 = *&v27[16 * v29 + 40];
        sub_26EEAA120(*a3 + *(v8 + 72) * v125, *a3 + *(v8 + 72) * *&v27[16 * v29 + 32], *a3 + *(v8 + 72) * v126, v86);
        if (v5)
        {
        }

        if (v126 < v125)
        {
          goto LABEL_152;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_26EE13990(v27);
        }

        if (v124 >= *(v27 + 2))
        {
          goto LABEL_153;
        }

        v127 = &v27[16 * v124];
        *(v127 + 4) = v125;
        *(v127 + 5) = v126;
        v157 = v27;
        result = sub_26EE5C168(v29);
        v27 = v157;
        v84 = *(v157 + 2);
        if (v84 <= 1)
        {
          goto LABEL_3;
        }
      }

      v91 = &v27[16 * v84 + 32];
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_154;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_155;
      }

      v98 = &v27[16 * v84];
      v100 = *v98;
      v99 = *(v98 + 1);
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_157;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_160;
      }

      if (v102 >= v94)
      {
        v120 = &v27[16 * v29 + 32];
        v122 = *v120;
        v121 = *(v120 + 1);
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_164;
        }

        if (v89 < v123)
        {
          v29 = v84 - 2;
        }

        goto LABEL_128;
      }

      goto LABEL_107;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v148;
    if (v148 >= v25)
    {
      goto LABEL_138;
    }
  }

  v62 = v28 + v134;
  if (__OFADD__(v28, v134))
  {
    goto LABEL_169;
  }

  if (v62 >= v61)
  {
    v62 = a3[1];
  }

  if (v62 < v28)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    result = sub_26EE13990(v27);
    v27 = result;
LABEL_140:
    v157 = v27;
    v128 = *(v27 + 2);
    if (v128 >= 2)
    {
      while (*a3)
      {
        v129 = *&v27[16 * v128];
        v130 = *&v27[16 * v128 + 24];
        sub_26EEAA120(*a3 + *(v8 + 72) * v129, *a3 + *(v8 + 72) * *&v27[16 * v128 + 16], *a3 + *(v8 + 72) * v130, v29);
        if (v5)
        {
        }

        if (v130 < v129)
        {
          goto LABEL_165;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_26EE13990(v27);
        }

        if (v128 - 2 >= *(v27 + 2))
        {
          goto LABEL_166;
        }

        v131 = &v27[16 * v128];
        *v131 = v129;
        *(v131 + 1) = v130;
        v157 = v27;
        result = sub_26EE5C168(v128 - 1);
        v27 = v157;
        v128 = *(v157 + 2);
        if (v128 <= 1)
        {
        }
      }

      goto LABEL_176;
    }
  }

  if (v29 == v62)
  {
    goto LABEL_87;
  }

  v137 = v27;
  v138 = v5;
  v63 = *a3;
  v64 = *(v8 + 72);
  v65 = *a3 + v64 * (v29 - 1);
  v152 = -v64;
  v153 = v63;
  v66 = v28 - v29;
  v143 = v64;
  v67 = v63 + v29 * v64;
  v68 = v133;
  v144 = v62;
LABEL_67:
  v147 = v66;
  v148 = v29;
  v146 = v67;
  v149 = v65;
  v69 = v65;
  while (1)
  {
    sub_26EEAB378(v67, v68);
    v70 = v155;
    sub_26EEAB378(v69, v155);
    v71 = sub_26EF37F2C();
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0xE000000000000000;
    }

    v75 = sub_26EF37F2C();
    if (v76)
    {
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0xE000000000000000;
    }

    if (v75 == v73 && v77 == v74)
    {

      sub_26EEAB3DC(v70);
      sub_26EEAB3DC(v68);
LABEL_66:
      v29 = v148 + 1;
      v65 = v149 + v143;
      v66 = v147 - 1;
      v67 = v146 + v143;
      if (v148 + 1 == v144)
      {
        v29 = v144;
        v27 = v137;
        v5 = v138;
        a3 = v141;
        v28 = v142;
        v8 = v135;
        goto LABEL_87;
      }

      goto LABEL_67;
    }

    v79 = sub_26EF3B82C();

    sub_26EEAB3DC(v70);
    result = sub_26EEAB3DC(v68);
    if ((v79 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v153)
    {
      break;
    }

    v80 = v154;
    sub_26EEAADA0(v67, v154);
    swift_arrayInitWithTakeFrontToBack();
    sub_26EEAADA0(v80, v69);
    v69 += v152;
    v67 += v152;
    if (__CFADD__(v66++, 1))
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
  return result;
}

unint64_t sub_26EEAA120(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v8 = MEMORY[0x28223BE20](v67);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v57 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_93;
  }

  v20 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v21 = (a2 - a1) / v19;
    v70 = a1;
    v69 = a4;
    if (v21 >= v20 / v19)
    {
      v23 = v20 / v19 * v19;
      if (a4 < a2 || a2 + v23 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v39 = a4 + v23;
      if (v23 < 1)
      {
        v42 = a4 + v23;
      }

      else
      {
        v40 = -v19;
        v41 = a4 + v23;
        v42 = v39;
        v60 = a4;
        v63 = v40;
        while (2)
        {
          while (1)
          {
            v58 = v42;
            v43 = a2 + v40;
            v66 = a2 + v40;
            v61 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v70 = a2;
                v68 = v58;
                goto LABEL_91;
              }

              v45 = a3;
              v59 = v42;
              v62 = v41 + v40;
              sub_26EEAB378(v41 + v40, v64);
              sub_26EEAB378(v43, v65);
              v46 = sub_26EF37F2C();
              v48 = v47 ? v46 : 0;
              v49 = v47 ? v47 : 0xE000000000000000;
              v50 = sub_26EF37F2C();
              if (v51)
              {
                v52 = v51;
              }

              else
              {
                v50 = 0;
                v52 = 0xE000000000000000;
              }

              v53 = v50 == v48 && v52 == v49;
              v54 = v53 ? 0 : sub_26EF3B82C();

              a3 += v63;
              sub_26EEAB3DC(v65);
              sub_26EEAB3DC(v64);
              v55 = v60;
              if (v54)
              {
                break;
              }

              v56 = v62;
              v42 = v62;
              if (v45 < v41 || a3 >= v41)
              {
                swift_arrayInitWithTakeFrontToBack();
                v43 = v66;
              }

              else
              {
                v43 = v66;
                if (v45 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v41 = v42;
              v44 = v56 > v55;
              v40 = v63;
              a2 = v61;
              if (!v44)
              {
                goto LABEL_89;
              }
            }

            if (v45 < v61 || a3 >= v61)
            {
              break;
            }

            a2 = v66;
            v42 = v59;
            v40 = v63;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            if (v41 <= v55)
            {
              goto LABEL_89;
            }
          }

          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v59;
          v40 = v63;
          if (v41 > v55)
          {
            continue;
          }

          break;
        }
      }

LABEL_89:
      v70 = a2;
      v68 = v42;
LABEL_91:
      sub_26EEAA714(&v70, &v69, &v68);
      return 1;
    }

    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a1)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
LABEL_17:
    v65 = a4 + v22;
    v68 = a4 + v22;
    if (v22 >= 1 && result < a3)
    {
      v63 = v19;
      v64 = v17;
      v62 = a3;
      while (1)
      {
        v66 = result;
        sub_26EEAB378(result, v17);
        sub_26EEAB378(a4, v14);
        v25 = sub_26EF37F2C();
        v27 = v26 ? v25 : 0;
        v28 = v17;
        v29 = v14;
        v30 = v26 ? v26 : 0xE000000000000000;
        v31 = sub_26EF37F2C();
        if (v32)
        {
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0xE000000000000000;
        }

        if (v31 == v27 && v33 == v30)
        {
          break;
        }

        v35 = sub_26EF3B82C();

        sub_26EEAB3DC(v29);
        sub_26EEAB3DC(v28);
        v36 = v63;
        v14 = v29;
        if ((v35 & 1) == 0)
        {
          goto LABEL_41;
        }

        v37 = v66 + v63;
        if (a1 < v66 || a1 >= v37)
        {
          swift_arrayInitWithTakeFrontToBack();
          result = v37;
          v38 = v62;
          v17 = v64;
        }

        else
        {
          v38 = v62;
          v17 = v64;
          if (a1 == v66)
          {
            result = v66 + v63;
          }

          else
          {
            swift_arrayInitWithTakeBackToFront();
            result = v37;
          }
        }

LABEL_47:
        a1 += v36;
        v70 = a1;
        if (a4 >= v65 || result >= v38)
        {
          goto LABEL_91;
        }
      }

      sub_26EEAB3DC(v29);
      sub_26EEAB3DC(v28);
      v36 = v63;
      v14 = v29;
LABEL_41:
      if (a1 < a4 || a1 >= a4 + v36)
      {
        swift_arrayInitWithTakeFrontToBack();
        v17 = v64;
      }

      else
      {
        v17 = v64;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v69 = a4 + v36;
      a4 += v36;
      result = v66;
      v38 = v62;
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_94:
  __break(1u);
  return result;
}