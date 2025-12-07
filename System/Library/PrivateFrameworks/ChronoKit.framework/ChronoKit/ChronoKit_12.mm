uint64_t sub_1BF4AF134(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v7;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4AE37C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1BF4AF900(&qword_1EBDD8B48, &unk_1BF4EC990, &qword_1EBDD9598, &unk_1BF4F1940);
      goto LABEL_12;
    }

    sub_1BF4B08D0(v11 + 1);
  }

  v13 = *v3;
  sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
  v14 = sub_1BF4E8874();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v21 = *(v18 + 56);
    do
    {
      v19(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1BF38C8B4(&qword_1EDC9D580, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C8]);
      v22 = sub_1BF4E88C4();
      (*(v18 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v29;
  v24 = *v30;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BF4E9784();
  __break(1u);
  return result;
}

void sub_1BF4AF3F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
  v2 = *v0;
  v3 = sub_1BF4E9284();
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

void sub_1BF4AF578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
  v2 = *v0;
  v3 = sub_1BF4E9284();
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

void sub_1BF4AF6C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1BF4E9284();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1BF4AF900(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_1BF4E9284();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v7;
    v15 = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || v15 >= v12 + 56 + 8 * v16)
    {
      memmove(v15, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v9 + 32;
    v30 = v9 + 16;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v9 + 72) * (v23 | (v18 << 6));
      (*(v9 + 16))(v11, *(v12 + 48) + v26, v8);
      (*(v9 + 32))(*(v14 + 48) + v26, v11, v8);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }
}

void sub_1BF4AFB2C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1BF4E8454();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC0, &unk_1BF4F5DC0);
  v7 = sub_1BF4E9294();
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
      sub_1BF391F90(&qword_1EDC9F1A0, MEMORY[0x1E6985A18], MEMORY[0x1E6985A20]);
      v21 = sub_1BF4E8874();
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

void sub_1BF4AFE48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
  v4 = sub_1BF4E9294();
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
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v20 = sub_1BF4E9844();
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

void sub_1BF4B0080(uint64_t a1)
{
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9AC8, &qword_1BF4F5DD0);
  v7 = sub_1BF4E9294();
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
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
      v21 = sub_1BF4E8874();
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

void sub_1BF4B03A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
  v4 = sub_1BF4E9294();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1BF4E9094();
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

        goto LABEL_28;
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

        v2 = v25;
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
}

void sub_1BF4B05B4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1BF4E8174();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AD0, &qword_1BF4F5DD8);
  v7 = sub_1BF4E9294();
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
      sub_1BF391F90(qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
      v21 = sub_1BF4E8874();
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

void sub_1BF4B08D0(uint64_t a1)
{
  v2 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9598, &unk_1BF4F1940);
  v7 = sub_1BF4E9294();
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
      sub_1BF38C8B4(&qword_1EDC9D588, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940C0]);
      v21 = sub_1BF4E8874();
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

void *sub_1BF4B0BF0(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = sub_1BF3AFB28(v9, a2, a3, v10, a5);

    return v11;
  }

  return result;
}

id sub_1BF4B0CBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 extensionIdentity];
  *a2 = result;
  return result;
}

double sub_1BF4B0D38(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

void sub_1BF4B0E60(uint64_t a1)
{
  sub_1BF4B0ED4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BF4B0ED4()
{
  if (!qword_1EDC9D5A0)
  {
    v0 = sub_1BF4E76D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9D5A0);
    }
  }
}

uint64_t sub_1BF4B0F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF4B0F60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
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

uint64_t sub_1BF4B0FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1BF4B100C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF4B1048(uint64_t *a1, int a2)
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

