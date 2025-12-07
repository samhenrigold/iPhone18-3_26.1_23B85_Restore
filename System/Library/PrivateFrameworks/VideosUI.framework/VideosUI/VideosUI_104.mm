void sub_1E3EC0EA8(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = type metadata accessor for LibraryBarItem();
  v4 = sub_1E3EC20A8();
  v8[1] = MEMORY[0x1E6910FA0](v2, v3, v4);
  v5 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3EC13DC(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1E3EC0F94(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_42:
      MEMORY[0x1EEE6A200](v6, v5);
      return;
    }

    v7 = v5;
    v8 = a2;
    goto LABEL_18;
  }

  if (v4)
  {
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
LABEL_18:

    sub_1E3EC11DC(v7, v8);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v23 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(a1 + 56);
    v6 = type metadata accessor for LibraryBarItem();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v24 = v13;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v25 = (v11 - 1) & v11;
LABEL_33:
        v17 = *(*(a1 + 48) + 8 * (v14 | (v12 << 6)));
        v18 = sub_1E4206F54();
        v19 = ~(-1 << *(a2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return;
          }

          v21 = *(*(a2 + 48) + 8 * v20);
          v22 = sub_1E4206F64();

          v18 = v20 + 1;
        }

        while ((v22 & 1) == 0);

        v13 = v24;
        v11 = v25;
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return;
      }

      v16 = *(v23 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v25 = (v16 - 1) & v16;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_42;
  }
}

void sub_1E3EC11DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1E4207384())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1E42073D4();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

char *sub_1E3EC12DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B6B0, &qword_1E42DB300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E3EC13DC(uint64_t *a1, void *a2)
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

    v9 = sub_1E4207394();

    if (v9)
    {

      type metadata accessor for LibraryBarItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3EC15E0(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1E3EC179C(v17 + 1);
        }

        v18 = v8;
        sub_1E3B0CE7C(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for LibraryBarItem();
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_1E3EC19C0(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_1E3EC15E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0, &qword_1E42DB308);
    v2 = sub_1E4207454();
    v15 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      type metadata accessor for LibraryBarItem();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1E3EC179C(v3 + 1);
      }

      v2 = v15;
      result = sub_1E4206F54();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1E3EC179C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0, &qword_1E42DB308);
  v4 = sub_1E4207444();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1E373CBF0(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_1E4206F54();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E3EC19C0(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3EC179C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E3EC1C58(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_1E4206F54();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for LibraryBarItem();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_1E4206F64();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1E3EC1B08();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = result;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1E3EC1B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0, &qword_1E42DB308);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_1E3EC1C58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C0, &qword_1E42DB308);
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1E4206F54();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1E3EC1E68(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for LibraryBarItem();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3EC1FAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for LibraryBarItem();
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
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3EC20A8()
{
  result = qword_1EE282A68;
  if (!qword_1EE282A68)
  {
    type metadata accessor for LibraryBarItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE282A68);
  }

  return result;
}

void sub_1E3EC2100(unint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_5_0(v1 + 16, v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI21LibrarySideBarManager_stopped) & 1) == 0)
    {
      v37 = Strong;
      v4 = sub_1E32AE9B0(v2);
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      while (v4 != v5)
      {
        if (v6)
        {
          MEMORY[0x1E6911E60](v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }
        }

        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        type metadata accessor for LibraryBarItem();
        OUTLINED_FUNCTION_24_92();
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_4_157();
        if (v8)
        {
          OUTLINED_FUNCTION_35(v7);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_123_1();
        sub_1E4206324();
        ++v5;
      }

      sub_1E3EBB800();

      v9 = sub_1E32AE9B0(v2);
      if (v9)
      {
        v10 = v9;
        if (v9 < 1)
        {
          goto LABEL_37;
        }

        v11 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        v13 = &type metadata for LibMenuType;
        v38 = v2;
        do
        {
          if (v6)
          {
            v14 = MEMORY[0x1E6911E60](v11, v2);
            v17 = v14;
          }

          else
          {
            v17 = *(v2 + 8 * v11 + 32);
          }

          v40 = 11;
          sub_1E37DA4B8(v14, v15, v16);
          if (sub_1E4205E84())
          {
          }

          else
          {
            v18 = v6;
            v19 = v10;
            v20 = v13;
            sub_1E3A8ADF4(*(v17 + 32));
            v22 = v21;
            v24 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = OUTLINED_FUNCTION_27();
              v12 = sub_1E3740F88(v28, v29, v30, v12);
            }

            v26 = *(v12 + 2);
            v25 = *(v12 + 3);
            if (v26 >= v25 >> 1)
            {
              v31 = OUTLINED_FUNCTION_35(v25);
              v12 = sub_1E3740F88(v31, v26 + 1, 1, v12);
            }

            *(v12 + 2) = v26 + 1;
            v27 = &v12[16 * v26];
            *(v27 + 4) = v22;
            *(v27 + 5) = v24;
            v13 = v20;
            v10 = v19;
            v6 = v18;
            v2 = v38;
          }

          ++v11;
        }

        while (v10 != v11);
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      if (*(v12 + 2))
      {
        v32 = [objc_opt_self() standardUserDefaults];
        v33 = sub_1E42062A4();

        OUTLINED_FUNCTION_23();
        v34 = sub_1E4205ED4();
        [v32 setValue:v33 forKey:v34];
      }

      else
      {

        v33 = [objc_opt_self() standardUserDefaults];
        OUTLINED_FUNCTION_23();
        v34 = sub_1E4205ED4();
        v35 = OUTLINED_FUNCTION_121();
        [v35 v36];
      }

      Strong = v37;
    }
  }
}

unint64_t sub_1E3EC2478()
{
  result = qword_1EE28A0E0;
  if (!qword_1EE28A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C70, &qword_1E42BEF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A0E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_42()
{

  return sub_1E4205ED4();
}

void sub_1E3EC24F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    if (!(*(*a1 + 392))(a1))
    {
      v7 = 0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_106();
    type metadata accessor for ButtonLayout();
    OUTLINED_FUNCTION_20_2();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v8 = *(*v7 + 1784);

  v10 = v8(v9);
  if (v10 == 11 || (sub_1E3751DB0(v10, v11, v12), (sub_1E4205E84() & 1) == 0) || (v13 = (*a1 + 464), v14 = *v13, (v15 = (*v13)()) == 0) || (v16 = sub_1E32AE9B0(v15), v17 = , v16 != 1) || (v18 = (v14)(v17)) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v19 = v18;
  if (!sub_1E32AE9B0(v18))
  {

    goto LABEL_15;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1E6911E60](0, v19);
    goto LABEL_12;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);

LABEL_12:

    if (*v20 == _TtC8VideosUI13TextViewModel)
    {

      v21 = *(*v7 + 752);

      v21(0);

LABEL_15:

      sub_1E37521D8(v22);
      v23 = OUTLINED_FUNCTION_78_0();
      sub_1E3EC27CC(v23, v24, v25, v7, a3, a4, v26);

      return;
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1E3EC27CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a5;
  v41 = a6;
  v38 = a2;
  v39 = a4;
  v37[1] = a3;
  v48 = a7;
  v8 = sub_1E4204874();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B860, &qword_1E42DB4B8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B858, &qword_1E42DB4B0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8E0, &qword_1E42DB538);
  v42 = *(v19 - 8);
  v43 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B850, &qword_1E42DB4A8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = v37 - v23;
  type metadata accessor for Accessibility();
  (*(*a1 + 320))();
  sub_1E40A7DC8();

  sub_1E3EC2D64();
  sub_1E3ECF35C();
  sub_1E4202EA4();

  v24 = sub_1E325F69C(v15, &qword_1ECF3B860);
  v25 = (*(*a1 + 576))(v24);
  if (v25)
  {
    (*(*v25 + 224))(v25);
  }

  else
  {
    v26 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v26);
  }

  v27 = sub_1E3ECF2A0();
  v28 = v45;
  sub_1E3B29C44(v16, v27);
  sub_1E3B29C48();
  (*(v46 + 8))(v28, v47);
  sub_1E325F69C(v12, &qword_1ECF2B7B0);
  sub_1E325F69C(v18, &qword_1ECF3B858);
  sub_1E4203F64();
  v49[0] = v16;
  v49[1] = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v44;
  sub_1E42033B4();
  (*(v42 + 8))(v21, v29);
  v49[3] = &unk_1F5D5DAC8;
  v49[4] = &off_1F5D5C998;
  LOBYTE(v49[0]) = 46;
  v31 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v29) = sub_1E39C29F0(v49, v31 & 1);
  __swift_destroy_boxed_opaque_existential_1(v49);
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v29 & 1;
  v34 = v48;
  sub_1E32DA0D8(v30, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B848, &qword_1E42DB4A0);
  v36 = (v34 + *(result + 36));
  *v36 = KeyPath;
  v36[1] = sub_1E37E09AC;
  v36[2] = v33;
  return result;
}

void sub_1E3EC2D64()
{
  OUTLINED_FUNCTION_93();
  v372 = v0;
  v373 = v1;
  v3 = v2;
  v397 = v4;
  v398 = v5;
  v7 = v6;
  v407 = v8;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8E8, &qword_1E42DB570);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v377 = v10;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8A8, &qword_1E42DB500);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v378 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
  OUTLINED_FUNCTION_0_10();
  v357 = v14;
  v358 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v353[1] = v16;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8B8, &qword_1E42DB510);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v356 = v18;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8F0, &qword_1E42DB578);
  OUTLINED_FUNCTION_0_10();
  v354 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v353[0] = v21;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v362 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v361 = v24;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8C0, &qword_1E42DB518);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v381 = v26;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B758, &qword_1E42DB3A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v383 = v28;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8B0, &qword_1E42DB508);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v379 = v30;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8F8, &qword_1E42DB580);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v385 = v32;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B8A0, &qword_1E42DB4F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v386 = v34;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B898, &qword_1E42DB4F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v360 = v36;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B900, &qword_1E42DB588);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v369 = v38;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B890, &qword_1E42DB4E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  v371 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
  OUTLINED_FUNCTION_0_10();
  v366 = v42;
  v367 = v41;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v365 = v44;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B888, &qword_1E42DB4E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  v374 = v46;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B908, &qword_1E42DB590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v408 = v48;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B910, &qword_1E42DB598);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v401 = v50;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B918, &qword_1E42DB5A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v394 = v52;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B920, &qword_1E42DB5A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B878, &qword_1E42DB4D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v353 - v55;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B870, &qword_1E42DB4C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v395 = v58;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B868, &qword_1E42DB4C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  v403 = v60;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
  OUTLINED_FUNCTION_0_10();
  v62 = v61;
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2_5();
  v359 = v64;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v353 - v66;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B880, &qword_1E42DB4D8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_2_5();
  v364 = v69;
  OUTLINED_FUNCTION_49();
  v71 = MEMORY[0x1EEE9AC00](v70);
  v73 = v353 - v72;
  v74 = v3;
  if (!v3)
  {
    v74 = (*(*v7 + 392))(v71);
    if (v74)
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for ButtonLayout();
      OUTLINED_FUNCTION_20_2();
      v74 = swift_dynamicCastClass();
      if (!v74)
      {

        v74 = 0;
      }
    }
  }

  v409 = v74;
  v75 = v3;

  v76 = v7;
  if (!sub_1E3ECD694(v7))
  {
    v77 = v7[49];
    *(&v411[1] + 1) = &unk_1F5D5D0A8;
    *&v411[2] = &off_1F5D5C758;
    LOBYTE(v411[0]) = 10;
    v78 = j__OUTLINED_FUNCTION_18();
    v79 = sub_1E39C29F0(v411, v78 & 1);
    __swift_destroy_boxed_opaque_existential_1(v411);
    if ((v79 & 1) == 0)
    {
      switch(v77)
      {
        case ';':

          sub_1E3E5B9FC();
          sub_1E3D5D058(v115, v116, v117);
          v118 = v365;
          sub_1E40443A0();
          memcpy(v411, v410, 0x70uLL);
          sub_1E3D5D0AC(v411);
          OUTLINED_FUNCTION_204_0();
          v119 = v374;
          sub_1E3EC514C(v398, v120, v374);
          (*(v366 + 8))(v118, v367);
          v121 = OUTLINED_FUNCTION_87_2();
          sub_1E3743538(v121, v122, &qword_1ECF3B888, v123);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF58C();
          sub_1E3ECF6D8();
          OUTLINED_FUNCTION_261();
          sub_1E4201F44();
          sub_1E3743538(v56, v394, &qword_1ECF3B878, &qword_1E42DB4D0);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF500();
          sub_1E3ECF830();
          v124 = v395;
          sub_1E4201F44();
          sub_1E325F69C(v56, &qword_1ECF3B878);
          OUTLINED_FUNCTION_208();
          OUTLINED_FUNCTION_218();
          sub_1E3743538(v125, v126, v127, v128);
          OUTLINED_FUNCTION_242_0();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_148_8();
          OUTLINED_FUNCTION_202_2();
          sub_1E325F69C(v124, &qword_1ECF3B870);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_218();
          sub_1E3743538(v129, v130, v131, v132);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          v133 = OUTLINED_FUNCTION_45_1();
          sub_1E325F69C(v133, v134);
          v113 = v119;
          goto LABEL_16;
        case '<':

          sub_1E3E5B9FC();
          sub_1E3D5D058(v180, v181, v182);
          v183 = v365;
          sub_1E40443A0();
          memcpy(v411, v410, 0x70uLL);
          sub_1E3D5D0AC(v411);
          OUTLINED_FUNCTION_204_0();
          v184 = v374;
          sub_1E3EC514C(v398, v185, v374);
          (*(v366 + 8))(v183, v367);
          sub_1E3743538(v184, v369, &qword_1ECF3B888, &qword_1E42DB4E0);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF6D8();
          sub_1E3ECF8BC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v186, v187, v188, v189);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF500();
          sub_1E3ECF830();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v190, v191);
          OUTLINED_FUNCTION_208();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v192, v193, v194, v195);
          OUTLINED_FUNCTION_242_0();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_148_8();
          OUTLINED_FUNCTION_202_2();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v196, v197);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v198, v199, v200, v201);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v202, v203);
          v113 = v184;
LABEL_16:
          v114 = &qword_1ECF3B888;
          goto LABEL_5;
        case '>':
          if ([objc_opt_self() allowsAccountModification])
          {

            *&v411[0] = sub_1E3C427C8(v135);
            *(&v411[0] + 1) = v136;
            *&v411[1] = v137;
            *(&v411[1] + 1) = v138;
            sub_1E3ECD9AC(*&v411[0], v136, v137);
            sub_1E40443A0();

            OUTLINED_FUNCTION_204_0();
            v139 = v356;
            sub_1E3EC5AAC(v398, v140, v356);
            v141 = OUTLINED_FUNCTION_50_8();
            v142(v141);
            v143 = sub_1E3ECFBE0();

            v144 = v353[0];
            OUTLINED_FUNCTION_156_2();
            sub_1E38838AC(v145, v146, v147, v355, v143, v148);

            sub_1E325F69C(v139, &qword_1ECF3B8B8);
            v149 = v379;
            v150 = v363;
            (*(v354 + 32))(v379, v144, v363);
            v151 = v149;
            v152 = 0;
            v153 = v150;
          }

          else
          {
            v149 = v379;
            v151 = v379;
            v152 = 1;
            v153 = v363;
          }

          __swift_storeEnumTagSinglePayload(v151, v152, 1, v153);
          sub_1E3743538(v149, v377, &qword_1ECF3B8B0, &qword_1E42DB508);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECFB20();
          sub_1E3ECF58C();
          OUTLINED_FUNCTION_270_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v307, v308, v309, v310);
          swift_storeEnumTagMultiPayload();
          v311 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v311, v312);
          OUTLINED_FUNCTION_2_211();
          OUTLINED_FUNCTION_167_0();
          sub_1E3ECEE2C(v313, v314, v315, v316);
          sub_1E3ECFA94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v317, v318);
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v319, v320, v321, v322);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v323, v324);
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v325, v326, v327, v328);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v329, v330);
          v113 = v379;
          v114 = &qword_1ECF3B8B0;
          goto LABEL_5;
        case '?':
          type metadata accessor for LibDownloadButtonViewModel();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_200_3();

            v260 = OUTLINED_FUNCTION_57();
            sub_1E41A0228(v260, v261, v262);
            LOBYTE(v410[0]) = 0;
            OUTLINED_FUNCTION_43_59(v415);
            BYTE8(v411[3]) = 0;
          }

          else
          {

            sub_1E41A0228(v331, 0, v414);
            LOBYTE(v410[0]) = 1;
            OUTLINED_FUNCTION_43_59(v415);
            BYTE8(v411[3]) = v332;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B828, &qword_1E42DB470);
          sub_1E3ECEE94();
          OUTLINED_FUNCTION_62_32();
          OUTLINED_FUNCTION_150_6();
          LOBYTE(v417) = 0;
          BYTE1(v410[7]) = 0;
          goto LABEL_32;
        case '@':
          type metadata accessor for LibDownloadButtonViewModel();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_200_3();

            v263 = OUTLINED_FUNCTION_57();
            sub_1E41A0228(v263, v264, v265);
            LOBYTE(v410[0]) = 0;
            OUTLINED_FUNCTION_43_59(v415);
            BYTE8(v411[3]) = 0;
          }

          else
          {

            sub_1E41A0228(v333, 0, v414);
            LOBYTE(v410[0]) = 1;
            OUTLINED_FUNCTION_43_59(v415);
            BYTE8(v411[3]) = v334;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B828, &qword_1E42DB470);
          sub_1E3ECEE94();
          OUTLINED_FUNCTION_62_32();
          OUTLINED_FUNCTION_150_6();
          LOBYTE(v417) = 1;
          BYTE1(v410[7]) = 1;
LABEL_32:
          sub_1E3743538(v416, v411, &qword_1ECF3B8D8, &qword_1E42DB530);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B820, &qword_1E42DB468);
          sub_1E3ECEDFC();
          sub_1E4201F44();
          v335 = v411[1];
          v336 = v385;
          *v385 = v411[0];
          v336[1] = v335;
          v336[2] = v411[2];
          *(v336 + 42) = *(&v411[2] + 10);
          swift_storeEnumTagMultiPayload();
          v337 = OUTLINED_FUNCTION_75();
          __swift_instantiateConcreteTypeFromMangledNameV2(v337, v338);
          OUTLINED_FUNCTION_2_211();
          OUTLINED_FUNCTION_90();
          sub_1E3ECEE2C(v339, v340, v341, v342);
          sub_1E3ECFA94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v343, v344, v345, v346);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_148_8();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v347, v348);
          OUTLINED_FUNCTION_114_1();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v349, v350, v351, v352);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          sub_1E4201F44();
          sub_1E325F69C(v416, &qword_1ECF3B820);

          v113 = OUTLINED_FUNCTION_134_0();
          goto LABEL_5;
        case 'A':

          sub_1E38AB38C(v154, v411);
          OUTLINED_FUNCTION_204_0();
          v155 = v360;
          sub_1E3EC5624(v398, v156, v360);
          sub_1E325F69C(v411, &qword_1ECF3B6E8);
          v157 = &qword_1ECF3B898;
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v158, v159, v160, v161);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF6D8();
          sub_1E3ECF8BC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v162, v163, v164, v165);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF500();
          sub_1E3ECF830();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v166, v167);
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v168, v169, v170, v171);
          OUTLINED_FUNCTION_242_0();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_202_2();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v172, v173);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v174, v175, v176, v177);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v178, v179);
          v113 = v155;
          goto LABEL_19;
        case 'C':
          OUTLINED_FUNCTION_89_15();

          sub_1E383C8A8();
          sub_1E383C8B0();
          OUTLINED_FUNCTION_222_0();
          v204 = OUTLINED_FUNCTION_167();
          OUTLINED_FUNCTION_191_4(v204, v205, v206, v207, v208, v209, v210);
          v214 = sub_1E37ADF68(v211, v212, v213);

          v215 = v359;
          OUTLINED_FUNCTION_156_2();
          sub_1E38838AC(v216, v217, v218, v219, v214, v220);

          sub_1E37ADFBC(v411);
          OUTLINED_FUNCTION_204_0();
          v221 = v364;
          sub_1E3EC4C8C(v398, v222, v364);
          (*(v62 + 8))(v215, v388);
          sub_1E3743538(v221, v377, &qword_1ECF3B880, &qword_1E42DB4D8);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECFB20();
          sub_1E3ECF58C();
          OUTLINED_FUNCTION_270_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v223, v224, v225, v226);
          swift_storeEnumTagMultiPayload();
          v227 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v227, v228);
          OUTLINED_FUNCTION_2_211();
          OUTLINED_FUNCTION_167_0();
          sub_1E3ECEE2C(v229, v230, v231, v232);
          sub_1E3ECFA94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v233, v234);
          OUTLINED_FUNCTION_208();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v235, v236, v237, v238);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF474();
          sub_1E3ECF9DC();
          OUTLINED_FUNCTION_202_2();
          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v239, v240);
          OUTLINED_FUNCTION_252_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v241, v242, v243, v244);
          OUTLINED_FUNCTION_201_3();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_86_16();

          OUTLINED_FUNCTION_90();
          sub_1E325F69C(v245, v246);
          v113 = v364;
          v114 = &qword_1ECF3B880;
          goto LABEL_5;
        case 'D':

          sub_1E3C14148(v247, v75, 0, v416);
          memcpy(v410, v416, 0x59uLL);
          LOBYTE(v414[0]) = 0;
          BYTE1(v410[11]) = 0;
          sub_1E3C14BF4(v416, v411);
          v248 = sub_1E3C14BF4(v416, v411);
          v251 = sub_1E380DC84(v248, v249, v250);
          sub_1E3ECF048(v251, v252, v253);
          sub_1E4201F44();
          memcpy(v381, v411, 0x5AuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B830, &qword_1E42DB478);
          v254 = sub_1E3ECEFBC();
          OUTLINED_FUNCTION_5_1(v254);
          v255 = v383;
          OUTLINED_FUNCTION_78_0();
          sub_1E4201F44();
          v157 = &qword_1ECF3B758;
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v256, v257, v258, v259);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          sub_1E3ECFD50(v416);
          sub_1E3ECFD50(v416);
          v113 = v255;