uint64_t sub_1BF4B1090(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF4B1170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF4B11FC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BF4B1314(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BF4B1428(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF38C94C(a1, v7, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v4 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v4, v6, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_beginAccess();
  sub_1BF3A5C18(v7, v1 + v4, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_endAccess();
  sub_1BF3ADC00(v6);
  sub_1BF38C9B4(v6, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  sub_1BF38C9B4(v7, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  os_unfair_lock_unlock(*(v3 + 16));
  return sub_1BF38C9B4(a1, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
}

void sub_1BF4B1538(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v10 + 16));
  v11 = *a2;
  swift_beginAccess();
  sub_1BF38C94C(v9 + v11, a5, a3, a4);
  os_unfair_lock_unlock(*(v10 + 16));
}

void (*sub_1BF4B15C8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  *(v3 + 112) = v5;
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v6, v4, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  os_unfair_lock_unlock(*(v5 + 16));
  return sub_1BF4B1698;
}

void sub_1BF4B1698(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  if (a2)
  {
    sub_1BF38C94C(*a1, (v2 + 5), &qword_1EBDD9AF8, &qword_1BF4F5E00);
    os_unfair_lock_lock(*(v4 + 16));
    sub_1BF3A672C(v3, (v2 + 5));
    os_unfair_lock_unlock(*(v2[14] + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
    sub_1BF4E7C74();
    sub_1BF38C9B4((v2 + 5), &qword_1EBDD9AF8, &qword_1BF4F5E00);
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 16));
    sub_1BF3A672C(v3, v2);
    os_unfair_lock_unlock(*(v2[14] + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
    sub_1BF4E7C74();
  }

  sub_1BF38C9B4(v2, &qword_1EBDD9AF8, &qword_1BF4F5E00);

  free(v2);
}

void sub_1BF4B1868(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v3 + v5, a2, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF4B18F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BF38C94C(a1, &v6 - v3, &qword_1EBDD9B00, &qword_1BF4F1E50);
  return sub_1BF3AB0B4(v4);
}

void (*sub_1BF4B19B8(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[12] = v7;
  v9 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  v5[13] = v9;
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  v5[14] = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v10, v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF4B1B0C;
}

void sub_1BF4B1B0C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 11);
  v6 = *(*a1 + 12);
  v8 = *(*a1 + 9);
  v7 = *(*a1 + 10);
  if (a2)
  {
    sub_1BF38C94C(*(*a1 + 12), v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF38C94C(v5, v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_beginAccess();
    sub_1BF3A3A54(v7, v8 + v4, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
    sub_1BF38C9B4(v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF38C94C(v6, v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_beginAccess();
    sub_1BF3A3A54(v5, v8 + v4, &qword_1EBDD9B00, &qword_1BF4F1E50);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
  }

  sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

void sub_1BF4B1C90(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = (v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  *v7 = v3;
  v7[1] = v2;

  v8 = *(v5 + 16);

  os_unfair_lock_unlock(v8);
}

void (*sub_1BF4B1D10(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  *(v3 + 88) = v5;
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v6, v4, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v7 = v4[3];
  sub_1BF38C9B4(v4, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v8 = 0;
  v9 = 0;
  if (!v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    v9 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
  }

  os_unfair_lock_unlock(*(v5 + 16));
  v4[8] = v8;
  v4[9] = v9;
  return sub_1BF4B1E2C;
}

void sub_1BF4B1E2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v6 = *(v4 + 16);
  v7 = *(*a1 + 72);
  if (a2)
  {

    os_unfair_lock_lock(v6);
    v8 = (v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    *v8 = v3;
    v8[1] = v7;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 16));
    v9 = (v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    *v9 = v3;
    v9[1] = v7;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  free(v2);
}

uint64_t sub_1BF4B1F1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver), v1);
  return (*(v2 + 24))(v0, v1, v2);
}

id WidgetEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetEntry(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BF4B22C8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v3 + v5, a1, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t (*sub_1BF4B2350(uint64_t **a1))()
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
  v2[4] = sub_1BF4B15C8(v2);
  return sub_1BF413050;
}

void sub_1BF4B23C4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v3 + v5, a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t (*sub_1BF4B244C(uint64_t **a1))()
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
  v2[4] = sub_1BF4B19B8(v2);
  return sub_1BF413050;
}

void sub_1BF4B24E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = (v5 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  *v7 = a1;
  v7[1] = a2;

  v8 = *(v6 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t (*sub_1BF4B2554(uint64_t **a1))()
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
  v2[4] = sub_1BF4B1D10(v2);
  return sub_1BF412658;
}

uint64_t sub_1BF4B25C8()
{
  v1 = *v0;
  v2 = (*v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_descriptorObserver);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return (*(v4 + 24))(v1, v3, v4);
}

unint64_t WidgetEntry.description.getter()
{
  v1 = v0;
  v2 = sub_1BF4E8424();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_1BF4E92E4();

  v11 = 0xD000000000000011;
  v12 = 0x80000001BF4FDEC0;
  v6 = WidgetEntryKey.description.getter();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FDEE0);
  v7 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  sub_1BF3BB364(&qword_1EDC9D780, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
  v8 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v8);

  (*(v3 + 8))(v5, v2);
  return v11;
}

uint64_t WidgetUpdateTimer.publisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BC0, &qword_1BF4F5FB0);
  sub_1BF38C8B4(&qword_1EDC9EF88, &qword_1EBDD9BC0, &qword_1BF4F5FB0, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t WidgetUpdateTimer.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  sub_1BF4E92E4();
  v6 = sub_1BF4E9894();
  v8 = v7;

  v18 = v6;
  v19 = v8;
  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FE140);
  v9 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v9, v2);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDC9F0F8;
  v11 = sub_1BF4E7254();
  v12 = [v10 stringFromDate_];

  v13 = sub_1BF4E8914();
  v15 = v14;

  (*(v3 + 8))(v5, v2);
  MEMORY[0x1BFB58C90](v13, v15);

  MEMORY[0x1BFB58C90](8200233, 0xE300000000000000);
  return v18;
}

uint64_t sub_1BF4B2E84(uint64_t a1)
{
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  sub_1BF4E7324();
  if (qword_1EDC9F998 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF4E7B54();
  __swift_project_value_buffer(v9, qword_1EDCA6AD8);
  (*(v3 + 16))(v5, v8, v2);
  v10 = sub_1BF4E7B34();
  v11 = sub_1BF4E8E54();
  if (os_log_type_enabled(v10, v11))
  {
    v31 = v11;
    v32 = v2;
    v33 = a1;
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v12 = 136446466;
    v13 = sub_1BF4E9894();
    v15 = sub_1BF38D65C(v13, v14, &v34);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    if (qword_1EDC9F0F0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDC9F0F8;
    v17 = sub_1BF4E7254();
    v18 = [v16 stringFromDate_];

    v19 = sub_1BF4E8914();
    v21 = v20;

    v22 = *(v3 + 8);
    v23 = v5;
    v24 = v32;
    v22(v23, v32);
    v25 = sub_1BF38D65C(v19, v21, &v34);

    *(v12 + 14) = v25;
    _os_log_impl(&dword_1BF389000, v10, v31, "%{public}s update: %{public}s, privacy: .public)", v12, 0x16u);
    v26 = v30;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v26, -1, -1);
    v27 = v12;
    v2 = v24;
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
  }

  else
  {

    v22 = *(v3 + 8);
    v22(v5, v2);
  }

  sub_1BF4E7C14();
  return (v22)(v8, v2);
}

uint64_t WidgetUpdateTimer.deinit()
{

  v1 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  v2 = sub_1BF4E7334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WidgetUpdateTimer.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  v2 = sub_1BF4E7334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetUpdateTimer(uint64_t a1)
{
  result = qword_1EDC9E650;
  if (!qword_1EDC9E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *static BootSession.UUID.getter@<X0>(uint64_t a1@<X8>)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_1BF4E8984();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 37;
  v8 = sub_1BF4E8C04();
  *(v8 + 16) = 37;
  *(v8 + 48) = 0u;
  *(v8 + 61) = 0;
  *(v8 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v8 + 32), &v37, 0, 0))
  {
    v9 = MEMORY[0x1BFB57DE0]();
    result = strerror(v9);
    if (result)
    {
      v11 = sub_1BF4E88D4();
      v13 = v12;

      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0x6E776F6E6B6E55;
      }

      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (qword_1EBDD8598 != -1)
      {
        swift_once();
      }

      v16 = sub_1BF4E7B54();
      __swift_project_value_buffer(v16, qword_1EBDE1F08);

      v17 = sub_1BF4E7B34();
      v18 = sub_1BF4E8E74();

      if (!os_log_type_enabled(v17, v18))
      {

        goto LABEL_22;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136446466;
      v21 = sub_1BF38D65C(v14, v15, v38);

      *(v19 + 4) = v21;
      *(v19 + 12) = 1026;
      *(v19 + 14) = MEMORY[0x1BFB57DE0](v22);
      _os_log_impl(&dword_1BF389000, v17, v18, "Error from sysctlbyname: %{public}s %{public}d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
      v23 = v19;
LABEL_13:
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
LABEL_22:

      v32 = sub_1BF4E7394();
      return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
    }

    __break(1u);
  }

  else
  {
    sub_1BF4E8964();
    sub_1BF4B39CC(v8, v7, v24);
    if (!v25)
    {
      if (qword_1EBDD8598 != -1)
      {
        swift_once();
      }

      v33 = sub_1BF4E7B54();
      __swift_project_value_buffer(v33, qword_1EBDE1F08);
      v17 = sub_1BF4E7B34();
      v34 = sub_1BF4E8E74();
      if (!os_log_type_enabled(v17, v34))
      {
        goto LABEL_22;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BF389000, v17, v34, "Unable to make String from kern.bootsessionuuid!", v35, 2u);
      v23 = v35;
      goto LABEL_13;
    }

    sub_1BF4E7344();

    v26 = sub_1BF4E7394();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v4, 1, v26) == 1)
    {
      sub_1BF4B3D64(v4);
      if (qword_1EBDD8598 != -1)
      {
        swift_once();
      }

      v28 = sub_1BF4E7B54();
      __swift_project_value_buffer(v28, qword_1EBDE1F08);
      v29 = sub_1BF4E7B34();
      v30 = sub_1BF4E8E74();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1BF389000, v29, v30, "Unable to make UUID from kern.bootsessionuuid!", v31, 2u);
        MEMORY[0x1BFB5A5D0](v31, -1, -1);
      }

      return (*(v27 + 56))(a1, 1, 1, v26);
    }

    else
    {
      (*(v27 + 32))(a1, v4, v26);
      return (*(v27 + 56))(a1, 0, 1, v26);
    }
  }

  return result;
}

uint64_t sub_1BF4B394C()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EBDE1F08);
  __swift_project_value_buffer(v0, qword_1EBDE1F08);
  return sub_1BF4E7B44();
}

uint64_t sub_1BF4B39CC(uint64_t a1, char *a2, double a3)
{
  v5 = sub_1BF4E8984();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8954();
  v9 = sub_1BF4E8944();
  v10 = *(v6 + 8);
  v10(v8, v5);
  if ((v9 & 1) == 0)
  {
    sub_1BF4E8964();
    v11 = sub_1BF4E8944();
    v10(v8, v5);
    if ((v11 & 1) == 0)
    {
      sub_1BF4E8934();
      v12 = sub_1BF4E8944();
      v10(v8, v5);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_1BF4B3CB0(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  sub_1BF4E8954();
  v17 = sub_1BF4E8944();
  v10(v8, v5);
  if (v17)
  {

LABEL_17:
    v10(a2, v5);
    return v16;
  }

  if ((sub_1BF4E92D4() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_1BF4E9464();
      __break(1u);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 32 length:v8 encoding:sub_1BF4E8974()];

    if (!v19)
    {
      v10(a2, v5);
      return 0;
    }

    v16 = sub_1BF4E8914();

    goto LABEL_17;
  }

  v10(a2, v5);

  return v16;
}

uint64_t sub_1BF4B3CB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_1BF4E89C4();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4B3D34@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1BF4B3D64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97E8, &unk_1BF4F29E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReloadTaskPair.__allocating_init(currentTask:queuedTask:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ReloadTaskPair.init(currentTask:queuedTask:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BF4B3E28()
{
  v1 = v0[2];
  if (!v1)
  {
    return 0x6B736174206F6E3CLL;
  }

  v2 = *v0;
  v3 = v0[3];
  if (v3)
  {
    *&v9 = 0;
    *(&v9 + 1) = 0xE000000000000000;

    sub_1BF4E92E4();
    v14 = v9;
    MEMORY[0x1BFB58C90](0x3A746E6572727563, 0xE900000000000020);
    v13 = v1;
    v4 = v2[6];
    v9 = v2[5];
    v10 = v4;
    v5 = v2[8];
    v11 = v2[7];
    v12 = v5;
    type metadata accessor for ReloadTask(0, &v9);
    swift_getWitnessTable();
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](0x646575657571203BLL, 0xEA0000000000203ALL);
    *&v9 = v3;
    sub_1BF4E96F4();
  }

  else
  {
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;

    MEMORY[0x1BFB58C90](0x3A746E6572727563, 0xE900000000000020);
    v13 = v1;
    v7 = v2[6];
    v9 = v2[5];
    v10 = v7;
    v8 = v2[8];
    v11 = v2[7];
    v12 = v8;
    type metadata accessor for ReloadTask(0, &v9);
    swift_getWitnessTable();
    sub_1BF4E96F4();
  }

  return v14;
}

double sub_1BF4B4014()
{
  if (*(v0 + 16))
  {

    sub_1BF3B7C08();
  }

  if (*(v0 + 24))
  {

    sub_1BF3B7C08();
  }

  *(v0 + 16) = 0;

  *(v0 + 24) = 0;

  return result;
}

uint64_t ReloadTaskPair.deinit()
{

  return v0;
}

unint64_t sub_1BF4B4190()
{
  v1 = *v0;
  v2 = 0xD000000000000017;
  v3 = 0xD000000000000027;
  if (*v0 == 6)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD00000000000002BLL;
  }

  if (v1 != 5)
  {
    v3 = v4;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  v5 = 0xD000000000000023;
  if (v1 != 3)
  {
    v5 = 0xD00000000000002BLL;
  }

  if (v1 == 2)
  {
    v5 = 0xD000000000000024;
  }

  if (v1 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (v1 <= 3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

void sub_1BF4B4264()
{
  type metadata accessor for NominatedContainerPermissions();
  swift_initStackObject();
  v0 = *(sub_1BF3F8CCC() + 16);

  qword_1EDC9AD98 = v0;
}

uint64_t sub_1BF4B42C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v294 = &v252 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v286 = &v252 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v281 = &v252 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v282 = &v252 - v11;
  v12 = sub_1BF4E7334();
  v292 = *(v12 - 8);
  v293 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v252 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1BF4E7394();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v291 = &v252 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WidgetExtensionInfo(0);
  MEMORY[0x1EEE9AC00](v16);
  v285 = (&v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v280 = &v252 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v279 = &v252 - v21;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v301 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  ObjCClassFromMetadata = &v252 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v295 = &v252 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v278 = &v252 - v26;
  v27 = sub_1BF4E7194();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v290 = &v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v289 = &v252 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v288 = &v252 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v287 = &v252 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v297 = &v252 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v296 = &v252 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v300 = &v252 - v41;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages) = 0;
  v42 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock;
  type metadata accessor for UnfairLock();
  v43 = swift_allocObject();
  v44 = swift_slowAlloc();
  *v44 = 0;
  *(v2 + v42) = v43;
  *(v43 + 16) = v44;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateInitial) = 1;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) = 1;
  v45 = [a1 applicationExtensionRecord];
  if (!v45)
  {
    sub_1BF4B86EC();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v277 = v14;
  v46 = v45;
  v47 = [v46 dataContainerURL];
  if (!v47)
  {

    sub_1BF4B86EC();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();

    goto LABEL_7;
  }

  v274 = v16;
  v48 = v300;
  v49 = v47;
  sub_1BF4E7154();

  v50 = v299;
  sub_1BF4B8C98(v46);
  if (v50)
  {

    (*(v28 + 8))(v48, v27);
LABEL_8:

    type metadata accessor for WidgetExtension(0);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v299 = v46;
  v55 = &off_1E80BD000;
  v56 = v51;
  v57 = [v51 bundleIdentifier];
  if (!v57)
  {
    v67 = v299;

    sub_1BF4B86EC();
    swift_allocError();
    *v68 = 4;
    swift_willThrow();

    (*(v28 + 8))(v300, v27);
    goto LABEL_8;
  }

  v266 = 0;
  v269 = v28;
  v263 = v57;
  v264 = sub_1BF4E8914();
  v271 = v58;
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) = a1;
  v268 = a1;
  v59 = [v299 URL];
  sub_1BF4E7154();

  v275 = v56;
  v60 = [v56 URL];
  sub_1BF4E7154();

  v61 = sub_1BF4E7094();
  v62 = CFBundleCreate(0, v61);

  v265 = v2;
  v270 = v27;
  if (!v62)
  {
    v69 = [objc_opt_self() mainBundle];
    v70 = [v69 localizations];

    v262 = sub_1BF4E8BA4();
    v261 = 0;
    v273 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v63 = v62;
  v64 = CFBundleCopyBundleLocalizations(v63);
  v65 = v299;
  if (v64)
  {
    v66 = v64;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v306 = 0;
      sub_1BF4E8B94();

      if (v306)
      {
        v262 = v306;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v71 = [objc_opt_self() mainBundle];
  v72 = [v71 localizations];

  v262 = sub_1BF4E8BA4();
LABEL_20:
  v73 = sub_1BF4E88E4();
  v74 = CFBundleGetValueForInfoDictionaryKey(v63, v73);

  if (v74 && (*&v306 = v74, swift_dynamicCast()))
  {
    v261 = v304;
  }

  else
  {
    v261 = 0;
  }

  if (qword_1EDC9AD90 != -1)
  {
    goto LABEL_194;
  }

  while (1)
  {
    v75 = qword_1EDC9AD98;
    v76 = [v268 v55[89]];
    v77 = sub_1BF4E8914();
    v79 = v78;

    *&v306 = v77;
    *(&v306 + 1) = v79;
    MEMORY[0x1EEE9AC00](v80);
    *(&v252 - 2) = &v306;
    v81 = v266;
    LOBYTE(v75) = sub_1BF4B881C(sub_1BF4A655C, (&v252 - 4), v75);
    v266 = v81;

    if ((v75 & 1) == 0)
    {

      v273 = MEMORY[0x1E69E7CC0];
      goto LABEL_54;
    }

    v82 = sub_1BF4E88E4();
    v83 = CFBundleGetValueForInfoDictionaryKey(v63, v82);

    v84 = MEMORY[0x1E69E7CC0];
    if (v83)
    {
      *&v306 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      v85 = swift_dynamicCast();
      v86 = v295;
      v87 = (v85 & 1) != 0 ? v304 : MEMORY[0x1E69E7CC0];
    }

    else
    {
      v87 = MEMORY[0x1E69E7CC0];
      v86 = v295;
    }

    v260 = v63;
    v88 = *(v87 + 16);
    if (v88)
    {
      *&v306 = v84;
      sub_1BF3E149C(0, v88, 0);
      v89 = v306;
      v276 = v301 + 32;
      v273 = v87;
      v90 = v87 + 40;
      v91 = v278;
      do
      {

        sub_1BF4E7694();
        *&v306 = v89;
        v93 = *(v89 + 16);
        v92 = *(v89 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_1BF3E149C((v92 > 1), v93 + 1, 1);
          v89 = v306;
        }

        *(v89 + 16) = v93 + 1;
        v94 = (*(v301 + 80) + 32) & ~*(v301 + 80);
        v63 = *(v301 + 72);
        (*(v301 + 32))(v89 + v94 + v63 * v93, v91, v308);
        v90 += 16;
        --v88;
      }

      while (v88);

      v86 = v295;
    }

    else
    {

      v63 = *(v301 + 72);
      v94 = (*(v301 + 80) + 32) & ~*(v301 + 80);
      v89 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
    v259 = swift_allocObject();
    v95 = (v259 + v94);
    sub_1BF4E7694();
    v278 = v95;
    sub_1BF4E7694();
    v96 = v308;
    v276 = *(v89 + 16);
    if (!v276)
    {
      break;
    }

    v55 = 0;
    v97 = v89 + v94;
    v65 = (v301 + 16);
    v272 = (v301 + 8);
    v267 = (v301 + 32);
    v273 = MEMORY[0x1E69E7CC0];
    while (v55 < *(v89 + 16))
    {
      (*v65)(v86, v97, v96);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
      if (sub_1BF4E88C4() & 1) != 0 || (sub_1BF4E88C4())
      {
        (*v272)(v86, v96);
      }

      else
      {
        v98 = *v267;
        (*v267)(ObjCClassFromMetadata, v86, v96);
        v99 = v273;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v306 = v99;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF3E149C(0, *(v99 + 16) + 1, 1);
          v99 = v306;
        }

        v102 = *(v99 + 16);
        v101 = *(v99 + 24);
        v103 = v102 + 1;
        if (v102 >= v101 >> 1)
        {
          v273 = v102 + 1;
          sub_1BF3E149C((v101 > 1), v102 + 1, 1);
          v103 = v273;
          v99 = v306;
        }

        v273 = v99;
        *(v99 + 16) = v103;
        v104 = v99 + v94 + v102 * v63;
        v96 = v308;
        v98(v104, ObjCClassFromMetadata, v308);
        v86 = v295;
      }

      v55 = (v55 + 1);
      v97 += v63;
      if (v276 == v55)
      {
        goto LABEL_52;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    swift_once();
  }

  v273 = MEMORY[0x1E69E7CC0];
LABEL_52:
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

LABEL_53:
  v65 = v299;
LABEL_54:
  LODWORD(v260) = [v275 developerType];
  v105 = [v65 entitlements];
  v106 = sub_1BF4E88E4();
  sub_1BF3901C0(0, &qword_1EDC9D6B0, 0x1E696AD98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = [v105 objectForKey:v106 ofClass:?];

  if (v107)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  v108 = v299;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
      LODWORD(v259) = v302;
      goto LABEL_62;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  LODWORD(v259) = 0;
LABEL_62:
  v109 = [v108 entitlements];
  v110 = sub_1BF4E88E4();
  sub_1BF3901C0(0, &qword_1EDC9F9A8, 0x1E696AEC0);
  v111 = swift_getObjCClassFromMetadata();
  v112 = [v109 objectForKey:v110 ofClass:v111];

  if (v112)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  v113 = v299;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_74;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v114 = [v113 entitlements];
  v115 = sub_1BF4E88E4();
  v116 = [v114 objectForKey:v115 ofClass:v111];

  if (v116)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  v113 = v299;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
LABEL_74:
      v258 = v302;
      v257 = v303;
      goto LABEL_77;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v258 = 0;
  v257 = 0;
LABEL_77:
  v117 = [v113 entitlements];
  v118 = sub_1BF4E88E4();
  v119 = [v117 objectForKey:v118 ofClass:v111];

  if (v119)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    type metadata accessor for FileProtectionType(0);
    v120 = swift_dynamicCast();
    v121 = v302;
    if (!v120)
    {
      v121 = 0;
    }

    v278 = v121;
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    v278 = 0;
  }

  v122 = sub_1BF44ABF8(&unk_1F3DECC70);
  swift_arrayDestroy();
  v123 = v299;
  v124 = [v299 infoDictionary];
  v125 = sub_1BF4E8D24();
  v295 = [v124 objectsForKeys_];

  v126 = [v123 infoDictionary];
  v127 = sub_1BF4E88E4();
  v128 = [v126 objectForKey:v127 ofClass:ObjCClassFromMetadata];

  if (v128)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v129 = v265;
  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    v55 = v111;
    if (swift_dynamicCast())
    {
      v130 = v302;
      goto LABEL_93;
    }
  }

  else
  {
    v55 = v111;
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v130 = 0;
LABEL_93:
  LODWORD(v267) = 0;
  v131 = 0;
  *(v129 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_disablesImplicitDescriptorDiscovery) = v130;
  v65 = (v122 + 56);
  v132 = 1 << *(v122 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v63 = v133 & *(v122 + 56);
  v134 = (v132 + 63) >> 6;
  while (1)
  {
    v135 = v131;
    if (!v63)
    {
      break;
    }

LABEL_101:

    v136 = sub_1BF4E88E4();

    v137 = [v295 objectForKey:v136 ofClass:ObjCClassFromMetadata];

    if (v137)
    {
      sub_1BF4E9164();
      swift_unknownObjectRelease();
    }

    else
    {
      v304 = 0u;
      v305 = 0u;
    }

    v63 &= v63 - 1;
    v306 = v304;
    v307 = v305;
    if (*(&v305 + 1))
    {
      if (swift_dynamicCast())
      {
        v138 = v302;
        v139 = sub_1BF4E9084();
        LODWORD(v276) = sub_1BF4E90A4();

        LODWORD(v267) = v276 | v267;
      }
    }

    else
    {
      sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    }
  }

  while (1)
  {
    v131 = v135 + 1;
    if (__OFADD__(v135, 1))
    {
      __break(1u);
      goto LABEL_193;
    }

    if (v131 >= v134)
    {
      break;
    }

    v63 = v65[v131];
    ++v135;
    if (v63)
    {
      goto LABEL_101;
    }
  }

  v140 = v299;
  v141 = [v299 infoDictionary];
  v142 = sub_1BF4E88E4();
  v143 = v55;
  v144 = [v141 objectForKey:v142 ofClass:v55];

  if (v144)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v145 = v270;
  v146 = v269;
  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {

      LODWORD(v272) = 1;
      goto LABEL_115;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  LODWORD(v272) = 0;
LABEL_115:
  v147 = [v140 infoDictionary];
  v148 = sub_1BF4E88E4();
  v149 = [v147 objectForKey:v148 ofClass:v143];

  if (v149)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {

      LODWORD(v272) = 1;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  if ([v275 developerType] != 1)
  {
    goto LABEL_133;
  }

  v150 = [v140 infoDictionary];
  v151 = sub_1BF4E88E4();
  v152 = [v150 objectForKey:v151 ofClass:v143];

  if (v152)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (!*(&v305 + 1))
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    goto LABEL_133;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_133:
    v276 = 0;
    v256 = 0;
    goto LABEL_134;
  }

  v153 = v303;
  v276 = v302;
  v154 = qword_1EDC9D500;

  if (v154 != -1)
  {
    swift_once();
  }

  v155 = sub_1BF4E7B54();
  __swift_project_value_buffer(v155, qword_1EDCA69A0);

  v156 = sub_1BF4E7B34();
  v157 = sub_1BF4E8E84();

  v158 = os_log_type_enabled(v156, v157);
  v256 = v153;
  if (v158)
  {
    v159 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    *&v306 = v160;
    *v159 = 136446210;
    v161 = sub_1BF38D65C(v276, v153, &v306);

    *(v159 + 4) = v161;
    v145 = v270;
    _os_log_impl(&dword_1BF389000, v156, v157, "Found effective original app container bundle identifier: %{public}s", v159, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v160);
    v162 = v160;
    v140 = v299;
    MEMORY[0x1BFB5A5D0](v162, -1, -1);
    MEMORY[0x1BFB5A5D0](v159, -1, -1);
  }

  else
  {
  }

LABEL_134:
  v163 = [objc_allocWithZone(MEMORY[0x1E69942F0]) init];
  v164 = [v140 entitlements];
  v165 = sub_1BF4E88E4();
  v166 = [v164 objectForKey:v165 ofClass:ObjCClassFromMetadata];

  if (v166)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
      v167 = v302;
      goto LABEL_142;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v167 = 0;
LABEL_142:
  [v163 setCanOpenSystemURLs_];
  v168 = [v140 entitlements];
  v169 = sub_1BF4E88E4();
  v170 = [v168 objectForKey:v169 ofClass:ObjCClassFromMetadata];

  if (v170)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
      v171 = v302;
      goto LABEL_150;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v171 = 0;
LABEL_150:
  [v163 setUsesEventService_];
  v172 = [v140 entitlements];
  v173 = sub_1BF4E88E4();
  v174 = [v172 objectForKey:v173 ofClass:ObjCClassFromMetadata];

  if (v174)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
      v175 = v302;
      goto LABEL_158;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v175 = 0;
LABEL_158:
  [v163 setCanKeepAlive_];
  v176 = [v140 entitlements];
  v177 = sub_1BF4E88E4();
  v178 = [v176 objectForKey:v177 ofClass:ObjCClassFromMetadata];

  if (v178)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v304 = 0u;
    v305 = 0u;
  }

  v306 = v304;
  v307 = v305;
  if (*(&v305 + 1))
  {
    if (swift_dynamicCast())
    {
      v179 = v302;
      goto LABEL_166;
    }
  }

  else
  {
    sub_1BF38C9B4(&v306, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  }

  v179 = 0;
LABEL_166:
  [v163 setInvalidatesOnStorefrontChange_];
  sub_1BF4E9034();
  v180 = [v268 bundleIdentifier];
  sub_1BF4E8914();

  sub_1BF4E7694();

  v181 = v280;
  sub_1BF4E7694();
  v182 = 1;
  (*(v301 + 56))(v181, 0, 1, v308);
  v308 = sub_1BF4E9014();
  v183 = v299;
  v184 = sub_1BF4E8E94();
  v186 = v185;
  v187 = [v183 localizedName];
  ObjCClassFromMetadata = sub_1BF4E8914();
  v280 = v188;

  v189 = [v183 uniqueIdentifier];
  sub_1BF4E7374();

  v190 = [v183 executableURL];
  v301 = v186;
  if (v190)
  {
    v191 = v286;
    v192 = v190;
    sub_1BF4E7154();

    v193 = v191;
    v182 = 0;
  }

  else
  {
    v193 = v286;
  }

  v194 = v278;
  v195 = v184;
  (*(v146 + 56))(v193, v182, 1, v145);
  v196 = v193;
  v197 = v281;
  sub_1BF39D6DC(v196, v281);
  if ((*(v146 + 48))(v197, 1, v145) == 1)
  {
    v198 = v146;
    sub_1BF38C9B4(v197, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v200 = v292;
    v199 = v293;
    v201 = v282;
    (*(v292 + 56))(v282, 1, 1, v293);
    goto LABEL_172;
  }

  v201 = v282;
  URL.lastModifiedDate.getter(v282);
  v198 = v146;
  (*(v146 + 8))(v197, v145);
  v200 = v292;
  v199 = v293;
  if ((*(v292 + 48))(v201, 1, v293) == 1)
  {
LABEL_172:
    sub_1BF4E72B4();
    v202 = (*(v200 + 48))(v201, 1, v199);
    v203 = v300;
    if (v202 != 1)
    {
      sub_1BF38C9B4(v201, &qword_1EBDD9B00, &qword_1BF4F1E50);
    }

    goto LABEL_175;
  }

  (*(v200 + 32))(v277, v201, v199);
  v203 = v300;
LABEL_175:
  v204 = *(v198 + 16);
  v204(v287, v296, v145);
  v204(v288, v203, v145);
  sub_1BF4E70F4();
  if (v194)
  {
    v205 = v194;
    sub_1BF4E8434();
  }

  else
  {
    v206 = sub_1BF4E8424();
    (*(*(v206 - 8) + 56))(v294, 1, 1, v206);
  }

  v207 = v195;
  v204(v290, v297, v145);
  v208 = v256;
  if (v256)
  {

    v271 = v208;
  }

  else
  {
    v276 = v264;
  }

  v209 = v269;
  v210 = v274;
  v211 = [v275 localizedName];
  v212 = sub_1BF4E8914();
  v214 = v213;

  v215 = sub_1BF4E8E94();
  v217 = v216;
  v218 = [v183 SDKVersion];
  v282 = v212;
  v281 = v214;
  v279 = v215;
  v274 = v217;
  if (v218)
  {
    v219 = v218;
    v264 = sub_1BF4E8914();
    v256 = v220;

    v183 = v299;
  }

  else
  {
    v264 = sub_1BF4E8914();
    v256 = v221;
  }

  v222 = v259;
  v223 = v260 == 1;
  [v183 platform];

  v260 = CHSPlatformFromDYLDPlatform();
  LODWORD(v259) = ([v275 developerType] != 1) & v222;
  v286 = v163;
  [v163 copy];
  sub_1BF4E9164();
  swift_unknownObjectRelease();
  sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288);
  v224 = swift_dynamicCast();
  v225 = v304;
  if (!v224)
  {
    v225 = 0;
  }

  v255 = v225;
  v226 = v210[13];
  v227 = sub_1BF4E8424();
  v228 = v285;
  (*(*(v227 - 8) + 56))(v285 + v226, 1, 1, v227);
  v229 = (v228 + v210[17]);
  v230 = (v228 + v210[21]);
  v253 = (v228 + v210[22]);
  v254 = v210[27];
  v231 = v308;
  *v228 = v308;
  v228[1] = v207;
  v232 = ObjCClassFromMetadata;
  v228[2] = v301;
  v228[3] = v232;
  v228[4] = v280;
  (*(v283 + 32))(v228 + v210[7], v291, v284);
  (*(v292 + 32))(v228 + v210[8], v277, v293);
  *(v228 + v210[9]) = v223;
  v233 = *(v209 + 32);
  v234 = v270;
  v233(v228 + v210[10], v287, v270);
  v233(v228 + v210[11], v288, v234);
  v233(v228 + v210[12], v289, v234);
  v235 = v231;
  sub_1BF41D048(v294, v228 + v226);
  *(v228 + v210[14]) = v267 & 1;
  v233(v228 + v210[15], v290, v234);
  v236 = (v228 + v210[16]);
  v237 = v271;
  *v236 = v276;
  v236[1] = v237;
  v238 = v281;
  *v229 = v282;
  v229[1] = v238;
  v239 = (v228 + v210[18]);
  v240 = v274;
  *v239 = v279;
  v239[1] = v240;
  v241 = (v228 + v210[19]);
  v242 = v256;
  *v241 = v264;
  v241[1] = v242;
  *(v228 + v210[20]) = v260;
  *v230 = 0;
  v230[1] = 0;
  v243 = v253;
  v244 = v257;
  *v253 = v258;
  v243[1] = v244;
  *(v228 + v210[23]) = v259;
  *(v228 + v210[24]) = v262;
  *(v228 + v210[25]) = v261;
  *(v228 + v210[26]) = v273;
  *(v228 + v254) = v255;
  v2 = v265;
  sub_1BF4B9360(v228, v265 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_hasConfigurationColorAssets) = v272;
  v245 = objc_opt_self();
  v246 = v263;
  v247 = [v245 preferredLanguagesForContainerBundleIdentifier_];

  if (v247)
  {
    v248 = sub_1BF4E8BA4();
  }

  else
  {

    v248 = 0;
  }

  v249 = v300;

  v250 = *(v269 + 8);
  v251 = v270;
  v250(v297, v270);
  v250(v296, v251);
  v250(v249, v251);
  *(v2 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages) = v248;

  return v2;
}

uint64_t sub_1BF4B6C64(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = sub_1BF4E8464();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1BF4E83D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BF4E8634();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v8, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6985960], v9);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1BF38C9B4(v8, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  sub_1BF38C94C(v21, v23, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v3 + 104))(v5, *MEMORY[0x1E6985A40], v22);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  v17 = sub_1BF4B7314(v15);
  (*(v13 + 8))(v15, v20);
  return v17;
}

uint64_t sub_1BF4B6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v24 = a3;
  v22 = a2;
  v23 = sub_1BF4E8464();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1BF4E83D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BF4E8634();
  v15 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E6985960], v11);
    if (v18(v10, 1, v11) != 1)
    {
      sub_1BF38C9B4(v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  sub_1BF38C94C(v22, v26, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v5 + 104))(v7, *MEMORY[0x1E6985A40], v23);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  sub_1BF38F778(v17, v24, v25);
  return (*(v15 + 8))(v17, v21);
}

uint64_t sub_1BF4B7314(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF38F8C8(v1);
  os_unfair_lock_unlock(*(v3 + 16));
  sub_1BF4E8264();
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity);
  v9[3] = sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v9[0] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_preferredLanguages);

  v6 = v4;
  v7 = MEMORY[0x1BFB584A0](v9, v5, a1, 0, 0);

  sub_1BF38C9B4(v9, &qword_1EBDD8AD0, &unk_1BF4F53F0);
  return v7;
}

void sub_1BF4B7420()
{
  v1 = v0;
  v34[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA69A0);

  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136315138;
    v7 = [*(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) bundleIdentifier];
    v8 = sub_1BF4E8914();
    v10 = v9;

    v11 = sub_1BF38D65C(v8, v10, v34);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1BF389000, v3, v4, "Killing %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  v12 = [objc_opt_self() defaultManager];
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  v14 = (v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  type metadata accessor for WidgetExtensionInfo(0);
  v15 = sub_1BF4E7094();
  v34[0] = 0;
  v16 = [v13 terminatePlugInAtURL:v15 withError:v34];

  v17 = v34[0];
  if (v16)
  {

    v18 = v17;
  }

  else
  {
    v19 = v34[0];
    v20 = sub_1BF4E6FF4();

    swift_willThrow();

    v21 = v20;
    v22 = sub_1BF4E7B34();
    v23 = sub_1BF4E8E84();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v24 = 136446466;
      v27 = [*v14 tokenString];
      v28 = sub_1BF4E8914();
      v30 = v29;

      v31 = sub_1BF38D65C(v28, v30, v34);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2114;
      v32 = v20;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      *v25 = v33;
      _os_log_impl(&dword_1BF389000, v22, v23, "Error terminating plugin %{public}s: %{public}@", v24, 0x16u);
      sub_1BF38C9B4(v25, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1BFB5A5D0](v26, -1, -1);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1BF4B7850(uint64_t a1)
{
  v2 = sub_1BF4E7394();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  type metadata accessor for WidgetExtensionInfo(0);
  sub_1BF391FD8(&qword_1EBDD8948, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BF4E8884();
  v7 = [*v6 tokenString];
  sub_1BF4E8914();

  sub_1BF4E89F4();

  sub_1BF4E89F4();
  sub_1BF4E7334();
  sub_1BF391FD8(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  v8 = [*(v10[1] + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  sub_1BF4E7374();

  sub_1BF4E8884();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BF4B7A84(uint64_t a1)
{
  v3 = sub_1BF4E7394();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BF38E49C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  type metadata accessor for WidgetExtension(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v7 = v16;
  v8 = type metadata accessor for WidgetExtensionInfo(0);
  v9 = [*(v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  sub_1BF4E7374();

  LOBYTE(v9) = sub_1BF4E7364();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0 || (v11 = (v7 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info), (*(v4 + 16))(v6, v7 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info + *(v8 + 28), v3), v12 = sub_1BF4E7364(), v10(v6, v3), (v12 & 1) == 0) || (v13 = [*(v7 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier], sub_1BF4E7374(), v13, LOBYTE(v13) = sub_1BF4E7364(), v10(v6, v3), (v13 & 1) == 0))
  {

LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  v14 = WidgetExtensionInfo.matches(_:)(v11);

  return v14 & 1;
}

uint64_t sub_1BF4B7CE4()
{
  sub_1BF38DB44(v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetExtension(uint64_t a1)
{
  result = qword_1EDC9AD58;
  if (!qword_1EDC9AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF4B7DCC(uint64_t a1)
{
  result = type metadata accessor for WidgetExtensionInfo(319);
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

uint64_t get_enum_tag_for_layout_string_9ChronoKit20WidgetExtensionErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF4B7EB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
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

  v5 = v4 + 1;
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4B7F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_1BF4B7FC4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info) tokenString];
  v2 = sub_1BF4E8914();

  return v2;
}

uint64_t sub_1BF4B8028@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 28);
  v5 = sub_1BF4E7394();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF4B80F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 44);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF4B817C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 60);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF4B821C()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 64));

  return v2;
}

uint64_t sub_1BF4B826C()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 76));

  return v2;
}

uint64_t sub_1BF4B82F8()
{
  v1 = *v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 88));

  return v2;
}

double sub_1BF4B8384()
{
  type metadata accessor for WidgetExtensionInfo(0);

  return result;
}

uint64_t sub_1BF4B84E4(double a1)
{
  sub_1BF4E9804();
  sub_1BF4B7850(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4B854C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4B7850(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4B858C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Extension.description.getter(a1, WitnessTable);
}

id sub_1BF4B85E0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  *a1 = v2;
  return v2;
}

uint64_t sub_1BF4B8640(void *a1)
{
  a1[1] = sub_1BF391FD8(&qword_1EDC9AD70, type metadata accessor for WidgetExtension, &unk_1BF4F6258);
  a1[2] = sub_1BF391FD8(&unk_1EDC9AD80, type metadata accessor for WidgetExtension, &unk_1BF4F62C0);
  result = sub_1BF391FD8(&qword_1EDC9AD78, type metadata accessor for WidgetExtension, &unk_1BF4F6220);
  a1[3] = result;
  return result;
}

unint64_t sub_1BF4B86EC()
{
  result = qword_1EDC99B80[0];
  if (!qword_1EDC99B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC99B80);
  }

  return result;
}

id sub_1BF4B8740(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E88E4();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1BF4B881C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1BF4B88C8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFB59570](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BF4E9204();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1BF4B89F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7394();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v12 = a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  type metadata accessor for WidgetExtensionInfo(0);
  v13 = a2 + v11;
  if ((sub_1BF4E7364() & 1) == 0)
  {
    goto LABEL_14;
  }

  v32 = a2;
  v33 = v7;
  v34 = v5;
  v35 = v4;
  v14 = [*v12 tokenString];
  v15 = sub_1BF4E8914();
  v17 = v16;

  v18 = [*v13 tokenString];
  v19 = sub_1BF4E8914();
  v21 = v20;

  if (v15 == v19 && v17 == v21)
  {
  }

  else
  {
    v23 = sub_1BF4E9734();

    if ((v23 & 1) == 0)
    {
LABEL_14:
      v27 = 0;
      return v27 & 1;
    }
  }

  if ((*(v12 + 8) != *(v13 + 8) || *(v12 + 16) != *(v13 + 16)) && (sub_1BF4E9734() & 1) == 0 || (sub_1BF4E72D4() & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = [*(a1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  sub_1BF4E7374();

  v25 = [*(v32 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_exExtensionIdentity) uniqueIdentifier];
  v26 = v33;
  sub_1BF4E7374();

  v27 = sub_1BF4E7364();
  v28 = *(v34 + 8);
  v29 = v26;
  v30 = v35;
  v28(v29, v35);
  v28(v10, v30);
  return v27 & 1;
}

void sub_1BF4B8C98(void *a1)
{
  v2 = v1;
  v4 = [a1 entitlements];
  v5 = sub_1BF4E88E4();
  sub_1BF3901C0(0, &qword_1EDC9F9A8, 0x1E696AEC0);
  v6 = [v4 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];

  if (v6)
  {
    sub_1BF4E9164();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56[0] = v54;
  v56[1] = v55;
  if (!*(&v55 + 1))
  {
    sub_1BF38C9B4(v56, &qword_1EBDD8AD0, &unk_1BF4F53F0);
LABEL_12:
    if (![a1 containingBundleRecord])
    {
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA69A0);
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E84();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1BF389000, v21, v22, "No effective container bundle identifier found.", v23, 2u);
        MEMORY[0x1BFB5A5D0](v23, -1, -1);
      }

      sub_1BF4B86EC();
      swift_allocError();
      *v24 = 3;
      swift_willThrow();
    }

    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = v52;
  v8 = v53;
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF4E7B54();
  __swift_project_value_buffer(v9, qword_1EDCA69A0);
  v10 = a1;
  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E84();

  if (os_log_type_enabled(v11, v12))
  {
    v57 = v52;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v56[0] = v14;
    *v13 = 136446210;
    v15 = [v10 bundleIdentifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BF4E8914();
      v19 = v18;
    }

    else
    {
      v17 = 7104878;
      v19 = 0xE300000000000000;
    }

    v8 = v53;
    v25 = sub_1BF38D65C(v17, v19, v56);

    *(v13 + 4) = v25;
    _os_log_impl(&dword_1BF389000, v11, v12, "Explicit effective container specified for extension: %{public}s - looking for effective container bundle.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
    MEMORY[0x1BFB5A5D0](v13, -1, -1);

    v7 = v57;
  }

  else
  {
  }

  v26 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v27 = sub_1BF4B8740(v7, v8, 0);
  if (v1)
  {
    goto LABEL_22;
  }

  if (!v27)
  {
    v47 = sub_1BF4E7B34();
    v48 = sub_1BF4E8E84();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1BF389000, v47, v48, "Effective container specified, but no effective container bundle found.", v49, 2u);
      MEMORY[0x1BFB5A5D0](v49, -1, -1);
    }

    sub_1BF4B86EC();
    v2 = swift_allocError();
    *v50 = 3;
    swift_willThrow();
LABEL_22:
    v28 = v2;
    v29 = sub_1BF4E7B34();
    v30 = sub_1BF4E8E84();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = v2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1BF389000, v29, v30, "Effective container specified, but error finding container bundle: %{public}@", v31, 0xCu);
      sub_1BF38C9B4(v32, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v32, -1, -1);
      MEMORY[0x1BFB5A5D0](v31, -1, -1);
    }

    sub_1BF4B86EC();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();

    return;
  }

  v36 = v27;
  v37 = sub_1BF4E7B34();
  v38 = sub_1BF4E8E84();
  v39 = v36;

  if (os_log_type_enabled(v37, v38))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v56[0] = v41;
    *v40 = 136446210;
    v42 = [v39 bundleIdentifier];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1BF4E8914();
      v46 = v45;
    }

    else
    {
      v44 = 7104878;
      v46 = 0xE300000000000000;
    }

    v51 = sub_1BF38D65C(v44, v46, v56);

    *(v40 + 4) = v51;
    _os_log_impl(&dword_1BF389000, v37, v38, "Found effective container bundle identifier: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1BFB5A5D0](v41, -1, -1);
    MEMORY[0x1BFB5A5D0](v40, -1, -1);
  }
}

uint64_t sub_1BF4B9360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PowerlogUpdateIdentity.init(widget:identifier:location:suggestionIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 48) = v8;
  *(a7 + 16) = a3;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  *(a7 + 40) = v7;
  return result;
}

uint64_t PowerlogControlUpdateIdentity.init(control:identifier:location:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *(a5 + 32) = v6;
  return result;
}

ChronoKit::PowerlogUpdateCost_optional __swiftcall PowerlogUpdateCost.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PowerlogUpdateCost.rawValue.getter()
{
  if (*v0)
  {
    return 1701147238;
  }

  else
  {
    return 0x6465746567647562;
  }
}

uint64_t sub_1BF4B94AC(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4B9528(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF4B9590(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4B9608@<X0>(char *a2@<X8>)
{
  v3 = sub_1BF4E9514();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1BF4B9668(uint64_t *a1@<X8>)
{
  v2 = 1701147238;
  if (!*v1)
  {
    v2 = 0x6465746567647562;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BF4B96A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701147238;
  }

  else
  {
    v3 = 0x6465746567647562;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701147238;
  }

  else
  {
    v5 = 0x6465746567647562;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF4E9734();
  }

  return v8 & 1;
}

ChronoKit::PowerlogWakeReason_optional __swiftcall PowerlogWakeReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PowerlogWakeReason.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x656C617473;
      break;
    case 2:
      result = 0x6765726F46707061;
      break;
    case 3:
      result = 0x6973736553707061;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C616E7265747865;
      break;
    case 7:
      result = 0x65526D6574737973;
      break;
    case 8:
      result = 0x746F687370616E73;
      break;
    case 9:
      result = 0x6775626564;
      break;
    case 0xA:
      result = 0x6D706F6C65766564;
      break;
    case 0xB:
      result = 0x7463617265746E69;
      break;
    case 0xC:
      result = 0x6550746E65746E69;
      break;
    case 0xD:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF4B9944(double a1)
{
  sub_1BF4E9804();
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF4B99AC(uint64_t a1)
{
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();
}

uint64_t sub_1BF4B9A10(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

unint64_t sub_1BF4B9A80@<X0>(unint64_t *a1@<X8>)
{
  result = PowerlogWakeReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF4B9AA8()
{
  v0 = PowerlogWakeReason.rawValue.getter();
  v2 = v1;
  if (v0 == PowerlogWakeReason.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BF4E9734();
  }

  return v5 & 1;
}

uint64_t PowerlogUpdateIdentity.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PowerlogUpdateIdentity.suggestionIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void PowerlogUpdateIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t PowerlogUpdateIdentity.init(widget:identifier:location:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  return result;
}

uint64_t PowerlogUpdateIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000001FLL, 0x80000001BF4FE730);
  v6 = [v2 description];
  v7 = sub_1BF4E8914();
  v9 = v8;

  MEMORY[0x1BFB58C90](v7, v9);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
  if (v5)
  {
    v10 = v4;
  }

  else
  {
    v10 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1BFB58C90](v10, v5);

  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v11 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogUpdateIdentity.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (!v3)
  {
    sub_1BF4E9824();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1BFB59A70](3);
    return MEMORY[0x1BFB59A70](v2);
  }

  sub_1BF4E9824();
  sub_1BF4E89F4();
  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = qword_1BF4F67A0[v2];
  return MEMORY[0x1BFB59A70](v2);
}

uint64_t PowerlogUpdateIdentity.hashValue.getter(double a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (!v3)
  {
    sub_1BF4E9824();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x1BFB59A70](3);
    goto LABEL_6;
  }

  sub_1BF4E9824();
  sub_1BF4E89F4();
  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = qword_1BF4F67A0[v2];
LABEL_6:
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

void sub_1BF4B9F2C(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t sub_1BF4B9F44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  v9 = v3;
  sub_1BF4E9804();
  PowerlogUpdateIdentity.hash(into:)(v5);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4B9FB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = *(v1 + 24);
  v9 = v3;
  v10 = v4;
  sub_1BF4E9804();
  PowerlogUpdateIdentity.hash(into:)(v6);
  return sub_1BF4E9844();
}

uint64_t PowerlogControlUpdateIdentity.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void PowerlogControlUpdateIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t PowerlogControlUpdateIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000027, 0x80000001BF4FE750);
  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v8 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogControlUpdateIdentity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    v2 = qword_1BF4F67A0[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v2);
}

BOOL static PowerlogControlUpdateIdentity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v3 == v7;
  if (!v10 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    v11 = qword_1BF4F67A0[v4];
    if (!v9)
    {
      v12 = 3;
      return v11 == v12;
    }

LABEL_13:
    v12 = 7;
    v14 = 8;
    if (v8 != 7)
    {
      v14 = 9;
    }

    if (v8 != 6)
    {
      v12 = v14;
    }

    v15 = 5;
    if (v8 != 4)
    {
      v15 = 6;
    }

    if (v8 <= 5)
    {
      v12 = v15;
    }

    v16 = 4;
    if (v8 < 3)
    {
      v16 = v8;
    }

    if (v8 <= 3)
    {
      v12 = v16;
    }

    return v11 == v12;
  }

  if (v9)
  {
    v11 = 3;
    goto LABEL_13;
  }

  return v4 == v8;
}

uint64_t PowerlogControlUpdateIdentity.hashValue.getter(double a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    v2 = qword_1BF4F67A0[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4BA400(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    v2 = qword_1BF4F67A0[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v2);
}

uint64_t sub_1BF4BA480(uint64_t a1, double a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v4)
  {
    v3 = qword_1BF4F67A0[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

BOOL sub_1BF4BA518(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v6 && v3 == v7;
  if (!v10 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    v11 = qword_1BF4F67A0[v4];
    if (!v9)
    {
      return v11 == 3;
    }

LABEL_13:
    v14 = 7;
    v15 = 8;
    if (v8 != 7)
    {
      v15 = 9;
    }

    if (v8 != 6)
    {
      v14 = v15;
    }

    v16 = 5;
    if (v8 != 4)
    {
      v16 = 6;
    }

    if (v8 <= 5)
    {
      v14 = v16;
    }

    v17 = 4;
    if (v8 < 3)
    {
      v17 = v8;
    }

    if (v8 <= 3)
    {
      v14 = v17;
    }

    return v11 == v14;
  }

  if (v9)
  {
    v11 = 3;
    goto LABEL_13;
  }

  return v4 == v8;
}

BOOL _s9ChronoKit22PowerlogUpdateIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v15 = a1[5];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v18 = a2[5];
  v16 = *(a1 + 48);
  v17 = *(a2 + 48);
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0 || (v2 != v6 || v4 != v8) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v9 || (v3 != v7 || v5 != v9) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v16 & 1) == 0)
  {
    v11 = v18;
    if ((v17 & 1) == 0)
    {
      return v15 == v18;
    }

    v10 = 3;
    goto LABEL_17;
  }

  v10 = qword_1BF4F67A0[v15];
  v11 = v18;
  if (v17)
  {
LABEL_17:
    if (v11 <= 3)
    {
      v12 = 4;
      if (v11 < 3)
      {
        v12 = v11;
      }
    }

    else if (v11 <= 5)
    {
      if (v11 == 4)
      {
        v12 = 5;
      }

      else
      {
        v12 = 6;
      }
    }

    else if (v11 == 6)
    {
      v12 = 7;
    }

    else if (v11 == 7)
    {
      v12 = 8;
    }

    else
    {
      v12 = 9;
    }

    return v10 == v12;
  }

  v12 = 3;
  return v10 == v12;
}

unint64_t sub_1BF4BA7E0()
{
  result = qword_1EBDD9BE0;
  if (!qword_1EBDD9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9BE0);
  }

  return result;
}

unint64_t sub_1BF4BA838()
{
  result = qword_1EBDD9BE8;
  if (!qword_1EBDD9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9BE8);
  }

  return result;
}

unint64_t sub_1BF4BA88C(uint64_t a1)
{
  result = sub_1BF4BA8B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF4BA8B4()
{
  result = qword_1EDC974D8[0];
  if (!qword_1EDC974D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC974D8);
  }

  return result;
}

unint64_t sub_1BF4BA90C()
{
  result = qword_1EDC974D0;
  if (!qword_1EDC974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC974D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerlogWakeReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF4BAA4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BF4BAA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF4BAAF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BF4BAB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF4BAB94@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = sub_1BF4E76B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF4BABD4(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  return sub_1BF4E76C4();
}

uint64_t sub_1BF4BAC2C()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](60, 0xE100000000000000);
  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4F68C0);
  MEMORY[0x1BFB58C90](0x746E656469202D20, 0xEF203A7265696669);
  v5 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v6 = [*v5 description];
  v7 = sub_1BF4E8914();
  v9 = v8;

  MEMORY[0x1BFB58C90](v7, v9);

  MEMORY[0x1BFB58C90](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  MEMORY[0x1BFB58C90](*(v5 + 8), *(v5 + 16));
  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FABD0);
  v10 = type metadata accessor for WidgetExtensionInfo(0);
  MEMORY[0x1BFB58C90](*(v5 + v10[18]), *(v5 + v10[18] + 8));
  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FE780);
  (*(v2 + 16))(v4, v5 + v10[8], v1);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDC9F0F8;
  v12 = sub_1BF4E7254();
  v13 = [v11 stringFromDate_];

  v14 = sub_1BF4E8914();
  v16 = v15;

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1BFB58C90](v14, v16);

  MEMORY[0x1BFB58C90](0x7265746E49736920, 0xED0000203A6C616ELL);
  if (*(v5 + v10[9]))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v5 + v10[9]))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v17, v18);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v20[0];
}

uint64_t type metadata accessor for RemoteWidgetExtension(uint64_t a1)
{
  result = qword_1EDC998C8;
  if (!qword_1EDC998C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteWidgetExtension.identifier.getter()
{
  v1 = [*(v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20)) tokenString];
  v2 = sub_1BF4E8914();

  return v2;
}

uint64_t RemoteWidgetExtension.version.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20) + 8);

  return v1;
}

uint64_t RemoteWidgetExtension.pluginUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 28);
  v5 = sub_1BF4E7394();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 32);
  v5 = sub_1BF4E7334();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 40);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.containerBundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 60);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.containerBundleVersion.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 72));

  return v2;
}