LABEL_19:
          v114 = v157;
          goto LABEL_5;
        case 'F':

          sub_1E3F25548(v266, 2, v416);
          v414[0] = *&v416[1];
          v419[0] = v416[3];
          v417 = v416[4];
          v418 = v416[5];
          v413 = v416[5];
          v412 = 1;
          v410[0] = v416[0];
          LOBYTE(v410[1]) = v416[1];
          v410[2] = v416[2];
          *&v410[3] = *&v416[3];
          LOBYTE(v410[5]) = v416[5];
          BYTE1(v410[11]) = 1;

          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v267, v268, v269, v270);
          OUTLINED_FUNCTION_246();
          sub_1E3743538(v271, v272, v273, v274);
          OUTLINED_FUNCTION_266();

          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v275, v276, v277, v278);
          OUTLINED_FUNCTION_246();
          sub_1E3743538(v279, v280, v281, v282);
          v283 = OUTLINED_FUNCTION_266();
          v286 = sub_1E380DC84(v283, v284, v285);
          sub_1E3ECF048(v286, v287, v288);
          sub_1E4201F44();
          memcpy(v381, v411, 0x5AuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B830, &qword_1E42DB478);
          v289 = sub_1E3ECEFBC();
          OUTLINED_FUNCTION_5_1(v289);
          v290 = v383;
          sub_1E4201F44();
          sub_1E3743538(v290, v408, &qword_1ECF3B758, &qword_1E42DB3A0);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          sub_1E325F69C(v414, &qword_1ECF294E0);
          sub_1E325F69C(v419, &unk_1ECF3B8C8);
          sub_1E325F69C(&v417, &unk_1ECF3B8D0);

          OUTLINED_FUNCTION_55_0();
          sub_1E325F69C(v291, v292);
          OUTLINED_FUNCTION_167_0();
          sub_1E325F69C(v293, v294);
          sub_1E325F69C(&v417, &unk_1ECF3B8D0);
          v113 = v290;
          v114 = &qword_1ECF3B758;
          goto LABEL_5;
        default:
          *&v411[0] = 0;
          *(&v411[0] + 1) = 0xE000000000000000;
          sub_1E42074B4();
          v295 = MEMORY[0x1E69109E0](0xD00000000000003BLL, 0x80000001E4288160);
          v296 = (*(*v76 + 376))(v295);
          MEMORY[0x1E69109E0](v296);

          nullsub_1();

          v297 = OUTLINED_FUNCTION_167();
          v298(v297);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B830, &qword_1E42DB478);
          v299 = sub_1E3ECEFBC();
          OUTLINED_FUNCTION_5_1(v299);
          v300 = v383;
          OUTLINED_FUNCTION_78_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v301, v302, v303, v304);
          swift_storeEnumTagMultiPayload();
          sub_1E3ECF3E8();
          sub_1E3ECEF18();
          OUTLINED_FUNCTION_12_35();
          sub_1E4201F44();

          sub_1E325F69C(v300, &qword_1ECF3B758);
          v305 = OUTLINED_FUNCTION_93_15();
          v306(v305);
          goto LABEL_6;
      }
    }
  }

  OUTLINED_FUNCTION_89_15();
  v80 = v409;

  sub_1E383C8A8();
  sub_1E383C8B0();
  OUTLINED_FUNCTION_222_0();
  OUTLINED_FUNCTION_191_4(v76, v80, v81, v82, v83, v84, v85);
  v89 = sub_1E37ADF68(v86, v87, v88);

  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v90, v91, v92, v93, v89, v94);

  sub_1E37ADFBC(v411);
  OUTLINED_FUNCTION_204_0();
  sub_1E3EC4C8C(v398, v95, v73);
  (*(v62 + 8))(v67, v388);
  v96 = OUTLINED_FUNCTION_87_2();
  sub_1E3743538(v96, v97, v98, &qword_1E42DB4D8);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF58C();
  sub_1E3ECF6D8();
  OUTLINED_FUNCTION_261();
  sub_1E4201F44();
  sub_1E3743538(v56, v394, &qword_1ECF3B878, &qword_1E42DB4D0);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF500();
  sub_1E3ECF830();
  sub_1E4201F44();
  OUTLINED_FUNCTION_167_0();
  sub_1E325F69C(v99, v100);
  OUTLINED_FUNCTION_246();
  sub_1E3743538(v101, v102, v103, v104);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF474();
  sub_1E3ECF9DC();
  OUTLINED_FUNCTION_148_8();
  sub_1E4201F44();
  v105 = OUTLINED_FUNCTION_57();
  sub_1E325F69C(v105, v106);
  OUTLINED_FUNCTION_246();
  sub_1E3743538(v107, v108, v109, v110);
  swift_storeEnumTagMultiPayload();
  sub_1E3ECF3E8();
  sub_1E3ECEF18();
  OUTLINED_FUNCTION_12_35();
  sub_1E4201F44();

  v111 = OUTLINED_FUNCTION_45_1();
  sub_1E325F69C(v111, v112);
  v113 = v73;
  v114 = &qword_1ECF3B880;
LABEL_5:
  sub_1E325F69C(v113, v114);
LABEL_6:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3EC4C8C@<X0>(ValueMetadata *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v47 = a3;
  v5 = a2 >> 8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA78, &qword_1E42DB730);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA80, &qword_1E42DB738);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6C8, &qword_1E42DB310);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v43 - v11;
  v58 = a1;
  v3 &= 1u;
  v59 = v3;
  v60 = v5;
  v56 = &type metadata for BasicButtonStyle;
  v16 = sub_1E3ECFDA4(v13, v14, v15);
  v57 = v16;
  v53 = a1;
  LOBYTE(v54) = v3;
  BYTE1(v54) = v5;
  __swift_project_boxed_opaque_existential_1(&v53, &type metadata for BasicButtonStyle);
  v17 = *(v16 + 32);

  if (v17(&type metadata for BasicButtonStyle, v16))
  {
    sub_1E3EC6E38();
    v18 = v46;
    (*(v10 + 16))(v9, v12, v46);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B760, &qword_1E42DB3A8);
    v20 = sub_1E3ECDF10();
    v49 = v19;
    v50 = v20;
    swift_getOpaqueTypeConformance2();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B348, &qword_1E42A0210);
    v24 = sub_1E37ADF68(v21, v22, v23);
    v49 = &type metadata for ButtonRepresentable;
    v50 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_1E37532B0(OpaqueTypeConformance2, v26, v27);
    v49 = v21;
    v50 = &type metadata for BasicButtonStyle;
    v51 = OpaqueTypeConformance2;
    v52 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v10 + 8))(v12, v18);
    return __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
    v33 = sub_1E37ADF68(v30, v31, v32);
    v53 = &type metadata for ButtonRepresentable;
    v54 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v37 = sub_1E37532B0(v34, v35, v36);
    v38 = v44;
    sub_1E4202DA4();
    v39 = v45;
    v40 = v48;
    (*(v45 + 16))(v9, v38, v48);
    swift_storeEnumTagMultiPayload();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B760, &qword_1E42DB3A8);
    v42 = sub_1E3ECDF10();
    v53 = v41;
    v54 = v42;
    swift_getOpaqueTypeConformance2();
    v53 = v30;
    v54 = &type metadata for BasicButtonStyle;
    v55 = v34;
    v56 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v39 + 8))(v38, v40);
  }
}

uint64_t sub_1E3EC514C@<X0>(ValueMetadata *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v47 = a3;
  v5 = a2 >> 8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B928, &qword_1E42DB5B0);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B930, &qword_1E42DB5B8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D0, &qword_1E42DB318);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v43 - v11;
  v58 = a1;
  v3 &= 1u;
  v59 = v3;
  v60 = v5;
  v56 = &type metadata for BasicButtonStyle;
  v16 = sub_1E3ECFDA4(v13, v14, v15);
  v57 = v16;
  v53 = a1;
  LOBYTE(v54) = v3;
  BYTE1(v54) = v5;
  __swift_project_boxed_opaque_existential_1(&v53, &type metadata for BasicButtonStyle);
  v17 = *(v16 + 32);

  if (v17(&type metadata for BasicButtonStyle, v16))
  {
    sub_1E3EC6CFC();
    v18 = v46;
    (*(v10 + 16))(v9, v12, v46);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A0, &qword_1E42DB3E8);
    v20 = sub_1E3ECE414();
    v49 = v19;
    v50 = v20;
    swift_getOpaqueTypeConformance2();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    v24 = sub_1E3D5D058(v21, v22, v23);
    v49 = &type metadata for DefaultButton;
    v50 = v24;
    v51 = &off_1F5D88AA0;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_1E37532B0(OpaqueTypeConformance2, v26, v27);
    v49 = v21;
    v50 = &type metadata for BasicButtonStyle;
    v51 = OpaqueTypeConformance2;
    v52 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v10 + 8))(v12, v18);
    return __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    v33 = sub_1E3D5D058(v30, v31, v32);
    v53 = &type metadata for DefaultButton;
    v54 = v33;
    v55 = &off_1F5D88AA0;
    v34 = swift_getOpaqueTypeConformance2();
    v37 = sub_1E37532B0(v34, v35, v36);
    v38 = v44;
    sub_1E4202DA4();
    v39 = v45;
    v40 = v48;
    (*(v45 + 16))(v9, v38, v48);
    swift_storeEnumTagMultiPayload();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A0, &qword_1E42DB3E8);
    v42 = sub_1E3ECE414();
    v53 = v41;
    v54 = v42;
    swift_getOpaqueTypeConformance2();
    v53 = v30;
    v54 = &type metadata for BasicButtonStyle;
    v55 = v34;
    v56 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v39 + 8))(v38, v40);
  }
}

uint64_t sub_1E3EC5624@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = a2;
  v42 = a3;
  v7 = a2 >> 8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B998, &qword_1E42DB670);
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v38 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9A0, &qword_1E42DB678);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v38 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E0, &qword_1E42DB328);
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v38 - v12;
  v54 = a1;
  v5 &= 1u;
  v55 = v5;
  v56 = v7;
  v14 = memcpy(v53, v4, sizeof(v53));
  v51 = &type metadata for BasicButtonStyle;
  v17 = sub_1E3ECFDA4(v14, v15, v16);
  v52 = v17;
  v48 = a1;
  v49 = v5;
  v50 = v7;
  __swift_project_boxed_opaque_existential_1(&v48, &type metadata for BasicButtonStyle);
  v18 = *(v17 + 32);

  if (v18(&type metadata for BasicButtonStyle, v17))
  {
    memcpy(__dst, v53, 0x59uLL);
    sub_1E3EC6BC0();
    v19 = v41;
    (*(v11 + 16))(v10, v13, v41);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E0, &qword_1E42DB428);
    v21 = sub_1E3ECE924();
    v44 = v20;
    v45 = v21;
    swift_getOpaqueTypeConformance2();
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v23 = sub_1E3ECD8D4();
    v26 = sub_1E37532B0(v23, v24, v25);
    v44 = v22;
    v45 = &type metadata for BasicButtonStyle;
    v46 = v23;
    v47 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v11 + 8))(v13, v19);
    return __swift_destroy_boxed_opaque_existential_1(&v48);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v48);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v29 = sub_1E3ECD8D4();
    v32 = sub_1E37532B0(v29, v30, v31);
    v33 = v38;
    sub_1E4202DA4();
    v34 = v39;
    v35 = v43;
    (*(v39 + 16))(v10, v33, v43);
    swift_storeEnumTagMultiPayload();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E0, &qword_1E42DB428);
    v37 = sub_1E3ECE924();
    __dst[0] = v36;
    __dst[1] = v37;
    swift_getOpaqueTypeConformance2();
    __dst[0] = v28;
    __dst[1] = &type metadata for BasicButtonStyle;
    __dst[2] = v29;
    __dst[3] = v32;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v34 + 8))(v33, v35);
  }
}

uint64_t sub_1E3EC5AAC@<X0>(ValueMetadata *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v47 = a3;
  v5 = a2 >> 8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA08, &qword_1E42DB6D0);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA10, &qword_1E42DB6D8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6F8, &qword_1E42DB340);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v43 - v11;
  v58 = a1;
  v3 &= 1u;
  v59 = v3;
  v60 = v5;
  v56 = &type metadata for BasicButtonStyle;
  v16 = sub_1E3ECFDA4(v13, v14, v15);
  v57 = v16;
  v53 = a1;
  LOBYTE(v54) = v3;
  BYTE1(v54) = v5;
  __swift_project_boxed_opaque_existential_1(&v53, &type metadata for BasicButtonStyle);
  v17 = *(v16 + 32);

  if (v17(&type metadata for BasicButtonStyle, v16))
  {
    sub_1E3EC6A84();
    v18 = v46;
    (*(v10 + 16))(v9, v12, v46);
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B708, &qword_1E42DB350);
    v20 = sub_1E3ECDA00();
    v49 = v19;
    v50 = v20;
    swift_getOpaqueTypeConformance2();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B700, &qword_1E42DB348);
    v24 = sub_1E3ECD9AC(v21, v22, v23);
    v49 = &type metadata for AccountSettingsButton;
    v50 = v24;
    v51 = &off_1F5D792B8;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_1E37532B0(OpaqueTypeConformance2, v26, v27);
    v49 = v21;
    v50 = &type metadata for BasicButtonStyle;
    v51 = OpaqueTypeConformance2;
    v52 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v10 + 8))(v12, v18);
    return __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
    v33 = sub_1E3ECD9AC(v30, v31, v32);
    v53 = &type metadata for AccountSettingsButton;
    v54 = v33;
    v55 = &off_1F5D792B8;
    v34 = swift_getOpaqueTypeConformance2();
    v37 = sub_1E37532B0(v34, v35, v36);
    v38 = v44;
    sub_1E4202DA4();
    v39 = v45;
    v40 = v48;
    (*(v45 + 16))(v9, v38, v48);
    swift_storeEnumTagMultiPayload();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B708, &qword_1E42DB350);
    v42 = sub_1E3ECDA00();
    v53 = v41;
    v54 = v42;
    swift_getOpaqueTypeConformance2();
    v53 = v30;
    v54 = &type metadata for BasicButtonStyle;
    v55 = v34;
    v56 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v39 + 8))(v38, v40);
  }
}

void sub_1E3EC5F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v162 = v20;
  v168 = v24;
  v26 = v25;
  v161 = v27;
  v164 = v28;
  v30 = v29;
  v163 = v31;
  v32 = OUTLINED_FUNCTION_271_0();
  v33 = OUTLINED_FUNCTION_3_6(v32, &a10);
  v156 = v34;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  v155 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = sub_1E4202534();
  OUTLINED_FUNCTION_13_150();
  v41 = sub_1E3ECF09C(v39, v40);
  v42 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = v26;
  v178 = v38;
  v179 = v30;
  v180 = v41;
  v44 = OUTLINED_FUNCTION_229_1(&v177);
  v177 = OpaqueTypeMetadata2;
  v178 = v44;
  OUTLINED_FUNCTION_120_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_250_0();
  v45 = sub_1E41FE624();
  v177 = OpaqueTypeMetadata2;
  v178 = v44;
  v46 = OUTLINED_FUNCTION_186_0(&v177);
  OUTLINED_FUNCTION_26_98();
  v49 = sub_1E3ECF09C(v47, v48);
  v177 = v21;
  v178 = v45;
  v179 = v46;
  v180 = v49;
  v50 = sub_1E42039D4();
  OUTLINED_FUNCTION_216(v50, &a11);
  v51 = sub_1E4201CD4();
  OUTLINED_FUNCTION_1_247();
  v54 = sub_1E3ECF09C(v52, v53);
  v177 = v26;
  v178 = v51;
  v55 = v30;
  v179 = v30;
  v180 = v54;
  v56 = OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_216(v56, v186);
  v57 = sub_1E4202054();
  OUTLINED_FUNCTION_5_196();
  v60 = sub_1E3ECF09C(v58, v59);
  v177 = v26;
  v178 = v57;
  v179 = v55;
  v180 = v60;
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_13_10();
  v61 = sub_1E4201F54();
  v62 = OUTLINED_FUNCTION_228_0(v61);
  v177 = v26;
  v178 = v51;
  v179 = v55;
  v180 = v54;
  v63 = OUTLINED_FUNCTION_229_1(&v177);
  v177 = v26;
  v178 = v57;
  v179 = v55;
  v180 = v60;
  v64 = v55;
  v171 = v55;
  v158 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v186[6] = v63;
  v186[7] = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_25();
  v160 = v66;
  v186[5] = swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  v167 = v67;
  WitnessTable = swift_getWitnessTable();
  v177 = v62;
  v178 = WitnessTable;
  v69 = swift_getOpaqueTypeMetadata2();
  v177 = v62;
  v178 = WitnessTable;
  OUTLINED_FUNCTION_176_6(&v177);
  OUTLINED_FUNCTION_225();
  v177 = v69;
  v178 = v70;
  v179 = v71;
  v180 = v49;
  sub_1E42039D4();
  OUTLINED_FUNCTION_250_0();
  v72 = sub_1E4201F54();
  OUTLINED_FUNCTION_216(v72, v185);
  v73 = sub_1E42014E4();
  OUTLINED_FUNCTION_6_184();
  v76 = sub_1E3ECF09C(v74, v75);
  v177 = v26;
  v178 = v73;
  v179 = v64;
  v180 = v76;
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_12_22();
  sub_1E4201F54();
  v77 = sub_1E4201F54();
  OUTLINED_FUNCTION_228_0(v77);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B748, &qword_1E42DB390);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B750, &qword_1E42DB398);
  OUTLINED_FUNCTION_57_33();
  v78 = sub_1E42013A4();
  OUTLINED_FUNCTION_12_142();
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v186[3] = v79;
  v186[4] = v80;
  v81 = v160;
  v82 = swift_getWitnessTable();
  v170 = v26;
  v177 = v26;
  v178 = v73;
  v179 = v171;
  v180 = v76;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_151_7();
  v186[1] = v83;
  v186[2] = v84;
  v85 = swift_getWitnessTable();
  v185[1] = v82;
  v186[0] = v85;
  v185[0] = swift_getWitnessTable();
  v86 = swift_getWitnessTable();
  OUTLINED_FUNCTION_117_12();
  v88 = sub_1E3A1558C(v87, &qword_1ECF3B748);
  v183 = v86;
  v184 = v88;
  OUTLINED_FUNCTION_14_55();
  v89 = swift_getWitnessTable();
  v90 = sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
  v181 = v89;
  v182 = v90;
  v91 = v168;
  v92 = swift_getWitnessTable();
  v166 = v78;
  v177 = v78;
  v178 = v92;
  v165 = v92;
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_0_10();
  v94 = v93;
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_4_6();
  v98 = v96 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v154 - v100;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5();
  v160 = v103;
  v104 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v106 = v105;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_35_3();
  v108 = OUTLINED_FUNCTION_57();
  v109(v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B838, &qword_1E42DB480);
  v110 = swift_dynamicCast();
  v167 = v81;
  if ((v110 & 1) == 0)
  {
    OUTLINED_FUNCTION_263_0();
    v176 = 0;
    v175 = 0u;
    v174 = 0u;
    sub_1E325F69C(&v174, &unk_1ECF3B840);
LABEL_6:
    v133 = v170;
    v134 = v155;
    OUTLINED_FUNCTION_34();
    v128 = v171;
    v131 = v163;
    sub_1E4202DA4();
    v177 = v133;
    v178 = v91;
    v179 = v128;
    v180 = v131;
    OUTLINED_FUNCTION_16_129();
    OUTLINED_FUNCTION_276(v135, v136);
    v137 = v156;
    v138 = *(v156 + 16);
    v139 = v154;
    v140 = v169;
    v138(v154, v134, v169);
    v141 = *(v137 + 8);
    v142 = OUTLINED_FUNCTION_45_1();
    v141(v142);
    v138(v134, v139, v140);
    v129 = v166;
    v132 = v165;
    v177 = v166;
    v178 = v165;
    OUTLINED_FUNCTION_11_155();
    OUTLINED_FUNCTION_276(v143, v144);
    sub_1E37B8E90(v134, v160, v140);
    v145 = OUTLINED_FUNCTION_45_1();
    v141(v145);
    v146 = OUTLINED_FUNCTION_39_3();
    v141(v146);
    v124 = v170;
    v104 = v159;
    v106 = v158;
    goto LABEL_7;
  }

  v159 = v94;
  sub_1E3251BE8(&v174, &v177);
  __swift_project_boxed_opaque_existential_1(&v177, v180);
  v111 = OUTLINED_FUNCTION_125();
  if ((v112(v111) & 1) == 0)
  {
    OUTLINED_FUNCTION_263_0();
    __swift_destroy_boxed_opaque_existential_1(&v177);
    goto LABEL_6;
  }

  sub_1E3EC6F74(&v177, v170, v171, v113, v114, v115, v116, v117, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
  OUTLINED_FUNCTION_151_7();
  *&v174 = v118;
  OUTLINED_FUNCTION_225();
  *(&v174 + 1) = v119;
  OUTLINED_FUNCTION_11_155();
  v162 = swift_getOpaqueTypeConformance2();
  v120 = v159;
  v121 = *(v159 + 16);
  v122 = v160;
  v121(v101, v98, v160);
  v123 = *(v120 + 8);
  v123(v98, v122);
  v121(v98, v101, v122);
  v124 = v170;
  *&v174 = v170;
  *(&v174 + 1) = v91;
  v125 = v171;
  *&v175 = v171;
  v126 = v163;
  *(&v175 + 1) = v163;
  OUTLINED_FUNCTION_16_129();
  swift_getOpaqueTypeConformance2();
  sub_1E37B8D98(v98, v122);
  v127 = v98;
  v128 = v125;
  v129 = v166;
  v123(v127, v122);
  v130 = v101;
  v131 = v126;
  v132 = v165;
  v123(v130, v122);
  __swift_destroy_boxed_opaque_existential_1(&v177);
LABEL_7:
  v177 = v129;
  v178 = v132;
  OUTLINED_FUNCTION_11_155();
  v149 = OUTLINED_FUNCTION_276(v147, v148);
  v177 = v124;
  v178 = v168;
  v179 = v128;
  v180 = v131;
  OUTLINED_FUNCTION_16_129();
  v152 = OUTLINED_FUNCTION_276(v150, v151);
  v172 = v149;
  v173 = v152;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v153 = v167;
  (*(v106 + 16))(v164, v167, v104);
  (*(v106 + 8))(v153, v104);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EC6F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v107 = v27;
  v108 = v28;
  v29 = sub_1E4200B64();
  v30 = OUTLINED_FUNCTION_3_6(v29, &a13);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v31);
  v32 = sub_1E4201604();
  v33 = OUTLINED_FUNCTION_3_6(v32, &a10);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v34);
  sub_1E4202534();
  OUTLINED_FUNCTION_13_150();
  sub_1E3ECF09C(v35, v36);
  swift_getOpaqueTypeMetadata2();
  v37 = OUTLINED_FUNCTION_183_5();
  OUTLINED_FUNCTION_112_14(v37);
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_250_0();
  v38 = sub_1E41FE624();
  v39 = OUTLINED_FUNCTION_157_8();
  OUTLINED_FUNCTION_26_98();
  v106 = sub_1E3ECF09C(v40, v41);
  v111 = v20;
  v112 = v38;
  v113 = v39;
  v114 = v106;
  OUTLINED_FUNCTION_80_18();
  v42 = sub_1E42039D4();
  OUTLINED_FUNCTION_216(v42, v109);
  v43 = sub_1E4201CD4();
  OUTLINED_FUNCTION_1_247();
  v46 = sub_1E3ECF09C(v44, v45);
  v47 = v26;
  v111 = v26;
  v112 = v43;
  v48 = v24;
  v113 = v24;
  v114 = v46;
  OUTLINED_FUNCTION_80_18();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_216(OpaqueTypeMetadata2, &v110);
  v50 = sub_1E4202054();
  OUTLINED_FUNCTION_5_196();
  v53 = sub_1E3ECF09C(v51, v52);
  v111 = v47;
  v112 = v50;
  v113 = v48;
  v114 = v53;
  OUTLINED_FUNCTION_80_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_57_33();
  v54 = sub_1E4201F54();
  v55 = OUTLINED_FUNCTION_228_0(v54);
  v111 = v47;
  v112 = v43;
  v113 = v48;
  v114 = v46;
  v104 = OUTLINED_FUNCTION_183_5();
  v111 = v47;
  v112 = v50;
  v113 = v48;
  v114 = v53;
  v56 = OUTLINED_FUNCTION_183_5();
  v109[6] = v104;
  v110 = v56;
  OUTLINED_FUNCTION_2_25();
  v109[5] = swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_111_9(WitnessTable);
  v58 = swift_getOpaqueTypeMetadata2();
  v111 = v55;
  v112 = WitnessTable;
  OUTLINED_FUNCTION_30_54(&v111);
  OUTLINED_FUNCTION_245_0();
  v111 = v58;
  v112 = v59;
  v113 = v60;
  v114 = v106;
  OUTLINED_FUNCTION_80_18();
  sub_1E42039D4();
  OUTLINED_FUNCTION_217_0();
  sub_1E4201F54();
  v103 = sub_1E42014E4();
  OUTLINED_FUNCTION_6_184();
  v102 = sub_1E3ECF09C(v61, v62);
  v111 = v47;
  v112 = v103;
  v113 = v48;
  v114 = v102;
  OUTLINED_FUNCTION_80_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_12_22();
  sub_1E4201F54();
  sub_1E4201F54();
  v63 = sub_1E42037A4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v65);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B748, &qword_1E42DB390);
  OUTLINED_FUNCTION_18_12();
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v67);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B750, &qword_1E42DB398);
  OUTLINED_FUNCTION_18_12();
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v69);
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v109[3] = v70;
  v109[4] = v71;
  swift_getWitnessTable();
  v111 = v47;
  v112 = v103;
  v113 = v48;
  v114 = v102;
  v109[1] = OUTLINED_FUNCTION_183_5();
  v109[2] = v104;
  v109[0] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E3A1558C(&qword_1EE2887B0, &qword_1ECF3B748);
  swift_getWitnessTable();
  sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
  v105 = swift_getWitnessTable();
  OUTLINED_FUNCTION_110_11(v105);
  v72 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v77);
  v78 = v107;
  OUTLINED_FUNCTION_126_8();
  sub_1E4203794();
  v80 = v107[3];
  v79 = v107[4];
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  OUTLINED_FUNCTION_153();
  v81(v80, v79);
  OUTLINED_FUNCTION_326();
  sub_1E42030B4();
  v82 = OUTLINED_FUNCTION_42_62();
  v83(v82);
  v84 = OUTLINED_FUNCTION_40_60();
  v85(v84, v63);
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  OUTLINED_FUNCTION_224_0();
  v86 = OUTLINED_FUNCTION_34();
  v87(v86);
  OUTLINED_FUNCTION_51_28();
  sub_1E4202DD4();
  OUTLINED_FUNCTION_15_5();
  v88(v80);
  v89 = OUTLINED_FUNCTION_54_41();
  v90(v89);
  v91 = v107[3];
  v92 = v107[4];
  v93 = OUTLINED_FUNCTION_38_0();
  __swift_project_boxed_opaque_existential_1(v93, v94);
  v95 = (*(v92 + 64))(v91, v92);
  sub_1E39B95A0(v95);

  OUTLINED_FUNCTION_15_5();
  v96 = OUTLINED_FUNCTION_74();
  v97(v96);
  v98 = *(v74 + 16);
  v99 = OUTLINED_FUNCTION_167();
  v98(v99);
  v100 = *(v74 + 8);
  v101 = OUTLINED_FUNCTION_114_1();
  v100(v101);
  (v98)(v108, v104, v72);
  (v100)(v104, v72);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EC7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v152 = OUTLINED_FUNCTION_182_4(v26, v27);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v29);
  v154[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA18, &qword_1E42DB6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA20, &qword_1E42DB6E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v155[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B740, &qword_1E42DB388);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v153 = v34;
  OUTLINED_FUNCTION_138();
  v151 = sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA28, &qword_1E42DB6F0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v38);
  v39 = sub_1E4200ED4();
  v40 = OUTLINED_FUNCTION_3_6(v39, v155);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA30, &qword_1E42DB6F8);
  OUTLINED_FUNCTION_6_4(v42, v154);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B738, &qword_1E42DB380);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_45_59(v46, v149);
  v154[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA38, &qword_1E42DB700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v155[0] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA40, &qword_1E42DB708);
  OUTLINED_FUNCTION_6_4(v49, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v154[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B728, &qword_1E42DB370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  v52 = sub_1E4201464();
  v53 = OUTLINED_FUNCTION_3_6(v52, &v160);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v54);
  v55 = sub_1E4202534();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA48, &qword_1E42DB710);
  OUTLINED_FUNCTION_3_6(v57, &v157);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_49_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B730, &qword_1E42DB378);
  OUTLINED_FUNCTION_6_4(v59, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_27_69(v61, v150);
  v62 = OUTLINED_FUNCTION_123_0();
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v64 = OUTLINED_FUNCTION_68_29();
  v21(v64);
  OUTLINED_FUNCTION_38_15();
  if (!v68)
  {
    LOBYTE(v157) = v65;
    v156 = 0;
    sub_1E3751D5C(v65, v66, v67);
    if (OUTLINED_FUNCTION_130_14())
    {
      sub_1E4202524();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
      v72 = sub_1E3ECD9AC(v69, v70, v71);
      v157 = &type metadata for AccountSettingsButton;
      v158 = v72;
      v159 = &off_1F5D792B8;
      OUTLINED_FUNCTION_8_168();
      v75 = OUTLINED_FUNCTION_121_2(v73, v74);
      OUTLINED_FUNCTION_13_150();
      sub_1E3ECF09C(v76, v77);
      OUTLINED_FUNCTION_173_3();
      v78 = OUTLINED_FUNCTION_42_62();
      v79(v78, v55);
      OUTLINED_FUNCTION_126_8();
      sub_1E4201454();
      v157 = v69;
      v158 = v55;
      v159 = v75;
      v160 = v23;
      OUTLINED_FUNCTION_9_154();
      v82 = OUTLINED_FUNCTION_121_2(v80, v81);
      OUTLINED_FUNCTION_60_31(v82);
      v83 = OUTLINED_FUNCTION_40_60();
      v84(v83);
      v85 = OUTLINED_FUNCTION_54_41();
      v87 = v86(v85);
      OUTLINED_FUNCTION_177_4(v87);
      OUTLINED_FUNCTION_142_10();
      OUTLINED_FUNCTION_179_3();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v88, &qword_1ECF3B730);
      sub_1E3A1558C(&qword_1EE288598, &qword_1ECF3B738);
      OUTLINED_FUNCTION_104_13();
      OUTLINED_FUNCTION_49_53();
      OUTLINED_FUNCTION_147_6();
      sub_1E3ECDC80();
      sub_1E3ECDD60();
      OUTLINED_FUNCTION_50_44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v89, v90);
LABEL_12:
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v147, v148);
      goto LABEL_13;
    }
  }

  v91 = OUTLINED_FUNCTION_209_1();
  v21(v91);
  OUTLINED_FUNCTION_38_15();
  if (!v68)
  {
    OUTLINED_FUNCTION_239_0(v92, v93, v94);
    if ((OUTLINED_FUNCTION_130_14() & 1) != 0 && ([objc_opt_self() isTV] & 1) == 0)
    {
      OUTLINED_FUNCTION_134_6();
      sub_1E3ECBF34();
      OUTLINED_FUNCTION_126_8();
      sub_1E4200EC4();
      sub_1E4201014();
      sub_1E3ED0228();
      OUTLINED_FUNCTION_69_27();
      v138 = OUTLINED_FUNCTION_40_60();
      v139(v138);
      v140 = sub_1E325F69C(v20, &qword_1ECF3BA30);
      OUTLINED_FUNCTION_230_1(v140);
      OUTLINED_FUNCTION_146_8();
      OUTLINED_FUNCTION_181_3();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v141, v142);
      OUTLINED_FUNCTION_21_1();
      sub_1E3A1558C(v143, v144);
      OUTLINED_FUNCTION_70_26();
      OUTLINED_FUNCTION_49_53();
      OUTLINED_FUNCTION_147_6();
      sub_1E3ECDC80();
      sub_1E3ECDD60();
      OUTLINED_FUNCTION_50_44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v145, v146);
      goto LABEL_12;
    }
  }

  v95 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v97 = OUTLINED_FUNCTION_47_48();
  if (v98(v97))
  {
    OUTLINED_FUNCTION_153();
    sub_1E4201CC4();
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
    v102 = sub_1E3ECD9AC(v99, v100, v101);
    v157 = &type metadata for AccountSettingsButton;
    v158 = v102;
    v159 = &off_1F5D792B8;
    OUTLINED_FUNCTION_8_168();
    v105 = OUTLINED_FUNCTION_121_2(v103, v104);
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v106, v107);
    OUTLINED_FUNCTION_53_43();
    v108 = OUTLINED_FUNCTION_42_62();
    v109(v108, v23);
    v110 = OUTLINED_FUNCTION_41_60();
    v111(v110);
    OUTLINED_FUNCTION_240_1();
    OUTLINED_FUNCTION_6_184();
    v114 = sub_1E3ECF09C(v112, v113);
    OUTLINED_FUNCTION_194_3(v114, v151);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    v157 = v99;
    v158 = v23;
    v159 = v105;
    v160 = v55;
    OUTLINED_FUNCTION_79_24();
    OUTLINED_FUNCTION_85_20();
    OUTLINED_FUNCTION_75_24(v23);
    OUTLINED_FUNCTION_139_9();
    sub_1E3ECDC80();
    sub_1E3ECDD60();
    OUTLINED_FUNCTION_51_41();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v115, v116);
    v117 = OUTLINED_FUNCTION_137_7();
  }

  else
  {
    OUTLINED_FUNCTION_57_22();
    sub_1E42014D4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
    v122 = sub_1E3ECD9AC(v119, v120, v121);
    v157 = &type metadata for AccountSettingsButton;
    v158 = v122;
    v159 = &off_1F5D792B8;
    OUTLINED_FUNCTION_8_168();
    v125 = OUTLINED_FUNCTION_121_2(v123, v124);
    OUTLINED_FUNCTION_6_184();
    v128 = sub_1E3ECF09C(v126, v127);
    OUTLINED_FUNCTION_52_46(v128);
    v129 = OUTLINED_FUNCTION_58_33();
    v130(v129, v22);
    v131 = OUTLINED_FUNCTION_44_52();
    v132(v131);
    OUTLINED_FUNCTION_241_1();
    v157 = v119;
    v158 = v22;
    v159 = v125;
    v160 = v55;
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_1_247();
    v135 = sub_1E3ECF09C(v133, v134);
    OUTLINED_FUNCTION_194_3(v135, v152);
    OUTLINED_FUNCTION_79_24();
    OUTLINED_FUNCTION_146();
    sub_1E4201F44();
    OUTLINED_FUNCTION_75_24(v153);
    OUTLINED_FUNCTION_139_9();
    sub_1E3ECDC80();
    sub_1E3ECDD60();
    OUTLINED_FUNCTION_51_41();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v136, v137);
    v117 = OUTLINED_FUNCTION_93_15();
  }

  v118(v117);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EC84C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v172[1] = v27;
  v28 = sub_1E4201CD4();
  v29 = OUTLINED_FUNCTION_3_6(v28, &v175[11]);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9A8, &qword_1E42DB680);
  OUTLINED_FUNCTION_3_6(v31, &a9);
  v165 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9B0, &qword_1E42DB688);
  OUTLINED_FUNCTION_6_4(v35, &v175[8]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B818, &qword_1E42DB460);
  OUTLINED_FUNCTION_6_4(v38, &a13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v40);
  v41 = sub_1E42014E4();
  v42 = OUTLINED_FUNCTION_3_6(v41, &v175[7]);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9B8, &qword_1E42DB690);
  OUTLINED_FUNCTION_3_6(v44, &v175[9]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v46);
  v47 = sub_1E4200ED4();
  v48 = OUTLINED_FUNCTION_3_6(v47, v172);
  v154 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9C0, &qword_1E42DB698);
  OUTLINED_FUNCTION_6_4(v51, &v170);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B810, &qword_1E42DB458);
  OUTLINED_FUNCTION_6_4(v54, &v175[6]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9C8, &qword_1E42DB6A0);
  OUTLINED_FUNCTION_6_4(v57, &a10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9D0, &qword_1E42DB6A8);
  OUTLINED_FUNCTION_6_4(v60, &v175[3]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B800, &qword_1E42DB448);
  OUTLINED_FUNCTION_6_4(v63, &a11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v65);
  v66 = sub_1E4201464();
  v67 = OUTLINED_FUNCTION_3_6(v66, &v174[32]);
  v162 = v68;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v69);
  v70 = sub_1E4202534();
  OUTLINED_FUNCTION_0_10();
  v158 = v71;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5();
  v75 = v74 - v73;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9D8, &qword_1E42DB6B0);
  OUTLINED_FUNCTION_3_6(v76, &v174[8]);
  v159 = v77;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_14_5();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B808, &qword_1E42DB450);
  OUTLINED_FUNCTION_6_4(v79, &v175[2]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v81);
  memcpy(v174, v24, 0x59uLL);
  v82 = v26[3];
  v83 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v82);
  v84 = *(v83 + 24);
  v84(v82, v83);
  OUTLINED_FUNCTION_38_15();
  if (!v88)
  {
    LOBYTE(v175[0]) = v85;
    v173 = 0;
    sub_1E3751D5C(v85, v86, v87);
    if (sub_1E4205E84())
    {
      sub_1E4202524();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8, &qword_1E42DB330);
      v90 = sub_1E3ECD8D4();
      OUTLINED_FUNCTION_13_150();
      v93 = sub_1E3ECF09C(v91, v92);
      sub_1E4202D94();
      v94 = OUTLINED_FUNCTION_54_41();
      v95(v94);
      OUTLINED_FUNCTION_57_22();
      sub_1E4201454();
      v175[0] = v89;
      v175[1] = v70;
      v175[2] = v90;
      v175[3] = v93;
      OUTLINED_FUNCTION_9_154();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_326();
      sub_1E4203064();
      v96 = OUTLINED_FUNCTION_58_33();
      v97(v96);
      OUTLINED_FUNCTION_15_5();
      v98(v20);
      sub_1E41FE614();
      OUTLINED_FUNCTION_68(v75, v166);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v99, &qword_1ECF3B808);
      sub_1E3A1558C(&qword_1EE2885A0, &qword_1ECF3B810);
      OUTLINED_FUNCTION_224_0();
LABEL_12:
      sub_1E4201F44();
      sub_1E3743538(v84, v171, &qword_1ECF3B800, &qword_1E42DB448);
      swift_storeEnumTagMultiPayload();
      sub_1E3ECEBA4();
      sub_1E3ECEC84();
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_138_8();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v147, v148);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v149, v150);
      goto LABEL_13;
    }
  }

  v84(v82, v83);
  OUTLINED_FUNCTION_38_15();
  if (!v88)
  {
    LOBYTE(v175[0]) = v100;
    v173 = 1;
    sub_1E3751D5C(v100, v101, v102);
    if ((sub_1E4205E84() & 1) != 0 && ([objc_opt_self() isTV] & 1) == 0)
    {
      memcpy(v175, v174, 0x59uLL);
      v133 = v152;
      sub_1E3ECC368(v175, v134, v135, v136, v137, v138, v139, v140, v151, v152, v153, v154, v155, v157, v158, v159, v160, v161, v162, v163);
      OUTLINED_FUNCTION_126_8();
      sub_1E4200EC4();
      sub_1E4201014();
      sub_1E3ED002C();
      OUTLINED_FUNCTION_326();
      sub_1E4203054();
      v141 = OUTLINED_FUNCTION_40_60();
      v142(v141, v156);
      sub_1E325F69C(v133, &qword_1ECF3B9C0);
      sub_1E41FE614();
      OUTLINED_FUNCTION_68(v75, v166);
      OUTLINED_FUNCTION_18_41();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v143, v144);
      OUTLINED_FUNCTION_21_1();
      sub_1E3A1558C(v145, v146);
      OUTLINED_FUNCTION_224_0();
      goto LABEL_12;
    }
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v103 = OUTLINED_FUNCTION_114_0();
  if (v104(v103))
  {
    OUTLINED_FUNCTION_153();
    sub_1E4201CC4();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v106 = sub_1E3ECD8D4();
    OUTLINED_FUNCTION_1_247();
    v109 = sub_1E3ECF09C(v107, v108);
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_65_30();
    sub_1E4202D94();
    v110 = OUTLINED_FUNCTION_42_62();
    v111(v110);
    (*(v165 + 16))(v168, v164, v170);
    OUTLINED_FUNCTION_18_41();
    OUTLINED_FUNCTION_6_184();
    v114 = sub_1E3ECF09C(v112, v113);
    v175[0] = v105;
    v175[1] = v167;
    v175[2] = v106;
    v175[3] = v114;
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    v175[0] = v105;
    v175[1] = v169;
    v175[2] = v106;
    v175[3] = v109;
    OUTLINED_FUNCTION_158_8(v175);
    OUTLINED_FUNCTION_224_0();
    sub_1E4201F44();
    OUTLINED_FUNCTION_68(v169, v171);
    OUTLINED_FUNCTION_18_41();
    sub_1E3ECEBA4();
    sub_1E3ECEC84();
    OUTLINED_FUNCTION_211_0();
    OUTLINED_FUNCTION_138_8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v115, v116);
    v117 = OUTLINED_FUNCTION_137_7();
  }

  else
  {
    OUTLINED_FUNCTION_57_22();
    sub_1E42014D4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v120 = sub_1E3ECD8D4();
    OUTLINED_FUNCTION_6_184();
    v123 = sub_1E3ECF09C(v121, v122);
    OUTLINED_FUNCTION_163_7();
    OUTLINED_FUNCTION_165_8();
    sub_1E4202D94();
    v124 = OUTLINED_FUNCTION_58_33();
    v125(v124);
    OUTLINED_FUNCTION_326();
    (*(v126 + 16))();
    swift_storeEnumTagMultiPayload();
    v175[0] = v119;
    v175[1] = v167;
    v175[2] = v120;
    v175[3] = v123;
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v127, v128);
    OUTLINED_FUNCTION_151_7();
    v175[0] = v119;
    v175[1] = v129;
    v175[2] = v120;
    v175[3] = v130;
    OUTLINED_FUNCTION_158_8(v175);
    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_146();
    sub_1E4201F44();
    OUTLINED_FUNCTION_68(v167, v171);
    OUTLINED_FUNCTION_18_41();
    sub_1E3ECEBA4();
    sub_1E3ECEC84();
    OUTLINED_FUNCTION_211_0();
    OUTLINED_FUNCTION_138_8();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v131, v132);
    v117 = OUTLINED_FUNCTION_93_15();
  }

  v118(v117);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EC929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v152 = OUTLINED_FUNCTION_182_4(v26, v27);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v29);
  v154[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B938, &qword_1E42DB620);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B940, &qword_1E42DB628);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v155[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B7D8, &qword_1E42DB420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v153 = v34;
  OUTLINED_FUNCTION_138();
  v151 = sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B948, &qword_1E42DB630);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v38);
  v39 = sub_1E4200ED4();
  v40 = OUTLINED_FUNCTION_3_6(v39, v155);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B950, &qword_1E42DB638);
  OUTLINED_FUNCTION_6_4(v42, v154);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B7D0, &qword_1E42DB418);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_45_59(v46, v149);
  v154[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B958, &qword_1E42DB640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v155[0] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B960, &qword_1E42DB648);
  OUTLINED_FUNCTION_6_4(v49, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v154[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B7C0, &qword_1E42DB408);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  v52 = sub_1E4201464();
  v53 = OUTLINED_FUNCTION_3_6(v52, &v160);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v54);
  v55 = sub_1E4202534();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B968, &qword_1E42DB650);
  OUTLINED_FUNCTION_3_6(v57, &v157);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_49_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B7C8, &qword_1E42DB410);
  OUTLINED_FUNCTION_6_4(v59, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_27_69(v61, v150);
  v62 = OUTLINED_FUNCTION_123_0();
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v64 = OUTLINED_FUNCTION_68_29();
  v21(v64);
  OUTLINED_FUNCTION_38_15();
  if (!v68)
  {
    LOBYTE(v157) = v65;
    v156 = 0;
    sub_1E3751D5C(v65, v66, v67);
    if (OUTLINED_FUNCTION_130_14())
    {
      sub_1E4202524();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
      v72 = sub_1E3D5D058(v69, v70, v71);
      v157 = &type metadata for DefaultButton;
      v158 = v72;
      v159 = &off_1F5D88AA0;
      OUTLINED_FUNCTION_8_168();
      v75 = OUTLINED_FUNCTION_121_2(v73, v74);
      OUTLINED_FUNCTION_13_150();
      sub_1E3ECF09C(v76, v77);
      OUTLINED_FUNCTION_173_3();
      v78 = OUTLINED_FUNCTION_42_62();
      v79(v78, v55);
      OUTLINED_FUNCTION_126_8();
      sub_1E4201454();
      v157 = v69;
      v158 = v55;
      v159 = v75;
      v160 = v23;
      OUTLINED_FUNCTION_9_154();
      v82 = OUTLINED_FUNCTION_121_2(v80, v81);
      OUTLINED_FUNCTION_60_31(v82);
      v83 = OUTLINED_FUNCTION_40_60();
      v84(v83);
      v85 = OUTLINED_FUNCTION_54_41();
      v87 = v86(v85);
      OUTLINED_FUNCTION_177_4(v87);
      OUTLINED_FUNCTION_142_10();
      OUTLINED_FUNCTION_179_3();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v88, &qword_1ECF3B7C8);
      sub_1E3A1558C(&qword_1EE288590, &qword_1ECF3B7D0);
      OUTLINED_FUNCTION_104_13();
      OUTLINED_FUNCTION_49_53();
      OUTLINED_FUNCTION_147_6();
      sub_1E3ECE694();
      sub_1E3ECE774();
      OUTLINED_FUNCTION_50_44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v89, v90);
LABEL_12:
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v147, v148);
      goto LABEL_13;
    }
  }

  v91 = OUTLINED_FUNCTION_209_1();
  v21(v91);
  OUTLINED_FUNCTION_38_15();
  if (!v68)
  {
    OUTLINED_FUNCTION_239_0(v92, v93, v94);
    if ((OUTLINED_FUNCTION_130_14() & 1) != 0 && ([objc_opt_self() isTV] & 1) == 0)
    {
      OUTLINED_FUNCTION_134_6();
      sub_1E3ECC81C();
      OUTLINED_FUNCTION_126_8();
      sub_1E4200EC4();
      sub_1E4201014();
      sub_1E3ECFDF8();
      OUTLINED_FUNCTION_69_27();
      v138 = OUTLINED_FUNCTION_40_60();
      v139(v138);
      v140 = sub_1E325F69C(v20, &qword_1ECF3B950);
      OUTLINED_FUNCTION_230_1(v140);
      OUTLINED_FUNCTION_146_8();
      OUTLINED_FUNCTION_181_3();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v141, v142);
      OUTLINED_FUNCTION_21_1();
      sub_1E3A1558C(v143, v144);
      OUTLINED_FUNCTION_70_26();
      OUTLINED_FUNCTION_49_53();
      OUTLINED_FUNCTION_147_6();
      sub_1E3ECE694();
      sub_1E3ECE774();
      OUTLINED_FUNCTION_50_44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v145, v146);
      goto LABEL_12;
    }
  }

  v95 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v97 = OUTLINED_FUNCTION_47_48();
  if (v98(v97))
  {
    OUTLINED_FUNCTION_153();
    sub_1E4201CC4();
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    v102 = sub_1E3D5D058(v99, v100, v101);
    v157 = &type metadata for DefaultButton;
    v158 = v102;
    v159 = &off_1F5D88AA0;
    OUTLINED_FUNCTION_8_168();
    v105 = OUTLINED_FUNCTION_121_2(v103, v104);
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v106, v107);
    OUTLINED_FUNCTION_53_43();
    v108 = OUTLINED_FUNCTION_42_62();
    v109(v108, v23);
    v110 = OUTLINED_FUNCTION_41_60();
    v111(v110);
    OUTLINED_FUNCTION_240_1();
    OUTLINED_FUNCTION_6_184();
    v114 = sub_1E3ECF09C(v112, v113);
    OUTLINED_FUNCTION_194_3(v114, v151);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    v157 = v99;
    v158 = v23;
    v159 = v105;
    v160 = v55;
    OUTLINED_FUNCTION_79_24();
    OUTLINED_FUNCTION_85_20();
    OUTLINED_FUNCTION_75_24(v23);
    OUTLINED_FUNCTION_139_9();
    sub_1E3ECE694();
    sub_1E3ECE774();
    OUTLINED_FUNCTION_51_41();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v115, v116);
    v117 = OUTLINED_FUNCTION_137_7();
  }

  else
  {
    OUTLINED_FUNCTION_57_22();
    sub_1E42014D4();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    v122 = sub_1E3D5D058(v119, v120, v121);
    v157 = &type metadata for DefaultButton;
    v158 = v122;
    v159 = &off_1F5D88AA0;
    OUTLINED_FUNCTION_8_168();
    v125 = OUTLINED_FUNCTION_121_2(v123, v124);
    OUTLINED_FUNCTION_6_184();
    v128 = sub_1E3ECF09C(v126, v127);
    OUTLINED_FUNCTION_52_46(v128);
    v129 = OUTLINED_FUNCTION_58_33();
    v130(v129, v22);
    v131 = OUTLINED_FUNCTION_44_52();
    v132(v131);
    OUTLINED_FUNCTION_241_1();
    v157 = v119;
    v158 = v22;
    v159 = v125;
    v160 = v55;
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_1_247();
    v135 = sub_1E3ECF09C(v133, v134);
    OUTLINED_FUNCTION_194_3(v135, v152);
    OUTLINED_FUNCTION_79_24();
    OUTLINED_FUNCTION_146();
    sub_1E4201F44();
    OUTLINED_FUNCTION_75_24(v153);
    OUTLINED_FUNCTION_139_9();
    sub_1E3ECE694();
    sub_1E3ECE774();
    OUTLINED_FUNCTION_51_41();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v136, v137);
    v117 = OUTLINED_FUNCTION_93_15();
  }

  v118(v117);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EC9DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v153 = OUTLINED_FUNCTION_182_4(v26, v27);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v29);
  v155[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA88, &qword_1E42DB740);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA90, &qword_1E42DB748);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v156[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B798, &qword_1E42DB3E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v154 = v34;
  OUTLINED_FUNCTION_138();
  v152 = sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA98, &qword_1E42DB750);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v38);
  v39 = sub_1E4200ED4();
  v40 = OUTLINED_FUNCTION_3_6(v39, v156);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAA0, &qword_1E42DB758);
  OUTLINED_FUNCTION_6_4(v42, v155);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B790, &qword_1E42DB3D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_45_59(v46, v150);
  v155[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAA8, &qword_1E42DB760);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v156[0] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAB0, &qword_1E42DB768);
  OUTLINED_FUNCTION_6_4(v49, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v155[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B780, &qword_1E42DB3C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  v52 = sub_1E4201464();
  v53 = OUTLINED_FUNCTION_3_6(v52, &v161);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v54);
  v55 = sub_1E4202534();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAB8, &qword_1E42DB770);
  OUTLINED_FUNCTION_3_6(v57, &v158);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_49_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B788, &qword_1E42DB3D0);
  OUTLINED_FUNCTION_6_4(v59, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_27_69(v61, v151);
  v62 = OUTLINED_FUNCTION_123_0();
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v64 = OUTLINED_FUNCTION_68_29();
  v21(v64);
  OUTLINED_FUNCTION_38_15();
  if (!v68)
  {
    LOBYTE(v158) = v65;
    v157 = 0;
    sub_1E3751D5C(v65, v66, v67);
    if (OUTLINED_FUNCTION_130_14())
    {
      sub_1E4202524();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
      v72 = sub_1E37ADF68(v69, v70, v71);
      v158 = &type metadata for ButtonRepresentable;
      v159 = v72;
      OUTLINED_FUNCTION_2_2();
      v75 = OUTLINED_FUNCTION_121_2(v73, v74);
      OUTLINED_FUNCTION_13_150();
      v78 = sub_1E3ECF09C(v76, v77);
      OUTLINED_FUNCTION_38_0();
      sub_1E4202D94();
      v79 = OUTLINED_FUNCTION_42_62();
      v80(v79, v55);
      OUTLINED_FUNCTION_126_8();
      sub_1E4201454();
      v158 = v69;
      v159 = v55;
      v160 = v75;
      v161 = v78;
      OUTLINED_FUNCTION_9_154();
      v83 = OUTLINED_FUNCTION_121_2(v81, v82);
      OUTLINED_FUNCTION_60_31(v83);
      v84 = OUTLINED_FUNCTION_40_60();
      v85(v84);
      v86 = OUTLINED_FUNCTION_54_41();
      v88 = v87(v86);
      OUTLINED_FUNCTION_177_4(v88);
      OUTLINED_FUNCTION_142_10();
      OUTLINED_FUNCTION_179_3();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v89, &qword_1ECF3B788);
      sub_1E3A1558C(&qword_1EE288588, &qword_1ECF3B790);
      OUTLINED_FUNCTION_104_13();
      OUTLINED_FUNCTION_49_53();
      OUTLINED_FUNCTION_147_6();
      sub_1E3ECE190();
      sub_1E3ECE270();
      OUTLINED_FUNCTION_50_44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v90, v91);
LABEL_12:
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v148, v149);
      goto LABEL_13;
    }
  }

  v92 = OUTLINED_FUNCTION_209_1();
  v21(v92);
  OUTLINED_FUNCTION_38_15();
  if (!v68)
  {
    OUTLINED_FUNCTION_239_0(v93, v94, v95);
    if ((OUTLINED_FUNCTION_130_14() & 1) != 0 && ([objc_opt_self() isTV] & 1) == 0)
    {
      OUTLINED_FUNCTION_134_6();
      sub_1E3ECCC50();
      OUTLINED_FUNCTION_126_8();
      sub_1E4200EC4();
      sub_1E4201014();
      sub_1E3ED045C();
      OUTLINED_FUNCTION_69_27();
      v139 = OUTLINED_FUNCTION_40_60();
      v140(v139);
      v141 = sub_1E325F69C(v20, &qword_1ECF3BAA0);
      OUTLINED_FUNCTION_230_1(v141);
      OUTLINED_FUNCTION_146_8();
      OUTLINED_FUNCTION_181_3();
      OUTLINED_FUNCTION_12_142();
      sub_1E3A1558C(v142, v143);
      OUTLINED_FUNCTION_21_1();
      sub_1E3A1558C(v144, v145);
      OUTLINED_FUNCTION_70_26();
      OUTLINED_FUNCTION_49_53();
      OUTLINED_FUNCTION_147_6();
      sub_1E3ECE190();
      sub_1E3ECE270();
      OUTLINED_FUNCTION_50_44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F69C(v146, v147);
      goto LABEL_12;
    }
  }

  v96 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v96, v97);
  v98 = OUTLINED_FUNCTION_47_48();
  if (v99(v98))
  {
    OUTLINED_FUNCTION_153();
    sub_1E4201CC4();
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
    v103 = sub_1E37ADF68(v100, v101, v102);
    v158 = &type metadata for ButtonRepresentable;
    v159 = v103;
    OUTLINED_FUNCTION_2_2();
    v106 = OUTLINED_FUNCTION_121_2(v104, v105);
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v107, v108);
    OUTLINED_FUNCTION_53_43();
    v109 = OUTLINED_FUNCTION_42_62();
    v110(v109, v23);
    v111 = OUTLINED_FUNCTION_41_60();
    v112(v111);
    OUTLINED_FUNCTION_240_1();
    OUTLINED_FUNCTION_6_184();
    v115 = sub_1E3ECF09C(v113, v114);
    OUTLINED_FUNCTION_194_3(v115, v152);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    v158 = v100;
    v159 = v23;
    v160 = v106;
    v161 = v55;
    OUTLINED_FUNCTION_79_24();
    OUTLINED_FUNCTION_85_20();
    OUTLINED_FUNCTION_75_24(v23);
    OUTLINED_FUNCTION_139_9();
    sub_1E3ECE190();
    sub_1E3ECE270();
    OUTLINED_FUNCTION_51_41();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v116, v117);
    v118 = OUTLINED_FUNCTION_137_7();
  }

  else
  {
    OUTLINED_FUNCTION_57_22();
    sub_1E42014D4();
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
    v123 = sub_1E37ADF68(v120, v121, v122);
    v158 = &type metadata for ButtonRepresentable;
    v159 = v123;
    OUTLINED_FUNCTION_2_2();
    v126 = OUTLINED_FUNCTION_121_2(v124, v125);
    OUTLINED_FUNCTION_6_184();
    v129 = sub_1E3ECF09C(v127, v128);
    OUTLINED_FUNCTION_52_46(v129);
    v130 = OUTLINED_FUNCTION_58_33();
    v131(v130, v22);
    v132 = OUTLINED_FUNCTION_44_52();
    v133(v132);
    OUTLINED_FUNCTION_241_1();
    v158 = v120;
    v159 = v22;
    v160 = v126;
    v161 = v55;
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_1_247();
    v136 = sub_1E3ECF09C(v134, v135);
    OUTLINED_FUNCTION_194_3(v136, v153);
    OUTLINED_FUNCTION_79_24();
    OUTLINED_FUNCTION_146();
    sub_1E4201F44();
    OUTLINED_FUNCTION_75_24(v154);
    OUTLINED_FUNCTION_139_9();
    sub_1E3ECE190();
    sub_1E3ECE270();
    OUTLINED_FUNCTION_51_41();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v137, v138);
    v118 = OUTLINED_FUNCTION_93_15();
  }

  v119(v118);
LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ECA944()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v312 = v4;
  v311 = v5;
  v317 = v6;
  v7 = sub_1E4201CD4();
  OUTLINED_FUNCTION_0_10();
  v296 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v10);
  OUTLINED_FUNCTION_1_247();
  v13 = sub_1E3ECF09C(v11, v12);
  OUTLINED_FUNCTION_33_72();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v299 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v298 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = sub_1E42014E4();
  OUTLINED_FUNCTION_6_184();
  v330 = v3;
  v331 = v20;
  v332 = v1;
  v333 = sub_1E3ECF09C(v21, v22);
  v322 = v333;
  v23 = OUTLINED_FUNCTION_80_18();
  v25 = OUTLINED_FUNCTION_273_0(v23, v24);
  v26 = sub_1E4201F54();
  OUTLINED_FUNCTION_3_6(v26, &v334);
  v309 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v29);
  v30 = swift_checkMetadataState();
  OUTLINED_FUNCTION_3_6(v30, &v332);
  v292 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v33);
  v307 = v25;
  v294 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  v293 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v37);
  v38 = sub_1E4200ED4();
  v39 = OUTLINED_FUNCTION_3_6(v38, &v304);
  v277 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v41);
  v42 = sub_1E4202054();
  OUTLINED_FUNCTION_5_196();
  v45 = sub_1E3ECF09C(v43, v44);
  v330 = v3;
  v331 = v42;
  v332 = v1;
  v333 = v45;
  v46 = OUTLINED_FUNCTION_80_18();
  OUTLINED_FUNCTION_273_0(v46, v47);
  OUTLINED_FUNCTION_13_10();
  v310 = OpaqueTypeMetadata2;
  v48 = sub_1E4201F54();
  v49 = sub_1E42037A4();
  OUTLINED_FUNCTION_0_10();
  v275 = v50;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v52);
  v330 = v3;
  v331 = v7;
  v297 = v7;
  v332 = v1;
  v333 = v13;
  v295 = v13;
  v53 = OUTLINED_FUNCTION_94_20();
  v330 = v3;
  v331 = v42;
  v332 = v1;
  v333 = v45;
  v54 = OUTLINED_FUNCTION_94_20();
  v320 = v53;
  v329[3] = v53;
  v329[4] = v54;
  OUTLINED_FUNCTION_2_25();
  v273 = v48;
  WitnessTable = swift_getWitnessTable();
  v329[2] = WitnessTable;
  OUTLINED_FUNCTION_25_10();
  v55 = swift_getWitnessTable();
  v330 = v49;
  v331 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v270 = v57;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v59);
  v60 = sub_1E41FE624();
  v276 = v49;
  v330 = v49;
  v331 = v55;
  v269 = v55;
  v61 = OUTLINED_FUNCTION_79_24();
  OUTLINED_FUNCTION_26_98();
  v64 = sub_1E3ECF09C(v62, v63);
  v271 = v56;
  v330 = v56;
  v331 = v60;
  v267[1] = v61;
  v332 = v61;
  v333 = v64;
  v65 = sub_1E42039D4();
  OUTLINED_FUNCTION_0_10();
  v274 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2_5();
  v272 = v68;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v70);
  v71 = sub_1E4202534();
  OUTLINED_FUNCTION_13_150();
  v74 = sub_1E3ECF09C(v72, v73);
  v330 = v3;
  v331 = v71;
  v332 = v1;
  v333 = v74;
  v75 = OUTLINED_FUNCTION_80_18();
  v77 = OUTLINED_FUNCTION_273_0(v75, v76);
  v319 = v3;
  v330 = v3;
  v331 = v71;
  v323 = v1;
  v332 = v1;
  v333 = v74;
  v290 = v74;
  v78 = OUTLINED_FUNCTION_94_20();
  OUTLINED_FUNCTION_112_14(v78);
  v79 = swift_getOpaqueTypeMetadata2();
  v330 = v77;
  v331 = v78;
  v288 = v78;
  v80 = OUTLINED_FUNCTION_94_20();
  v330 = v79;
  v331 = v60;
  v289 = v80;
  v332 = v80;
  v333 = v64;
  v301 = v64;
  OUTLINED_FUNCTION_80_18();
  v81 = sub_1E42039D4();
  v316 = v65;
  v82 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v303 = v83;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v85);
  v302 = v60;
  v300 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v87);
  v88 = sub_1E4201464();
  v89 = OUTLINED_FUNCTION_3_6(v88, &v312);
  v284 = v90;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v91);
  v92 = swift_checkMetadataState();
  OUTLINED_FUNCTION_3_6(v92, &v308);
  v280 = v93;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_9_12();
  v95 = swift_checkMetadataState();
  OUTLINED_FUNCTION_3_6(v95, &v309);
  v281 = v96;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v97);
  v99 = v267 - v98;
  v291 = v79;
  v283 = *(v79 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v100);
  v102 = v267 - v101;
  v318 = v81;
  v287 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_2_5();
  v286 = v104;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v106);
  v315 = v82;
  v107 = sub_1E4201F54();
  OUTLINED_FUNCTION_3_6(v107, v329);
  v313 = v108;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v110);
  v111 = v311[4];
  v112 = v311;
  v113 = __swift_project_boxed_opaque_existential_1(v311, v311[3]);
  v114 = *(v111 + 24);
  v115 = OUTLINED_FUNCTION_123_0();
  v114(v115);
  OUTLINED_FUNCTION_38_15();
  if (v119 || (LOBYTE(v330) = v116, v326 = 0, sub_1E3751D5C(v116, v117, v118), (sub_1E4205E84() & 1) == 0))
  {
    v158 = OUTLINED_FUNCTION_123_0();
    v114(v158);
    OUTLINED_FUNCTION_38_15();
    if (v119 || (LOBYTE(v330) = v159, v326 = 1, sub_1E3751D5C(v159, v160, v161), (sub_1E4205E84() & 1) == 0) || (v162 = [objc_opt_self() isTV], (v162 & 1) != 0))
    {
      v163 = v112[3];
      v164 = OUTLINED_FUNCTION_38_0();
      __swift_project_boxed_opaque_existential_1(v164, v165);
      v166 = OUTLINED_FUNCTION_47_48();
      v168 = v167(v166);
      v169 = v323;
      v170 = v319;
      v171 = v322;
      v172 = v321;
      if (v168)
      {
        OUTLINED_FUNCTION_126_8();
        sub_1E4201CC4();
        OUTLINED_FUNCTION_51_28();
        v173 = v297;
        sub_1E4202D94();
        v174 = OUTLINED_FUNCTION_40_60();
        v175(v174, v173);
        v176 = v299;
        v177 = *(v299 + 16);
        v178 = OUTLINED_FUNCTION_34();
        v179 = v310;
        v177(v178);
        OUTLINED_FUNCTION_170_4(*(v176 + 8));
        v180 = OUTLINED_FUNCTION_125();
        v181(v180);
        v182 = OUTLINED_FUNCTION_74();
        v177(v182);
        v330 = v170;
        v331 = v172;
        v332 = v323;
        v333 = v171;
        OUTLINED_FUNCTION_9_154();
        v185 = OUTLINED_FUNCTION_121_2(v183, v184);
        OUTLINED_FUNCTION_224_0();
        OUTLINED_FUNCTION_258_0();
        sub_1E37B8E90(v186, v187, v188);
        OUTLINED_FUNCTION_118_11();
        v189 = swift_getWitnessTable();
        v190 = swift_getWitnessTable();
        v327[2] = v189;
        v327[3] = v190;
        OUTLINED_FUNCTION_15_28();
        OUTLINED_FUNCTION_217_0();
        swift_getWitnessTable();
        v327[0] = v185;
        v327[1] = v112;
        OUTLINED_FUNCTION_198_2(v177, v191, v327);
        OUTLINED_FUNCTION_262_0();
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_165_8();
        sub_1E37B8E90(v192, v193, v194);
        OUTLINED_FUNCTION_15_5();
        v195 = v170;
        v156 = v319;
        v196(v195, v112);
        v197 = OUTLINED_FUNCTION_125();
        v198 = v312;
        (v312)(v197);
        v199 = v179;
        v132 = v185;
        v198(v306, v199);
      }

      else
      {
        OUTLINED_FUNCTION_254_0();
        sub_1E42014D4();
        OUTLINED_FUNCTION_51_28();
        sub_1E4202D94();
        OUTLINED_FUNCTION_15_5();
        v200(v163, v172);
        v330 = v170;
        v331 = v172;
        v332 = v169;
        v333 = v171;
        OUTLINED_FUNCTION_9_154();
        v203 = OUTLINED_FUNCTION_121_2(v201, v202);
        v204 = v294;
        v205 = v294 + 16;
        v206 = *(v294 + 16);
        v207 = v305;
        v208 = v307;
        v206(v305, v99, v307);
        OUTLINED_FUNCTION_170_4(*(v204 + 8));
        v209 = OUTLINED_FUNCTION_87_2();
        v210(v209);
        v211 = OUTLINED_FUNCTION_75();
        (v206)(v211);
        OUTLINED_FUNCTION_57_22();
        OUTLINED_FUNCTION_87_2();
        OUTLINED_FUNCTION_258_0();
        sub_1E37B8D98(v212, v213);
        OUTLINED_FUNCTION_118_11();
        v214 = swift_getWitnessTable();
        OUTLINED_FUNCTION_217_0();
        v215 = swift_getWitnessTable();
        v329[0] = v214;
        v329[1] = v215;
        OUTLINED_FUNCTION_15_28();
        swift_getWitnessTable();
        v328[0] = v203;
        v328[1] = v207;
        OUTLINED_FUNCTION_198_2(v205, v216, v328);
        OUTLINED_FUNCTION_262_0();
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_165_8();
        sub_1E37B8E90(v217, v218, v219);
        v220 = OUTLINED_FUNCTION_58_33();
        v132 = v203;
        v221(v220, v207);
        v222 = OUTLINED_FUNCTION_87_2();
        v223 = v312;
        (v312)(v222);
        v224 = v208;
        v156 = v319;
        v223(v305, v224);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v162);
      v156 = v319;
      v225 = v323;
      v267[-4] = v319;
      v267[-3] = v225;
      v267[-2] = v312;
      sub_1E4203794();
      OUTLINED_FUNCTION_254_0();
      sub_1E4200EC4();
      sub_1E4201014();
      OUTLINED_FUNCTION_51_28();
      sub_1E4203054();
      OUTLINED_FUNCTION_15_5();
      v226(v267, v278);
      OUTLINED_FUNCTION_15_5();
      v227 = OUTLINED_FUNCTION_57();
      v228(v227);
      OUTLINED_FUNCTION_153();
      sub_1E41FE614();
      v229 = v272;
      v230 = v302;
      sub_1E42033E4();
      v231 = OUTLINED_FUNCTION_42_62();
      v232(v231, v230);
      OUTLINED_FUNCTION_15_5();
      v233 = OUTLINED_FUNCTION_74();
      v234(v233);
      OUTLINED_FUNCTION_36_61();
      v235 = v316;
      v236 = swift_getWitnessTable();
      v237 = v274;
      v238 = *(v274 + 16);
      v132 = v279;
      v238(v279, v229, v235);
      OUTLINED_FUNCTION_170_4(*(v237 + 8));
      v239(v229, v235);
      v238(v229, v132, v235);
      OUTLINED_FUNCTION_217_0();
      v240 = swift_getWitnessTable();
      v241 = OUTLINED_FUNCTION_159();
      sub_1E37B8E90(v241, v242, v235);
      v325[2] = v240;
      v325[3] = v236;
      OUTLINED_FUNCTION_34_66();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_225();
      v330 = v156;
      v331 = v243;
      OUTLINED_FUNCTION_151_7();
      v332 = v245;
      v333 = v244;
      OUTLINED_FUNCTION_9_154();
      v325[0] = OUTLINED_FUNCTION_121_2(v246, v247);
      OUTLINED_FUNCTION_245_0();
      v325[1] = v248;
      OUTLINED_FUNCTION_198_2(v240, v249, v325);
      OUTLINED_FUNCTION_262_0();
      OUTLINED_FUNCTION_57_22();
      OUTLINED_FUNCTION_90();
      sub_1E37B8D98(v250, v251);
      OUTLINED_FUNCTION_15_5();
      v252 = OUTLINED_FUNCTION_114_0();
      v253(v252);
      v254 = v312;
      v312(v229, v235);
      v254(v279, v235);
    }

    v157 = v323;
  }

  else
  {
    sub_1E4202524();
    v120 = v319;
    v121 = v282;
    sub_1E4202D94();
    v122 = OUTLINED_FUNCTION_58_33();
    v123(v122, v121);
    OUTLINED_FUNCTION_126_8();
    sub_1E4201454();
    sub_1E4203064();
    v124 = OUTLINED_FUNCTION_40_60();
    v125(v124, v285);
    OUTLINED_FUNCTION_15_5();
    v126 = OUTLINED_FUNCTION_75();
    v127(v126);
    OUTLINED_FUNCTION_51_28();
    sub_1E41FE614();
    v128 = v286;
    v129 = v291;
    sub_1E42033E4();
    OUTLINED_FUNCTION_15_5();
    v130 = OUTLINED_FUNCTION_74();
    v131(v130);
    OUTLINED_FUNCTION_15_5();
    v132 = v120;
    v133(v102, v129);
    OUTLINED_FUNCTION_36_61();
    OUTLINED_FUNCTION_217_0();
    v134 = swift_getWitnessTable();
    v135 = v287;
    v136 = *(v287 + 16);
    v137 = v304;
    v136(v304, v128, v113);
    OUTLINED_FUNCTION_170_4(*(v135 + 8));
    v138 = OUTLINED_FUNCTION_159();
    v139(v138);
    v136(v128, v137, v113);
    v140 = swift_getWitnessTable();
    OUTLINED_FUNCTION_51_28();
    v141 = OUTLINED_FUNCTION_159();
    sub_1E37B8D98(v141, v142);
    v324[2] = v134;
    v324[3] = v140;
    OUTLINED_FUNCTION_34_66();
    v311 = swift_getWitnessTable();
    OUTLINED_FUNCTION_225();
    v330 = v132;
    v331 = v143;
    v144 = v323;
    OUTLINED_FUNCTION_151_7();
    v332 = v144;
    v333 = v145;
    OUTLINED_FUNCTION_9_154();
    v324[0] = OUTLINED_FUNCTION_121_2(v146, v147);
    OUTLINED_FUNCTION_245_0();
    v324[1] = v148;
    OUTLINED_FUNCTION_198_2(v140, v149, v324);
    OUTLINED_FUNCTION_262_0();
    OUTLINED_FUNCTION_57_22();
    v150 = OUTLINED_FUNCTION_167();
    sub_1E37B8D98(v150, v151);
    OUTLINED_FUNCTION_15_5();
    v152 = OUTLINED_FUNCTION_167();
    v153(v152);
    v154 = OUTLINED_FUNCTION_159();
    v155 = v312;
    (v312)(v154);
    v155(v304, v113);
    v156 = v319;
    v157 = v144;
  }

  OUTLINED_FUNCTION_36_61();
  v255 = swift_getWitnessTable();
  v256 = swift_getWitnessTable();
  v327[8] = v255;
  v327[9] = v256;
  OUTLINED_FUNCTION_34_66();
  v257 = swift_getWitnessTable();
  OUTLINED_FUNCTION_225();
  v330 = v156;
  v331 = v258;
  OUTLINED_FUNCTION_151_7();
  v332 = v157;
  v333 = v259;
  OUTLINED_FUNCTION_9_154();
  OUTLINED_FUNCTION_121_2(v260, v261);
  OUTLINED_FUNCTION_245_0();
  v327[6] = v262;
  v327[7] = v263;
  v264 = swift_getWitnessTable();
  v327[4] = v257;
  v327[5] = v264;
  v265 = v314;
  swift_getWitnessTable();
  v266 = v313;
  (*(v313 + 16))(v317, v132, v265);
  (*(v266 + 8))(v132, v265);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ECBF34()
{
  OUTLINED_FUNCTION_31_1();
  v39 = OUTLINED_FUNCTION_238_1(v0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA68, &qword_1E42DB720);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_5();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA70, &qword_1E42DB728);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v42 = v4;
  OUTLINED_FUNCTION_138();
  sub_1E4201CD4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA18, &qword_1E42DB6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    sub_1E4201CC4();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
    sub_1E3ECD9AC(v7, v8, v9);
    OUTLINED_FUNCTION_8_168();
    OUTLINED_FUNCTION_17_12(v10, v11);
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v12, v13);
    OUTLINED_FUNCTION_48_43();
    sub_1E4202D94();
    v14 = OUTLINED_FUNCTION_146();
    v15(v14);
    v16 = OUTLINED_FUNCTION_67_25();
    v17(v16);
    OUTLINED_FUNCTION_233_1();
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_5_196();
    v20 = sub_1E3ECF09C(v18, v19);
    OUTLINED_FUNCTION_101_12(v20);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    v21 = OUTLINED_FUNCTION_114_0();
    v22(v21);
  }

  else
  {
    sub_1E4202044();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B700, &qword_1E42DB348);
    sub_1E3ECD9AC(v23, v24, v25);
    OUTLINED_FUNCTION_8_168();
    OUTLINED_FUNCTION_17_12(v26, v27);
    OUTLINED_FUNCTION_5_196();
    v30 = sub_1E3ECF09C(v28, v29);
    OUTLINED_FUNCTION_64_29(v30);
    v31 = OUTLINED_FUNCTION_135_4();
    v32(v31);
    v33 = OUTLINED_FUNCTION_66_30();
    v34(v33);
    OUTLINED_FUNCTION_231_1();
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v35, v36);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_103_11();
    v37 = OUTLINED_FUNCTION_134_0();
    v38(v37);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ECC368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1E4202054();
  v26 = OUTLINED_FUNCTION_3_6(v25, &a18);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9F8, &qword_1E42DB6C0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA00, &qword_1E42DB6C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v57 = v29;
  OUTLINED_FUNCTION_138();
  sub_1E4201CD4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B9A8, &qword_1E42DB680);
  OUTLINED_FUNCTION_0_10();
  v32 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_50_1();
  memcpy(v62, v24, sizeof(v62));
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    sub_1E4201CC4();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v35 = sub_1E3ECD8D4();
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v36, v37);
    OUTLINED_FUNCTION_48_43();
    sub_1E4202D94();
    v38 = OUTLINED_FUNCTION_146();
    v39(v38);
    (*(v32 + 16))(v57, v20, v56);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_5_196();
    v58 = v34;
    v59 = v55;
    v60 = v35;
    v61 = sub_1E3ECF09C(v40, v41);
    OUTLINED_FUNCTION_158_8(&v58);
    sub_1E4201F44();
    (*(v32 + 8))(v20, v56);
  }

  else
  {
    sub_1E4202044();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v43 = sub_1E3ECD8D4();
    OUTLINED_FUNCTION_5_196();
    v46 = sub_1E3ECF09C(v44, v45);
    OUTLINED_FUNCTION_53_3();
    sub_1E4202D94();
    v47 = OUTLINED_FUNCTION_135_4();
    v48(v47);
    v49 = OUTLINED_FUNCTION_123_0();
    v50(v49);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v51, v52);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    v58 = v42;
    v59 = v55;
    v60 = v43;
    v61 = v46;
    OUTLINED_FUNCTION_158_8(&v58);
    sub_1E4201F44();
    v53 = OUTLINED_FUNCTION_134_0();
    v54(v53);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ECC81C()
{
  OUTLINED_FUNCTION_31_1();
  v39 = OUTLINED_FUNCTION_238_1(v0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B988, &qword_1E42DB660);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_5();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B990, &qword_1E42DB668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v42 = v4;
  OUTLINED_FUNCTION_138();
  sub_1E4201CD4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B938, &qword_1E42DB620);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    sub_1E4201CC4();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    sub_1E3D5D058(v7, v8, v9);
    OUTLINED_FUNCTION_8_168();
    OUTLINED_FUNCTION_17_12(v10, v11);
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v12, v13);
    OUTLINED_FUNCTION_48_43();
    sub_1E4202D94();
    v14 = OUTLINED_FUNCTION_146();
    v15(v14);
    v16 = OUTLINED_FUNCTION_67_25();
    v17(v16);
    OUTLINED_FUNCTION_233_1();
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_5_196();
    v20 = sub_1E3ECF09C(v18, v19);
    OUTLINED_FUNCTION_101_12(v20);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    v21 = OUTLINED_FUNCTION_114_0();
    v22(v21);
  }

  else
  {
    sub_1E4202044();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    sub_1E3D5D058(v23, v24, v25);
    OUTLINED_FUNCTION_8_168();
    OUTLINED_FUNCTION_17_12(v26, v27);
    OUTLINED_FUNCTION_5_196();
    v30 = sub_1E3ECF09C(v28, v29);
    OUTLINED_FUNCTION_64_29(v30);
    v31 = OUTLINED_FUNCTION_135_4();
    v32(v31);
    v33 = OUTLINED_FUNCTION_66_30();
    v34(v33);
    OUTLINED_FUNCTION_231_1();
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v35, v36);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_103_11();
    v37 = OUTLINED_FUNCTION_134_0();
    v38(v37);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ECCC50()
{
  OUTLINED_FUNCTION_31_1();
  v39 = OUTLINED_FUNCTION_238_1(v0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAD8, &qword_1E42DB780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_5();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAE0, qword_1E42DB788);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v42 = v4;
  OUTLINED_FUNCTION_138();
  sub_1E4201CD4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BA88, &qword_1E42DB740);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  if ((sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isMac])
  {
    sub_1E4201CC4();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
    sub_1E37ADF68(v7, v8, v9);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_17_12(v10, v11);
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v12, v13);
    OUTLINED_FUNCTION_48_43();
    sub_1E4202D94();
    v14 = OUTLINED_FUNCTION_146();
    v15(v14);
    v16 = OUTLINED_FUNCTION_67_25();
    v17(v16);
    OUTLINED_FUNCTION_233_1();
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_5_196();
    v20 = sub_1E3ECF09C(v18, v19);
    OUTLINED_FUNCTION_101_12(v20);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    v21 = OUTLINED_FUNCTION_114_0();
    v22(v21);
  }

  else
  {
    sub_1E4202044();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
    sub_1E37ADF68(v23, v24, v25);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_17_12(v26, v27);
    OUTLINED_FUNCTION_5_196();
    v30 = sub_1E3ECF09C(v28, v29);
    OUTLINED_FUNCTION_64_29(v30);
    v31 = OUTLINED_FUNCTION_135_4();
    v32(v31);
    v33 = OUTLINED_FUNCTION_66_30();
    v34(v33);
    OUTLINED_FUNCTION_231_1();
    OUTLINED_FUNCTION_1_247();
    sub_1E3ECF09C(v35, v36);
    OUTLINED_FUNCTION_3_210();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_102_15();
    OUTLINED_FUNCTION_103_11();
    v37 = OUTLINED_FUNCTION_134_0();
    v38(v37);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ECD06C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OpaqueTypeConformance2 = v4;
  v86 = v5;
  v6 = sub_1E4202054();
  OUTLINED_FUNCTION_0_10();
  v78 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_196();
  v84 = v6;
  v89 = sub_1E3ECF09C(v9, v10);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v77 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v15 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v76 = v17;
  OUTLINED_FUNCTION_138();
  v18 = sub_1E4201CD4();
  OUTLINED_FUNCTION_0_10();
  v75[1] = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_1_247();
  v26 = v3;
  v93 = v3;
  v94 = v18;
  v87 = v18;
  v27 = v1;
  v95 = v1;
  v96 = sub_1E3ECF09C(v24, v25);
  v90 = v96;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v75 - v35;
  v81 = v37;
  v85 = OpaqueTypeMetadata2;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v82 = v39;
  v83 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  v80 = v41;
  v42 = sub_1E39DFFC8();
  v88 = v27;
  if ((v42 & 1) != 0 && [objc_opt_self() isMac])
  {
    sub_1E4201CC4();
    v78 = v36;
    v43 = v26;
    v44 = v87;
    v45 = v29;
    v46 = v90;
    sub_1E4202D94();
    OUTLINED_FUNCTION_15_5();
    v47(v23, v44);
    v93 = v43;
    v94 = v44;
    v95 = v27;
    v96 = v46;
    OUTLINED_FUNCTION_9_154();
    v77 = v48;
    OpaqueTypeConformance2 = OUTLINED_FUNCTION_121_2(v49, v50);
    v51 = *(v45 + 16);
    v52 = v78;
    v53 = v81;
    v51(v78, v33, v81);
    v54 = *(v45 + 8);
    v54(v33, v53);
    v51(v33, v52, v53);
    v26 = v43;
    v55 = v84;
    v93 = v43;
    v94 = v84;
    v56 = v89;
    v95 = v88;
    v96 = v89;
    swift_getOpaqueTypeConformance2();
    v57 = v80;
    sub_1E37B8D98(v33, v53);
    v58 = v33;
    v59 = v87;
    v54(v58, v53);
    v54(v52, v53);
  }

  else
  {
    sub_1E4202044();
    v60 = v15;
    v55 = v84;
    v61 = v89;
    sub_1E4202D94();
    v62 = OUTLINED_FUNCTION_115_9();
    v63(v62, v55);
    v93 = v26;
    v94 = v55;
    v95 = v27;
    v96 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65 = v76;
    v64 = v77;
    v66 = *(v77 + 16);
    v67 = v85;
    v66(v76, v60, v85);
    v68 = *(v64 + 8);
    v68(v60, v67);
    v66(v60, v65, v67);
    v59 = v87;
    v93 = v26;
    v94 = v87;
    v95 = v88;
    v96 = v90;
    OUTLINED_FUNCTION_157_8();
    v57 = v80;
    v69 = OUTLINED_FUNCTION_163_7();
    sub_1E37B8E90(v69, v70, v67);
    v68(v60, v67);
    v68(v65, v67);
    v27 = v88;
    v56 = v89;
  }

  v93 = v26;
  v94 = v59;
  v95 = v27;
  v96 = v90;
  OUTLINED_FUNCTION_33_72();
  v71 = swift_getOpaqueTypeConformance2();
  v93 = v26;
  v94 = v55;
  v95 = v27;
  v96 = v56;
  v72 = OUTLINED_FUNCTION_94_20();
  v91 = v71;
  v92 = v72;
  OUTLINED_FUNCTION_2_25();
  v73 = v83;
  swift_getWitnessTable();
  v74 = v82;
  (*(v82 + 16))(v86, v57, v73);
  (*(v74 + 8))(v57, v73);
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3ECD694(uint64_t a1)
{
  LOBYTE(v3) = 0;
  (*(*a1 + 776))(v4, &v3, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (v4[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    if (swift_dynamicCast())
    {
      v1 = *(v3 + 16);

      return v1 != 0;
    }
  }

  else
  {
    sub_1E325F69C(v4, &unk_1ECF296E0);
  }

  return 0;
}

uint64_t sub_1E3ECD818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = OUTLINED_FUNCTION_74();
  v11(v10);
  return a6(v9);
}

unint64_t sub_1E3ECD8D4()
{
  result = qword_1EE2846B8;
  if (!qword_1EE2846B8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    sub_1E3ECD958(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2846B8);
  }

  return result;
}

unint64_t sub_1E3ECD958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2846C0[0];
  if (!qword_1EE2846C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2846C0);
  }

  return result;
}