uint64_t RemoteWidgetExtension.containerBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20));
  v2 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = (*(*(v3 - 8) + 48))(v1 + v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1BF4E76B4();
    swift_endAccess();
    return v5;
  }

  return result;
}

uint64_t RemoteWidgetExtension.effectiveContainerBundleIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 64));

  return v2;
}

uint64_t RemoteWidgetExtension.sdkVersion.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 76));

  return v2;
}

uint64_t RemoteWidgetExtension.watchKitExtensionIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 84));

  return v2;
}

uint64_t RemoteWidgetExtension.pushEnvironment.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 88));

  return v2;
}

uint64_t RemoteWidgetExtension.dataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 44);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t RemoteWidgetExtension.systemDataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 48);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double RemoteWidgetExtension.availableLocalizations.getter()
{
  type metadata accessor for RemoteWidgetExtension(0);
  type metadata accessor for WidgetExtensionInfo(0);

  return result;
}

void *RemoteWidgetExtension.entitlements.getter()
{
  v1 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v2 = *(v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 108));
  v3 = v2;
  return v2;
}

uint64_t RemoteWidgetExtension.requestedDataProtection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BF4E8424();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t RemoteWidgetExtension.nominatedContainingBundleIdentifiers.getter()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - v2;
  v3 = v0 + *(type metadata accessor for RemoteWidgetExtension(0) + 20);
  v4 = *(v3 + *(type metadata accessor for WidgetExtensionInfo(0) + 104));
  KeyPath = swift_getKeyPath();
  v6 = *(v4 + 16);
  if (v6)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v6, 0);
    v7 = v29;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v23 = *(v8 + 56);
    v24 = v9;
    v11 = (v8 - 8);
    do
    {
      v13 = v25;
      v12 = v26;
      v14 = v8;
      v24(v25, v10, v26);
      v15 = KeyPath;
      swift_getAtKeyPath();
      (*v11)(v13, v12);
      v16 = v27;
      v17 = v28;
      v29 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BF3A31DC((v18 > 1), v19 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v19 + 1;
      v20 = v7 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v10 += v23;
      --v6;
      v8 = v14;
      KeyPath = v15;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t RemoteWidgetExtension.init(info:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for RemoteWidgetExtension(0);
  result = sub_1BF4BD204(a1, a3 + *(v6 + 20), type metadata accessor for WidgetExtensionInfo);
  *a3 = a2;
  return result;
}

uint64_t sub_1BF4BBB48(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) tokenString];
  v3 = sub_1BF4E8914();

  return v3;
}

uint64_t sub_1BF4BBBA4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20) + 8);

  return v2;
}

uint64_t sub_1BF4BBBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 28);
  v6 = sub_1BF4E7394();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 32);
  v6 = sub_1BF4E7334();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 40);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 44);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 48);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBEA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BF4E8424();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1BF4BBF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 60);
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1BF4BBFC8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  v3 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = (*(*(v4 - 8) + 48))(v2 + v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_1BF4E76B4();
    swift_endAccess();
    return v6;
  }

  return result;
}

uint64_t sub_1BF4BC098(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 72));

  return v3;
}

uint64_t sub_1BF4BC0E0(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 64));

  return v3;
}

uint64_t sub_1BF4BC128(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 76));

  return v3;
}

uint64_t sub_1BF4BC1A4(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 84));

  return v3;
}

uint64_t sub_1BF4BC1EC(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 88));

  return v3;
}

double sub_1BF4BC268(uint64_t a1)
{
  type metadata accessor for WidgetExtensionInfo(0);

  return result;
}

void *sub_1BF4BC2E4(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *(v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 108));
  v4 = v3;
  return v3;
}

uint64_t sub_1BF4BC320(uint64_t a1, uint64_t a2)
{
  sub_1BF4BCC68(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t RemoteWidgetExtension.makeSession(schedulingPriority:suspensionObserver:)(uint64_t a1, uint64_t a2)
{
  sub_1BF4BCC68(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t RemoteWidgetExtension.makeSessionAsync(schedulingPriority:suspensionObserver:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v25 = a4;
  v26 = a3;
  v22 = a2;
  v23 = sub_1BF4E8464();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1BF4E83D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BF4E8634();
  v15 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E6985960], v11);
    if (v18(v10, 1, v11) != 1)
    {
      sub_1BF38C9B4(v10, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  sub_1BF38C94C(v22, v27, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v5 + 104))(v7, *MEMORY[0x1E6985A40], v23);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  v26(*v24);
  return (*(v15 + 8))(v17, v21);
}

uint64_t sub_1BF4BC73C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF4BCA3C(v4, v1, v2, v3);
}

uint64_t RemoteWidgetExtension.matches(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1BF4BCA3C(v4, v1, v2, v3);
}

id sub_1BF4BC7E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 20));
  *a2 = v3;
  return v3;
}

uint64_t sub_1BF4BC7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C08, &unk_1BF4F68F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for RemoteWidgetExtension(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[3] = v9;
  v16[4] = sub_1BF4BD154(&unk_1EBDD92B0, type metadata accessor for RemoteWidgetExtension, &protocol conformance descriptor for RemoteWidgetExtension);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  sub_1BF4BD19C(a1, boxed_opaque_existential_0, type metadata accessor for RemoteWidgetExtension);
  sub_1BF38E49C(v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  v11 = swift_dynamicCast();
  v12 = *(v6 + 56);
  if (v11)
  {
    v12(v4, 0, 1, v5);
    sub_1BF4BD204(v4, v8, type metadata accessor for RemoteWidgetExtension);
    v13 = WidgetExtensionInfo.matches(_:)(&v8[*(v5 + 20)]);
    sub_1BF4BD26C(v8);
  }

  else
  {
    v12(v4, 1, 1, v5);
    sub_1BF38C9B4(v4, &qword_1EBDD9C08, &unk_1BF4F68F8);
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13 & 1;
}

uint64_t sub_1BF4BCA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C08, &unk_1BF4F68F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19[-v8];
  v10 = type metadata accessor for RemoteWidgetExtension(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = a3;
  v20[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_1BF38E49C(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v9, 0, 1, v10);
    sub_1BF4BD204(v9, v13, type metadata accessor for RemoteWidgetExtension);
    v17 = WidgetExtensionInfo.matches(_:)(&v13[*(v10 + 20)]);
    sub_1BF4BD26C(v13);
  }

  else
  {
    v16(v9, 1, 1, v10);
    sub_1BF38C9B4(v9, &qword_1EBDD9C08, &unk_1BF4F68F8);
    v17 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v17 & 1;
}

uint64_t sub_1BF4BCC68(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = sub_1BF4E8464();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BD0, &qword_1BF4F6350);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1BF4E83D4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BF4E8634();
  v13 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C94C(a1, v8, &qword_1EBDD9BD0, &qword_1BF4F6350);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6985960], v9);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1BF38C9B4(v8, &qword_1EBDD9BD0, &qword_1BF4F6350);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  sub_1BF38C94C(v20, v23, &qword_1EBDD9BD8, &qword_1BF4F6358);
  (*(v3 + 104))(v5, *MEMORY[0x1E6985A40], v21);
  sub_1BF4E8614();
  sub_1BF4E8624();
  sub_1BF4E8604();
  (*(v13 + 8))(v15, v19);
  return *v22;
}