unint64_t sub_1E3ECD9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE269310;
  if (!qword_1EE269310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269310);
  }

  return result;
}

unint64_t sub_1E3ECDA00()
{
  result = qword_1EE289580;
  if (!qword_1EE289580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B708, &qword_1E42DB350);
    sub_1E3ECDAB8();
    sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289580);
  }

  return result;
}

unint64_t sub_1E3ECDAB8()
{
  result = qword_1EE289860;
  if (!qword_1EE289860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B710, &qword_1E42DB358);
    sub_1E3ECDB70();
    sub_1E3A1558C(&qword_1EE2887B0, &qword_1ECF3B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289860);
  }

  return result;
}

unint64_t sub_1E3ECDB70()
{
  result = qword_1EE2886C0;
  if (!qword_1EE2886C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B718, &qword_1E42DB360);
    sub_1E3ECDBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886C0);
  }

  return result;
}

unint64_t sub_1E3ECDBF4()
{
  result = qword_1EE288B80;
  if (!qword_1EE288B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B720, &qword_1E42DB368);
    sub_1E3ECDC80();
    sub_1E3ECDD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B80);
  }

  return result;
}

unint64_t sub_1E3ECDC80()
{
  result = qword_1EE288DC0;
  if (!qword_1EE288DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B728, &qword_1E42DB370);
    sub_1E3A1558C(&qword_1EE288578, &qword_1ECF3B730);
    sub_1E3A1558C(&qword_1EE288598, &qword_1ECF3B738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DC0);
  }

  return result;
}

unint64_t sub_1E3ECDD60()
{
  result = qword_1EE288E10;
  if (!qword_1EE288E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B740, &qword_1E42DB388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B700, &qword_1E42DB348);
    v1 = sub_1E42014E4();
    sub_1E3ECD9AC(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE289408, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E4201CD4();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E10);
  }

  return result;
}

unint64_t sub_1E3ECDF10()
{
  result = qword_1EE289570;
  if (!qword_1EE289570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B760, &qword_1E42DB3A8);
    sub_1E3ECDFC8();
    sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289570);
  }

  return result;
}

unint64_t sub_1E3ECDFC8()
{
  result = qword_1EE289850;
  if (!qword_1EE289850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B768, &qword_1E42DB3B0);
    sub_1E3ECE080();
    sub_1E3A1558C(&qword_1EE2887B0, &qword_1ECF3B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289850);
  }

  return result;
}

unint64_t sub_1E3ECE080()
{
  result = qword_1EE2886B0;
  if (!qword_1EE2886B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B770, &qword_1E42DB3B8);
    sub_1E3ECE104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886B0);
  }

  return result;
}

unint64_t sub_1E3ECE104()
{
  result = qword_1EE288B70;
  if (!qword_1EE288B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B778, &qword_1E42DB3C0);
    sub_1E3ECE190();
    sub_1E3ECE270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B70);
  }

  return result;
}

unint64_t sub_1E3ECE190()
{
  result = qword_1EE288DB0;
  if (!qword_1EE288DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B780, &qword_1E42DB3C8);
    sub_1E3A1558C(&qword_1EE288568, &qword_1ECF3B788);
    sub_1E3A1558C(&qword_1EE288588, &qword_1ECF3B790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DB0);
  }

  return result;
}

unint64_t sub_1E3ECE270()
{
  result = qword_1EE288E00;
  if (!qword_1EE288E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B798, &qword_1E42DB3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B348, &qword_1E42A0210);
    v1 = sub_1E42014E4();
    sub_1E37ADF68(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE289408, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E4201CD4();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E00);
  }

  return result;
}

unint64_t sub_1E3ECE414()
{
  result = qword_1EE289578;
  if (!qword_1EE289578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A0, &qword_1E42DB3E8);
    sub_1E3ECE4CC();
    sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289578);
  }

  return result;
}

unint64_t sub_1E3ECE4CC()
{
  result = qword_1EE289858;
  if (!qword_1EE289858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A8, &qword_1E42DB3F0);
    sub_1E3ECE584();
    sub_1E3A1558C(&qword_1EE2887B0, &qword_1ECF3B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289858);
  }

  return result;
}

unint64_t sub_1E3ECE584()
{
  result = qword_1EE2886B8;
  if (!qword_1EE2886B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7B0, &qword_1E42DB3F8);
    sub_1E3ECE608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886B8);
  }

  return result;
}

unint64_t sub_1E3ECE608()
{
  result = qword_1EE288B78;
  if (!qword_1EE288B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7B8, &qword_1E42DB400);
    sub_1E3ECE694();
    sub_1E3ECE774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B78);
  }

  return result;
}

unint64_t sub_1E3ECE694()
{
  result = qword_1EE288DB8;
  if (!qword_1EE288DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7C0, &qword_1E42DB408);
    sub_1E3A1558C(&qword_1EE288570, &qword_1ECF3B7C8);
    sub_1E3A1558C(&qword_1EE288590, &qword_1ECF3B7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DB8);
  }

  return result;
}

unint64_t sub_1E3ECE774()
{
  result = qword_1EE288E08;
  if (!qword_1EE288E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7D8, &qword_1E42DB420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    v1 = sub_1E42014E4();
    sub_1E3D5D058(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE289408, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E4201CD4();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E08);
  }

  return result;
}

unint64_t sub_1E3ECE924()
{
  result = qword_1EE289588;
  if (!qword_1EE289588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E0, &qword_1E42DB428);
    sub_1E3ECE9DC();
    sub_1E3A1558C(&qword_1EE2887C8, &qword_1ECF3B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289588);
  }

  return result;
}

unint64_t sub_1E3ECE9DC()
{
  result = qword_1EE289868;
  if (!qword_1EE289868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E8, &qword_1E42DB430);
    sub_1E3ECEA94();
    sub_1E3A1558C(&qword_1EE2887B0, &qword_1ECF3B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289868);
  }

  return result;
}

unint64_t sub_1E3ECEA94()
{
  result = qword_1EE2886C8;
  if (!qword_1EE2886C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7F0, &qword_1E42DB438);
    sub_1E3ECEB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886C8);
  }

  return result;
}

unint64_t sub_1E3ECEB18()
{
  result = qword_1EE288B88;
  if (!qword_1EE288B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7F8, &qword_1E42DB440);
    sub_1E3ECEBA4();
    sub_1E3ECEC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B88);
  }

  return result;
}

unint64_t sub_1E3ECEBA4()
{
  result = qword_1EE288DC8;
  if (!qword_1EE288DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B800, &qword_1E42DB448);
    sub_1E3A1558C(&qword_1EE288580, &qword_1ECF3B808);
    sub_1E3A1558C(&qword_1EE2885A0, &qword_1ECF3B810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DC8);
  }

  return result;
}

unint64_t sub_1E3ECEC84()
{
  result = qword_1EE288E18;
  if (!qword_1EE288E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B818, &qword_1E42DB460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    sub_1E42014E4();
    sub_1E3ECD8D4();
    sub_1E3ECF09C(&qword_1EE289408, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E4201CD4();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E18);
  }

  return result;
}

uint64_t sub_1E3ECEE2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    OUTLINED_FUNCTION_2_25();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3ECEE94()
{
  result = qword_1EE2830F8;
  if (!qword_1EE2830F8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B828, &qword_1E42DB470);
    sub_1E3908E5C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2830F8);
  }

  return result;
}

unint64_t sub_1E3ECEF18()
{
  result = qword_1EE288C38;
  if (!qword_1EE288C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B758, &qword_1E42DB3A0);
    sub_1E3ECEFBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C38);
  }

  return result;
}

unint64_t sub_1E3ECEFBC()
{
  result = qword_1EE289038;
  if (!qword_1EE289038)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B830, &qword_1E42DB478);
    v6 = sub_1E380DC84(v1, v2, v3);
    sub_1E3ECF048(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289038);
  }

  return result;
}

unint64_t sub_1E3ECF048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE284890;
  if (!qword_1EE284890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284890);
  }

  return result;
}

uint64_t sub_1E3ECF09C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3ECF0F0()
{
  result = qword_1EE2895F8;
  if (!qword_1EE2895F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B848, &qword_1E42DB4A0);
    sub_1E3ECF1A8();
    sub_1E3A1558C(&qword_1EE288760, &qword_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895F8);
  }

  return result;
}

unint64_t sub_1E3ECF1A8()
{
  result = qword_1EE2899B0;
  if (!qword_1EE2899B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B850, &qword_1E42DB4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B858, &qword_1E42DB4B0);
    sub_1E3ECF2A0();
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899B0);
  }

  return result;
}

unint64_t sub_1E3ECF2A0()
{
  result = qword_1EE289B00;
  if (!qword_1EE289B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B858, &qword_1E42DB4B0);
    sub_1E3ECF35C();
    sub_1E3ECF09C(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B00);
  }

  return result;
}

unint64_t sub_1E3ECF35C()
{
  result = qword_1EE288A38;
  if (!qword_1EE288A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B860, &qword_1E42DB4B8);
    sub_1E3ECF3E8();
    sub_1E3ECEF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A38);
  }

  return result;
}

unint64_t sub_1E3ECF3E8()
{
  result = qword_1EE288A68;
  if (!qword_1EE288A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B868, &qword_1E42DB4C0);
    sub_1E3ECF474();
    sub_1E3ECF9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A68);
  }

  return result;
}

unint64_t sub_1E3ECF474()
{
  result = qword_1EE288AD8;
  if (!qword_1EE288AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B870, &qword_1E42DB4C8);
    sub_1E3ECF500();
    sub_1E3ECF830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AD8);
  }

  return result;
}

unint64_t sub_1E3ECF500()
{
  result = qword_1EE288BB0;
  if (!qword_1EE288BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B878, &qword_1E42DB4D0);
    sub_1E3ECF58C();
    sub_1E3ECF6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BB0);
  }

  return result;
}

unint64_t sub_1E3ECF58C()
{
  result = qword_1EE288E90;
  if (!qword_1EE288E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B880, &qword_1E42DB4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B760, &qword_1E42DB3A8);
    sub_1E3ECDF10();
    swift_getOpaqueTypeConformance2();
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B348, &qword_1E42A0210);
    sub_1E37ADF68(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E37532B0(OpaqueTypeConformance2, v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E90);
  }

  return result;
}

unint64_t sub_1E3ECF6D8()
{
  result = qword_1EE288E98;
  if (!qword_1EE288E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B888, &qword_1E42DB4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7A0, &qword_1E42DB3E8);
    sub_1E3ECE414();
    swift_getOpaqueTypeConformance2();
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    sub_1E3D5D058(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E37532B0(OpaqueTypeConformance2, v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E98);
  }

  return result;
}

unint64_t sub_1E3ECF830()
{
  result = qword_1EE288BB8;
  if (!qword_1EE288BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B890, &qword_1E42DB4E8);
    sub_1E3ECF6D8();
    sub_1E3ECF8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BB8);
  }

  return result;
}

unint64_t sub_1E3ECF8BC()
{
  result = qword_1EE288EA8;
  if (!qword_1EE288EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B898, &qword_1E42DB4F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B7E0, &qword_1E42DB428);
    sub_1E3ECE924();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    v3 = sub_1E3ECD8D4();
    sub_1E37532B0(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EA8);
  }

  return result;
}

unint64_t sub_1E3ECF9DC()
{
  result = qword_1EE288B40;
  if (!qword_1EE288B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B8A0, &qword_1E42DB4F8);
    sub_1E3ECEE2C(&qword_1EE288CE0, &unk_1ECF3B6F0, &unk_1E42DB338, sub_1E3ECEDFC);
    sub_1E3ECFA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B40);
  }

  return result;
}

unint64_t sub_1E3ECFA94()
{
  result = qword_1EE288E20;
  if (!qword_1EE288E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B8A8, &qword_1E42DB500);
    sub_1E3ECFB20();
    sub_1E3ECF58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E20);
  }

  return result;
}

unint64_t sub_1E3ECFB20()
{
  result = qword_1EE288710;
  if (!qword_1EE288710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B8B0, &qword_1E42DB508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B8B8, &qword_1E42DB510);
    sub_1E3ECFBE0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288710);
  }

  return result;
}