uint64_t sub_1BF4BCFB4(void *a1, double a2)
{
  a1[1] = sub_1BF4BD154(&qword_1EBDD9BF0, type metadata accessor for RemoteWidgetExtension, &protocol conformance descriptor for RemoteWidgetExtension);
  a1[2] = sub_1BF4BD154(&qword_1EBDD9BF8, type metadata accessor for RemoteWidgetExtension, &protocol conformance descriptor for RemoteWidgetExtension);
  result = sub_1BF4BD154(&qword_1EBDD9C00, type metadata accessor for RemoteWidgetExtension, &protocol conformance descriptor for RemoteWidgetExtension);
  a1[3] = result;
  return result;
}

uint64_t sub_1BF4BD0D0(uint64_t a1)
{
  result = type metadata accessor for RemoteWidgetExtensionSession(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WidgetExtensionInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF4BD154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF4BD19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4BD204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4BD26C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteWidgetExtension(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReloadStateService.__allocating_init(persistenceStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v5;
  sub_1BF38E610(a1, v2 + 16);
  return v2;
}

uint64_t ReloadStateService.init(persistenceStore:)(__int128 *a1)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v5 = MEMORY[0x1E69E7CC8];
  *(v1 + 56) = v3;
  *(v1 + 64) = v5;
  sub_1BF38E610(a1, v1 + 16);
  return v1;
}

void sub_1BF4BD3BC(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v9 = *(v4 + 56);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF4BD454(a1, a2, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1BF4BD454@<X0>(uint64_t a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X8>)
{
  v71 = a2;
  v70 = a3;
  v73 = a4;
  v74 = sub_1BF4E7334();
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = v72;
  sub_1BF4BE268(a1, v71, v70, &v63 - v28);
  if (v30)
  {
    v31 = v75;

    v32 = 1;
    v33 = v73;
    v34 = v74;
  }

  else
  {
    v71 = v20;
    v72 = v17;
    v70 = v14;
    sub_1BF4BE268(a1, 0, 0, v26);
    v36 = v29;
    v37 = v23;
    sub_1BF3ABF74(v29, v23);
    v31 = v75;
    v38 = *(v75 + 48);
    v39 = v74;
    if (v38(v37, 1, v74) == 1)
    {
      v40 = v37;
      v34 = v39;
      goto LABEL_9;
    }

    v41 = v26;
    v42 = v67;
    v64 = *(v31 + 32);
    v64(v67, v37, v39);
    v65 = v41;
    v43 = v41;
    v40 = v71;
    sub_1BF3ABF74(v43, v71);
    v34 = v39;
    if (v38(v40, 1, v39) == 1)
    {
      v31 = v75;
      (*(v75 + 8))(v42, v39);
      v26 = v65;
LABEL_9:
      sub_1BF38C9B4(v40, &qword_1EBDD9B00, &qword_1BF4F1E50);
      v44 = v36;
      v45 = v72;
      sub_1BF4BECF8(v44, v72);
      v46 = v38(v45, 1, v34);
      v48 = v68;
      v47 = v69;
      if (v46 == 1)
      {
        sub_1BF38C9B4(v45, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v49 = v70;
        sub_1BF4BECF8(v26, v70);
        v50 = v38(v49, 1, v34);
        v51 = v73;
        if (v50 == 1)
        {
          sub_1BF38C9B4(v49, &qword_1EBDD9B00, &qword_1BF4F1E50);
          v32 = 1;
          v33 = v51;
          return (*(v31 + 56))(v33, v32, 1, v34);
        }

        v52 = *(v31 + 32);
        v52(v47, v49, v34);
        v53 = v51;
        v54 = v47;
      }

      else
      {
        sub_1BF38C9B4(v26, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v52 = *(v31 + 32);
        v52(v48, v45, v34);
        v51 = v73;
        v53 = v73;
        v54 = v48;
      }

      v52(v53, v54, v34);
      v33 = v51;
      v32 = 0;
      return (*(v31 + 56))(v33, v32, 1, v34);
    }

    v55 = v42;
    v56 = v66;
    v57 = v39;
    v58 = v64;
    v64(v66, v40, v57);
    sub_1BF3B5254();
    v59 = sub_1BF4E88B4();
    sub_1BF38C9B4(v65, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v34 = v74;
    sub_1BF38C9B4(v36, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v60 = v75;
    if (v59)
    {
      v61 = v55;
    }

    else
    {
      v61 = v56;
    }

    if ((v59 & 1) == 0)
    {
      v56 = v55;
    }

    (*(v75 + 8))(v61, v34);
    v62 = v73;
    v58(v73, v56, v34);
    v33 = v62;
    v32 = 0;
    v31 = v60;
  }

  return (*(v31 + 56))(v33, v32, 1, v34);
}

double sub_1BF4BD9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-v12];
  (*(v10 + 16))(&v19[-v12], a2, v9, v11);
  type metadata accessor for _ReloadStateKey(0);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier, v13, v9);
  v15 = (v14 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v15 = a3;
  v15[1] = a4;
  v16 = v4[7];
  v17 = *(v16 + 16);

  os_unfair_lock_lock(v17);
  sub_1BF4BDB88(v4, v14, a1);
  os_unfair_lock_unlock(*(v16 + 16));

  return result;
}

void sub_1BF4BDB88(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - v11;
  swift_beginAccess();
  v13 = a1[8];

  v15 = sub_1BF427624(a2, v13, v14);

  if (v15)
  {
    v54 = *(v7 + 16);
    v54(v12, a3, v6);
    (*(v7 + 56))(v12, 0, 1, v6);
    v16 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
    swift_beginAccess();
    sub_1BF3AC398(v12, v15 + v16);
  }

  else
  {
    v52 = a3;
    v53 = v9;
    v54 = *(v7 + 16);
    v54(v12, a3, v6);
    v17 = *(v7 + 56);
    v17(v12, 0, 1, v6);
    type metadata accessor for _ReloadState(0);
    v18 = swift_allocObject();
    v17((v18 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested), 1, 1, v6);
    *(v18 + 16) = a2;
    v19 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
    swift_beginAccess();

    sub_1BF3AC398(v12, v18 + v19);
    swift_endAccess();
    swift_beginAccess();
    v20 = a1[8];
    if ((v20 & 0xC000000000000001) != 0)
    {
      if (v20 < 0)
      {
        v21 = a1[8];
      }

      else
      {
        v21 = v20 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = sub_1BF4E9204();
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return;
      }

      a1[8] = sub_1BF4E4368(v21, v22 + 1);
    }

    else
    {
    }

    a3 = v52;
    v9 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = a1[8];
    sub_1BF3D7B44(v18, a2, isUniquelyReferenced_nonNull_native, v24);
    a1[8] = v57;
  }

  swift_endAccess();

  v25 = a1[5];
  v26 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v25);
  v27 = v55;
  (*(v26 + 16))(a3, a2, v25, v26);
  if (v27)
  {
    if (qword_1EDC9D4D0 != -1)
    {
      swift_once();
    }

    v28 = sub_1BF4E7B54();
    __swift_project_value_buffer(v28, qword_1EDCA6958);

    v29 = v27;
    v30 = sub_1BF4E7B34();
    v31 = sub_1BF4E8E64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v56[0] = v34;
      *v32 = 136446466;
      v35 = sub_1BF4E2654();
      v37 = sub_1BF38D65C(v35, v36, v56);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2114;
      v38 = v27;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v39;
      *v33 = v39;
      _os_log_impl(&dword_1BF389000, v30, v31, "Error setting last requested reload date for key: %{public}s: %{public}@", v32, 0x16u);
      sub_1BF38C9B4(v33, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1BFB5A5D0](v34, -1, -1);
      MEMORY[0x1BFB5A5D0](v32, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDC9D4D0 != -1)
    {
      swift_once();
    }

    v40 = sub_1BF4E7B54();
    __swift_project_value_buffer(v40, qword_1EDCA6958);
    v54(v9, a3, v6);

    v41 = sub_1BF4E7B34();
    v42 = sub_1BF4E8E84();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56[0] = v55;
      *v43 = 136446466;
      v44 = sub_1BF4E2654();
      v46 = sub_1BF38D65C(v44, v45, v56);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      v47 = sub_1BF4E7314();
      v49 = v48;
      (*(v7 + 8))(v9, v6);
      v50 = sub_1BF38D65C(v47, v49, v56);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_1BF389000, v41, v42, "Setting last requested reload date for key: %{public}s: %{public}s", v43, 0x16u);
      v51 = v55;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v51, -1, -1);
      MEMORY[0x1BFB5A5D0](v43, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1BF4BE268(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  os_unfair_lock_assert_owner(*(v4[7] + 16));
  (*(v11 + 16))(v13, a1, v10);
  type metadata accessor for _ReloadStateKey(0);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier, v13, v10);
  v15 = (v14 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v15 = a2;
  v15[1] = a3;
  swift_beginAccess();
  v16 = v4[8];

  v18 = sub_1BF427624(v14, v16, v17);

  if (v18)
  {
    goto LABEL_2;
  }

  v20 = v4[5];
  v21 = v4[6];
  v22 = v4;
  __swift_project_boxed_opaque_existential_1(v4 + 2, v20);
  v23 = (*(v21 + 8))(v14, v20, v21);
  if (v5)
  {
    if (qword_1EDC9D4D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1BF4E7B54();
    __swift_project_value_buffer(v24, qword_1EDCA6958);

    v25 = v5;
    v26 = sub_1BF4E7B34();
    v27 = sub_1BF4E8E64();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = a4;
      v30 = v29;
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v28 = 136446466;

      v32 = sub_1BF4E2654();
      v34 = v33;

      v35 = sub_1BF38D65C(v32, v34, v47);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2114;
      v36 = v5;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v37;
      *v30 = v37;
      _os_log_impl(&dword_1BF389000, v26, v27, "Error fetching reload state for key: %{public}s: %{public}@", v28, 0x16u);
      sub_1BF38C9B4(v30, &unk_1EBDD9260, &qword_1BF4EC380);
      v38 = v30;
      a4 = v46;
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1BFB5A5D0](v31, -1, -1);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v18 = v23;
  if (!v23)
  {

LABEL_17:
    v42 = sub_1BF4E7334();
    (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
    return;
  }

  swift_beginAccess();
  v39 = v4[8];
  if ((v39 & 0xC000000000000001) == 0)
  {

    goto LABEL_19;
  }

  if (v39 < 0)
  {
    v40 = v4[8];
  }

  else
  {
    v40 = v39 & 0xFFFFFFFFFFFFFF8;
  }

  v41 = sub_1BF4E9204();
  if (!__OFADD__(v41, 1))
  {
    v22[8] = sub_1BF4E4368(v40, v41 + 1);
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v22[8];
    sub_1BF3D7B44(v18, v14, isUniquelyReferenced_nonNull_native, v44);
    v22[8] = v48;

    swift_endAccess();
LABEL_2:

    v19 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
    swift_beginAccess();
    sub_1BF3ABF74(v18 + v19, a4);

    return;
  }

  __break(1u);
}

uint64_t ReloadStateService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t ReloadStateService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1BF4BE7E4(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v9 = *(*v4 + 56);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF4BD454(a1, a2, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t ReloadStatePersistenceStore.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF4BE8E4(uint64_t a1)
{

  v2 = sub_1BF4E3150(a1);

  return v2;
}

double sub_1BF4BE93C(uint64_t a1, uint64_t a2)
{
  v9[3] = a2;
  v3 = *(v2 + 16);
  v9[2] = a1;
  v4 = *(v3 + 16);
  type metadata accessor for ChronoMetadataStore.MutableStore();
  swift_allocObject();
  v5 = sub_1BF4A4E98(v4);
  v6 = *(v3 + 136);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v3 + 16);

  sub_1BF3E7904(0xD00000000000001ALL, 0x80000001BF4FE7A0, v7, sub_1BF4BEAFC, v9, v5);

  os_unfair_lock_unlock(*(v6 + 16));
  sub_1BF48EBD0();

  return result;
}

uint64_t ReloadStatePersistenceStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4BEA7C(uint64_t a1)
{

  v2 = sub_1BF4E3150(a1);

  return v2;
}

uint64_t sub_1BF4BECF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1BF4BED68()
{
  v2 = v0;
  v3 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](88);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v16 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v17 = sub_1BF3E4F48(v3, 0, 0xE000000000000000);
    if (v1)
    {
    }

    else
    {
      v18 = v17;

      v2 = sub_1BF4BF1C8(v18);
    }

    return v2;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void *sub_1BF4BF1C8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C18, &qword_1BF4F6AA8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v21 = type metadata accessor for PushSubscription(0);
  MEMORY[0x1EEE9AC00](v21);
  v20 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (a1 + 32);
  v19[0] = v9;
  v14 = (v9 + 48);
  v15 = MEMORY[0x1E69E7CC0];
  v19[1] = v2;
  do
  {
    v22 = *v13;

    sub_1BF4BF480(&v22, v6);

    if ((*v14)(v6, 1, v21) == 1)
    {
      sub_1BF38C9B4(v6, &qword_1EBDD9C18, &qword_1BF4F6AA8);
    }

    else
    {
      sub_1BF4C40E0(v6, v11, type metadata accessor for PushSubscription);
      sub_1BF4C40E0(v11, v20, type metadata accessor for PushSubscription);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1BF432BCC(0, v15[2] + 1, 1, v15);
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1BF432BCC((v16 > 1), v17 + 1, 1, v15);
      }

      v15[2] = v17 + 1;
      sub_1BF4C40E0(v20, v15 + ((*(v19[0] + 80) + 32) & ~*(v19[0] + 80)) + *(v19[0] + 72) * v17, type metadata accessor for PushSubscription);
    }

    ++v13;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_1BF4BF480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v139 = type metadata accessor for PushSubscription(0);
  v4 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v129 = &v118[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = type metadata accessor for Budget(0);
  MEMORY[0x1EEE9AC00](v130);
  v134 = &v118[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BF4E7334();
  v132 = *(v7 - 8);
  v133 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v118[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v118[-v11];
  v12 = *a1;
  v13 = sub_1BF4E92F4();
  v15 = sub_1BF48063C(v13, v14, v12);
  v17 = v16;
  v19 = v18;
  v20 = ~v18;

  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = sub_1BF4244EC(v15, v17, v19);
  v23 = v22;
  sub_1BF3DB1FC(v15, v17, v19);
  if (!v23)
  {
    goto LABEL_22;
  }

  v127 = v21;
  v128 = v2;
  v24 = sub_1BF4E92F4();
  v26 = sub_1BF48063C(v24, v25, v12);
  v28 = v27;
  v30 = v29;
  v31 = ~v29;

  if (!v31 || (v126 = sub_1BF4244E0(v26, v28, v30), v33 = v32, sub_1BF3DB1FC(v26, v28, v30), (v33 & 1) != 0) || (v34 = sub_1BF4E92F4(), v36 = sub_1BF48063C(v34, v35, v12), v38 = v37, v40 = v39, v41 = ~v39, , !v41) || (v125 = sub_1BF4244E0(v36, v38, v40), v43 = v42, sub_1BF3DB1FC(v36, v38, v40), (v43 & 1) != 0) || (v44 = sub_1BF4E92F4(), v46 = sub_1BF48063C(v44, v45, v12), v48 = v47, v50 = v49, v51 = ~v49, , !v51) || (v124 = sub_1BF424634(v46, v48, v50), v53 = v52, sub_1BF3DB1FC(v46, v48, v50), (v53 & 1) != 0) || (v54 = sub_1BF4E92F4(), v56 = sub_1BF48063C(v54, v55, v12), v58 = v57, v60 = v59, v61 = ~v59, , !v61) || (v123 = sub_1BF4244E0(v56, v58, v60), v63 = v62, sub_1BF3DB1FC(v56, v58, v60), (v63 & 1) != 0) || (v64 = sub_1BF4E92F4(), v66 = sub_1BF48063C(v64, v65, v12), v68 = v67, v70 = v69, v71 = ~v69, , !v71) || (v72 = sub_1BF4244EC(v66, v68, v70), v74 = v73, sub_1BF3DB1FC(v66, v68, v70), !v74))
  {

LABEL_22:
    v87 = *(v4 + 56);
    v88 = v135;
    v89 = 1;
    v90 = v139;
    return v87(v88, v89, 1, v90);
  }

  v75._countAndFlagsBits = v127;
  v75._object = v23;
  Topic.init(suffixed:)(v75);
  if (v137)
  {
    v121 = v72;
    v122 = v137;
    v127 = v74;
    v120 = v136;
    v119 = v138;
    if (v126 == 1)
    {
      v76 = 1;
    }

    else
    {
      v76 = 2;
    }

    if (!v126)
    {
      v76 = 0;
    }

    LODWORD(v126) = v76;
    v77 = v131;
    sub_1BF4E71E4();
    LODWORD(v124) = v123 != 0;
    v78 = v132;
    v79 = v133;
    (*(v132 + 16))(v9, v77, v133);
    v80 = v134;
    sub_1BF4E7214();
    v81 = v130;
    v82 = *(v130 + 20);
    v83 = v9;
    v84 = v79;
    (*(v78 + 40))(v80, v83, v79);
    *&v80[v82] = v125;
    v80[v81[6]] = v124;
    *&v80[v81[7]] = 0;
    *&v80[v81[8]] = 0;
    v85 = v139;
    if (v126 == 2)
    {
      (*(v78 + 8))(v77, v84);

      sub_1BF4C4148(v80);
      return (*(v4 + 56))(v135, 1, 1, v85);
    }

    if (v126)
    {
      v96 = sub_1BF4C39C8(v12);
      v97 = v129;
      v99 = v131;
      v98 = v132;
      if (v96)
      {
        v100 = v96;
        v101 = v134;
        sub_1BF3F1C8C(v134, &v129[*(v85 + 24)]);
        v102 = v121;
        *(v97 + 24) = v100;
        *(v97 + 32) = v102;
        *(v97 + 48) = 0;
        *(v97 + 56) = 0;
        *(v97 + 40) = v127;
        *(v97 + 64) = 1;
        (*(v98 + 8))(v99, v133);
LABEL_34:
        v116 = v122;
        *v97 = v120;
        *(v97 + 8) = v116;
        *(v97 + 16) = v119 & 1;
        sub_1BF4C4148(v101);
        v117 = v135;
        sub_1BF4C40E0(v97, v135, type metadata accessor for PushSubscription);
        v87 = *(v4 + 56);
        v88 = v117;
        v89 = 0;
LABEL_36:
        v90 = v85;
        return v87(v88, v89, 1, v90);
      }
    }

    else
    {
      v103 = sub_1BF4C3364(v12);
      v97 = v129;
      if (v103)
      {
        v104 = v103;
        v101 = v134;
        sub_1BF3F1C8C(v134, &v129[*(v85 + 24)]);
        v105 = [v104 extensionIdentity];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
        v106 = sub_1BF4E76B4();
        v108 = v107;
        swift_endAccess();

        v136 = v106;
        v137 = v108;
        MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
        v109 = [v104 kind];
        v110 = sub_1BF4E8914();
        v112 = v111;

        MEMORY[0x1BFB58C90](v110, v112);

        v113 = v136;
        v114 = v137;
        (*(v132 + 8))(v131, v133);
        *(v97 + 24) = v113;
        *(v97 + 32) = v114;
        v115 = v121;
        *(v97 + 40) = v104;
        *(v97 + 48) = v115;
        *(v97 + 56) = v127;
        *(v97 + 64) = 0;
        goto LABEL_34;
      }
    }

    (*(v132 + 8))(v131, v133);

    sub_1BF4C4148(v134);
    v87 = *(v4 + 56);
    v88 = v135;
    v89 = 1;
    goto LABEL_36;
  }

  v91 = v139;
  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v92 = sub_1BF4E7B54();
  __swift_project_value_buffer(v92, qword_1EDCA6898);
  v93 = sub_1BF4E7B34();
  v94 = sub_1BF4E8E64();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_1BF389000, v93, v94, "Encountered malformed string for topic in push subscription.", v95, 2u);
    MEMORY[0x1BFB5A5D0](v95, -1, -1);
  }

  return (*(v4 + 56))(v135, 1, 1, v91);
}

void sub_1BF4BFD70(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_46;
  }

  v5 = *(Strong + 24);
  v6 = Strong;
  os_unfair_lock_lock(*(v5 + 16));
  v7 = *(v6 + 64);
  os_unfair_lock_unlock(*(v5 + 16));

  if (!v7)
  {
    __break(1u);
LABEL_46:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v8 = a1 + *(type metadata accessor for PushSubscription(0) + 24);
  sub_1BF4E71F4();
  v10 = v9;
  v11 = type metadata accessor for Budget(0);
  v308 = *(v8 + *(v11 + 20));
  v309 = *(v8 + *(v11 + 24));
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(a1 + 56);
  v310 = *(a1 + 64);
  v299 = a1;
  if (v310)
  {
    v17 = v12;

    v18 = [v17 tokenString];
    v300 = sub_1BF4E8914();
    v301 = v19;

    sub_1BF3F1B98(v12, v13, v15, v14, v16, 1);
    v311 = 0;
    v20 = 0xF000000000000000;
    v304 = 0;
    v305 = 0xE000000000000000;
    v302 = 0;
    v303 = 0xE000000000000000;
  }

  else
  {
    v306 = *(a1 + 48);

    v21 = v15;

    v22 = [v21 intentReference];
    if (v22)
    {
      v23 = v22;
      sub_1BF4E78B4();
      v24 = v23;
      v25 = sub_1BF4E78A4();
      v27 = v26;
      v2 = v1;

      if (v1)
      {

        sub_1BF3F1B98(v12, v13, v15, v306, v16, 0);
        return;
      }

      v311 = v25;
      v20 = v27;
      v316 = [v24 stableHash];
      v304 = sub_1BF4E96A4();
      v305 = v28;
    }

    else
    {
      v311 = 0;
      v20 = 0xF000000000000000;
      v304 = 0;
      v305 = 0xE000000000000000;
    }

    v29 = [v21 extensionIdentity];
    v30 = [v29 tokenString];

    v300 = sub_1BF4E8914();
    v301 = v31;

    v32 = [v21 kind];
    v302 = sub_1BF4E8914();
    v303 = v33;

    sub_1BF3F1B98(v12, v13, v15, v306, v16, 0);
    a1 = v299;
  }

  v307 = v20;
  v316 = 0;
  v317 = 0xE000000000000000;
  v34 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](275);
  v320 = 0;
  v321 = 0xE000000000000000;
  v322 = v34;
  MEMORY[0x1BFB58C90](0x4920545245534E49, 0xEC000000204F544ELL);
  v35 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v35);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v36 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v36);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v37 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v37);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v38 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v38);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v39 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v39);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v40 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v40);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v41 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v41);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v42 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v42);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v43 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v43);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v44 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v44);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v45 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v45);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v46 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v46);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  v47 = *(a1 + 24);
  v48 = *(a1 + 32);
  v298 = v2;
  if (*(a1 + 64))
  {
    v50 = *(a1 + 48);
    v49 = *(a1 + 56);
    v51 = a1;
    v52 = *(a1 + 40);
    swift_beginAccess();
    v53 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v54 = sub_1BF4E76B4();
    v56 = v55;
    swift_endAccess();
    sub_1BF3F1B98(v47, v48, v52, v50, v49, 1);
    v47 = v54;
    v48 = v56;
  }

  else
  {

    v51 = a1;
  }

  v58 = sub_1BF3D8148(v47, v48, v57);
  v60 = v59;
  v62 = v61;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v34 + 16) + 1;
  v63 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v63);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v58, v60, v62);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v58, v60, v62, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v65);

  sub_1BF3D88B8(v58, v60, v62);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v66 = 56;
  if (*(v51 + 64))
  {
    v66 = 40;
  }

  v67 = 48;
  if (*(v51 + 64))
  {
    v67 = 32;
  }

  v68 = *(v51 + v66);
  v69 = *(v51 + v67);
  swift_bridgeObjectRetain_n();
  v71 = sub_1BF3D8148(v69, v68, v70);
  v73 = v72;
  v75 = v74;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v76 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v76);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v71, v73, v75);
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v71, v73, v75, 0x676E69646E696240, 0xE800000000000000, v77, v78);

  sub_1BF3D88B8(v71, v73, v75);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v79 = *(v51 + 8);
  if (*(v51 + 16))
  {
    v80 = 0xD000000000000012;
  }

  else
  {
    v80 = 0xD000000000000013;
  }

  if (*(v51 + 16))
  {
    v81 = "extensionIdentity: ";
  }

  else
  {
    v81 = "; subscriptionType: ";
  }

  v296 = *v51;
  v297 = *(v51 + 8);
  v316 = *v51;
  v317 = v79;

  MEMORY[0x1BFB58C90](v80, v81 | 0x8000000000000000);

  v83 = sub_1BF3D8148(v316, v317, v82);
  v85 = v84;
  v87 = v86;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v88 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v88);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v83, v85, v87);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v83, v85, v87, 0x676E69646E696240, 0xE800000000000000, v89, v90);

  sub_1BF3D88B8(v83, v85, v87);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v91 = sub_1BF3D833C(v10);
  v93 = v92;
  v95 = v94;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v96 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v96);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v91, v93, v95);
  v97 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v91, v93, v95, 0x676E69646E696240, 0xE800000000000000, v97, v98);

  v99 = sub_1BF3D88B8(v91, v93, v95);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v99);
  v100 = sub_1BF3D7F44(v308);
  v102 = v101;
  v104 = v103;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v105 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v105);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v100, v102, v104);
  v106 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v100, v102, v104, 0x676E69646E696240, 0xE800000000000000, v106, v107);

  v108 = sub_1BF3D88B8(v100, v102, v104);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v108);
  v109 = sub_1BF3D7F44(v309);
  v111 = v110;
  v113 = v112;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v114 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v114);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v109, v111, v113);
  v115 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v109, v111, v113, 0x676E69646E696240, 0xE800000000000000, v115, v116);

  v117 = sub_1BF3D88B8(v109, v111, v113);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v117);
  v118 = sub_1BF3D7F44(v310);
  v120 = v119;
  v122 = v121;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v123 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v123);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v118, v120, v122);
  v124 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v118, v120, v122, 0x676E69646E696240, 0xE800000000000000, v124, v125);

  v126 = sub_1BF3D88B8(v118, v120, v122);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v126);
  swift_bridgeObjectRetain_n();
  v128 = sub_1BF3D8148(v300, v301, v127);
  v130 = v129;
  v132 = v131;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v133 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v133);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v128, v130, v132);
  v134 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v128, v130, v132, 0x676E69646E696240, 0xE800000000000000, v134, v135);

  sub_1BF3D88B8(v128, v130, v132);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  swift_bridgeObjectRetain_n();
  v137 = sub_1BF3D8148(v302, v303, v136);
  v139 = v138;
  v141 = v140;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v142 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v142);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v137, v139, v141);
  v143 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v137, v139, v141, 0x676E69646E696240, 0xE800000000000000, v143, v144);

  sub_1BF3D88B8(v137, v139, v141);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  swift_bridgeObjectRetain_n();
  v146 = sub_1BF3D8148(v304, v305, v145);
  v148 = v147;
  v150 = v149;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v151 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v151);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v146, v148, v150);
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v146, v148, v150, 0x676E69646E696240, 0xE800000000000000, v152, v153);

  sub_1BF3D88B8(v146, v148, v150);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  if (v307 >> 60 == 15)
  {
    v315 = 0;
    v313 = 0u;
    v314 = 0u;
    v154 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v318 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v319 = &off_1F3DF0088;
    v316 = v154;
    v155 = v311;
  }

  else
  {
    *(&v314 + 1) = MEMORY[0x1E6969080];
    v315 = &off_1F3DF00A8;
    v155 = v311;
    *&v313 = v311;
    *(&v313 + 1) = v307;
    sub_1BF38E610(&v313, &v316);
  }

  v312 = v155;
  v156 = v318;
  v157 = v319;
  v158 = __swift_project_boxed_opaque_existential_1(&v316, v318);
  sub_1BF48055C(v155, v307);
  sub_1BF478C08(v158, &v320, v156, v157);
  __swift_destroy_boxed_opaque_existential_1Tm(&v316);
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FE940);
  v159 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v159);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FE960);
  v160 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v160);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v161 = 56;
  if (*(v299 + 64))
  {
    v161 = 40;
  }

  v162 = 48;
  if (*(v299 + 64))
  {
    v162 = 32;
  }

  v163 = *(v299 + v161);
  v164 = *(v299 + v162);
  swift_bridgeObjectRetain_n();
  v166 = sub_1BF3D8148(v164, v163, v165);
  v168 = v167;
  v170 = v169;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v322 + 16) + 1;
  v171 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v171);

  v173 = v316;
  v172 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v166, v168, v170);
  v174 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v166, v168, v170, v173, v172, v174, v175);

  sub_1BF3D88B8(v166, v168, v170);

  v176 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v177 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v177);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  if (*(v299 + 16))
  {
    v178 = 0xD000000000000012;
  }

  else
  {
    v178 = 0xD000000000000013;
  }

  if (*(v299 + 16))
  {
    v179 = "extensionIdentity: ";
  }

  else
  {
    v179 = "; subscriptionType: ";
  }

  v316 = v296;
  v317 = v297;

  MEMORY[0x1BFB58C90](v178, v179 | 0x8000000000000000);

  v180 = v316;
  v181 = v317;

  v183 = sub_1BF3D8148(v180, v181, v182);
  v185 = v184;
  v187 = v186;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v176 + 16) + 1;
  v188 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v188);

  v189 = v316;
  v190 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v183, v185, v187);
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v183, v185, v187, v189, v190, v191, v192);

  sub_1BF3D88B8(v183, v185, v187);

  v193 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v194 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v194);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v195 = sub_1BF3D833C(v10);
  v197 = v196;
  v199 = v198;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v193 + 16) + 1;
  v200 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v200);

  v201 = v316;
  v202 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v195, v197, v199);
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v195, v197, v199, v201, v202, v203, v204);

  v205 = sub_1BF3D88B8(v195, v197, v199);
  v206 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v205);
  v207 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v207);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v208 = sub_1BF3D7F44(v308);
  v210 = v209;
  v212 = v211;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v206 + 16) + 1;
  v213 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v213);

  v214 = v316;
  v215 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v208, v210, v212);
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v208, v210, v212, v214, v215, v216, v217);

  v218 = sub_1BF3D88B8(v208, v210, v212);
  v219 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v218);
  v220 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v220);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v221 = sub_1BF3D7F44(v309);
  v223 = v222;
  v225 = v224;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v219 + 16) + 1;
  v226 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v226);

  v227 = v316;
  v228 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v221, v223, v225);
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v221, v223, v225, v227, v228, v229, v230);

  v231 = sub_1BF3D88B8(v221, v223, v225);
  v232 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v231);
  v233 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v233);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v234 = sub_1BF3D7F44(v310);
  v236 = v235;
  v238 = v237;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v232 + 16) + 1;
  v239 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v239);

  v240 = v316;
  v241 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v234, v236, v238);
  v242 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v234, v236, v238, v240, v241, v242, v243);

  v244 = sub_1BF3D88B8(v234, v236, v238);
  v245 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v244);
  v246 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v246);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

  v248 = sub_1BF3D8148(v300, v301, v247);
  v250 = v249;
  v252 = v251;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v245 + 16) + 1;
  v253 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v253);

  v254 = v316;
  v255 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v248, v250, v252);
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v248, v250, v252, v254, v255, v256, v257);

  sub_1BF3D88B8(v248, v250, v252);

  v258 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90]();
  v259 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v259);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

  v261 = sub_1BF3D8148(v302, v303, v260);
  v263 = v262;
  v265 = v264;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v258 + 16) + 1;
  v266 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v266);

  v267 = v316;
  v268 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v261, v263, v265);
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v261, v263, v265, v267, v268, v269, v270);

  sub_1BF3D88B8(v261, v263, v265);

  v271 = v316;
  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v272 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v272);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);

  v274 = sub_1BF3D8148(v304, v305, v273);
  v276 = v275;
  v278 = v277;
  v316 = 0x676E69646E696240;
  v317 = 0xE800000000000000;
  *&v313 = *(v271 + 16) + 1;
  v279 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v279);

  v280 = v316;
  v281 = v317;
  MEMORY[0x1BFB58C90](v316, v317);
  sub_1BF3D8840(v274, v276, v278);
  v282 = swift_isUniquelyReferenced_nonNull_native();
  v316 = v322;
  sub_1BF3D6680(v274, v276, v278, v280, v281, v282, v283);

  sub_1BF3D88B8(v274, v276, v278);

  v322 = v316;
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v284 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v284);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  if (v307 >> 60 == 15)
  {
    v315 = 0;
    v313 = 0u;
    v314 = 0u;
    v285 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v318 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v319 = &off_1F3DF0088;
    v316 = v285;
    v286 = v298;
    v287 = v312;
    v288 = v307;
    if (*(&v314 + 1))
    {
      sub_1BF38C9B4(&v313, &qword_1EBDD99D0, &qword_1BF4F7B80);
    }
  }

  else
  {
    *(&v314 + 1) = MEMORY[0x1E6969080];
    v315 = &off_1F3DF00A8;
    v287 = v312;
    v288 = v307;
    *&v313 = v312;
    *(&v313 + 1) = v307;
    sub_1BF38E610(&v313, &v316);
    v286 = v298;
  }

  v289 = v318;
  v290 = v319;
  v291 = __swift_project_boxed_opaque_existential_1(&v316, v318);
  v292 = v287;
  sub_1BF48055C(v287, v288);
  sub_1BF478C08(v291, &v320, v289, v290);
  __swift_destroy_boxed_opaque_existential_1Tm(&v316);
  v294 = v320;
  v293 = v321;
  v295 = v322;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_46;
  }

  sub_1BF3E4F48(v295, v294, v293);
  if (!v286)
  {
  }

  sub_1BF3DB210(v292, v288);
}