unint64_t sub_1E3ECFBE0()
{
  result = qword_1EE288EA0;
  if (!qword_1EE288EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B8B8, &qword_1E42DB510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B708, &qword_1E42DB350);
    sub_1E3ECDA00();
    swift_getOpaqueTypeConformance2();
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B700, &qword_1E42DB348);
    sub_1E3ECD9AC(v1, v2, v3);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E37532B0(OpaqueTypeConformance2, v4, v5);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EA0);
  }

  return result;
}

unint64_t sub_1E3ECFDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27EEF8;
  if (!qword_1EE27EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27EEF8);
  }

  return result;
}

unint64_t sub_1E3ECFDF8()
{
  result = qword_1ECF3B970;
  if (!qword_1ECF3B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B950, &qword_1E42DB638);
    sub_1E3ECFE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B970);
  }

  return result;
}

unint64_t sub_1E3ECFE7C()
{
  result = qword_1ECF3B978;
  if (!qword_1ECF3B978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B980, &qword_1E42DB658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6D8, &qword_1E42DB320);
    v1 = sub_1E4201CD4();
    sub_1E3D5D058(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1E4202054();
    sub_1E3ECF09C(&qword_1EE2889F0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B978);
  }

  return result;
}

unint64_t sub_1E3ED002C()
{
  result = qword_1ECF3B9E0;
  if (!qword_1ECF3B9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B9C0, &qword_1E42DB698);
    sub_1E3ED00B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B9E0);
  }

  return result;
}

unint64_t sub_1E3ED00B0()
{
  result = qword_1ECF3B9E8;
  if (!qword_1ECF3B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B9F0, &qword_1E42DB6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B6E8, &qword_1E42DB330);
    sub_1E4201CD4();
    sub_1E3ECD8D4();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1E4202054();
    sub_1E3ECF09C(&qword_1EE2889F0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B9E8);
  }

  return result;
}

unint64_t sub_1E3ED0228()
{
  result = qword_1ECF3BA50;
  if (!qword_1ECF3BA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BA30, &qword_1E42DB6F8);
    sub_1E3ED02AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BA50);
  }

  return result;
}

unint64_t sub_1E3ED02AC()
{
  result = qword_1ECF3BA58;
  if (!qword_1ECF3BA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BA60, &qword_1E42DB718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B700, &qword_1E42DB348);
    v1 = sub_1E4201CD4();
    sub_1E3ECD9AC(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1E4202054();
    sub_1E3ECF09C(&qword_1EE2889F0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BA58);
  }

  return result;
}

unint64_t sub_1E3ED045C()
{
  result = qword_1ECF3BAC0;
  if (!qword_1ECF3BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BAA0, &qword_1E42DB758);
    sub_1E3ED04E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BAC0);
  }

  return result;
}

unint64_t sub_1E3ED04E0()
{
  result = qword_1ECF3BAC8;
  if (!qword_1ECF3BAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BAD0, &qword_1E42DB778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B348, &qword_1E42A0210);
    v1 = sub_1E4201CD4();
    sub_1E37ADF68(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3ECF09C(&qword_1EE289290, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1E4202054();
    sub_1E3ECF09C(&qword_1EE2889F0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BAC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_43()
{

  return sub_1E4202D94();
}

uint64_t OUTLINED_FUNCTION_62_32()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_69_27()
{

  return sub_1E4203054();
}

uint64_t OUTLINED_FUNCTION_70_26()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_79_24()
{

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_82_19()
{

  return sub_1E39B95A0(v0);
}

uint64_t OUTLINED_FUNCTION_86_16()
{

  return sub_1E4201F44();
}

double OUTLINED_FUNCTION_89_15()
{
  result = 0.0;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 0u;
  *(v0 + 528) = 0u;
  *(v0 + 544) = 2;
  *(v0 + 552) = 0;
  v3 = v1 - 232;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v1 - 232) = 1;
  *(v1 - 192) = 0;
  *(v0 + 880) = 0;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_20()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_103_11()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_110_11(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_111_9(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_112_14(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_130_14()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_139_9()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_142_10()
{
  v5 = *(v3 - 256);

  return sub_1E3743538(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_146_8()
{
  v5 = *(v3 - 256);

  return sub_1E3743538(v2, v5, v0, v1);
}

uint64_t OUTLINED_FUNCTION_147_6()
{

  return swift_storeEnumTagMultiPayload();
}

__n128 OUTLINED_FUNCTION_150_6()
{
  v2 = *(v1 - 216);
  *(v0 + 464) = *(v1 - 232);
  *(v0 + 480) = v2;
  *(v0 + 496) = *(v1 - 200);
  result = *(v1 - 191);
  *(v0 + 505) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_157_8()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_158_8(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_173_3()
{

  return sub_1E4202D94();
}

uint64_t OUTLINED_FUNCTION_175_3()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_176_6(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_177_4(uint64_t a1)
{

  return sub_1E41FE614();
}

uint64_t OUTLINED_FUNCTION_179_3()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_181_3()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_182_4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 176) = a1;
  *(v2 - 136) = a2;

  return sub_1E4201CD4();
}

uint64_t OUTLINED_FUNCTION_183_5()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_191_4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  *&result = sub_1E383C8FC(a1, a2, a3, a4, a5, 0, 1, a6, a7, v8).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_194_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v4 - 120) = v2;
  *(v4 - 112) = a2;
  *(v4 - 104) = v3;
  *(v4 - 96) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_198_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_200_3()
{
}

uint64_t OUTLINED_FUNCTION_201_3()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_202_2()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_228_0(uint64_t a1)
{

  return sub_1E42037A4();
}

uint64_t OUTLINED_FUNCTION_229_1(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_230_1(uint64_t a1)
{

  return sub_1E41FE614();
}

uint64_t OUTLINED_FUNCTION_231_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_233_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_238_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;

  return sub_1E4202054();
}

unint64_t OUTLINED_FUNCTION_239_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 120) = a1;
  *(v3 - 121) = 1;

  return sub_1E3751D5C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_240_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_241_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_242_0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_266()
{

  return sub_1E3743538(v3 - 136, v0 + 576, v1, v2);
}

uint64_t OUTLINED_FUNCTION_270_0()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_271_0()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_273_0(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_276(uint64_t a1, uint64_t a2)
{

  return swift_getOpaqueTypeConformance2();
}

void sub_1E3ED0F1C()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();
  v2 = [v1 visibleCells];

  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v3 = sub_1E42062B4();

  v4 = sub_1E32AE9B0(v3);
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    swift_getObjectType();
    v8 = OUTLINED_FUNCTION_31_7();
    if (dynamic_cast_existential_1_conditional(v8, v9, &protocol descriptor for TabBarChildControllerSupporting))
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      OUTLINED_FUNCTION_12_5();
      v14 = (*(v13 + 1496))();
      (*(v11 + 8))(v14 & 1, ObjectType, v11);
    }
  }
}

uint64_t sub_1E3ED10FC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours, v3);
  return *(v0 + v1);
}

void sub_1E3ED1138(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours, v4);
  *(v1 + v3) = a1;
  sub_1E3ED0F1C();
}

void (*sub_1E3ED1184(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3ED11E8;
}

void sub_1E3ED11E8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3ED0F1C();
  }
}

id sub_1E3ED121C(id result, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle];
  v4 = *&v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle];
  v5 = v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle + 8];
  *v3 = result;
  v3[8] = a2 & 1;
  if (v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle + 8])
  {
    if (v5)
    {
      return result;
    }

    return [v2 setNeedsStatusBarAppearanceUpdate];
  }

  if (*&v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle] != v4)
  {
    v5 = 1;
  }

  if (v5)
  {
    return [v2 setNeedsStatusBarAppearanceUpdate];
  }

  return result;
}

void sub_1E3ED1274(void *a1)
{
  v8 = *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView];
  *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView] = a1;
  v2 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView];
  v4 = a1;
  if (!v3)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_6:
    [v8 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 == v8)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = v3;
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview_];

LABEL_9:
}

uint64_t sub_1E3ED13A4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_pagePerformanceProvider;
  OUTLINED_FUNCTION_3_0(v4, v6);
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3ED1404(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_pagePerformanceProvider;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

unint64_t sub_1E3ED148C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD00000000000001ALL;
    *v1 = 0xD00000000000001ALL;
    v1[1] = 0x80000001E4288550;
  }

  return v2;
}

void sub_1E3ED156C(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(OUTLINED_FUNCTION_11_5());
  v4 = OUTLINED_FUNCTION_38();
  sub_1E3ED15A8(v4, a2);
}

void sub_1E3ED15A8(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours] = 0;
  OUTLINED_FUNCTION_62_33();
  v4 = objc_opt_self();
  v5 = &selRef_collectionViewCanBecomeFocused_;
  OUTLINED_FUNCTION_20_108([v4 defaultCenter]);
  *&v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_pagePerformanceProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController____lazy_storage___logPrefix];
  *v6 = 0;
  v6[1] = 0;

  sub_1E41C9E78();
  OUTLINED_FUNCTION_106();
  v7 = type metadata accessor for CollectionImpressionManager();
  v8 = v2;
  v46 = v7;
  v47 = &off_1F5D8D100;
  v45[0] = sub_1E3F0AE3C();
  sub_1E41C8454(v45);

  LOBYTE(v44[0]) = 24;
  v9 = *(*a1 + 776);

  v9(v45, v44, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v46)
  {
    if (swift_dynamicCast())
    {
      v10 = v44[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E325F748(v45, &unk_1ECF296E0, &unk_1E4298030);
  }

  v10 = 0;
LABEL_6:
  v11 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours;
  OUTLINED_FUNCTION_3_0(&v8[OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours], v44);
  v8[v11] = v10;
  LOBYTE(v42) = 25;
  v9(v45, &v42, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v46)
  {
    if (swift_dynamicCast())
    {
      v12 = v42;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E325F748(v45, &unk_1ECF296E0, &unk_1E4298030);
  }

  v12 = 0;
LABEL_11:
  v8[OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildContentInsets] = v12;
  v46 = &unk_1F5D5DAC8;
  v47 = &off_1F5D5C998;
  LOBYTE(v45[0]) = 5;
  v13 = sub_1E39C29A4(v45);
  v15 = v14;
  v16 = __swift_destroy_boxed_opaque_existential_1(v45);
  if (!v15)
  {

LABEL_40:
    sub_1E3ED1B1C();
    v38 = v37;
    *&v8[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewModel] = v37;

    if (v38)
    {

      v39 = [v4 v5[372]];
      [v39 addObserver:v8 selector:sel_willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    }

    return;
  }

  v41 = v8;
  v45[0] = v13;
  v45[1] = v15;
  sub_1E37614CC(v16, v17, v18);
  sub_1E38D2480(MEMORY[0x1E69E6158], &v42);

  v20 = v43;
  if (!v43)
  {

LABEL_31:
    v8 = v41;
    goto LABEL_40;
  }

  v40 = v4;
  v21 = v42;
  v22 = (*(*a1 + 464))(v19);

  if (!v22)
  {

    v4 = v40;
    v5 = &selRef_collectionViewCanBecomeFocused_;
    goto LABEL_31;
  }

  v23 = sub_1E32AE9B0(v22);
  for (i = 0; ; ++i)
  {
    if (v23 == i)
    {

      v4 = v40;
      goto LABEL_38;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v22);
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v46 = &unk_1F5D5DAC8;
    v47 = &off_1F5D5C998;
    LOBYTE(v45[0]) = 3;
    v25 = sub_1E39C29A4(v45);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (!v27)
    {
      goto LABEL_26;
    }

    if (v25 == v21 && v27 == v20)
    {

LABEL_34:

      type metadata accessor for CollectionViewModel();
      v4 = v40;
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_26_0();
        v31 = *(v30 + 1472);

        v33 = v31(v32);
        v35 = v34;

        if ((v35 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

LABEL_38:
      v33 = 0;
LABEL_39:
      v36 = &v41[OBJC_IVAR____TtC8VideosUI23StackTemplateController_autohighlightDetails];
      *v36 = v21;
      *(v36 + 1) = v20;
      v8 = v41;
      *(v36 + 2) = v33;

      v5 = &selRef_collectionViewCanBecomeFocused_;
      goto LABEL_40;
    }

    v29 = sub_1E42079A4();

    if (v29)
    {
      goto LABEL_34;
    }

LABEL_26:
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1E3ED1B1C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_26_3();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + 0x230);
  v4 = v3();
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = (*(*v4 + 552))(v4);

  if (!v5)
  {
    goto LABEL_14;
  }

  v28 = &unk_1F5D7C138;
  v29 = &off_1F5D7BC98;
  LOBYTE(v27) = 0;
  sub_1E3F9F164(&v27, v5, MEMORY[0x1E69E7CA0] + 8);

  if (!v30[3])
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    v16 = v30;
LABEL_13:
    sub_1E325F748(v16, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1(&v27);
  sub_1E384EE08(136);
  sub_1E3277E60(v7, v8, v26, &v27);

  if (!v28)
  {
    v16 = &v27;
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v9 = v30[0];
    sub_1E384EE08(136);
    v28 = v6;
    *&v27 = v9;
    v10 = v3();
    v11 = OUTLINED_FUNCTION_24_4();
    v14 = sub_1E3A7CD30(v11, v12, v13, v10);

    __swift_destroy_boxed_opaque_existential_1(&v27);
    if (v14)
    {
      type metadata accessor for UnifiedMessagingAccountMessageViewModel();
      OUTLINED_FUNCTION_20_2();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
      }
    }

    else
    {
      v15 = 0;
    }

    sub_1E324FBDC();
    v17 = OUTLINED_FUNCTION_48_44();
    v18(v17);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      *v21 = 0;
      _os_log_impl(&dword_1E323F000, v19, v20, "StackTemplateController:: account message: have view model", v21, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v22 = OUTLINED_FUNCTION_74();
    v23(v22);
    if (v15)
    {
      v24 = *(*v15 + 880);

      v25 = v0;
      v24(v0, &off_1F5D8BC98);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ED1EC4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildControllerBehaviours) = 0;
  OUTLINED_FUNCTION_62_33();
  v1 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_20_108(v1);
  *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_pagePerformanceProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController____lazy_storage___logPrefix);
  *v2 = 0;
  v2[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3ED1FBC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for StackTemplateController(0);
  v26.receiver = v0;
  v26.super_class = v5;
  objc_msgSendSuper2(&v26, sel_vui_viewDidLoad);
  OUTLINED_FUNCTION_26_3();
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v7) + 0x320))();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E328FCF4(&qword_1EE28A110, &qword_1ECF35A30, &qword_1E429F570);
  v8 = sub_1E4200844();

  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_showcasePercentageObserver] = v8;

  OUTLINED_FUNCTION_36_3();
  (*((*v6 & v11) + 0x7D0))(0, 0);
  if ([objc_opt_self() isRemoteApp])
  {
    goto LABEL_4;
  }

  v12 = [objc_opt_self() defaultLocationManager];
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v25[4] = sub_1E3EDF258;
    v25[5] = v14;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 1107296256;
    v25[2] = sub_1E39EBA28;
    v25[3] = &block_descriptor_130;
    v15 = _Block_copy(v25);
    v16 = v1;

    v17 = OUTLINED_FUNCTION_121();
    [v17 v18];
    _Block_release(v15);

LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
    OUTLINED_FUNCTION_10_9();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E4297BE0;
    v20 = sub_1E41FFEA4();
    v21 = MEMORY[0x1E69DC0F8];
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
    sub_1E4206944();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_10_9();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E4297BE0;
    v23 = sub_1E42001D4();
    v24 = MEMORY[0x1E69DC2B0];
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4206944();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1E3ED23E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3EDFA48(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

void sub_1E3ED2490()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  if (sub_1E39DFFC8())
  {
    return;
  }

  v3 = [v0 parentViewController];
  if (v3)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_1E41FE2C4();
  }

  v5 = [v0 parentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationItem];
  }

  else
  {
    v7 = 0;
  }

  if (sub_1E3EDAFF8())
  {
    if (v7)
    {
      v8 = v7;
      v9 = 1;
LABEL_17:
      sub_1E3B61DA4(v9);
LABEL_18:
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    (*(v10 + 440))();
    OUTLINED_FUNCTION_133_9();
    v11 = sub_1E41FE7E4();
    v12 = OUTLINED_FUNCTION_53();
    v14 = v13(v12);
    v8 = OUTLINED_FUNCTION_137_8(v14, sel_cellForItemAtIndexPath_);

    if (v8)
    {
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v8, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell))
      {
        v17 = v16;
        swift_getObjectType();
        if ((*(*(v17 + 8) + 40))())
        {
          v18 = OUTLINED_FUNCTION_146();
          if (v19(v18) <= 0.0)
          {
            if (v7)
            {
              v22 = v7;
              sub_1E3B61DA4(0);
            }

            goto LABEL_18;
          }
        }
      }
    }

    if (v7)
    {
      v8 = v7;
      v9 = 2;
      goto LABEL_17;
    }
  }

  v20 = [v0 parentViewController];
  if (v20)
  {
    v21 = v20;
    swift_getKeyPath();
    sub_1E41FE2D4();
  }
}

void sub_1E3ED27A0(uint64_t a1, char a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_supportsTabBarChildContentInsets) & 1) == 0 && (a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    if ((*(v3 + 560))())
    {
      OUTLINED_FUNCTION_26_0();
      v6 = v5;
      (*(v4 + 392))();
      OUTLINED_FUNCTION_38();

      if (v6)
      {
        OUTLINED_FUNCTION_8();
        (*(v7 + 176))(v14);

        if ((v15 & 1) == 0)
        {
          v9 = *&v14[2];
          v8 = *&v14[3];
          v11 = *v14;
          v10 = *&v14[1];
          OUTLINED_FUNCTION_12_5();
          v13 = (*(v12 + 440))();
          [v13 setContentInset_];
        }
      }
    }
  }
}