void sub_1BF4C1C0C(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v13 = sub_1BF3D8148(a1, a2, v12);
  v15 = v14;
  v17 = v16;
  v18 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v13, v15, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v13, v15, v17, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v20);

  v21 = sub_1BF3D88B8(v13, v15, v17);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000, v21);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v9, 0, 0xE000000000000000);

  if (!v2)
  {
  }
}

uint64_t sub_1BF4C1EFC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](40);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v7 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v0)
    {
    }

    else
    {
      v8 = v7;

      v1 = sub_1BF4C3BC0(v8);
    }

    return v1;
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4C219C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v68 - v6;
  v8 = *a1;
  v9 = sub_1BF4E92F4();
  v11 = sub_1BF48063C(v9, v10, v8);
  v13 = v12;
  v15 = v14;
  v16 = ~v14;

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = sub_1BF4244EC(v11, v13, v15);
  v19 = v18;
  sub_1BF3DB1FC(v11, v13, v15);
  if (!v19)
  {
    goto LABEL_12;
  }

  v74 = v17;
  v77 = v2;
  v20 = sub_1BF4E92F4();
  v22 = sub_1BF48063C(v20, v21, v8);
  v24 = v23;
  v26 = v25;
  v27 = ~v25;

  if (!v27 || (v28 = sub_1BF4244EC(v22, v24, v26), v30 = v29, sub_1BF3DB1FC(v22, v24, v26), !v30))
  {
LABEL_11:

LABEL_12:
    v52 = type metadata accessor for PushToken(0);
    return (*(*(v52 - 8) + 56))(a2, 1, 1, v52);
  }

  v72 = v28;
  v73 = v30;
  v31 = sub_1BF4E92F4();
  v33 = sub_1BF48063C(v31, v32, v8);
  v35 = v34;
  v37 = v36;
  v38 = ~v36;

  if (!v38 || (v39 = sub_1BF4244EC(v33, v35, v37), v40 = v37, v42 = v41, sub_1BF3DB1FC(v33, v35, v40), !v42))
  {

    goto LABEL_11;
  }

  v71 = v39;
  v43 = sub_1BF4E92F4();
  v45 = sub_1BF48063C(v43, v44, v8);
  v47 = v46;
  v49 = v48;
  v50 = ~v48;

  if (!v50 || (sub_1BF424370(v45, v47, v49, &v75), sub_1BF3DB1FC(v45, v47, v49), v51 = *(&v75 + 1), *(&v75 + 1) >> 60 == 15))
  {

    goto LABEL_11;
  }

  v54 = v75;
  v55._countAndFlagsBits = v71;
  v55._object = v42;
  Topic.init(suffixed:)(v55);
  v56 = *(&v75 + 1);
  if (!*(&v75 + 1))
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v64 = sub_1BF4E7B54();
    __swift_project_value_buffer(v64, qword_1EDCA6898);
    v65 = sub_1BF4E7B34();
    v66 = sub_1BF4E8E64();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1BF389000, v65, v66, "Encountered malformed string for topic in push subscription.", v67, 2u);
      MEMORY[0x1BFB5A5D0](v67, -1, -1);
    }

    sub_1BF3DB210(v54, v51);

    goto LABEL_12;
  }

  LODWORD(v71) = v76;
  v70 = v75;
  v57 = sub_1BF4E7334();
  v58 = *(*(v57 - 8) + 56);
  v58(v7, 1, 1, v57);
  v59 = type metadata accessor for PushToken(0);
  v68 = v54;
  v69 = v51;
  v60 = v59;
  v61 = *(v59 + 32);
  v58((a2 + v61), 1, 1, v57);
  *(a2 + 16) = v74;
  *(a2 + 24) = v19;
  v62 = v73;
  *(a2 + 32) = v72;
  *(a2 + 40) = v62;
  *(a2 + 48) = v70;
  *(a2 + 56) = v56;
  *(a2 + 64) = v71 & 1;
  v63 = v69;
  *a2 = v68;
  *(a2 + 8) = v63;
  sub_1BF3AC398(v7, a2 + v61);
  return (*(*(v60 - 8) + 56))(a2, 0, 1, v60);
}