void sub_1E3ED292C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v26.receiver = v0;
  v26.super_class = type metadata accessor for StackTemplateController(0);
  objc_msgSendSuper2(&v26, sel_vui_viewWillAppear_, v2 & 1);
  v4 = *&v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, &v25);
    if ((*(v4 + v5) & 1) == 0)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v6 = OUTLINED_FUNCTION_121();
      v7(v6);
      v8 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v10);
        OUTLINED_FUNCTION_12_17();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      v16 = OUTLINED_FUNCTION_57();
      v17(v16);
    }
  }

  sub_1E3ED2BC4();
  OUTLINED_FUNCTION_12_5();
  if (!(*(v18 + 560))())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_26_0();
  v20 = (*(v19 + 464))();
  if (!v20)
  {
LABEL_19:

LABEL_20:
    sub_1E3ED2490();
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v21 = v20;
  v22 = sub_1E32AE9B0(v20);
  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      goto LABEL_19;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v21);
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v24 = type metadata accessor for UnifiedMessagingBannerViewModel();
    if (OUTLINED_FUNCTION_109_8(v24))
    {
      OUTLINED_FUNCTION_176_0();
      sub_1E404FB84();

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1E3ED2BC4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v181 = v4;
  v182 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v6 - v5);
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v179 = v8;
  v180 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v175 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v174 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v15 - v14);
  v183 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v177 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v172 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20(&v165 - v21);
  v22 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v187 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v29);
  v184 = &v165 - v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v170 = &v165 - v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v165 - v35;
  v37 = sub_1E324FBDC();
  v38 = *(v24 + 16);
  v188 = v37;
  v189 = v38;
  v190 = (v24 + 16);
  (v38)(v36);
  v39 = v0;
  v40 = sub_1E41FFC94();
  v41 = sub_1E4206814();

  v42 = os_log_type_enabled(v40, v41);
  v171 = v1;
  v185 = v2;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v186 = v39;
    v44 = v43;
    v191[0] = OUTLINED_FUNCTION_100();
    *v44 = 136315394;
    v45 = sub_1E3ED148C();
    v47 = v24;
    v48 = v11;
    v49 = v22;
    v50 = OUTLINED_FUNCTION_135_5(v45, v46);

    *(v44 + 4) = v50;
    v22 = v49;
    v11 = v48;
    v24 = v47;
    *(v44 + 12) = 1024;
    *(v44 + 14) = 0;
    _os_log_impl(&dword_1E323F000, v40, v41, "%s presentAccountMessageIfPossible: fromForegrounding:%{BOOL}d", v44, 0x12u);
    OUTLINED_FUNCTION_136_5();
    OUTLINED_FUNCTION_6_0();
    v39 = v186;
    OUTLINED_FUNCTION_6_0();

    v51 = v47;
  }

  else
  {

    v51 = v24;
  }

  v52 = *(v51 + 8);
  v52(v36, v22);
  v53 = *&v39[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController];
  if (!v53 || (v54 = *&v39[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewModel]) == 0)
  {
    v70 = v187;
    v189(v187, v188, v22);
    v71 = v39;
    v72 = sub_1E41FFC94();
    v73 = sub_1E4206814();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_6_21();
      v75 = OUTLINED_FUNCTION_100();
      v191[0] = v75;
      *v74 = 136315138;
      v76 = sub_1E3ED148C();
      OUTLINED_FUNCTION_135_5(v76, v77);
      OUTLINED_FUNCTION_176_0();
      *(v74 + 4) = v71;
      _os_log_impl(&dword_1E323F000, v72, v73, "%s presentAccountMessageIfPossible: accountMessageVC or VM is nil, ignore", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();

      v68 = OUTLINED_FUNCTION_139_0();
      goto LABEL_33;
    }

    v68 = v70;
LABEL_32:
    v69 = v22;
    goto LABEL_33;
  }

  v55 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
  OUTLINED_FUNCTION_3_0(v53 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, &v196);
  if (*(v53 + v55))
  {
    v56 = v185;
    v189(v185, v188, v22);
    v57 = v39;

    v58 = v53;
    v59 = sub_1E41FFC94();
    v60 = sub_1E4206814();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = OUTLINED_FUNCTION_6_21();
      v62 = OUTLINED_FUNCTION_100();
      v169 = v22;
      v63 = v62;
      v191[0] = v62;
      *v61 = 136315138;
      v64 = sub_1E3ED148C();
      OUTLINED_FUNCTION_135_5(v64, v65);
      OUTLINED_FUNCTION_65_31();

      *(v61 + 4) = v57;
      OUTLINED_FUNCTION_134_7(&dword_1E323F000, v66, v67, "%s presentAccountMessageIfPossible: accountMessageVC isPresented=true, ignore");
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_21_0();

      v68 = v185;
      v69 = v169;
LABEL_33:
      v52(v68, v69);
LABEL_34:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v68 = v56;
    goto LABEL_32;
  }

  v166 = v55;
  v169 = v22;
  v78 = v39;
  v79 = objc_opt_self();

  v185 = v53;
  v80 = [v79 sharedInstance];
  LODWORD(v187) = [v80 isPlaybackUIBeingShown];

  v81 = *(*v54 + 952);

  v83 = v78;
  v167 = v81(v82);

  v84 = [v78 presentedViewController];
  v168 = v24;
  if (v84)
  {
  }

  else
  {
    v85 = [objc_opt_self() sharedInstance];
    v86 = [v85 isPurchaseInProgress];

    v83 = v78;
    if (!v86)
    {
      OUTLINED_FUNCTION_116_11();
      if (v118)
      {
LABEL_21:
        v91 = 0;
LABEL_28:
        v119 = v184;
        v22 = v169;
        v189(v184, v188, v169);
        v120 = v83;
        v121 = sub_1E41FFC94();
        v122 = sub_1E4206814();
        if (OUTLINED_FUNCTION_6_33(v122))
        {
          v123 = swift_slowAlloc();
          *v123 = 67109888;
          *(v123 + 4) = v187;
          *(v123 + 8) = 1024;
          *(v123 + 10) = v167 & 1;
          *(v123 + 14) = 1024;
          *(v123 + 16) = v91;
          *(v123 + 20) = 1024;
          *(v123 + 22) = v120[OBJC_IVAR____TtC8VideosUI23StackTemplateController_waitingForPresentationDismissal];

          OUTLINED_FUNCTION_66_0();
          _os_log_impl(v124, v125, v126, v127, v123, 0x1Au);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {

          v121 = v185;
        }

        OUTLINED_FUNCTION_80_19();
        v68 = v119;
        goto LABEL_32;
      }

      goto LABEL_26;
    }
  }

  v87 = [v83 vuiView];
  if (!v87)
  {
    __break(1u);
    goto LABEL_55;
  }

  v88 = v87;
  v89 = [v87 window];

  if (v89)
  {

    v90 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_waitingForPresentationDismissal;
    if (v78[OBJC_IVAR____TtC8VideosUI23StackTemplateController_waitingForPresentationDismissal])
    {
      v83 = v78;
      v91 = 1;
    }

    else
    {
      v165 = v54;
      v93 = v171;
      v189(v171, v188, v169);
      v94 = sub_1E41FFC94();
      v95 = sub_1E4206814();
      if (OUTLINED_FUNCTION_6_33(v95))
      {
        v96 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_37_7(v96);
        OUTLINED_FUNCTION_66_0();
        _os_log_impl(v97, v98, v99, v100, &selRef_setWaitingForTransactionToStart_, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v52(v93, v169);
      v78[v90] = 1;
      v186 = v78;
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v171 = sub_1E4206A04();
      v101 = v172;
      sub_1E4204004();
      v102 = v173;
      *v173 = 5;
      (*(v174 + 104))(v102, *MEMORY[0x1E69E7F48], v175);
      v103 = v176;
      v104 = OUTLINED_FUNCTION_74();
      MEMORY[0x1E690E9C0](v104);
      v105 = OUTLINED_FUNCTION_13_8();
      v106(v105);
      v177 = *(v177 + 8);
      (v177)(v101, v183);
      OUTLINED_FUNCTION_4_0();
      v107 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v194 = sub_1E3EDFCC0;
      v195 = v107;
      OUTLINED_FUNCTION_96_1();
      OUTLINED_FUNCTION_30_75(COERCE_DOUBLE(1107296256));
      v192 = v108;
      v193 = &block_descriptor_115_1;
      v109 = _Block_copy(v191);

      sub_1E4203FE4();
      v191[0] = MEMORY[0x1E69E7CC0];
      sub_1E37E7A8C();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      OUTLINED_FUNCTION_47();
      v113 = sub_1E328FCF4(v111, v112, &qword_1E429B000);
      v114 = v178;
      v115 = v110;
      v91 = 1;
      OUTLINED_FUNCTION_132_11(v191, v115, v113);
      v116 = v171;
      MEMORY[0x1E69112E0](v103, v11, v114, v109);
      v117 = v109;
      v83 = v186;
      _Block_release(v117);

      (*(v181 + 8))(v114, &qword_1E429B000);
      (*(v179 + 8))(v11, v180);
      (v177)(v103, v183);
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_116_11();
  v83 = v78;
  if (v92)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (v83[OBJC_IVAR____TtC8VideosUI23StackTemplateController_waitingForPresentationDismissal])
  {
    v91 = 0;
    LODWORD(v187) = 0;
    goto LABEL_28;
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3EDDBC4();

    goto LABEL_34;
  }

  v128 = v169;
  v189(v170, v188, v169);
  v129 = v83;
  v130 = sub_1E41FFC94();
  v131 = sub_1E4206814();

  v132 = os_log_type_enabled(v130, v131);
  v165 = v54;
  if (v132)
  {
    v133 = OUTLINED_FUNCTION_6_21();
    v190 = OUTLINED_FUNCTION_100();
    v191[0] = v190;
    *v133 = 136315138;
    v134 = sub_1E3ED148C();
    OUTLINED_FUNCTION_135_5(v134, v135);
    OUTLINED_FUNCTION_176_0();
    *(v133 + 4) = v11;
    OUTLINED_FUNCTION_134_7(&dword_1E323F000, v136, v137, "%s presentAccountMessageIfPossible: adding palette");
    __swift_destroy_boxed_opaque_existential_1(v190);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    OUTLINED_FUNCTION_80_19();
    v138 = v170;
    v139 = v169;
  }

  else
  {

    OUTLINED_FUNCTION_80_19();
    v138 = v170;
    v139 = v128;
  }

  v52(v138, v139);
  v140 = [v129 vuiParentViewController];
  v141 = v140;
  if (!v140)
  {
    v142 = *&v129[OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController];
    if (!v142)
    {
      v141 = 0;
LABEL_52:
      *(v53 + v166) = 1;
      sub_1E3EDE75C();
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v155 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v156 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v194 = sub_1E3EDFC10;
      v195 = v156;
      OUTLINED_FUNCTION_96_1();
      OUTLINED_FUNCTION_30_75(COERCE_DOUBLE(1107296256));
      v192 = v157;
      v193 = &block_descriptor_111_1;
      v158 = _Block_copy(v191);

      sub_1E4203FE4();
      v191[0] = MEMORY[0x1E69E7CC0];
      sub_1E37E7A8C();
      v159 = v11;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      OUTLINED_FUNCTION_47();
      v163 = sub_1E328FCF4(v161, v162, &qword_1E429B000);
      v164 = v178;
      OUTLINED_FUNCTION_132_11(v191, v160, v163);
      MEMORY[0x1E6911380](0, v159, v164, v158);
      _Block_release(v158);

      (*(v181 + 8))(v164, &qword_1E429B000);
      (*(v179 + 8))(v159, v180);
      goto LABEL_34;
    }

    v141 = v142;
  }

  v143 = v140;
  v144 = [v141 navigationItem];

  v145 = [v185 vuiView];
  if (v145)
  {
    v146 = v145;
    v147 = [v144 _topPalette];
    if (!v147 || (v148 = v147, type metadata accessor for MessageHeaderView(), OUTLINED_FUNCTION_20_2(), v149 = swift_dynamicCastClass(), v148, !v149))
    {
      v150 = [objc_allocWithZone(type metadata accessor for MessageHeaderView()) init];
      [v144 _setTopPalette_];
    }

    v151 = [v144 _topPalette];
    if (v151)
    {
      v152 = v151;
      v153 = type metadata accessor for MessageHeaderView();
      if (OUTLINED_FUNCTION_109_8(v153))
      {
        v154 = v146;
        sub_1E3EDEE44(v146);
      }
    }

    goto LABEL_52;
  }

LABEL_55:
  __break(1u);
}

id sub_1E3ED3BD4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for StackTemplateController(0);
  result = objc_msgSendSuper2(&v4, sel_vui_viewWillDisappear_, a1 & 1);
  *(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_viewIsVisibleForAccountMessage) = 0;
  return result;
}

uint64_t sub_1E3ED3C70(char a1)
{
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v33.receiver = v1;
  v33.super_class = type metadata accessor for StackTemplateController(0);
  objc_msgSendSuper2(&v33, sel_vui_viewDidAppear_, a1 & 1);
  v5 = *&v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController];
  if (v5)
  {
    v6 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_5_0(v5 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, v32);
    if ((*(v5 + v6) & 1) == 0)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v7 = OUTLINED_FUNCTION_121();
      v8(v7);
      v9 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v11);
        OUTLINED_FUNCTION_12_17();
        _os_log_impl(v12, v13, v14, v15, v16, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      v17 = OUTLINED_FUNCTION_57();
      v18(v17);
    }
  }

  v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_viewIsVisibleForAccountMessage] = 1;
  sub_1E3ED2BC4();
  v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_pastFirstViewDidAppear] = 1;
  v19 = sub_1E39DFFC8();
  v20 = MEMORY[0x1E69E7D40];
  if ((v19 & 1) == 0)
  {
    v21 = [v1 parentViewController];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 navigationItem];

      v24 = [v23 titleView];
      if (v24)
      {
        type metadata accessor for UberNavigationBarTitleView();
        OUTLINED_FUNCTION_40_3();
        if (swift_dynamicCastClass())
        {
          v25 = [v2 vuiView];
          OUTLINED_FUNCTION_26_3();
          (*((*v20 & v26) + 0x178))();
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_5();
  result = (*(v27 + 1952))();
  if (result)
  {
    v30 = v29;
    ObjectType = swift_getObjectType();
    (*(v30 + 8))(ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3ED3F84(char a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for StackTemplateController(0);
  objc_msgSendSuper2(&v17, sel_vui_viewDidDisappear_, a1 & 1);
  OUTLINED_FUNCTION_36_3();
  if ((*((*MEMORY[0x1E69E7D40] & v4) + 0x7A0))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v8 = [v2 parentViewController];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 navigationItem];

      v11 = [v10 titleView];
      if (v11)
      {
        type metadata accessor for UberNavigationBarTitleView();
        OUTLINED_FUNCTION_40_3();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_71();
          OUTLINED_FUNCTION_64();
          v13 = (*(v12 + 368))();
          v14 = [v2 vuiView];
          v15 = v14;
          if (v13)
          {
            if (!v14)
            {

              goto LABEL_15;
            }

            if (v15 == v13)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (!v14)
            {
LABEL_13:
              OUTLINED_FUNCTION_21();
              (*(v16 + 376))(0);
              goto LABEL_15;
            }
          }
        }

LABEL_15:
      }
    }
  }

  OUTLINED_FUNCTION_200();
}

void sub_1E3ED41D0()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v102 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v104.receiver = v0;
  v104.super_class = type metadata accessor for StackTemplateController(0);
  objc_msgSendSuper2(&v104, sel_vui_viewDidLayoutSubviews);
  MEMORY[0x1E6909190](0, 0);
  OUTLINED_FUNCTION_26_3();
  v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x1B8))();
  v101 = v7;
  v10 = sub_1E41FE7E4();
  v11 = OUTLINED_FUNCTION_137_8(v10, sel_vui_cellForItemAtIndexPath_);

  v12 = &selRef_dismissPresentedViewController;
  v13 = &selRef_processPendingChanges;
  v103 = v11;
  if (v11)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v11, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell))
    {
      v16 = v15;
      v17 = v2;
      v18 = swift_getObjectType();
      v19 = *(v16 + 8);
      v20 = *(v19 + 40);
      v21 = v11;
      if (v20(v18, v19))
      {
        OUTLINED_FUNCTION_146();
        sub_1E3ED4C54();

        v2 = v17;
        v13 = &selRef_processPendingChanges;
        v12 = &selRef_dismissPresentedViewController;
        goto LABEL_22;
      }

      v2 = v17;
      v13 = &selRef_processPendingChanges;
      v12 = &selRef_dismissPresentedViewController;
    }

    if (*(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_hasEnabledShowcasing) == 1)
    {
      sub_1E3ED5534();
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_hasEnabledShowcasing) == 1)
  {
    sub_1E3ED57BC();
  }

  OUTLINED_FUNCTION_4_154();
  if (!(*(v22 + 560))())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_26_0();
  v24 = (*(v23 + 464))();

  if (!v24)
  {
    goto LABEL_21;
  }

  if (!sub_1E32AE9B0(v24))
  {

LABEL_21:
    sub_1E3EDC828(1.0, 1.0);
    goto LABEL_22;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1E6911E60](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_69;
    }

    v25 = *(v24 + 32);
  }

  if ((sub_1E385054C(v25[49]) & 1) == 0)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_4_154();
  v26 += 55;
  v27 = *v26;
  v28 = (*v26)();
  v29 = [v28 visibleCells];

  sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  OUTLINED_FUNCTION_31_7();
  v30 = sub_1E42062B4();

  sub_1E32AE9B0(v30);
  OUTLINED_FUNCTION_176_0();
  if (v29 || (sub_1E373F6E0(v25[49], 135, v31, v32, v33, v34) & 1) != 0 && (v65 = type metadata accessor for UnifiedMessagingBannerViewModel(), OUTLINED_FUNCTION_109_8(v65)) && (, v66 = sub_1E3DFE1D8(), , (v66 & 1) == 0))
  {

    goto LABEL_22;
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v67 = [v1 navigationItem];
    [v67 setLargeTitleDisplayMode_];
  }

  v68 = OUTLINED_FUNCTION_1_36();
  sub_1E3EDC828(v68, v69);
  v70 = v25[49];
  LOBYTE(v71) = 1;
  if (v70 != 82 && v70 != 123)
  {
    if (v70 == 86)
    {
      v87 = [v1 traitCollection];
      v88 = [v87 isAXEnabled];

      LOBYTE(v71) = v88 ^ 1;
      goto LABEL_57;
    }

    if (v70 == 83)
    {
      v71 = (*(*v25 + 392))();
      if (!v71)
      {
        goto LABEL_57;
      }

      type metadata accessor for CanonicalBannerLayout();
      OUTLINED_FUNCTION_31_7();
      v72 = swift_dynamicCastClass();
      if (v72)
      {
        v73 = v72;
        v74 = (*(*v25 + 488))();
        if (v74)
        {
          v100 = v73;
          sub_1E373E010(35, v74, v75);
          OUTLINED_FUNCTION_34_3();

          type metadata accessor for CanonicalBannerViewCell();
          OUTLINED_FUNCTION_8();
          v77 = (*(v76 + 1912))();
          v78 = [v1 traitCollection];
          v79 = j__OUTLINED_FUNCTION_18() & 1;
          LOBYTE(v71) = sub_1E3D17C34(v77, v78, 1, v79);

          type metadata accessor for MediaShowcaseHostingView();

          v81 = sub_1E40037C8(v80);

          v83 = (v27)(v82);
          [v83 v12[440]];
          OUTLINED_FUNCTION_9_10();

          v107.origin.x = OUTLINED_FUNCTION_24_0();
          Width = CGRectGetWidth(v107);
          [v27() v12[440]];
          OUTLINED_FUNCTION_104_14();
          OUTLINED_FUNCTION_1_221();
          Height = CGRectGetHeight(v108);
          v86 = [v1 traitCollection];
          (*(*v100 + 2592))(Width, Height, v81);

          goto LABEL_57;
        }
      }
    }

    LOBYTE(v71) = 0;
  }

LABEL_57:
  v89 = v12;
  v90 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x808))();
  v91 = v90 == 0;
  if (v90)
  {

    if (v71)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if ((v71 & 1) == 0)
  {
LABEL_59:
    v91 = 0;
  }

LABEL_60:
  v92 = v27();
  [v92 v13[420]];
  v94 = v93;

  v95 = v27();
  [v95 contentInset];
  v97 = v96;

  if (v91 && (v98 = -v94, v97 != v98))
  {
    v99 = v27();
    [v99 contentInset];
    [v99 setContentInset_];
  }

  else
  {
  }

  v12 = v89;
LABEL_22:
  sub_1E3ED5804();
  v35 = *(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView);
  if (v35)
  {
    v36 = v35;
    v37 = OUTLINED_FUNCTION_138_9();
    if (!v37)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v38 = v37;
    v39 = [v37 window];

    if (v39)
    {
      v40 = [v39 windowScene];

      if (v40)
      {
        v41 = [v40 statusBarManager];

        if (v41)
        {
          [v41 statusBarFrame];
          OUTLINED_FUNCTION_3();

          v105.origin.x = OUTLINED_FUNCTION_6();
          CGRectGetHeight(v105);
        }
      }
    }

    v42 = v36;
    v43 = OUTLINED_FUNCTION_138_9();
    if (!v43)
    {
      goto LABEL_71;
    }

    v44 = v43;
    [v43 bounds];
    OUTLINED_FUNCTION_9_10();

    v106.origin.x = OUTLINED_FUNCTION_24_0();
    CGRectGetWidth(v106);
    v45 = OUTLINED_FUNCTION_1_36();
    [v42 v46];
  }

  v47 = *sub_1E3CD9D88();

  v48 = OUTLINED_FUNCTION_138_9();
  if (!v48)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v49 = v48;
  v50 = [v48 window];

  if (v50)
  {
    [v50 v12[440]];
    v52 = v51;
    v54 = v53;

    v55 = v52;
    v56 = v54;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  (*(*v47 + 192))(v55, v56, v50 == 0);

  v57 = [v1 vuiIsRTL];
  v58 = OUTLINED_FUNCTION_138_9();
  v59 = v58;
  if (v57)
  {
    if (v58)
    {
      [v58 v13[420]];
      v61 = v60;
LABEL_39:

      OUTLINED_FUNCTION_8();
      v64 = *(v63 + 280);

      v64(v61, 0);

      (*(v102 + 8))(v101, v2);
      OUTLINED_FUNCTION_20_0();
      return;
    }

    goto LABEL_72;
  }

  if (v58)
  {
    [v58 v13[420]];
    v61 = v62;
    goto LABEL_39;
  }

LABEL_73:
  __break(1u);
}

void sub_1E3ED4C54()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0;
  v4 = v3;
  v104 = v5;
  v108 = v6;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v100 - v12;
  OUTLINED_FUNCTION_26_3();
  v13 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & v14) + 0x808))();
  v16 = v15;
  if (v15)
  {
  }

  v106 = v16;
  v17 = v108;
  ObjectType = swift_getObjectType();
  [v17 vuiBounds];
  Width = CGRectGetWidth(v110);
  OUTLINED_FUNCTION_36_3();
  v21 = *((*v13 & v20) + 0x1B8);
  v103 = (*v13 & v20) + 440;
  v107 = v21;
  v22 = v21();
  [v22 vuiBounds];
  OUTLINED_FUNCTION_9_10();

  v111.origin.x = OUTLINED_FUNCTION_24_0();
  [v17 vui:Width sizeThatFits:CGRectGetHeight(v111)];
  v24 = v23;
  v25 = [objc_opt_self() isPhone];
  v105 = ObjectType;
  v102 = v4;
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = [v2 vuiView];
  if (!v26)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v27 = v26;
  v28 = [v26 window];

  if (v28 && (v29 = [v28 windowScene], v28, v29) && (v30 = objc_msgSend(v29, sel_interfaceOrientation), v29, UIDeviceOrientationIsLandscape(v30)))
  {
    v31 = sub_1E324FBDC();
    v32 = v9;
    v33 = *(v9 + 16);
    v34 = v101;
    v33(v101, v31, v7);
    v35 = v2;
    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_49_0();
      v109 = OUTLINED_FUNCTION_100();
      *v38 = 136315394;
      v39 = sub_1E3ED148C();
      v41 = OUTLINED_FUNCTION_97_4(v39, v40);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v24;
      _os_log_impl(&dword_1E323F000, v36, v37, "%s configurePageForShowcasing in landscape, ignoring; height = %f", v38, 0x16u);
      OUTLINED_FUNCTION_136_5();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v42 = (*(v32 + 8))(v34, v7);
    v43 = v108;
    v44 = v104;
  }

  else
  {
LABEL_11:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v45 = v7;
    v46(v1);
    v47 = v2;
    v48 = sub_1E41FFC94();
    v49 = sub_1E4206814();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_49_0();
      v100 = v1;
      v101 = v45;
      v51 = v9;
      v52 = v50;
      v53 = OUTLINED_FUNCTION_100();
      v109 = v53;
      *v52 = 136315394;
      v54 = sub_1E3ED148C();
      OUTLINED_FUNCTION_97_4(v54, v55);
      OUTLINED_FUNCTION_65_31();

      *(v52 + 4) = v13;
      *(v52 + 12) = 2048;
      *(v52 + 14) = v24;
      _os_log_impl(&dword_1E323F000, v48, v49, "%s configurePageForShowcasing showcaseHeight=%f", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v44 = v104;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();

      (*(v51 + 8))(v100, v101);
    }

    else
    {

      (*(v9 + 8))(v1, v45);
      v44 = v104;
    }

    OUTLINED_FUNCTION_12_5();
    v42 = (*(v56 + 904))(v24);
    v43 = v108;
  }

  v57 = (v107)(v42);
  [v57 contentInset];
  v59 = v58;

  v60 = OUTLINED_FUNCTION_88();
  sub_1E3ED7450(v60, v61);
  v63 = v62;
  v109 = v43;
  v64 = *(*(v44 + 8) + 8);
  v65 = OUTLINED_FUNCTION_139_0();
  if ((v64(v65) & 1) == 0 || v106 || v59 == v63)
  {
    v109 = v43;
    v70 = OUTLINED_FUNCTION_139_0();
    v71 = v64(v70);
    if (!v106 && (v71 & 1) == 0 && v59 == v63)
    {
      v69 = v107();
      [v69 contentInset];
      [v69 setContentInset_];
      goto LABEL_24;
    }
  }

  else
  {
    v66 = v107;
    v67 = v107();
    [v67 contentOffset];

    v68 = v66();
    [v68 contentInset];
    [v68 setContentInset_];

    if (v102)
    {
      v69 = v107();
      [v69 contentOffset];
      [v69 setContentOffset_];
LABEL_24:
    }
  }

  v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_hasEnabledShowcasing] = 1;
  v109 = v43;
  v73 = OUTLINED_FUNCTION_139_0();
  if ((v74(v73) & 1) == 0 || (v75 = [v2 navigationController]) == 0)
  {
    sub_1E3ED1274(0);
    goto LABEL_32;
  }

  v76 = v75;
  v77 = [v75 navigationBar];
  [v77 bounds];

  v78 = [v2 view];
  if (!v78)
  {
    goto LABEL_40;
  }

  v79 = v78;
  [v78 bounds];

  type metadata accessor for NavigationBarGradientView();
  v80 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView;
  v81 = *&v2[OBJC_IVAR____TtC8VideosUI23StackTemplateController_navBarGradientView];
  v82 = v81;
  OUTLINED_FUNCTION_1_36();
  v83 = sub_1E3A53950();

  v84 = v83;
  v85 = OUTLINED_FUNCTION_11_5();
  sub_1E3ED1274(v85);
  v86 = *&v2[v80];
  if (!v86)
  {

    goto LABEL_32;
  }

  v87 = v86;
  v88 = [v2 view];
  if (!v88)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v89 = v88;
  [v88 bringSubviewToFront_];

LABEL_32:
  OUTLINED_FUNCTION_12_5();
  v90 += 112;
  v91 = *v90;
  if ((*v90)() > 0.0)
  {
    OUTLINED_FUNCTION_12_5();
    v92 += 97;
    v93 = *v92;
    (*v92)();
    v94 = OUTLINED_FUNCTION_88();
    sub_1E3ED8964(v94, v95, v96);
    v97 = v93();
    sub_1E3EDA3B0(v97);
    v93();
    OUTLINED_FUNCTION_88();
    sub_1E3EDA560();
  }

  if ((sub_1E39DFFC8() & 1) != 0 && v91() > 0.0)
  {
    OUTLINED_FUNCTION_12_5();
    v98 += 97;
    v99 = *v98;
    (*v98)();
    OUTLINED_FUNCTION_88();
    sub_1E3ED9C30();
    v99();
    OUTLINED_FUNCTION_88();
    sub_1E3ED9E58();
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1E3ED5534()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_9();
  v3 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_hasEnabledShowcasing;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_hasEnabledShowcasing) == 1)
  {
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    v6 = (*(v5 + 2056))();
    if (v6)
    {
    }

    else
    {
      *(v0 + v3) = 0;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v7 = OUTLINED_FUNCTION_69_2();
      v8(v7);
      v9 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v11);
        OUTLINED_FUNCTION_51_42(&dword_1E323F000, v12, v3, "StackTemplateController: Showcasing is not enabled, revert collectionView.contentInset");
        OUTLINED_FUNCTION_21_0();
      }

      v13 = OUTLINED_FUNCTION_74();
      v14(v13);
      OUTLINED_FUNCTION_36_3();
      v16 = *((*v4 & v15) + 0x1B8);
      v17 = v16();
      [v17 contentInset];
      v19 = v18;

      if (v19 != 0.0)
      {
        v20 = v16();
        [v20 contentOffset];

        v21 = v16();
        [v21 contentInset];
        [v21 setContentInset_];

        v22 = v16();
        [v22 contentOffset];
        [v22 setContentOffset_];
      }
    }
  }
}