void sub_1BF4C2668(uint64_t *a1)
{
  v2 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](35);
  MEMORY[0x1BFB58C90](0x20455441445055, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x2020200A5445530ALL, 0xE900000000000020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v5 = *a1;
  v6 = a1[1];
  sub_1BF3D8864(*a1, v6);
  v8 = sub_1BF3D8134(v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v8, v10, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v8, v10, v12, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v15);

  v16 = sub_1BF3D88B8(v8, v10, v12);
  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020, v16);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  v19 = a1[2];
  v18 = a1[3];

  v21 = sub_1BF3D8148(v19, v18, v20);
  v23 = v22;
  v25 = v24;
  v26 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v26);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v21, v23, v25);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v21, v23, v25, 0x676E69646E696240, 0xE800000000000000, v27, v28);

  v29 = sub_1BF3D88B8(v21, v23, v25);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000, v29);
  if (swift_weakLoadStrong())
  {
    sub_1BF3E4F48(v2, 0, 0xE000000000000000);

    if (!v30)
    {
    }
  }

  else
  {
    sub_1BF4E9464();
    __break(1u);
  }
}

void sub_1BF4C2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](31);
  MEMORY[0x1BFB58C90](0x20455441445055, 0xE700000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x2020200A5445530ALL, 0xE900000000000020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v9 = sub_1BF3D852C(v8);
  v11 = v10;
  v13 = v12;
  v14 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v9, v11, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v9, v11, v13, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v16);

  sub_1BF3D88B8(v9, v11, v13);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v19 = sub_1BF3D8148(a1, a2, v18);
  v21 = v20;
  v23 = v22;
  v24 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v24);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v19, v21, v23);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v19, v21, v23, 0x676E69646E696240, 0xE800000000000000, v25, v26);

  v27 = sub_1BF3D88B8(v19, v21, v23);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000, v27);
  if (swift_weakLoadStrong())
  {
    sub_1BF3E4F48(v5, 0, 0xE000000000000000);

    if (!v29)
    {
    }
  }

  else
  {
    sub_1BF4E9464();
    __break(1u);
  }
}

uint64_t ChronoMetadataStore.MutablePushTokenStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C2EFC()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](277);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FEA90);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x200A2C424F4C4220, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FEAB0);
  v15 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

id sub_1BF4C3364(uint64_t a1)
{
  v2 = sub_1BF4E92F4();
  v4 = sub_1BF48063C(v2, v3, a1);
  v6 = v5;
  v8 = v7;
  v9 = ~v7;

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = sub_1BF4244EC(v4, v6, v8);
  v12 = v11;
  sub_1BF3DB1FC(v4, v6, v8);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = sub_1BF4E92F4();
  v15 = sub_1BF48063C(v13, v14, a1);
  v17 = v16;
  v19 = v18;
  v20 = ~v18;

  if (!v20 || (sub_1BF4244EC(v15, v17, v19), v22 = v21, sub_1BF3DB1FC(v15, v17, v19), !v22))
  {

LABEL_10:
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v36 = sub_1BF4E7B54();
    __swift_project_value_buffer(v36, qword_1EDCA6898);
    v37 = sub_1BF4E7B34();
    v38 = sub_1BF4E8E64();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BF389000, v37, v38, "Encountered malformed result for control identity in push subscription.", v39, 2u);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
    }

    return 0;
  }

  sub_1BF4E9034();

  v23 = sub_1BF4E9004();
  if (!v23)
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v41 = sub_1BF4E7B54();
    __swift_project_value_buffer(v41, qword_1EDCA6898);

    v42 = sub_1BF4E7B34();
    v43 = sub_1BF4E8E64();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v51 = v45;
      *v44 = 136446210;
      v46 = sub_1BF38D65C(v10, v12, &v51);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_1BF389000, v42, v43, "Encountered malformed subscription extension, %{public}s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1BFB5A5D0](v45, -1, -1);
      MEMORY[0x1BFB5A5D0](v44, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v24 = v23;
  v25 = sub_1BF4E92F4();
  v27 = sub_1BF48063C(v25, v26, a1);
  v29 = v28;
  v31 = v30;
  v32 = ~v30;

  if (!v32)
  {
    v33 = 0;
    v34 = 0xF000000000000000;
    goto LABEL_21;
  }

  sub_1BF424370(v27, v29, v31, &v51);
  sub_1BF3DB1FC(v27, v29, v31);
  v34 = *(&v51 + 1);
  v33 = v51;
  if (*(&v51 + 1) >> 60 == 15)
  {
LABEL_21:

    v50 = 0;
    goto LABEL_22;
  }

  sub_1BF4E78B4();
  sub_1BF3901C0(0, &unk_1EDC96360, 0x1E69942D0);
  sub_1BF3D8864(v33, v34);
  v35 = sub_1BF4E7894();
  sub_1BF3DB210(v33, v34);

  v50 = v35;
LABEL_22:
  v47 = objc_allocWithZone(MEMORY[0x1E6994260]);
  v48 = sub_1BF4E88E4();

  v49 = [v47 initWithExtensionIdentity:v24 kind:v48 intentReference:v50];

  sub_1BF3DB210(v33, v34);
  return v49;
}

uint64_t sub_1BF4C39C8(uint64_t a1)
{
  v2 = sub_1BF4E92F4();
  v4 = sub_1BF48063C(v2, v3, a1);
  v6 = v5;
  v8 = v7;
  v9 = ~v7;

  if (v9)
  {
    sub_1BF4244EC(v4, v6, v8);
    v11 = v10;
    sub_1BF3DB1FC(v4, v6, v8);
    if (v11)
    {
      v12 = sub_1BF4E92F4();
      v14 = sub_1BF48063C(v12, v13, a1);
      v16 = v15;
      v18 = v17;
      v19 = ~v17;

      if (v19)
      {
        v20 = sub_1BF4244E0(v14, v16, v18);
        v22 = v21;
        sub_1BF3DB1FC(v14, v16, v18);
        if ((v22 & 1) == 0 && v20 == 1)
        {
          sub_1BF4E9034();
          return sub_1BF4E9004();
        }
      }
    }
  }

  if (qword_1EDC9D460 != -1)
  {
    swift_once();
  }

  v24 = sub_1BF4E7B54();
  __swift_project_value_buffer(v24, qword_1EDCA6898);
  v25 = sub_1BF4E7B34();
  v26 = sub_1BF4E8E64();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1BF389000, v25, v26, "Encountered malformed result for widget identity in push subscription.", v27, 2u);
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
  }

  return 0;
}

void *sub_1BF4C3BC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C10, &unk_1BF4F6A98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PushToken(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v20 = &v19 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (a1 + 32);
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v23 = *v13;
    sub_1BF4C219C(&v23, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1BF38C9B4(v6, &qword_1EBDD9C10, &unk_1BF4F6A98);
    }

    else
    {
      v21 = v2;
      v15 = v20;
      sub_1BF4C40E0(v6, v20, type metadata accessor for PushToken);
      sub_1BF4C40E0(v15, v22, type metadata accessor for PushToken);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BF432BF4(0, v14[2] + 1, 1, v14);
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1BF432BF4((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      sub_1BF4C40E0(v22, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for PushToken);
      v2 = v21;
    }

    ++v13;
    --v12;
  }

  while (v12);
  return v14;
}

uint64_t sub_1BF4C40E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF4C4148(uint64_t a1)
{
  v2 = type metadata accessor for Budget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF4C41D0(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_1BF4E93A4();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1BF38D324(i, v9);
    sub_1BF3901C0(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BF4E9374();
    sub_1BF4E93B4();
    sub_1BF4E93C4();
    sub_1BF4E9384();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

double DuetWidgetViewEntry.identity.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;

  v6 = v4;

  return result;
}

uint64_t sub_1BF4C432C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF4E89F4();
  v10 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  sub_1BF4C6B48(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_1BF4E8884();
  v12 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3ABF74(v2 + v12, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_1BF4E9824();
  sub_1BF4E8884();
  return (v11)(v9, v6);
}

char *DuetWidgetViewEntry.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  v3 = sub_1BF4E7334();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_staleContentDate, v3);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate, &qword_1EBDD9B00, &qword_1BF4F1E50);
  return v0;
}

uint64_t DuetWidgetViewEntry.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  v3 = sub_1BF4E7334();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_staleContentDate, v3);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate, &qword_1EBDD9B00, &qword_1BF4F1E50);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C4788(double a1)
{
  sub_1BF4E9804();
  sub_1BF4C432C(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C47C8(double a1)
{
  sub_1BF4E9804();
  sub_1BF4C432C(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C4830(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4C432C(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C487C@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_1BF4E7334();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  v19 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  v20 = *(v8 + 16);
  v51 = v19;
  v56 = v18;
  v20(v18, &a1[v19], v7);
  v21 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3ABF74(&a1[v21], v6);
  v22 = *(v8 + 48);
  if (v22(v6, 1, v7) == 1)
  {
    v20(v15, v54, v7);
    if (v22(v6, 1, v7) != 1)
    {
      sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
    }
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
  }

  sub_1BF4C6B48(&qword_1EDC9F0C8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v23 = v56;
  v24 = sub_1BF4E88B4();
  v53 = v8;
  v50[0] = v20;
  v50[1] = v8 + 16;
  if (v24)
  {
    v25 = *(v8 + 32);
    v25(v12, v15, v7);
  }

  else
  {
    (*(v8 + 8))(v15, v7);
    v20(v12, v23, v7);
    v25 = *(v8 + 32);
  }

  v25(v15, v12, v7);
  v26 = v15;
  v27 = *(a1 + 4);
  v28 = [v27 extensionBundleIdentifier];
  if (!v28)
  {
    sub_1BF4E8914();
    v28 = sub_1BF4E88E4();
  }

  v29 = objc_allocWithZone(MEMORY[0x1E699A4D0]);
  v30 = sub_1BF4E88E4();
  v31 = sub_1BF4E88E4();
  v32 = sub_1BF4E7254();
  v54 = v26;
  v33 = sub_1BF4E7254();
  v34 = [v29 initWithViewID:v30 budgetID:v31 extensionBundleID:v28 from:v32 to:v33];

  v35 = [v27 container];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 isStack];
  }

  else
  {
    v37 = 0;
  }

  v38 = v53;
  [v34 setInStack_];
  v39 = v52;
  (v50[0])(v52, &a1[v51], v7);
  sub_1BF4E7234();
  v41 = v40;
  v42 = *(v38 + 8);
  v42(v39, v7);
  [v34 setTimeUntilContentExpiration_];
  v43 = [v27 container];
  v44 = v54;
  if (v43)
  {
    v45 = v43;
    if ([v43 location] == 2)
    {
      v46 = *MEMORY[0x1E699A5F8];
    }

    else
    {
      v46 = [v45 page];
    }

    [v34 setPageID_];
  }

  v47 = sub_1BF3901C0(0, &qword_1EDC96388, 0x1E699A4D0);
  v48 = v55;
  v55[3] = v47;
  *v48 = v34;
  v42(v44, v7);
  return (v42)(v56, v7);
}

void sub_1BF4C4E20(uint64_t a1)
{
  if (sub_1BF4C41D0(a1, &qword_1EDC96388, 0x1E699A4D0))
  {
    v1 = [objc_opt_self() sharedScheduler];
    sub_1BF3901C0(0, &qword_1EDC96388, 0x1E699A4D0);
    v2 = sub_1BF4E8B84();

    [v1 recordWidgetViews_];
  }
}

uint64_t static DuetWidgetViewRecorder.shared.getter()
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static DuetWidgetViewRecorder.shared.setter(uint64_t a1)
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC99660 = a1;

  return result;
}

uint64_t (*static DuetWidgetViewRecorder.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BF4C5070@<X0>(void *a1@<X8>)
{
  if (qword_1EDC99658 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC99660;
}

double sub_1BF4C50F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDC99658;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC99660 = v1;

  return result;
}

uint64_t DuetWidgetViewRecorder.deinit()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 invalidate];
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t DuetWidgetViewRecorder.__deallocating_deinit()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 invalidate];
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1BF4C5258(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BF4E7FF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E8004();
  v69 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v60 - v15;
  v79 = sub_1BF4E7334();
  v71 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v60 - v19;
  BSDispatchQueueAssertMain();
  [*(v2 + 88) invalidate];
  v20 = *(v2 + 88);
  *(v2 + 88) = 0;

  swift_beginAccess();
  v78 = v2;
  v21 = *(v2 + 72);
  if (v21 >> 62)
  {
    if (!sub_1BF4E9204())
    {
      return;
    }
  }

  else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v64 = v8;
  v65 = a1;
  v66 = a2;
  v62 = v12;
  v67 = v11;
  v89 = MEMORY[0x1E69E7CC0];
  sub_1BF4E7324();
  v22 = v78[9];
  if (v22 >> 62)
  {
    v23 = sub_1BF4E9204();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v79;
  v63 = v9;
  if (v23)
  {
    if (v23 < 1)
    {
      __break(1u);
      return;
    }

    v60 = v6;
    v61 = v5;
    v25 = v22 & 0xC000000000000001;
    v77 = (v71 + 48);
    v73 = (v71 + 16);
    v72 = (v71 + 40);

    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
    v75 = MEMORY[0x1E69E7CC0];
    v74 = v22 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        MEMORY[0x1BFB59570](v26, v22);
      }

      else
      {
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        __swift_project_boxed_opaque_existential_1(v78 + 4, v78[7]);
        sub_1BF4C487C(v29, v80, &v81);
        if (v82)
        {
          sub_1BF38EB2C(&v81, &aBlock);
          sub_1BF38D324(&aBlock, &v81);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1BF432C1C(0, *(v27 + 2) + 1, 1, v27);
          }

          v31 = *(v27 + 2);
          v30 = *(v27 + 3);
          if (v31 >= v30 >> 1)
          {
            v27 = sub_1BF432C1C((v30 > 1), v31 + 1, 1, v27);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
          *(v27 + 2) = v31 + 1;
          sub_1BF38EB2C(&v81, &v27[32 * v31 + 32]);
          v24 = v79;
        }

        else
        {
          sub_1BF38C9B4(&v81, &qword_1EBDD8AD0, &unk_1BF4F53F0);
        }

        v32 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
        swift_beginAccess();
        sub_1BF3ABF74(&v29[v32], v16);
        if ((*v77)(v16, 1, v24) == 1)
        {
          v33 = v27;
          v34 = v22;
          v35 = v23;
          sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
          v36 = v76;
          (*v73)(v76, v80, v24);
          v37 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
          swift_beginAccess();
          (*v72)(&v29[v37], v36, v24);
          swift_endAccess();

          MEMORY[0x1BFB58DD0](v38);
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BF4E8BE4();
          }

          sub_1BF4E8C24();

          v75 = v89;
          v24 = v79;
          v23 = v35;
          v22 = v34;
          v27 = v33;
          v25 = v74;
        }

        else
        {

          sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
        }
      }

      else
      {
      }

      ++v26;
    }

    while (v23 != v26);

    v5 = v61;
    v6 = v60;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v75;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v40 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
  }

  v41 = v78;
  v78[9] = v40;

  swift_beginAccess();
  v41[10] = v39;

  v43 = v41[9];
  v44 = v66;
  v45 = v65;
  if (v43 >> 62)
  {
    if (!sub_1BF4E9204())
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:
    sub_1BF3C36CC(v42);
  }

LABEL_31:
  if (qword_1EDC9D480 != -1)
  {
    swift_once();
  }

  v46 = sub_1BF4E7B54();
  __swift_project_value_buffer(v46, qword_1EDCA68C8);

  v47 = sub_1BF4E7B34();
  v48 = sub_1BF4E8E84();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&aBlock = v50;
    *v49 = 134349314;
    *(v49 + 4) = *(v27 + 2);

    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_1BF38D65C(v45, v44, &aBlock);
    _os_log_impl(&dword_1BF389000, v47, v48, "View recorder flushing %{public}ld entries for reason: %{public}s", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1BFB5A5D0](v50, -1, -1);
    MEMORY[0x1BFB5A5D0](v49, -1, -1);
  }

  else
  {
  }

  v51 = v67;
  if (*(v27 + 2))
  {
    v52 = v78;
    sub_1BF4C5DC0();
    sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v53 = v69;
    v54 = v68;
    v55 = v62;
    (*(v69 + 104))(v68, *MEMORY[0x1E69E7F98], v62);
    v56 = sub_1BF4E8F74();
    (*(v53 + 8))(v54, v55);
    v57 = swift_allocObject();
    *(v57 + 16) = v52;
    *(v57 + 24) = v27;
    v87 = sub_1BF4C6B38;
    v88 = v57;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v85 = sub_1BF38E868;
    v86 = &block_descriptor_53_0;
    v58 = _Block_copy(&aBlock);

    sub_1BF4E8014();
    v83 = MEMORY[0x1E69E7CC0];
    sub_1BF4C6B48(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF43E484();
    v59 = v70;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v51, v59, v58);
    _Block_release(v58);

    (*(v6 + 8))(v59, v5);
    (*(v63 + 8))(v51, v64);
    (*(v71 + 8))(v80, v79);
  }

  else
  {
    (*(v71 + 8))(v80, v79);
  }
}

void sub_1BF4C5D78(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  type metadata accessor for _DuetWidgetViewProvider();
  sub_1BF4C4E20(a2);
}

void sub_1BF4C5DC0()
{
  v1 = v0;
  sub_1BF4C5FF4();
  if (*(v0 + 104))
  {
    [*(v0 + 96) invalidate];
    v2 = *(v0 + 96);
    *(v0 + 96) = 0;

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BF4E92E4();

    v3 = [*(v0 + 112) description];
    v4 = sub_1BF4E8914();
    v6 = v5;

    MEMORY[0x1BFB58C90](v4, v6);

    MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FECE0);
    v7 = objc_allocWithZone(MEMORY[0x1E698E660]);
    v8 = sub_1BF4E88E4();

    v9 = [v7 initWithIdentifier_];

    sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
    v10 = sub_1BF4E8F34();
    v11 = swift_allocObject();
    swift_weakInit();
    v18 = sub_1BF3CB514;
    v19 = v11;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1BF3CAF50;
    v17 = &block_descriptor_15;
    v12 = _Block_copy(&v14);

    [v9 scheduleWithFireInterval:v10 leewayInterval:v12 queue:10.0 handler:1.0];
    _Block_release(v12);

    v13 = *(v1 + 96);
    *(v1 + 96) = v9;
  }
}

void sub_1BF4C5FF4()
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!*(v0 + 104))
  {
    v1 = sub_1BF4E88E4();
    v2 = sub_1BF4E88E4();
    v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

    v4 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9270, &unk_1BF4F0880);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BF4F4940;
    *(v5 + 32) = v3;
    v6 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v7 = v3;
    v8 = sub_1BF4E88E4();
    sub_1BF3901C0(0, &qword_1EDC963A0, 0x1E69C7550);
    v9 = sub_1BF4E8B84();

    v10 = [v6 initWithExplanation:v8 target:v4 attributes:v9];

    v30[0] = 0;
    v11 = [v10 acquireWithError_];
    v12 = v30[0];
    if (v11)
    {
      v13 = *(v0 + 104);
      *(v0 + 104) = v10;
      v14 = v12;
      v15 = v10;

      if (qword_1EDC9D480 != -1)
      {
        swift_once();
      }

      v16 = sub_1BF4E7B54();
      __swift_project_value_buffer(v16, qword_1EDCA68C8);
      v17 = sub_1BF4E7B34();
      v18 = sub_1BF4E8E84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BF389000, v17, v18, "Acquired runtime assertion for DuetWidgetViewRecorder.flushIfNecessary", v19, 2u);
        MEMORY[0x1BFB5A5D0](v19, -1, -1);
      }
    }

    else
    {
      v20 = v30[0];
      v21 = sub_1BF4E6FF4();

      swift_willThrow();
      if (qword_1EDC9D480 != -1)
      {
        swift_once();
      }

      v22 = sub_1BF4E7B54();
      __swift_project_value_buffer(v22, qword_1EDCA68C8);
      v23 = v21;
      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E64();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1BF389000, v24, v25, "Unable to acquire runtime assertion for WidgetArchiver.unarchive - error: %{public}@", v26, 0xCu);
        sub_1BF38C9B4(v27, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v27, -1, -1);
        MEMORY[0x1BFB5A5D0](v26, -1, -1);
      }

      else
      {
      }
    }
  }
}

double sub_1BF4C6404(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC9D480 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA68C8);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "View recorder flush timer fired.", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BF4C5258(0x72656D6954, 0xE500000000000000);
  }

  return result;
}

uint64_t _s9ChronoKit19DuetWidgetViewEntryC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1BF4E7334();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  if (*(a1 + 40) != *(a2 + 40) && (sub_1BF4E9734() & 1) == 0 || (v34 = v9, v35 = v4, v36 = v6, v37 = v12, v20 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate, swift_beginAccess(), v21 = *(v14 + 16), v21(v19, a1 + v20, v13), v22 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate, swift_beginAccess(), v21(v16, a2 + v22, v13), v23 = sub_1BF4E72D4(), v24 = *(v14 + 8), v24(v16, v13), v24(v19, v13), (v23 & 1) == 0) || (sub_1BF4E72D4() & 1) == 0)
  {
    v31 = 0;
    return v31 & 1;
  }

  v25 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  v26 = v37;
  sub_1BF3ABF74(a1 + v25, v37);
  v27 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  v28 = v36;
  v29 = *(v35 + 48);
  sub_1BF3ABF74(v26, v36);
  sub_1BF3ABF74(a2 + v27, v28 + v29);
  v30 = *(v14 + 48);
  if (v30(v28, 1, v13) != 1)
  {
    v33 = v34;
    sub_1BF3ABF74(v28, v34);
    if (v30(v28 + v29, 1, v13) != 1)
    {
      (*(v14 + 32))(v19, v28 + v29, v13);
      sub_1BF4C6B48(&qword_1EDC9F0C0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v31 = sub_1BF4E88C4();
      v24(v19, v13);
      sub_1BF38C9B4(v37, &qword_1EBDD9B00, &qword_1BF4F1E50);
      v24(v33, v13);
      sub_1BF38C9B4(v28, &qword_1EBDD9B00, &qword_1BF4F1E50);
      return v31 & 1;
    }

    sub_1BF38C9B4(v37, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v24(v33, v13);
    goto LABEL_12;
  }

  sub_1BF38C9B4(v26, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v30(v28 + v29, 1, v13) != 1)
  {
LABEL_12:
    sub_1BF38C9B4(v28, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    v31 = 0;
    return v31 & 1;
  }

  sub_1BF38C9B4(v28, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v31 = 1;
  return v31 & 1;
}

uint64_t sub_1BF4C6B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t KeepAliveTransaction.init(reason:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1BF390264(a1, a2);

  return v2;
}

void sub_1BF4C6BFC(double a1)
{
  v2 = v1;
  v11[1] = *MEMORY[0x1E69E9840];
  sub_1BF4E7174();
  v3 = sub_1BF4E88E4();

  v4 = [v1 fileExistsAtPath_];

  if (v4)
  {
    sub_1BF4E7174();
    v5 = sub_1BF4E88E4();

    v6 = [v1 isDeletableFileAtPath_];

    if (v6)
    {
      v7 = sub_1BF4E7094();
      v11[0] = 0;
      v8 = [v2 removeItemAtURL:v7 error:v11];

      if (v8)
      {
        v9 = v11[0];
      }

      else
      {
        v10 = v11[0];
        sub_1BF4E6FF4();

        swift_willThrow();
      }
    }
  }
}

id sub_1BF4C6D38(void *a1)
{
  v13[10] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B20, &unk_1BF4EC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF4EBEF0;
  v4 = *MEMORY[0x1E696A3A0];
  *(inited + 32) = *MEMORY[0x1E696A3A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v5;
  *(inited + 40) = a1;
  v6 = v4;
  v7 = a1;
  sub_1BF3C9454(inited);
  swift_setDeallocating();
  sub_1BF4C72E0(inited + 32);
  type metadata accessor for FileAttributeKey(0);
  sub_1BF3C9DEC(&qword_1EDC9D710, type metadata accessor for FileAttributeKey, &unk_1BF4EB51C);
  v8 = sub_1BF4E8744();

  sub_1BF4E7174();
  v9 = sub_1BF4E88E4();

  v13[0] = 0;
  v10 = [v1 setAttributes:v8 ofItemAtPath:v9 error:v13];

  if (v10)
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_1BF4E6FF4();

  swift_willThrow();
  return swift_willThrow();
}

id sub_1BF4C7158(uint64_t a1)
{
  v2 = v1;
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BF4E7094();
  v4 = sub_1BF4E7094();
  v7[0] = 0;
  LODWORD(v2) = [v2 moveItemAtURL:v3 toURL:v4 error:v7];

  if (v2)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1BF4E6FF4();

  return swift_willThrow();
}

id sub_1BF4C723C(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ([a1 closeAndReturnError_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_1BF4E6FF4();

  return swift_willThrow();
}

uint64_t sub_1BF4C72E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8738, &qword_1BF4F6D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ControlsCacheURLProvider.__allocating_init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0x632D6F6E6F726863;
  result[5] = 0xEF736C6F72746E6FLL;
  return result;
}

void *ControlsCacheURLProvider.init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = 0x632D6F6E6F726863;
  v2[5] = 0xEF736C6F72746E6FLL;
  return v2;
}

void *sub_1BF4C73DC(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25[-v10];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-v14];
  (*(v6 + 16))(v11, a1, v5, v13);
  swift_beginAccess();

  sub_1BF4E70A4();

  v16 = *(a1 + *(type metadata accessor for ControlCacheKey(0) + 20));
  if (v16)
  {
    v17 = v16;
    sub_1BF39B13C();
    sub_1BF4E70A4();
  }

  v18 = *(v6 + 32);
  v18(v15, v11, v5);
  v26 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    sub_1BF39ADF0(a1, v8);
    v19 = sub_1BF4323F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1BF4323F4((v20 > 1), v21 + 1, 1, v19);
    }

    (*(v6 + 8))(v15, v5);
    v19[2] = v21 + 1;
    v18(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v8, v5);
    return v19;
  }

  else
  {
    v22 = [objc_opt_self() defaultManager];
    v23 = sub_1BF4E8E34();

    if (v23)
    {

      sub_1BF4C86FC(v23, v3, &v26);
    }

    (*(v6 + 8))(v15, v5);
  }

  return v26;
}

uint64_t sub_1BF4C76DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BF4C7860(a1, a3);
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1BF43886C(*(a2 + 16), 0);
  v6 = sub_1BF438FEC(&v9, v5 + 4, v4, a2);
  v7 = v9;

  sub_1BF39A9CC(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v9 = v5;
  sub_1BF4C7BFC(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  sub_1BF4E8894();

  sub_1BF4E70B4();

  sub_1BF4E70C4();
  sub_1BF4E70B4();
  return sub_1BF4E70C4();
}