void sub_1E3ED57BC()
{
  OUTLINED_FUNCTION_44_53();
  sub_1E3ED9C30();
  OUTLINED_FUNCTION_44_53();
  sub_1E3ED9E58();
  sub_1E3EDA3B0(0.0);
  OUTLINED_FUNCTION_44_53();
  sub_1E3EDA560();
  v0 = OUTLINED_FUNCTION_44_53();

  sub_1E3ED8964(v0, v1, v2);
}

void sub_1E3ED5804()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v50 = v7 - v6;
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v49 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v48 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_317();
  v14 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v51 = v0;
  sub_1E3EDD30C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v14) == 1)
  {
    sub_1E325F748(v2, &qword_1ECF309A0, &qword_1E42A7870);
  }

  else
  {
    v45 = v8;
    v46 = v4;
    v47 = v1;
    v23 = *(v16 + 32);
    v23(v22, v2, v14);
    OUTLINED_FUNCTION_26_3();
    v25 = (*((*MEMORY[0x1E69E7D40] & v24) + 0x230))();
    v54 = &unk_1F5D5DAC8;
    v55 = &off_1F5D5C998;
    LOBYTE(v52[0]) = 7;
    type metadata accessor for TemplateViewModel(0);
    v26 = sub_1E39C3418(v52, 1, v25);

    __swift_destroy_boxed_opaque_existential_1(v52);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v42 = sub_1E4206A04();
    v43 = v22;
    v44 = v16;
    (*(v16 + 16))(&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v14);
    if (v26)
    {
      v27 = swift_allocObject();
      v28 = OUTLINED_FUNCTION_75_25(v27);
      (v23)(v28);
      OUTLINED_FUNCTION_27_81();
      OUTLINED_FUNCTION_32_73(COERCE_DOUBLE(1107296256));
      v53 = v29;
      v54 = &block_descriptor_107;
    }

    else
    {
      v35 = swift_allocObject();
      v36 = OUTLINED_FUNCTION_75_25(v35);
      (v23)(v36);
      OUTLINED_FUNCTION_27_81();
      OUTLINED_FUNCTION_32_73(COERCE_DOUBLE(1107296256));
      v53 = v37;
      v54 = &block_descriptor_101_0;
    }

    v30 = _Block_copy(v52);
    v31 = v22;

    v32 = v48;
    sub_1E4203FE4();
    v52[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v33, v34, &qword_1E429B000);
    OUTLINED_FUNCTION_114_10();
    sub_1E42072E4();
    v38 = v42;
    MEMORY[0x1E6911380](0, v32, v23, v30);
    _Block_release(v30);

    v39 = OUTLINED_FUNCTION_124();
    v40(v39);
    (*(v49 + 8))(v32, v45);
    (*(v44 + 8))(v43, v14);
    v41 = (v51 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_autohighlightDetails);
    v41[1] = 0;
    v41[2] = 0;
    *v41 = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ED5DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16();
  sub_1E41FE874();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_9();
  type metadata accessor for StackTemplateController(0);
  v4 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v5, v6, a1, v4);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v7) + 0x1B8))();
  v8 = OUTLINED_FUNCTION_12_143();
  MEMORY[0x1E6909190](v8);
  v9 = sub_1E41FE7E4();
  v10 = OUTLINED_FUNCTION_74();
  v11(v10);
  v12 = [v1 cellForItemAtIndexPath_];

  if (v12)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v12, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell))
    {
      swift_getObjectType();
      v14 = OUTLINED_FUNCTION_6_12();
      v15(a1, v14);
    }
  }
}

void sub_1E3ED5FD4()
{
  v2 = OUTLINED_FUNCTION_9_5();
  v13 = type metadata accessor for StackTemplateController(v2);
  v9 = OUTLINED_FUNCTION_111_10(v13, sel_vui_willMoveToParentViewController_, v3, v4, v5, v6, v7, v8, v1);
  objc_msgSendSuper2(v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController);
  *(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController) = v0;
  v12 = v0;
}

void sub_1E3ED609C()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v11 = type metadata accessor for StackTemplateController(v1);
  v8 = OUTLINED_FUNCTION_111_10(v11, sel_vui_didMoveToParentViewController_, v2, v3, v4, v5, v6, v7, v0);
  objc_msgSendSuper2(v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController);
  *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController) = 0;
}

id sub_1E3ED618C()
{
  if (v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle + 8] != 1)
  {
    return *&v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarStyle];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackTemplateController(0);
  return objc_msgSendSuper2(&v2, sel_preferredStatusBarStyle);
}

double sub_1E3ED61EC()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewModel;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewModel))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v4 = OUTLINED_FUNCTION_121();
    v5(v4);
    v6 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v8);
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v14 = OUTLINED_FUNCTION_57();
    v15(v14);
    if (*(v0 + v3))
    {
      OUTLINED_FUNCTION_8();
      v17 = *(v16 + 1000);

      v17(v18);
    }
  }

  return result;
}

void sub_1E3ED6400(uint64_t a1)
{
  sub_1E41CCFC8(a1);
  type metadata accessor for NavBarCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(176);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v2 = OUTLINED_FUNCTION_6_16();
  [v2 v3];

  type metadata accessor for SportsFavoriteBannerCell();
  swift_getObjCClassFromMetadata();
  sub_1E384EE08(195);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v4 = OUTLINED_FUNCTION_6_16();
  [v4 v5];

  type metadata accessor for ConnectedAppFooterViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E3859230(75);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v6 = OUTLINED_FUNCTION_6_16();
  [v6 v7];

  type metadata accessor for QueryDescriptionBannerViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E3859230(89);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v8 = OUTLINED_FUNCTION_6_16();
  [v8 v9];

  type metadata accessor for RoomBannerCollectionViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E3859230(84);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v10 = OUTLINED_FUNCTION_6_16();
  [v10 v11];

  type metadata accessor for ChannelBannerCollectionViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E3859230(82);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v12 = OUTLINED_FUNCTION_6_16();
  [v12 v13];

  type metadata accessor for FloatingCardHostingCollectionViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E3859230(181);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v14 = OUTLINED_FUNCTION_6_16();
  [v14 v15];

  type metadata accessor for OfferCardCollectionViewCell();
  swift_getObjCClassFromMetadata();
  sub_1E3859230(180);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_7_8();
  v16 = OUTLINED_FUNCTION_6_16();
  [v16 v17];

  if (TVAppFeature.isEnabled.getter(5, v18, v19))
  {
    type metadata accessor for VideoItunesExtrasDescriptionCell();
    swift_getObjCClassFromMetadata();
    sub_1E3859230(177);
    sub_1E4205ED4();

    v20 = OUTLINED_FUNCTION_6_16();
    [v20 v21];
    OUTLINED_FUNCTION_200();
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

void sub_1E3ED6648(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 98);
  if (sub_1E385053C() || (sub_1E373F6E0(v4, 75, v5, v6, v7, v8) & 1) != 0 || (sub_1E373F6E0(v4, 78, v9, v10, v11, v12) & 1) != 0)
  {
    OUTLINED_FUNCTION_53();
    sub_1E3AD9330();
    v14 = v13;
    sub_1E3790540(v26);
    v15 = *v26;
    v16 = *&v26[16];
    v17 = *&v26[32];
    v18 = *&v26[48];
    v19 = *&v26[64];
    v20 = *&v26[80];
    v21 = *&v26[96];
    v22 = *&v26[112];
    v23 = *&v26[128];
    v24 = *&v26[144];
    v25 = *&v26[160];
  }

  else
  {
    OUTLINED_FUNCTION_53();
    sub_1E41CCFD0();
    v14 = *v26;
    v15 = *&v26[8];
    v16 = *&v26[24];
    v17 = *&v26[40];
    v18 = *&v26[56];
    v19 = *&v26[72];
    v20 = *&v26[88];
    v21 = *&v26[104];
    v22 = *&v26[120];
    v23 = *&v26[136];
    v24 = *&v26[152];
    v25 = *&v26[168];
  }

  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  *(a3 + 56) = v18;
  *(a3 + 72) = v19;
  *(a3 + 88) = v20;
  *(a3 + 104) = v21;
  *(a3 + 120) = v22;
  *(a3 + 136) = v23;
  *(a3 + 152) = v24;
  *(a3 + 168) = v25;
}

uint64_t sub_1E3ED676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(*(a1 + 98), 135, a3, a4, a5, a6) & 1) != 0 && (type metadata accessor for UnifiedMessagingBannerViewModel(), OUTLINED_FUNCTION_19_3(), (v7 = swift_dynamicCastClass()) != 0))
  {
    v8 = v7;
    v9 = objc_opt_self();

    if ([v9 isRunningInTVExtension])
    {

      return 0;
    }

    else
    {
      v11 = *(*v8 + 880);

      v12 = v6;
      v11(v6, &off_1F5D8BC98);

      v13 = sub_1E3DFE1D8();

      return v13 & 1;
    }
  }

  else
  {

    return j__OUTLINED_FUNCTION_51_1();
  }
}

void sub_1E3ED688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(*(a1 + 98), 135, a3, a4, a5, a6) & 1) != 0 && (type metadata accessor for UnifiedMessagingBannerViewModel(), OUTLINED_FUNCTION_19_3(), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = v6;

    if (sub_1E3DFE1DC())
    {

      MEMORY[0x1E6910BF0](v8);
      OUTLINED_FUNCTION_125_11();
      if (v9)
      {
        OUTLINED_FUNCTION_100_9();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();
    }

    v10 = *(*v7 + 488);

    v12 = v10(v11);

    if (v12)
    {
      sub_1E373E010(176, v12, v13);
      OUTLINED_FUNCTION_11_5();

      MEMORY[0x1E6910BF0](v14);
      OUTLINED_FUNCTION_125_11();
      if (v9)
      {
        OUTLINED_FUNCTION_100_9();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();
    }

    OUTLINED_FUNCTION_200();
  }

  else
  {
    OUTLINED_FUNCTION_200();

    j__OUTLINED_FUNCTION_3_24();
  }
}

void sub_1E3ED69F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(*(a2 + 98), 195, a3, a4, a5, a6) & 1) != 0 && (v7 = objc_opt_self(), ([v7 userHasActiveAccount] & 1) == 0))
  {
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_10_9();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v12;
    v14[5] = v13;
    v16[4] = sub_1E3EDF644;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1E326FFE4;
    v16[3] = &block_descriptor_21_0;
    v15 = _Block_copy(v16);

    [v7 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v15];
    _Block_release(v15);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_74();

    sub_1E41CD434(v8, v9, a3);
  }
}

void sub_1E3ED6BB8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_5_0(v7 + 16, &v41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    OUTLINED_FUNCTION_5_0(v5 + 16, &v40);
    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_7:

      goto LABEL_17;
    }

    v16 = v15;
    OUTLINED_FUNCTION_5_0(v3 + 16, &v39);
    if (!swift_weakLoadStrong())
    {

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_5_0(v1 + 16, &v38);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {

      goto LABEL_17;
    }

    v18 = v17;
    if (v11)
    {
      OUTLINED_FUNCTION_12_5();
      v20 = *(v19 + 1216);
      v21 = v18;
      v22 = OUTLINED_FUNCTION_24_4();
      v20(v22);

      goto LABEL_7;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v23 = OUTLINED_FUNCTION_69_2();
    v24(v23);
    v25 = v9;
    v26 = sub_1E41FFC94();
    v27 = sub_1E42067F4();

    if (os_log_type_enabled(v26, v27))
    {
      v36 = v27;
      v28 = OUTLINED_FUNCTION_6_21();
      v34 = OUTLINED_FUNCTION_100();
      v37 = v34;
      v35 = v28;
      *v28 = 136315138;
      if (v9)
      {
        swift_getErrorValue();
        v29 = sub_1E4207AB4();
        v31 = v30;
      }

      else
      {
        v31 = 0xE400000000000000;
        v29 = 1819047278;
      }

      sub_1E3270FC8(v29, v31, &v37);
      OUTLINED_FUNCTION_65_31();

      *(v35 + 1) = v9;
      _os_log_impl(&dword_1E323F000, v26, v36, "SportsFavoritesBanner:Failed to authenticate user. error=%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v32 = OUTLINED_FUNCTION_74();
    v33(v32);
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ED6E94()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v68 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v72 = v10 - v9;
  LOBYTE(v11) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_12();
  ObjectType = swift_getObjectType();
  v14 = dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell);
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v70 = v5;
    v71 = v7;
    v11 = swift_getObjectType();
    v18 = *(v17 + 8);
    v19 = *(v18 + 40);
    v69 = v3;
    if ((v19(v11, v18) & 1) == 0 || sub_1E41FE854())
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_12_5();
    if ((*(v20 + 896))() <= 0.0)
    {
      LOBYTE(v23) = 1;
    }

    else
    {
      v21 = OUTLINED_FUNCTION_72_27();
      v23 = v22(v21) ^ 1;
    }

    sub_1E3ED7450(v16, v17);
    v25 = v24;
    v26 = OUTLINED_FUNCTION_72_27();
    if (v27(v26))
    {
      [v70 vuiContentInsets];
      if (!(v23 & 1 | (v28 != v25)))
      {
        goto LABEL_16;
      }
    }

    else if ((v23 & 1) == 0)
    {
LABEL_16:

      v5 = v70;
      v7 = v71;
      goto LABEL_17;
    }

    type metadata accessor for ViewControllerHostingCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_12_5();
      v30 = (*(v29 + 536))();
      sub_1E4200104();

      v31 = sub_1E4200044();
      v32 = OUTLINED_FUNCTION_124();
      v33(v32);
      v34 = sub_1E41FE854();
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v34 < *(v31 + 16))
      {
        v35 = v31 + 24 * v34;
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);

        OUTLINED_FUNCTION_36_3();
        v39 = *((*MEMORY[0x1E69E7D40] & v38) + 0x4E8);
        v11 = v69;
        v39(v16, v36, v37);

        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_15:
    sub_1E3ED4C54();
    goto LABEL_16;
  }

LABEL_17:
  v40 = &v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset];
  if ((v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset + 16] & 1) == 0)
  {
    v41 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageNeedsDeferredAnimationIn;
    if (v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageNeedsDeferredAnimationIn] == 1)
    {
      v43 = *v40;
      v42 = v40[1];
      v44 = sub_1E324FBDC();
      (*(v7 + 16))(v72, v44, v68);
      v45 = sub_1E41FFC94();
      v46 = sub_1E4206814();
      if (OUTLINED_FUNCTION_20_11(v46))
      {
        v47 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v47);
        OUTLINED_FUNCTION_66_31(&dword_1E323F000, v48, v11, "StackTemplateController:: account message: handling deferred animation");
        OUTLINED_FUNCTION_6_0();
      }

      (*(v7 + 8))(v72, v68);
      v1[v41] = 0;
      v49 = OUTLINED_FUNCTION_1_36();
      [v5 v50];
      [v5 contentOffset];
      if (v52 == v43 && v51 == v42)
      {
        v59 = &v1[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageDismissalTargetOffset];
        *v59 = 0;
        *(v59 + 1) = 0;
        v59[16] = 1;
        goto LABEL_28;
      }

      v54 = [v1 vuiView];
      if (v54)
      {
        v55 = v54;
        [v54 setVuiUserInteractionEnabled_];

        v56 = OUTLINED_FUNCTION_6_12();
        [v57 v58];
        goto LABEL_28;
      }

LABEL_33:
      __break(1u);
      return;
    }
  }

LABEL_28:
  sub_1E41CD574();
  v60 = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3, v60, &protocol descriptor for TabBarChildControllerSupporting))
  {
    v62 = v61;
    v63 = swift_getObjectType();
    OUTLINED_FUNCTION_12_5();
    v65 = *(v64 + 1496);
    v66 = v3;
    v67 = v65();
    (*(v62 + 8))(v67 & 1, v63, v62);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3ED7450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v3 vuiView];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {
      v8 = [v7 windowScene];

      if (v8)
      {
        v9 = [v8 statusBarManager];

        if (v9)
        {
          [v9 statusBarFrame];
          OUTLINED_FUNCTION_3();

          v13.origin.x = OUTLINED_FUNCTION_6();
          CGRectGetHeight(v13);
        }
      }
    }

    ObjectType = swift_getObjectType();
    (*(*(a2 + 8) + 32))(ObjectType);
    v11 = [v3 view];
    if (v11)
    {
      v12 = v11;
      [v11 safeAreaInsets];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3ED75CC()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v0;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for StackTemplateController(0);
  v50.receiver = v3;
  v50.super_class = v14;
  objc_msgSendSuper2(&v50, sel_vuiScrollViewDidEndScrollingAnimation_, v5);
  v15 = &v3[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageDismissalTargetOffset];
  v16 = &selRef_textLayout;
  v17 = &selRef_setRenderAsTemplate_;
  if ((v3[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageDismissalTargetOffset + 16] & 1) == 0)
  {
    v19 = *v15;
    v18 = v15[1];
    [v5 contentOffset];
    if (v19 == v21 && v18 == v20)
    {
      sub_1E3ED7938();
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v23(v13);
      v24 = sub_1E41FFC94();
      v25 = sub_1E42067F4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_125_0();
        v49 = v6;
        *v26 = 0;
        _os_log_impl(&dword_1E323F000, v24, v25, "StackTemplateController:: account message: dismissal target offset was not hit, not removing the message", v26, 2u);
        v6 = v49;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v8 + 8))(v13, v6);
      v17 = &selRef_setRenderAsTemplate_;
      v16 = &selRef_textLayout;
    }

    *v15 = 0.0;
    v15[1] = 0.0;
    *(v15 + 16) = 1;
    v27 = [v3 v16[439]];
    if (!v27)
    {
      __break(1u);
      goto LABEL_27;
    }

    v28 = v27;
    [v27 v17[508]];
  }

  v29 = v16;
  v30 = &v3[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset];
  if (v3[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset + 16])
  {
LABEL_25:
    OUTLINED_FUNCTION_10_3();
    return;
  }

  v32 = *v30;
  v31 = v30[1];
  [v5 contentOffset];
  v34 = v33;
  v36 = v35;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (v32 != v34 || v31 != v36)
  {
    v37(v1);
    v39 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_23;
    }

    v41 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v41);
    OUTLINED_FUNCTION_51_42(&dword_1E323F000, v42, v2, "StackTemplateController:: account message: addition target offset was not hit");
    goto LABEL_21;
  }

  v37(v2);
  v39 = sub_1E41FFC94();
  v43 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v43))
  {
    v44 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v44);
    OUTLINED_FUNCTION_51_42(&dword_1E323F000, v45, v1, "StackTemplateController:: account message: completed animated addition");
    v1 = v2;
LABEL_21:
    OUTLINED_FUNCTION_21_0();
    goto LABEL_23;
  }

  v1 = v2;
LABEL_23:

  (*(v8 + 8))(v1, v6);
  *v30 = 0.0;
  v30[1] = 0.0;
  *(v30 + 16) = 1;
  v46 = [v3 v29 + 2867];
  if (v46)
  {
    v47 = v46;
    [v46 v17[508]];

    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void sub_1E3ED7938()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_26_3();
  v10 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & v11) + 0x340))(0.0);
  v13 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController;
  v14 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController);
  if (v14)
  {
    v15 = v8;
    v16 = v4;
    v17 = v2;
    v18 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    v12 = OUTLINED_FUNCTION_3_0(v14 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, &v46);
    *(v14 + v18) = 0;
    v2 = v17;
    v4 = v16;
    v8 = v15;
    v10 = MEMORY[0x1E69E7D40];
  }

  v19 = (*((*v10 & *v1) + 0x1B8))(v12);
  MEMORY[0x1E6909170](0, 0);
  v20 = sub_1E41FE7E4();
  v21 = OUTLINED_FUNCTION_124();
  v22(v21);
  v23 = [v19 cellForItemAtIndexPath_];

  if (v23)
  {
    ObjectType = swift_getObjectType();
    v25 = dynamic_cast_existential_1_conditional(v23, ObjectType, &protocol descriptor for ShowcasingCollectionViewCell);
    if (v25)
    {
      v26 = v25;
      swift_getObjectType();
      v45 = v26;
      OUTLINED_FUNCTION_91_17();
      if (v28(v27))
      {
        OUTLINED_FUNCTION_146();
        sub_1E3ED4C54();
      }
    }
  }

  v29 = *(v1 + v13);
  *(v1 + v13) = 0;

  *(v1 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_didEnqueueImpressionMetrics) = 0;
  v30 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v30, v2);
  v31 = v1;
  v32 = sub_1E41FFC94();
  v33 = sub_1E4206814();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_6_21();
    v35 = OUTLINED_FUNCTION_100();
    v45 = v35;
    *v34 = 136315138;
    v36 = sub_1E3ED148C();
    sub_1E3270FC8(v36, v37, &v45);
    OUTLINED_FUNCTION_176_0();
    *(v34 + 4) = v31;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v43 = OUTLINED_FUNCTION_13_8();
  v44(v43);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3ED7D10()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset + 16) != 1 || *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageDismissalTargetOffset + 16) != 1)
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_9_5();
  v11 = type metadata accessor for StackTemplateController(v1);
  v8 = OUTLINED_FUNCTION_111_10(v11, sel_vuiScrollViewShouldScrollToTop_, v2, v3, v4, v5, v6, v7, v0);
  return objc_msgSendSuper2(v8, v9);
}

void sub_1E3ED7DD4(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 2056))();
  if (v8)
  {
  }

  else
  {
    sub_1E41FE7E4();
    v9 = OUTLINED_FUNCTION_106();
    v10.receiver = v3;
    v10.super_class = type metadata accessor for StackTemplateController(v9);
    objc_msgSendSuper2(&v10, sel_shouldRubberbandElementWithCategory_in_at_, a1, a2, a3);
  }

  OUTLINED_FUNCTION_200();
}

void sub_1E3ED7F8C(uint64_t a1, double *a2)
{
  OUTLINED_FUNCTION_5_16();
  type metadata accessor for StackTemplateController(0);
  v5 = OUTLINED_FUNCTION_6_12();
  v8 = objc_msgSendSuper2(v6, v7, v5);
  v9 = *a2;
  v10 = a2[1];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x808))(v8);
  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = v11;
  OUTLINED_FUNCTION_21();
  v13 += 55;
  v14 = *v13;
  v15 = (*v13)();
  [v15 adjustedContentInset];
  v17 = v16;

  v18 = &v12[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset];
  v19 = OUTLINED_FUNCTION_5_0(&v12[OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_topInset], v32);
  v20 = 0.0;
  if (*(v18 + 8))
  {
    v21 = 0.0;
  }

  else
  {
    v21 = *v18;
  }

  v22 = (v14)(v19);
  [v22 contentOffset];
  v24 = v23;

  if (v24 >= 0.0)
  {

LABEL_10:
    if (v10 >= 0.0)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v25 = v14();
  [v25 contentOffset];
  v27 = v26;

  v28 = (v17 + v27) / v17;
  v29 = 1.0;
  if (v28 > 1.0)
  {
    goto LABEL_10;
  }

  v20 = 1.0 - v28;
  if (v10 >= 0.0)
  {
LABEL_12:
    if (v3 != 0.0)
    {
      v31 = 0.0;
      if (v3 <= 0.0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_11:
  v30 = (v10 + v17) / v17;
  v29 = 1.0;
  if (v30 > 1.0)
  {
    goto LABEL_12;
  }

  if (v3 == 0.0)
  {
LABEL_16:
    if (v20 != 0.0)
    {
      v9 = 0.0;
      if (v21 / v17 + (v29 - v21 / v17) * 0.5 >= v20)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = -v17;
      }
    }

    goto LABEL_27;
  }

  v31 = 1.0 - v30;
  if (v3 > 0.0)
  {
LABEL_20:
    if (v31 < v29 && v20 != 0.0 && fabs(v3) <= 1.5)
    {
      v9 = 0.0;
      v10 = 0.0;
    }

    goto LABEL_27;
  }

  if (v31 > 0.0)
  {
    v10 = -v17;
    v9 = 0.0;
  }

LABEL_27:
  *a2 = v9;
  a2[1] = v10;
}

uint64_t sub_1E3ED8298()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 1952))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}